struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<vec4<i32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstTrailingBit(u_input.c.x & u_input.c.x), u_input.c.x), 17u)];
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) - arg_0.e));
    global1 = array<vec4<i32>, 22>();
    let var_1 = -(~(-3969i));
    let var_2 = all(select(vec2<bool>(arg_0.a.x, true == (false || arg_0.c.x)), select(select(select(arg_0.a.zx, arg_0.a.xy, false), arg_0.c.zy, false), arg_0.a.zx, select(!vec2<bool>(arg_0.c.x, false), arg_0.a.xw, !arg_0.c.x)), vec2<bool>(all(!vec4<bool>(arg_0.c.x, arg_0.a.x, arg_0.c.x, arg_0.a.x)), false)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f))));
    return false;
}

fn func_1(arg_0: i32, arg_1: i32) -> StorageBuffer {
    let var_0 = select(select(vec2<u32>(~_wgslsmith_add_u32(u_input.c.x, 1774u), 1u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u >> (u_input.c.x % 32u), u_input.c.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 1165u, u_input.c.x), u_input.c.x)), vec2<bool>(~1u >= u_input.c.x, func_3(func_2(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(u_input.a, arg_0, arg_1), vec3<bool>(false, true, true), vec2<i32>(u_input.a, 1i), global0[_wgslsmith_index_u32(9840u, 17u)]))))), ~u_input.c.wz, false);
    let var_1 = Struct_1(func_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(14625i, arg_1, 55636i)), vec3<i32>(arg_0, -2147483647i, arg_0)), vec3<bool>(true, true, false), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(773f))))).a, vec3<i32>(1i, ~1i, 1i), vec3<bool>(true, select(1u, 68392u, true) == select(85742u, abs(6210u), true), false), _wgslsmith_mod_vec2_i32(~func_2(func_2(Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(arg_1, 1i, 39243i), vec3<bool>(false, false, true), vec2<i32>(arg_1, 2662i), global0[_wgslsmith_index_u32(u_input.c.x, 17u)]))).d, _wgslsmith_add_vec2_i32(~(~vec2<i32>(arg_0, -19426i)), firstTrailingBit(abs(vec2<i32>(0i, 23154i))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_mod_u32(min(var_0.x, var_0.x), _wgslsmith_div_u32(var_0.x, 100422u))), 17u)]));
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_2(var_1).e, 1f))));
    var_2 = vec4<u32>(~(_wgslsmith_add_u32(u_input.c.x << (77777u % 32u), 14163u | u_input.c.x) ^ var_2.x), var_0.x, 13041u, u_input.c.x);
    return StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 17u)], 1000f, 968f, global0[_wgslsmith_index_u32(var_2.x, 17u)]) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1345f, global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), vec4<f32>(585f, -355f, var_1.e, -707f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.e, -1242f, -1895f, -800f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_i32(-4772i, 0i), u_input.b);
}

