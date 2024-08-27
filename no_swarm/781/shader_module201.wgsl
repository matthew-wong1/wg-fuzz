struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1651f;

var<private> global1: array<u32, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -893f)) * _wgslsmith_f_op_f32(f32(-1f) * -617f)), 1354f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d - _wgslsmith_f_op_vec2_f32(-arg_0.b)) * arg_0.c), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x + -880f), arg_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d - arg_0.d) * _wgslsmith_f_op_vec2_f32(sign(arg_0.b))) * arg_0.c))), arg_0.a);
    global0 = arg_0.c.x;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], 2229u, 65031u << (0u % 32u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.e.x, ~u_input.b, u_input.e.x << (0u % 32u)), 57132u, 4294967295u)) ^ _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(firstLeadingBit(92232u)), ~u_input.b);
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-692f)), _wgslsmith_f_op_f32(round(1435f)), _wgslsmith_f_op_f32(457f + 556f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.c.x, arg_0.d.x) - vec3<f32>(-373f, 1284f, arg_0.c.x)))))))));
    return vec3<i32>(44313i, 1i, -7908i & var_0.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(~func_3(arg_3), select(vec3<i32>(1i, u_input.c, countOneBits(-1i)), -(vec3<i32>(u_input.d.x, -6226i, -1i) & vec3<i32>(u_input.c, u_input.c, arg_1.a)), vec3<bool>(true, true, true)), ~(-(~vec3<i32>(268i, u_input.d.x, -2147483647i)))));
    var var_1 = ~(~vec4<u32>(1u, countOneBits(countOneBits(u_input.e.x)), countOneBits(39421u), ~u_input.e.x));
    return global1[_wgslsmith_index_u32(abs(~4294967295u), 12u)];
}

fn func_1() -> u32 {
    return ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(reverseBits(8083u), 12u)], _wgslsmith_clamp_u32(_wgslsmith_div_u32(func_2(34906u, Struct_1(-1i, vec2<f32>(-462f, -1996f), vec2<f32>(-539f, -621f), vec2<f32>(1036f, 2027f), u_input.d.x), Struct_1(-1i, vec2<f32>(-685f, -337f), vec2<f32>(579f, 229f), vec2<f32>(-394f, 844f), u_input.d.x), Struct_1(-1i, vec2<f32>(978f, 617f), vec2<f32>(-1349f, -1815f), vec2<f32>(1000f, 1765f), u_input.d.x)), ~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12u)], 12u)], 99914u), u_input.e.xx), ~u_input.e.zx), _wgslsmith_add_u32(21799u, _wgslsmith_sub_u32(1u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    let var_0 = vec3<bool>((~(~u_input.e.x) >> ((func_1() | u_input.b) % 32u)) >= ~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(70501u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)])), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(11100u, u_input.e.x, u_input.e.x)), ~u_input.b) == u_input.b, true);
    let var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, 2247f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-684f, -2389f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1033f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2051f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -272f), 692f), firstLeadingBit(-u_input.a) ^ _wgslsmith_div_i32(-1i, -2147483647i & -u_input.a));
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(select(select(vec3<u32>(min(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 12u)], 12u)]), _wgslsmith_add_u32(u_input.b, 0u), ~49943u), u_input.e, vec3<bool>(0i >= var_1.e, var_0.x | true, any(vec4<bool>(true, var_0.x, var_0.x, true)))), vec3<u32>(43687u | global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 12u)], u_input.b, 21669u), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, false), var_0.x), var_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1041u, 12u)], 12u)], 12u)] < 12775u), select(!var_0, select(var_0, vec3<bool>(false, true, false), true), 96904u < u_input.b), !var_0)), reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.b)));
}

