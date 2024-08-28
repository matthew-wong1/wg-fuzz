struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec3<bool>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x >> (1u % 32u), -(11932i & arg_1.x), -99260i), vec3<i32>(arg_1.x, max(-12398i, arg_0.x), -arg_1.x) << (firstTrailingBit(min(vec3<u32>(u_input.a, 15039u, 4294967295u), vec3<u32>(19752u, 4294967295u, u_input.a))) % vec3<u32>(32u))), max(vec3<i32>(-20829i, arg_1.x, min(_wgslsmith_sub_i32(-2147483647i, arg_1.x), arg_0.x)), vec3<i32>(-3402i, 21603i, 1i & arg_1.x)));
    var var_1 = Struct_1(true && !(!all(global2[_wgslsmith_index_u32(34297u, 25u)])));
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-802f, -435f), -1642f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f))));
    global0 = !select(true, any(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), var_1.a)), var_1.a | var_1.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-885f, -192f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f * 1000f), _wgslsmith_f_op_f32(-344f + 370f)))), -631f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1127f)), _wgslsmith_f_op_f32(func_3(vec2<i32>(49877i, -28919i), vec2<i32>(2147483647i, 1i))), 863f, _wgslsmith_f_op_f32(round(-1478f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1894f, 292f, 784f, -335f)))))));
    let var_3 = var_2.zy;
    let var_4 = var_1;
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!any(vec3<bool>(true, true, func_2(Struct_1(true), Struct_1(false), Struct_1(true)))));
    let var_1 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 19189u, u_input.a), select(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(48024u, u_input.a, 574u, 1u), false) & (vec4<u32>(0u, 0u, u_input.a, 33472u) << (vec4<u32>(129862u, 1u, 1u, u_input.a) % vec4<u32>(32u)))));
    var_0 = true;
    var_0 = any(!(!vec4<bool>(all(vec2<bool>(false, false)), true, true, true)));
    let var_2 = -28984i;
    return Struct_1(select(~_wgslsmith_sub_u32(95054u, 0u) != u_input.a, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    let var_2 = 2147483647i;
    global0 = all(!vec4<bool>(func_2(var_0, Struct_1(true), var_0), func_2(var_0, func_1(), Struct_1(true)), var_1.a, true));
    global0 = true & func_2(func_1(), var_0, var_0);
    global2 = array<vec3<bool>, 25>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-925f, -330f, 241f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec4<f32>(-829f, _wgslsmith_f_op_f32(-1110f - -449f), -198f, _wgslsmith_f_op_f32(trunc(-1793f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-827f))), -859f, -967f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f + -1294f) - _wgslsmith_f_op_f32(-1864f + -625f)))));
    global2 = array<vec3<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(9750u, abs(firstLeadingBit(firstLeadingBit(u_input.a)))));
}

