struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, true, true, true, true, true, true, true, true, false, true, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_2(!(!(!select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 32u)], false)))), Struct_1(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23430u))) ^ u_input.a, vec4<u32>(u_input.a, 1u, ~u_input.a, ~5732u), !select(!vec4<bool>(arg_0.x, false, arg_0.x, false), select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(false, arg_0.x, true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), global0[_wgslsmith_index_u32(u_input.a, 32u)]), arg_0.x || false), u_input.a), ~(-64009i), Struct_1(u_input.a, vec4<u32>(u_input.a, _wgslsmith_div_u32(37496u, 1u << (1u % 32u)), 344u, u_input.a), select(vec4<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(~18862u, 32u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, global0[_wgslsmith_index_u32(u_input.a, 32u)], false), vec4<bool>(arg_0.x | false, true, arg_0.x, arg_0.x)), 93537u));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1436f);
    var var_3 = Struct_4(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 3204u), vec3<u32>(u_input.a, u_input.a, var_0.d.b.x)), firstLeadingBit(0u), u_input.a), vec3<u32>(18794u, var_0.b.b.x, u_input.a)), ~var_0.b.b.wxx), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, ~u_input.a, 530u), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)))), ~((vec4<i32>(var_1.c, var_1.c, 37614i, var_0.c) << (vec4<u32>(var_0.d.b.x, var_1.b.d, 1u, 21118u) % vec4<u32>(32u))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(21413i, var_0.c, var_1.c, var_0.c), vec4<i32>(-29830i, var_0.c, var_1.c, var_0.c))), ~_wgslsmith_mult_i32(var_0.c, _wgslsmith_mult_i32(-2147483647i, var_1.c)), var_1.b);
    var var_4 = Struct_1(firstLeadingBit(61517u), vec4<u32>(reverseBits(_wgslsmith_add_u32(reverseBits(1u), 24039u)), _wgslsmith_add_u32(~var_0.b.b.x, min(1u, 0u)), ~var_3.e.a, _wgslsmith_dot_vec4_u32(select(var_1.d.b, vec4<u32>(0u, u_input.a, 81286u, 54865u), false), _wgslsmith_mod_vec4_u32(var_0.d.b, var_1.b.b)) << (31458u % 32u)), select(!select(var_0.d.c, !var_1.d.c, var_1.a), select(!(!var_0.d.c), vec4<bool>(var_3.d > -25274i, var_1.d.c.x, !var_1.b.c.x, !var_0.b.c.x), select(vec4<bool>(false, true, var_1.d.c.x, global0[_wgslsmith_index_u32(3021u, 32u)]), select(var_1.a, vec4<bool>(var_0.d.c.x, false, var_0.b.c.x, false), vec4<bool>(var_1.a.x, var_1.b.c.x, false, var_3.e.c.x)), any(vec4<bool>(false, false, var_1.d.c.x, false)))), !(false && all(vec4<bool>(true, var_1.a.x, false, true)))), select(6839u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a << (var_0.b.d % 32u), var_0.d.a, ~var_3.a.x, min(4294967295u, 26988u)), ~var_0.d.b ^ (var_1.b.b & var_1.b.b)), global0[_wgslsmith_index_u32(var_0.d.b.x, 32u)]));
    return var_4.b.yyy << (vec3<u32>(var_4.a, ~_wgslsmith_dot_vec2_u32(var_1.b.b.zx, vec2<u32>(var_4.b.x, 76988u)) & (min(3967u, u_input.a) >> ((52317u << (var_4.d % 32u)) % 32u)), 52797u) % vec3<u32>(32u));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec3_u32(max(reverseBits(vec3<u32>(39393u, ~1u, ~29987u)), ~vec3<u32>(9846u, ~u_input.a, ~u_input.a)), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ ((vec3<u32>(34344u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 0u)) ^ ~vec3<u32>(35039u, u_input.a, 18815u))));
    global0 = array<bool, 32>();
    var_0 = select(func_3(select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(33536u, 32u)], true), vec2<bool>(false, false)), select(vec2<bool>(global0[_wgslsmith_index_u32(23811u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), false), true)), vec3<u32>(var_0.x, _wgslsmith_sub_u32(u_input.a, var_0.x), min(var_0.x ^ 33408u, var_0.x)), vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a >> (4294967295u % 32u), 32u)], true, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 32u)])) >> (~reverseBits(max(vec3<u32>(1u, var_0.x, 20815u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<u32>(1u, 0u, u_input.a), vec3<u32>(4294967295u, 1u, var_0.x)))) % vec3<u32>(32u));
    let var_1 = vec4<f32>(arg_0, arg_0, 942f, _wgslsmith_f_op_f32(1f + -1082f));
    var var_2 = Struct_3(Struct_1(firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(0u, var_0.x))), vec4<u32>(~0u, firstTrailingBit(u_input.a), 8262u, ~(~107327u)), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(8003u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), false)), _wgslsmith_add_u32(~var_0.x, u_input.a)), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u & var_0.x, 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 32u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], true), false), !vec3<bool>(false, global0[_wgslsmith_index_u32(10097u, 32u)], global0[_wgslsmith_index_u32(37841u, 32u)])), vec3<bool>(4294967295u == u_input.a, true, !global0[_wgslsmith_index_u32(u_input.a, 32u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(50098u, 32u)], false)) | true), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(102811u, 32u)], true, false)))), Struct_1(0u, vec4<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, 0u))), _wgslsmith_mod_u32(var_0.x, ~u_input.a), abs(4294967295u), _wgslsmith_sub_u32(~1u, var_0.x)), vec4<bool>(true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)])), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 46043u, u_input.a, u_input.a), vec4<u32>(var_0.x, 0u, var_0.x, 22514u)), vec4<u32>(51788u, 36257u, 1u, 44442u)), 32u)]), var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-1i), ~31031i) >> (select(vec2<u32>(1u, var_0.x) & vec2<u32>(u_input.a, 0u), reverseBits(var_0.xy), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(27729u, 32u)])) % vec2<u32>(32u)), countOneBits(vec2<i32>(30764i, 6534i)) | ~(vec2<i32>(-1i, -58462i) << (var_0.zx % vec2<u32>(32u)))));
    return _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_2.d.x, var_2.d.x, -64873i), vec3<i32>(-19375i, 1i, ~var_2.d.x)), ~vec3<i32>(0i, -1i ^ var_2.d.x, -1i | var_2.d.x), ~(~vec3<i32>(var_2.d.x, -1i, var_2.d.x))), vec3<i32>(var_2.d.x, var_2.d.x, -1i) | ~vec3<i32>(_wgslsmith_mult_i32(var_2.d.x, var_2.d.x), -2147483647i, -64595i));
}

fn func_1() -> vec3<i32> {
    let var_0 = vec2<i32>(0i, countOneBits(_wgslsmith_clamp_i32(35497i, abs(-19719i), 0i >> (u_input.a % 32u)) ^ 1i));
    let var_1 = 614f;
    return _wgslsmith_mult_vec3_i32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) + _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, -1i), reverseBits(30580i)), _wgslsmith_mult_i32(abs(var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(32661i, -2147483647i, 37815i))), firstLeadingBit(var_0.x)), countOneBits(max(-vec3<i32>(31769i, 60066i, var_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, 16890i), vec3<i32>(1i, 2147483647i, -22029i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -186f;
    let var_1 = select(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(func_1(), vec3<i32>(-44089i, -18475i, 58598i)), -select(vec3<i32>(-1i, -1i, 54025i), vec3<i32>(-26502i, 17872i, 2627i), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(20475u, 32u)])), select(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(0i, 2147483647i, 0i)), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))), -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), vec3<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 32u)], true, _wgslsmith_f_op_f32(-var_0) >= -415f)) & (vec3<i32>(-select(-1i, -2147483647i, true), -1i, i32(-1i) * -2147483647i) & _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -3410i), vec2<i32>(-22056i, 0i)), min(3642i, 1i), func_2(1000f).x), firstTrailingBit(vec3<i32>(1i, 1i, 1i))));
    global0 = array<bool, 32>();
    let var_2 = !select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], false, global0[_wgslsmith_index_u32(u_input.a, 32u)], true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(15496u, 32u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 32u)], false)), !(!vec4<bool>(global0[_wgslsmith_index_u32(100378u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), false), vec4<bool>(false, global0[_wgslsmith_index_u32(abs(27822u), 32u)], all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(11410u, 32u)], false))), false), vec4<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(4760u, 32u)])) && global0[_wgslsmith_index_u32(1u, 32u)], countOneBits(u_input.a) > (u_input.a ^ u_input.a), _wgslsmith_f_op_f32(var_0 - var_0) == _wgslsmith_f_op_f32(f32(-1f) * -489f)));
    global0 = array<bool, 32>();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1266f, var_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(634f, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1188f, var_0))), !var_2.wx)))), -2172i, var_1.x, -var_1.x);
}

