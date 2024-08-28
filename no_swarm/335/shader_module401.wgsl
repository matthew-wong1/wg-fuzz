struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(42779i, -5140i);

var<private> global1: Struct_1 = Struct_1(654f, vec3<f32>(1526f, 1272f, 1397f));

var<private> global2: u32 = 7797u;

var<private> global3: array<vec2<bool>, 30>;

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(462f, vec3<f32>(-262f, -247f, 449f)), Struct_1(448f, vec3<f32>(-1000f, -352f, -1306f)), Struct_1(-929f, vec3<f32>(426f, -1005f, 277f)), Struct_1(1231f, vec3<f32>(-338f, -1914f, 106f)), Struct_1(269f, vec3<f32>(168f, 545f, -338f)), Struct_1(150f, vec3<f32>(-1000f, -1721f, 563f)), Struct_1(-106f, vec3<f32>(1168f, 131f, 796f)), Struct_1(-231f, vec3<f32>(254f, 401f, -977f)), Struct_1(342f, vec3<f32>(-1081f, 678f, 3301f)), Struct_1(1018f, vec3<f32>(-1244f, 132f, -719f)), Struct_1(1940f, vec3<f32>(1910f, 1036f, 1510f)), Struct_1(511f, vec3<f32>(-767f, -447f, -730f)), Struct_1(147f, vec3<f32>(993f, 215f, -303f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    var var_0 = ~4294967295u;
    var var_1 = ~(~(~(~vec3<u32>(38285u, 21266u, 4294967295u)))) & vec3<u32>(4294967295u, 72059u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 10183u, 68036u)), vec3<u32>(1u, 1u, 1u)));
    global1 = global4[_wgslsmith_index_u32(4294967295u, 13u)];
    var_1 = ~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(var_1.x, 0u), _wgslsmith_mult_u32(var_1.x, var_1.x)), abs(var_1.x), ~var_1.x));
    var_1 = vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 1u, 4294967295u, 62049u))), ~(~min(vec4<u32>(54306u, var_1.x, var_1.x, 4294967295u), vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x)))), 0u);
    return global0.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec3_f32(step(global1.b, vec3<f32>(_wgslsmith_div_f32(-685f, global1.b.x), global1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.x)))))));
    let var_1 = ~vec3<i32>(-global0.x & 2147483647i, abs(u_input.a >> (arg_0.x % 32u)), global0.x);
    var var_2 = -1275f;
    let var_3 = Struct_2(Struct_1(498f, vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(global1.b.x - var_0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), -323f)), Struct_1(340f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1740f, var_0.b.x, 175f)), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, true, true), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 604f, 787f) - vec3<f32>(-437f, -1689f, var_0.b.x))))), all(!(!(!vec3<bool>(arg_1, arg_1, true)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(var_0.a)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a.b * vec3<f32>(-879f, var_3.a.b.x, -1132f)))), Struct_1(1f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a.a, var_3.b.a, -778f)))))), !all(select(!vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, false, true), 66843i == var_1.x)));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(func_3(~vec2<u32>(~4294967295u >> (0u % 32u), 77185u), true), 30u)];
    global2 = ~1u;
    var var_1 = !(!(!(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1022f)), _wgslsmith_div_f32(arg_1, global1.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(step(arg_1, -1753f)), arg_1) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(round(global1.b)))))), global4[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(_wgslsmith_div_u32(~32089u, _wgslsmith_clamp_u32(44353u, 1u, 0u)), 1u), ~(~22417u)), 13u)], var_0.x);
    let var_3 = all(select(vec3<bool>(_wgslsmith_sub_i32(global0.x, 50784i) <= global0.x, var_0.x, any(!var_1.zx)), vec3<bool>(true, all(global3[_wgslsmith_index_u32(~21299u, 30u)]), var_0.x), true));
    return -225f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 38832u;
    let var_0 = _wgslsmith_add_i32(~(u_input.a >> (0u % 32u)), -_wgslsmith_mult_i32(func_1(), u_input.a));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * 724f) - global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1155f), -1233f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.b.x, global1.a))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1318f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), 1460f), -849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-682f * -870f), true)), global1.b.x, -751f, -1349f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, global1.b.x, global1.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.b.x, -1039f, 105f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, 1410f, var_2.x, var_2.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -545f) * 249f), global1.b.x, var_2.x, _wgslsmith_f_op_f32(round(915f)))));
    global1 = global4[_wgslsmith_index_u32(~max(~countOneBits(_wgslsmith_clamp_u32(57912u, 10639u, 58496u)), 1u), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(30242u, ~min(1u, 1u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) + _wgslsmith_f_op_f32(var_3.x * -187f)), -1000f, 1000f) * global1.b), vec2<u32>(abs(2399u), 4294967295u));
}

