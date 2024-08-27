struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 32> = array<f32, 32>(186f, -178f, -229f, 202f, -1307f, 713f, -169f, 1000f, -277f, -376f, -592f, 226f, -1352f, -1220f, 1761f, -1000f, 560f, 1627f, 1121f, 178f, -525f, 837f, 1601f, 1000f, -644f, 1000f, 928f, 1000f, 2621f, 1000f, 1237f, 1927f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    let var_0 = Struct_1(countOneBits(reverseBits(vec2<u32>(1u, 1u))), -879f);
    let var_1 = ~4294967295u;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2528f - 709f) * -1704f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(702f)), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.a.x, 32u)], var_0.b)))))), 1003f));
    return 1u;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5) -> u32 {
    var var_0 = Struct_1(abs(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0.a, 0u), ~0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 24497u), ~vec2<u32>(4294967295u, arg_2.a.b.a.x), select(vec2<u32>(1u, 1u), vec2<u32>(1727u, arg_1.a.x), false)))), -1797f);
    let var_1 = _wgslsmith_mod_i32(-40556i, abs(-67124i));
    var var_2 = _wgslsmith_f_op_f32(round(-799f));
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(57045u, 1u, 36930u, 32682u), vec4<u32>(23407u, 0u, arg_2.a.c.a.x, var_0.a.x)), ~vec4<u32>(1u, arg_2.a.c.a.x, arg_1.a.x, arg_1.a.x))) << (vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_0.a), ~arg_0.a, abs(arg_1.a.x), ~4639u ^ arg_1.a.x) % vec4<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1127f - -976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.b.b, var_0.b, any(vec2<bool>(arg_2.a.d, arg_2.a.d)))) * _wgslsmith_f_op_f32(floor(arg_1.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1f, -187f, any(vec3<bool>(arg_2.a.d, false, false)))))), global1[_wgslsmith_index_u32(arg_2.a.b.a.x, 32u)])));
    return reverseBits(~select(~(~var_0.a.x), _wgslsmith_sub_u32(4294967295u, var_3.x), false));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a.b.a.x, countOneBits(~4294967295u) & (~1u ^ firstTrailingBit(54838u)), arg_2.a.c.a.x, countOneBits(arg_2.a.c.a.x)), vec4<u32>(0u ^ _wgslsmith_mod_u32(arg_2.a.b.a.x, ~arg_2.a.b.a.x), _wgslsmith_mod_u32(firstTrailingBit(arg_2.a.c.a.x ^ arg_2.a.c.a.x), 4294967295u), func_2(Struct_3(vec4<f32>(2290f, global1[_wgslsmith_index_u32(arg_2.a.b.a.x, 32u)], -369f, 602f))) << ((func_3(Struct_4(4294967295u), arg_2.a.c, Struct_5(Struct_2(true, Struct_1(vec2<u32>(arg_2.a.b.a.x, 1u), -1025f), Struct_1(arg_2.a.b.a, 389f), arg_2.a.d))) >> ((0u & arg_2.a.c.a.x) % 32u)) % 32u), reverseBits(arg_2.a.b.a.x) >> (~(~arg_2.a.c.a.x) % 32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1022f)))))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(55613u, 32u)])), _wgslsmith_f_op_f32(max(-945f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.a.b.a, var_0.yz), _wgslsmith_dot_vec3_u32(var_0.yyz, vec3<u32>(123900u, 0u, var_0.x))), 32u)] + _wgslsmith_f_op_f32(abs(633f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1377f * 703f)))) - _wgslsmith_f_op_f32(f32(-1f) * -994f)), -499f);
    let var_2 = arg_2.a.b;
    var var_3 = Struct_4(abs(_wgslsmith_add_u32(~var_0.x, _wgslsmith_dot_vec3_u32(min(var_0.wzz, var_0.xxz), vec3<u32>(var_0.x, var_2.a.x, var_0.x)))));
    var var_4 = !(!select(!vec4<bool>(arg_2.a.a, arg_2.a.d, arg_2.a.d, arg_2.a.a), !(!vec4<bool>(false, arg_2.a.a, arg_2.a.a, arg_2.a.a)), select(select(vec4<bool>(true, arg_2.a.d, false, false), vec4<bool>(true, false, arg_2.a.a, false), arg_2.a.a), !vec4<bool>(true, arg_2.a.d, arg_2.a.a, arg_2.a.a), false)));
    return countOneBits(~(~vec4<u32>(arg_2.a.b.a.x ^ var_2.a.x, ~var_3.a, _wgslsmith_mult_u32(0u, 4294967295u), arg_2.a.c.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2((_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 9910u, 4294967295u, 45980u), func_1(vec4<i32>(u_input.b.x, u_input.a.x, 45658i, 10677i), u_input.a.yyx, Struct_5(Struct_2(true, Struct_1(vec2<u32>(20111u, 4294967295u), global1[_wgslsmith_index_u32(0u, 32u)]), Struct_1(vec2<u32>(10686u, 14644u), 336f), false)), vec2<f32>(-214f, global1[_wgslsmith_index_u32(32776u, 32u)]))) <= abs(_wgslsmith_mod_u32(0u, 4294967295u))) && all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 28333u), vec2<u32>(4294967295u, 0u)), min(vec2<u32>(1u, 1u), ~vec2<u32>(17698u, 78146u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 32u)] * global1[_wgslsmith_index_u32(0u, 32u)]))))), Struct_1(vec2<u32>(~1u, ~(~4294967295u)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26433u), vec2<u32>(1u, 1u)), 32u)])), any(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))));
    var var_1 = var_0.b;
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(65331u, 32u)] + -327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1103f)))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c.a.x, 32u)] + var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, max(u_input.a.x, -1511i)), 1f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.a.x, var_0.c.a.x), vec2<u32>(32626u, 1u))) ^ var_1.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.a.x, firstLeadingBit(9161u)), vec2<u32>(var_0.c.a.x, 0u), vec2<u32>(_wgslsmith_mod_u32(var_0.c.a.x, 13673u), min(3171u, 39773u)))), 32u)]);
}

