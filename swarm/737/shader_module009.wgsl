struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, true, true, true, false, true, false, true, false, true, false, false, false, true, false, true, false, false, false, false, true, true, false, false, false, true);

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-33365i, 76230i, 0i, -1i), vec4<i32>(0i, 28152i, -1i, i32(-2147483648)), vec4<i32>(-13005i, -44191i, -1i, 1i), vec4<i32>(i32(-2147483648), 41999i, i32(-2147483648), 13953i), vec4<i32>(-14354i, 0i, -1i, -38330i), vec4<i32>(0i, -1i, 75691i, -1i), vec4<i32>(-1i, -20656i, -1i, 0i), vec4<i32>(40271i, 0i, 6903i, 15443i), vec4<i32>(1i, -1i, -35304i, -47231i), vec4<i32>(2147483647i, -15697i, -21131i, -2402i), vec4<i32>(84922i, 43725i, 1i, 4012i), vec4<i32>(0i, -33i, -1i, 0i), vec4<i32>(-1i, 0i, 21416i, -1i), vec4<i32>(2147483647i, 24791i, -42580i, -42824i), vec4<i32>(-1i, 12795i, i32(-2147483648), i32(-2147483648)), vec4<i32>(33512i, 2879i, 0i, 20548i), vec4<i32>(0i, -6806i, 2147483647i, 0i), vec4<i32>(1i, 0i, i32(-2147483648), -5338i), vec4<i32>(-16148i, -1352i, -2637i, -29543i), vec4<i32>(-45575i, 27410i, 37706i, -36161i), vec4<i32>(0i, 50034i, 16385i, 176i), vec4<i32>(38709i, 2147483647i, 1i, 0i), vec4<i32>(2147483647i, 24853i, 0i, 38265i), vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec4<i32>(1i, -1i, 1i, i32(-2147483648)), vec4<i32>(1i, 86912i, 2147483647i, 0i));

var<private> global3: vec4<f32> = vec4<f32>(-1180f, -201f, 1096f, 2350f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec2<u32> {
    let var_0 = min(u_input.a.x, 1i);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(27404u, 99639u, 14653u) ^ select(vec3<u32>(5174u, 0u, 2175u), vec3<u32>(1u, 1u, 0u), global0[_wgslsmith_index_u32(38560u, 27u)]), firstLeadingBit(~vec3<u32>(6298u, 1u, 11891u)))) >> (10883u % 32u), 27u)];
    global2 = array<vec4<i32>, 26>();
    var var_2 = 41254u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, 265f, !global0[_wgslsmith_index_u32(1u, 27u)]))), true)));
    return vec2<u32>(_wgslsmith_add_u32(min(0u, 47631u), ~abs(1u)), _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(64696u, 33672u, 25635u), vec3<u32>(69899u, 44449u, 4294967295u)), vec3<u32>(1u, 1u, 1u))));
}

fn func_1() -> vec4<f32> {
    var var_0 = false;
    let var_1 = -vec2<i32>(u_input.a.x, _wgslsmith_div_i32(min(countOneBits(-2147483647i), -69722i), ~(~2147483647i)));
    let var_2 = func_2();
    var_0 = global0[_wgslsmith_index_u32(var_2.x, 27u)] & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~var_2) ^ ~(var_2 ^ var_2), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_2.x), var_2), vec2<u32>(1u, 29599u))), 27u)];
    let var_3 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(abs(-1446f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-739f - global3.x))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, min(~1u, ~47168u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(21987u, 17878u, 0u), vec3<u32>(1u, 17233u, 0u))), 27u)] | (global3.x != _wgslsmith_f_op_f32(round(488f)));
    let var_1 = _wgslsmith_div_i32(firstLeadingBit(-16820i), (u_input.a.x ^ u_input.a.x) ^ _wgslsmith_mult_i32(-37162i, -10495i)) << (_wgslsmith_sub_u32(firstLeadingBit(4294967295u), min(reverseBits(1u), firstLeadingBit(~22743u))) % 32u);
    global3 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_2 = max(~1u, 52346u);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-449f, u_input.a);
}

