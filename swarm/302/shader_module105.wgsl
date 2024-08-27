struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = !vec2<bool>(!(firstLeadingBit(11054u) > select(61645u, 27974u, true)), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, 597f, -681f, 1397f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -235f, -406f, -1932f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-870f, -1712f, 1000f, 1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(226f, 956f, 1124f, -1661f), vec4<f32>(961f, -466f, -1454f, 485f))))), ~(~0u));
    var var_2 = firstLeadingBit(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21676u, 4294967295u, u_input.a, u_input.a), vec4<u32>(var_1.b, 1u, 0u, 15480u)), firstLeadingBit(vec4<u32>(u_input.a, 1u, var_1.b, 65035u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, var_1.b, 0u, var_1.b), vec4<u32>(0u, u_input.a, var_1.b, var_1.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(44544u, var_1.b, var_1.b, u_input.a), vec4<u32>(u_input.a, 13272u, 16950u, 1u), vec4<u32>(u_input.a, 1u, 4294967295u, 1u)))));
    return ~(var_2.x & 1u);
}

fn func_2() -> u32 {
    global0 = array<vec4<bool>, 12>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(302f * 718f), _wgslsmith_f_op_f32(max(602f, 146f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f + 528f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1609f)), _wgslsmith_f_op_f32(min(-1000f, -1000f))))), ~func_3());
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2705f + var_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.a.x))))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(ceil(967f))), _wgslsmith_div_f32(-1042f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1516f))), 327f), min(u_input.a, 0u));
    global0 = array<vec4<bool>, 12>();
    let var_2 = var_1;
    return ~(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, var_2.b), vec3<u32>(1u, var_1.b, var_0.b)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_1(arg_0, func_2());
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(511f * 178f))), -1000f, -727f)), 6244u);
    let var_1 = ~(~vec2<u32>(~26545u, _wgslsmith_sub_u32(u_input.a & arg_1.x, 0u)));
    var var_2 = arg_3.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x, -226f, 183f) + var_0.a);
    return !any(!select(vec4<bool>(arg_3.x, arg_2.x, true, arg_3.x), arg_3, false)) || all(arg_3.wwz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(!any(vec3<bool>(false, true, true)), false), select(vec2<bool>(all(vec3<bool>(true, true, false)), func_1(vec4<f32>(399f, 1028f, -171f, 795f), vec2<u32>(22990u, 4294967295u), vec2<bool>(true, true), vec4<bool>(false, true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), true)), !all(vec3<bool>(true, true, true)));
    let var_1 = max(_wgslsmith_add_i32(_wgslsmith_div_i32(min(-7286i, -15009i) << (~u_input.a % 32u), ~(~2147483647i)), _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(6821i, -44306i)), reverseBits(abs(vec2<i32>(-2976i, 2999i))))), ~(~(i32(-1i) * -1i)));
    var_0 = select(vec2<bool>(false, !((0u << (1u % 32u)) == (u_input.a ^ u_input.a))), vec2<bool>(var_0.x, true), false);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f * 2168f) + _wgslsmith_f_op_f32(floor(-145f))) * -1511f), -1558f, false))));
    let var_4 = u_input.a;
    let var_5 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(min(var_3, var_3))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(ceil(var_3)), var_0.x))), var_3, _wgslsmith_f_op_f32(-787f + var_3), 358f), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(var_1, var_1, 2147483647i, 39986i), vec4<i32>(var_1, -1i, var_1, 38771i), false) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_5.b, 19925u, var_5.b), reverseBits(vec4<u32>(484u, var_5.b, var_4, var_4))) % vec4<u32>(32u)), ~vec4<i32>(var_1, _wgslsmith_div_i32(var_1, 2835i), abs(var_1), var_1), _wgslsmith_sub_vec4_i32(min(~vec4<i32>(var_1, var_1, var_1, -29316i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_1, var_1, 20639i), vec4<i32>(var_1, -2147483647i, 2147483647i, var_1))), min(~vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(var_1, var_1, var_1, -2147483647i)))), var_5.a);
}

