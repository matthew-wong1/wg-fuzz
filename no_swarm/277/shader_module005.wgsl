struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(42078u, 0u);

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(1u), Struct_1(0u), vec2<bool>(true, true), 311f, Struct_1(38263u)), Struct_2(Struct_1(82699u), Struct_1(4826u), vec2<bool>(true, false), 1561f, Struct_1(9073u)), Struct_2(Struct_1(23202u), Struct_1(0u), vec2<bool>(true, false), -638f, Struct_1(4294967295u)), Struct_2(Struct_1(5565u), Struct_1(23472u), vec2<bool>(true, false), -1926f, Struct_1(1u)), Struct_2(Struct_1(4294967295u), Struct_1(23649u), vec2<bool>(true, true), 910f, Struct_1(4294967295u)), Struct_2(Struct_1(37740u), Struct_1(0u), vec2<bool>(true, true), -198f, Struct_1(4294967295u)), Struct_2(Struct_1(46265u), Struct_1(4294967295u), vec2<bool>(false, true), 242f, Struct_1(17453u)), Struct_2(Struct_1(46005u), Struct_1(11995u), vec2<bool>(true, true), 1317f, Struct_1(15251u)), Struct_2(Struct_1(0u), Struct_1(32446u), vec2<bool>(false, true), -737f, Struct_1(26620u)), Struct_2(Struct_1(1u), Struct_1(4294967295u), vec2<bool>(true, false), 861f, Struct_1(36778u)), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u), vec2<bool>(false, false), -565f, Struct_1(4294967295u)), Struct_2(Struct_1(4294967295u), Struct_1(1u), vec2<bool>(false, false), -2921f, Struct_1(40231u)), Struct_2(Struct_1(10082u), Struct_1(0u), vec2<bool>(true, true), 1404f, Struct_1(4294967295u)), Struct_2(Struct_1(0u), Struct_1(5572u), vec2<bool>(true, true), -685f, Struct_1(37735u)), Struct_2(Struct_1(0u), Struct_1(1u), vec2<bool>(false, false), -193f, Struct_1(1900u)), Struct_2(Struct_1(1u), Struct_1(1u), vec2<bool>(false, true), 217f, Struct_1(31706u)));

var<private> global2: i32 = 12512i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_1() -> vec3<bool> {
    global1 = array<Struct_2, 16>();
    let var_0 = Struct_1(reverseBits(~select(~global0.x, 1u, true)));
    var var_1 = any(vec2<bool>(true, false));
    let var_2 = any(vec2<bool>(true, all(vec2<bool>(true, false))));
    let var_3 = ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(37972u, 39689u, 39066u, 0u) | ~vec4<u32>(4294967295u, 22293u, u_input.a, 57147u)), vec4<u32>(~(~u_input.a), ~(u_input.a & 53037u), var_0.a, 2984u));
    return vec3<bool>(true, !(var_2 & var_2), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = arg_1;
    global2 = _wgslsmith_div_i32(0i, ~(-2147483647i));
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_1 = firstTrailingBit(2147483647i);
    return vec3<bool>(!var_0.c.x, true, false);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global1 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_0.x, arg_1)))))));
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))), true), !select(vec4<bool>(true, true, u_input.a <= u_input.a, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), func_2(-(~vec4<i32>(-9787i, 2147483647i, -1i, 38423i) >> (vec4<u32>(u_input.a, global0.x, global0.x, 63743u) % vec4<u32>(32u))), Struct_2(Struct_1(max(84646u, global0.x)), Struct_1(_wgslsmith_add_u32(global0.x, 4294967295u)), vec2<bool>(true, true), 578f, Struct_1(33345u & global0.x))).x);
    global1 = array<Struct_2, 16>();
    let var_2 = 1u;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(1u, u_input.a, global0.x, select(u_input.a, 32764u, true));
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-413f, 291f, 1570f, 798f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, 442f, -1004f, -396f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(229f, -1214f, 110f, -1183f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1428f, -1505f, 1826f, -2163f), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-415f, 341f, 1064f, -1526f)))), true))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1879f, 410f, true)), _wgslsmith_div_f32(281f, -1346f), 1571f, 1f) * vec4<f32>(-837f, -444f, -2165f, _wgslsmith_f_op_f32(floor(-962f)))))));
    var var_2 = select(select(vec3<bool>(true, true, any(vec4<bool>(false, true, true, true)) & true), select(func_1(), vec3<bool>(true, true, true), func_2(vec4<i32>(-1i, 0i, -37900i, -25880i), Struct_2(Struct_1(0u), Struct_1(16116u), vec2<bool>(true, true), -305f, Struct_1(0u)))), true), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 344f) - _wgslsmith_f_op_f32(-469f * 133f)) > _wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(func_3(var_1.zz, -249f))), all(func_2(-vec4<i32>(-7638i, -50770i, 16393i, 2147483647i), Struct_2(Struct_1(global0.x), Struct_1(global0.x), vec2<bool>(false, false), 1065f, Struct_1(6003u))).zz), all(vec3<bool>(true, true, true))), !select(false, any(vec2<bool>(false, false)), true) != all(vec2<bool>(func_2(vec4<i32>(2147483647i, -1i, -2147483647i, 10273i), global1[_wgslsmith_index_u32(u_input.a, 16u)]).x, true)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u) >> (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(global0.x, _wgslsmith_div_u32(~u_input.a, reverseBits(4294967295u))), firstTrailingBit(~(global0.x ^ var_0.x)))), 16u)];
    var var_4 = func_2(-vec4<i32>(1i, 1i, 1i, 1i), Struct_2(var_3.b, Struct_1(var_0.x), !var_3.c, -187f, var_3.b)).zx;
    var_4 = func_2(~(~(vec4<i32>(1i, -33577i, 57006i, -17819i) << (var_0 % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(var_3.b.a, 16u)]).zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec2<i32>(reverseBits(~1i), -1i), 1u);
}

