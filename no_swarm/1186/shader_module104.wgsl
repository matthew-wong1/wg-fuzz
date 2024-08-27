struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = select(vec4<bool>(false, all(vec4<bool>(true, true, select(true, true, true), false)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1010f)) + -1737f) < 160f), select(vec4<bool>(true, true, false, !any(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec2<bool>(false, false)), false, select(true, true, true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, true, -36408i == u_input.c.x)), vec4<bool>(any(vec4<bool>(true, select(true, false, false), any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, true)))), false, select(false, true, _wgslsmith_f_op_f32(f32(-1f) * -1231f) > _wgslsmith_f_op_f32(ceil(803f))), true));
    var var_1 = u_input.a;
    let var_2 = arg_2;
    let var_3 = Struct_1(arg_2.a);
    global0 = -_wgslsmith_dot_vec2_i32(-select(u_input.c.xx & u_input.c.ww, abs(u_input.c.xz), any(vec3<bool>(true, var_0.x, false))), u_input.c.yy);
    return false;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = (1i << (arg_0 % 32u)) << (select(max(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global3.a, vec4<u32>(10804u, 12597u, 81474u, 0u)), ~vec4<u32>(u_input.b, global3.a.x, arg_0, 6992u)), 23346u), 1u, select(true, any(vec4<bool>(arg_1, arg_1, false, arg_1)) | func_3(u_input.a, Struct_1(global3.a), Struct_1(global3.a)), all(vec4<bool>(false, arg_1, false, arg_1)))) % 32u);
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, abs(var_0), var_0), u_input.c.yyx);
    global2 = array<vec2<bool>, 4>();
    global0 = u_input.a;
    let var_2 = select(global2[_wgslsmith_index_u32(~global3.a.x, 4u)], select(!vec2<bool>(all(vec3<bool>(true, arg_1, false)), arg_1), !select(vec2<bool>(false, arg_1), global2[_wgslsmith_index_u32(u_input.d >> (u_input.d % 32u), 4u)], false), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(45248u, u_input.b) ^ arg_0, ~u_input.b << (select(48138u, 0u, true) % 32u)), 4u)]), vec2<bool>(false, arg_1));
    return var_2.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> bool {
    return func_2(~4294967295u, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<i32>(-u_input.c.x, _wgslsmith_div_i32(-2147483647i, -u_input.c.x), 2147483647i));
    let var_1 = (any(vec4<bool>(true, true, true, true)) | select(any(vec3<bool>(true, true, false)) || all(vec3<bool>(true, true, false)), true, any(vec4<bool>(true, true, true, true)))) == all(!vec3<bool>(select(false, false, false), true, func_1(global3.a.xy, Struct_1(vec4<u32>(0u, 4764u, global3.a.x, u_input.d)), true)));
    global1 = array<vec3<u32>, 21>();
    var var_2 = Struct_1(global3.a);
    var var_3 = Struct_1(select(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_2.a, vec4<u32>(0u, 1u, 6692u, var_2.a.x)), var_2.a, abs(vec4<u32>(0u, u_input.b, global3.a.x, 4294967295u))), var_2.a & var_2.a, !vec4<bool>(any(vec3<bool>(var_1, var_1, var_1)), true, var_1, true)));
    var var_4 = Struct_1(~_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(var_2.a, var_3.a), abs(var_2.a & vec4<u32>(13279u, global3.a.x, var_2.a.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1935f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1318f, -619f)))), 1473f, _wgslsmith_f_op_f32(f32(-1f) * -1387f))), (~vec2<u32>(global3.a.x, global3.a.x) ^ vec2<u32>(0u, var_3.a.x)) | vec2<u32>(~global3.a.x, global3.a.x), vec2<f32>(1f, _wgslsmith_f_op_f32(sign(379f))), -vec3<i32>(_wgslsmith_div_i32(-28530i, u_input.a | 1i), -(~var_0.x), abs(_wgslsmith_add_i32(-1131i, u_input.c.x))), vec2<i32>(-24010i, firstLeadingBit(-5376i)));
}

