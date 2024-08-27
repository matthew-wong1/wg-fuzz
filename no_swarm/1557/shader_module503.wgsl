struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: u32 = 0u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    let var_0 = -181f;
    global0 = array<vec4<f32>, 31>();
    return u_input.d;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(-324f, _wgslsmith_f_op_f32(-824f * -1000f)));
    var var_1 = ~u_input.d;
    let var_2 = _wgslsmith_f_op_f32(arg_0.b * arg_2.b);
    global1 = firstTrailingBit(~(reverseBits(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)) ^ _wgslsmith_mult_u32(64254u, 1u)));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f + arg_2.c.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_sub_i32(select(-106036i, -func_2(), any(vec4<bool>(arg_1.a, !arg_2.a, arg_1.a | arg_1.a, true))), -27891i);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, !vec4<bool>(false, true, arg_2.a, true), arg_1)), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + -992f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_2.c.x, -203f, arg_2.a)))), arg_2.b, arg_0.x, _wgslsmith_f_op_f32(-818f - _wgslsmith_div_f32(-163f, 997f)))));
    var var_2 = -969f;
    let var_3 = !select(!vec2<bool>(!arg_2.a, 0u > u_input.a.x), select(vec2<bool>(true, select(arg_2.a, arg_2.a, arg_2.a)), vec2<bool>(true, true), false), vec2<bool>(true, _wgslsmith_div_f32(arg_1.b, arg_0.x) > _wgslsmith_f_op_f32(-var_1.x)));
    var var_4 = 60257u;
    return _wgslsmith_f_op_f32(arg_2.c.x - arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(true, !(u_input.b.x <= 4294967295u), false), -2216f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(59640u, 31u)], Struct_1(true, 806f, vec3<f32>(1288f, 1701f, 1090f)), Struct_1(false, 2110f, vec3<f32>(-897f, -195f, -1062f)), 2147483647i))))), 1694f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1305f)))));
    var var_1 = -1101f;
    let var_2 = Struct_1(~(~(~u_input.d)) > (_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.d, 2147483647i), vec3<i32>(u_input.c, u_input.d, 85230i))) & -64446i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2358f - var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(584f + var_0.b), var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(true, 812f, vec3<f32>(1673f, 1648f, var_0.b)), vec4<bool>(false, false, true, true), Struct_1(false, var_0.b, var_0.c))), _wgslsmith_f_op_f32(var_0.c.x * 644f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)) + var_0.c)))));
    var var_3 = _wgslsmith_f_op_f32(-1441f + var_0.c.x);
    let var_4 = vec2<bool>(!var_0.a | !(!var_2.a & var_0.a), all(!select(vec3<bool>(true, false, true), select(vec3<bool>(var_0.a, false, var_2.a), vec3<bool>(var_2.a, false, var_0.a), false), !vec3<bool>(var_2.a, var_2.a, var_2.a))));
    var_0 = Struct_1(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1598f * -2897f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), var_0.b, _wgslsmith_f_op_f32(trunc(2295f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, _wgslsmith_div_vec3_f32(vec3<f32>(-1756f, var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x * 507f)), _wgslsmith_f_op_vec3_f32(exp2(var_0.c))), reverseBits(4294967295u), u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.c.x, _wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(max(var_2.b, var_2.c.x)))));
}

