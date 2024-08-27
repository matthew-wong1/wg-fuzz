struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = ~vec3<u32>(17760u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), ~4294967295u), ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) << (select(~(~(vec3<u32>(u_input.b.x, u_input.b.x, 8784u) & vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u) ^ select(vec3<u32>(u_input.b.x, 44627u, u_input.b.x), vec3<u32>(44186u, u_input.b.x, 4294967295u), vec3<bool>(global0[_wgslsmith_index_u32(4246u, 20u)], false, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u), countOneBits(vec3<u32>(81084u, 37787u, 4294967295u)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x ^ ~0u, 1u), 20u)]) % vec3<u32>(32u));
    var var_1 = abs(firstTrailingBit(vec4<u32>(1u, 3960u, 0u, 4278u)));
    global0 = array<bool, 20>();
    var_1 = max(countOneBits(~vec4<u32>(64517u, 30955u, 0u, 4294967295u)), vec4<u32>(var_0.x, ~var_0.x | _wgslsmith_mod_u32(29767u, 1u), _wgslsmith_sub_u32(firstLeadingBit(var_1.x), 1u), 48436u)) >> (vec4<u32>(var_0.x, reverseBits(0u), var_0.x, 38009u) % vec4<u32>(32u));
    let var_2 = vec4<bool>(global0[_wgslsmith_index_u32(1u >> (reverseBits(var_0.x >> (62534u % 32u)) % 32u), 20u)], false, global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(0u)), 20u)], ~_wgslsmith_dot_vec3_i32(u_input.a ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) <= 1i);
    return ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~(~4294967295u)), 1u);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_div_u32(arg_0.x, u_input.b.x);
    let var_1 = u_input.a.x;
    var var_2 = any(select(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 20u)] | !global0[_wgslsmith_index_u32(20529u, 20u)], true, global0[_wgslsmith_index_u32(func_3(), 20u)], true), vec4<bool>(!global0[_wgslsmith_index_u32(~var_0, 20u)], global0[_wgslsmith_index_u32(select(var_0, 105404u, true) | 0u, 20u)], all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false), vec2<bool>(true, false), false)), abs(var_1) == -45261i), select(select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 20u)], false, false, global0[_wgslsmith_index_u32(58752u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(arg_0.x, 20u)])), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(67850u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false)), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true, global0[_wgslsmith_index_u32(23314u, 20u)], global0[_wgslsmith_index_u32(54907u, 20u)])), !global0[_wgslsmith_index_u32(var_0, 20u)])));
    return firstLeadingBit(_wgslsmith_mod_u32(var_0 ^ arg_0.x, _wgslsmith_mult_u32(68478u, 1u)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: u32) -> bool {
    var var_0 = Struct_2(~u_input.a.x >> (abs(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, arg_3, 4294967295u), vec4<u32>(arg_3, 260u, arg_3, arg_1.x)))) % 32u), _wgslsmith_f_op_vec4_f32(trunc(arg_2)));
    let var_1 = 843f;
    let var_2 = Struct_2(abs(~(-7972i) & _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, 0i), firstLeadingBit(17791i))), var_0.b);
    global0 = array<bool, 20>();
    var_0 = Struct_2(35200i >> ((16378u & (_wgslsmith_sub_u32(26423u, arg_1.x) >> (arg_1.x % 32u))) % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-361f, _wgslsmith_f_op_f32(select(290f, 465f, true)), 241f, arg_2.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2329f, var_2.b.x, 588f, arg_0)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(2320u, 20u)], global0[_wgslsmith_index_u32(552u, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(1906u, 20u)], true, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(arg_3, 20u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(51905u, 20u)]), vec4<bool>(true, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], false, global0[_wgslsmith_index_u32(arg_1.x, 20u)]))))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(_wgslsmith_f_op_f32(max(289f, 1000f)), _wgslsmith_add_vec3_u32(vec3<u32>(59172u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 43881u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-603f, 1331f, -1000f, -312f), vec4<f32>(1000f, -408f, -1373f, -1163f))), 0u | u_input.b.x)) & select(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, 18557u), u_input.b.x) > 4294967295u, false, any(select(!vec3<bool>(global0[_wgslsmith_index_u32(7626u, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(7343u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(12094u, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false)), !vec3<bool>(global0[_wgslsmith_index_u32(64289u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-487f, 1470f))))) - _wgslsmith_div_f32(-1593f, _wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-476f - 703f)))));
    var var_2 = select(23859u, countOneBits(u_input.b.x), (all(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false)) && (firstTrailingBit(-61063i) != _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x)))) && true);
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(u_input.b.x), 20u)];
    var_2 = _wgslsmith_mod_u32(func_3(), reverseBits(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(-1254f - 130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f * 457f))), vec3<f32>(-808f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(398f, 1652f), _wgslsmith_f_op_f32(f32(-1f) * -2162f), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(256f, -1504f))), global0[_wgslsmith_index_u32(0u << ((select(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(5337u, 20u)]) >> (8594u % 32u)) % 32u), 20u)])), -2147483647i, -vec4<i32>(u_input.a.x >> (65413u % 32u), ~(-4999i), u_input.a.x, abs(-1i)) << (vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x, min(~u_input.b.x, ~0u), 1u) % vec4<u32>(32u)), -1660f, ~1u);
}

