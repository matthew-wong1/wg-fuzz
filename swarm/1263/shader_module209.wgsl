struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1028f, -1170f, vec4<u32>(63609u, 11613u, 11062u, 4294967295u));

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_1 = Struct_1(1000f, -765f, vec4<u32>(48896u, 0u, 0u, 23628u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<bool>(true, !select(false, select(true, true, global0.a == 810f), false), false || (global0.c.x != 22577u));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(660f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - 1323f), 235f)))))));
    global1 = array<Struct_1, 14>();
    let var_2 = global1[_wgslsmith_index_u32(~u_input.c.x | 1u, 14u)];
    var var_3 = select(!vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, u_input.c.x, 0u, global0.c.x), vec4<u32>(2277u, u_input.c.x, var_2.c.x, 0u)) >= u_input.c.x, var_0.x), var_0.zy, !vec2<bool>(true, var_0.x));
    return var_0;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    global1 = array<Struct_1, 14>();
    global2 = global1[_wgslsmith_index_u32(global0.c.x, 14u)];
    var var_0 = func_3();
    let var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(4294967295u, ~arg_2.c.x, 19262u)), vec2<u32>(global0.c.x, 0u));
    var var_2 = _wgslsmith_div_vec3_i32(u_input.a.wzz, vec3<i32>(2147483647i, 70892i, ~0i)) >> (u_input.c % vec3<u32>(32u));
    return !select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(true, !(true != var_0.x), any(!vec4<bool>(false, false, var_0.x, false)), !(global2.c.x < u_input.c.x)), !select(vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = select(func_2(abs(abs(~76714u)), abs(_wgslsmith_mod_i32(u_input.a.x, 22239i)) << (_wgslsmith_div_u32(4294967295u, ~u_input.c.x) % 32u), arg_0, 146f), select(func_2(~global0.c.x, 0i, arg_0, _wgslsmith_f_op_f32(-global0.b)), select(vec4<bool>(true, true, func_3().x, global2.c.x <= u_input.c.x), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), func_2(4915u, 0i, arg_0, global0.a), true), u_input.d < select(2147483647i, u_input.d, false)), !vec4<bool>(u_input.b < u_input.a.x, true, false, true)), vec4<bool>(all(!func_2(arg_0.c.x, 32715i, arg_0, global0.b).ywx), ~_wgslsmith_add_u32(global0.c.x, 3043u) != ~global2.c.x, true, false));
    var var_1 = select(!select(func_2(max(global0.c.x, 0u), 8934i, arg_0, 1709f), vec4<bool>(func_2(4294967295u, 0i, Struct_1(979f, -612f, global0.c), 2333f).x, false, true, true), !(!vec4<bool>(false, false, var_0.x, var_0.x))), func_2(global2.c.x, max(-(~(-36065i)), -1i), arg_0, _wgslsmith_f_op_f32(abs(365f))), !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), false, any(vec4<bool>(true, true, true, var_0.x)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(848f, global2.a, global0.a) * vec3<f32>(global0.a, global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 222f, 322f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, arg_0.a, global0.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global2.a, 537f), vec3<f32>(192f, global0.b, arg_0.b), vec3<bool>(true, var_0.x, false)))))))));
    var var_3 = !var_0.ww;
    var var_4 = global1[_wgslsmith_index_u32(~(7415u << (_wgslsmith_add_u32(_wgslsmith_mult_u32(~1u, global2.c.x & global0.c.x), ~arg_0.c.x) % 32u)), 14u)];
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~(global0.c.x << ((u_input.c.x << (global2.c.x % 32u)) % 32u)), 14u)])), _wgslsmith_f_op_f32(ceil(-240f)), ~(~vec4<u32>(u_input.c.x, global0.c.x, global2.c.x, 1u) | global0.c));
    var var_1 = select(vec3<i32>(u_input.a.x, 2147483647i, abs(u_input.a.x)), _wgslsmith_mod_vec3_i32(u_input.a.wxx, ~vec3<i32>(-1426i, -1i, 1935i)), func_3()) | u_input.a.yyz;
    var_0 = Struct_1(-2444f, 2687f, global2.c);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.x, 1u), ~var_0.c.wy) ^ ~(global0.c.x | 0u), 42017u ^ global0.c.x), 1u), 14u)];
    let var_3 = vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.x, -31828i)) ^ firstLeadingBit(u_input.a.zz << (vec2<u32>(44848u, global2.c.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~firstTrailingBit(vec2<i32>(40367i, var_1.x)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b, -41684i)), _wgslsmith_div_vec2_i32(u_input.a.zx, -vec2<i32>(-14131i, -1i)))));
    let var_4 = firstLeadingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.b)))) + global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f - global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(197f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 173f)))), global2.b)), vec3<u32>(~(~_wgslsmith_add_u32(1u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_0.c.x, global0.c.x, global0.c.x), vec4<u32>(u_input.c.x, 11563u, global0.c.x, global0.c.x)), select(~vec4<u32>(4294967295u, var_2.c.x, 67924u, 0u), var_2.c, func_2(global0.c.x, 1i, Struct_1(-988f, var_0.b, global0.c), global2.a).x)), 15166u));
}

