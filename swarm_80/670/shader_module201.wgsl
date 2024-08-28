struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_vec4_u32(vec4<u32>(61027u, 803u, ~_wgslsmith_dot_vec3_u32(arg_2.c.wzw, vec3<u32>(65005u, arg_2.c.x, 27146u)), ~0u), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.x, 4294967295u, u_input.d.x, arg_2.c.x), arg_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), ~arg_2.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1076f + 262f), 1331f, 1501f);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1377f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - -152f) * var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d)))))));
    var var_4 = Struct_1(_wgslsmith_div_u32(0u, ~(~(1u << (u_input.d.x % 32u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1457f)))), firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_2.a, var_0.a, 17496u) & arg_2.c, ~(vec4<u32>(1u, 4294967295u, 4294967295u, 34063u) << (var_2.c % vec4<u32>(32u))))), var_2.d, vec4<i32>(_wgslsmith_div_i32(var_0.e.x, ~1i), arg_2.e.x, _wgslsmith_add_i32(_wgslsmith_div_i32(13109i, arg_2.e.x), 20699i >> (1u % 32u)) & min(arg_2.e.x, -4692i | var_0.e.x), ~select(-arg_0.x, firstLeadingBit(arg_3.x), true)));
    return _wgslsmith_sub_i32(u_input.b.x, ~1i) > _wgslsmith_div_i32(abs(abs(_wgslsmith_clamp_i32(2147483647i, arg_3.x, u_input.b.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-var_0.e.x, _wgslsmith_div_i32(-12413i, 2147483647i)), firstLeadingBit(arg_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    global1 = 1071f;
    global0 = array<vec2<u32>, 20>();
    var var_0 = ~(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 0u), 4660u ^ u_input.c), ~_wgslsmith_clamp_u32(4294967295u, u_input.c, arg_0.a)) | max(global0[_wgslsmith_index_u32(1u, 20u)], min(vec2<u32>(arg_0.a, arg_0.a), firstLeadingBit(arg_0.c.yz))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d, arg_0.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, arg_0.d)), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), arg_1)))))));
    var var_2 = vec4<f32>(635f, _wgslsmith_f_op_f32(-var_1.x), var_1.x, 591f);
    return 11381u;
}

fn func_2() -> f32 {
    var var_0 = u_input.c << (_wgslsmith_clamp_u32(4294967295u & func_4(Struct_1(106086u, 1074f, vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c), -344f, vec4<i32>(u_input.a, u_input.a, -1i, u_input.b.x)), func_3(vec2<i32>(u_input.a, 1i), true, Struct_1(u_input.c, 398f, vec4<u32>(0u, 4294967295u, 4294967295u, u_input.d.x), 593f, vec4<i32>(2147483647i, -17235i, 1i, u_input.b.x)), vec3<i32>(11017i, 0i, 0i)), u_input.b << (vec2<u32>(u_input.d.x, 90432u) % vec2<u32>(32u)), firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, -1i))), firstTrailingBit(1u), ~1u) % 32u);
    global3 = array<vec4<bool>, 12>();
    global0 = array<vec2<u32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_2 = Struct_1(~(~u_input.d.x) ^ u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -453f), _wgslsmith_f_op_f32(step(-1596f, var_1.x))), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - var_1.x))), firstLeadingBit((vec4<u32>(u_input.d.x, u_input.c, 0u, 23903u) << (abs(vec4<u32>(4294967295u, 25569u, 60867u, u_input.d.x)) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(4294967295u, 1u, 16366u, u_input.c) | vec4<u32>(1u, 1u, u_input.c, 61295u))), _wgslsmith_f_op_f32(min(489f, _wgslsmith_f_op_f32(f32(-1f) * -1539f))), select(vec4<i32>(-1i, ~40056i, u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.a), ~vec2<i32>(-1i, u_input.a))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 75820i, u_input.a, 19684i), -vec4<i32>(u_input.a, u_input.b.x, u_input.a, 27905i)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), 1u == u_input.c)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1867f))))) - _wgslsmith_f_op_f32(select(-1031f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + var_1.x))), true))), -281f));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = _wgslsmith_clamp_u32(12598u, abs(u_input.c), 0u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(612f, 1211f, false))))), -116f) - -143f);
    var_0 = 1163f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-641f + _wgslsmith_f_op_f32(floor(472f)))))), _wgslsmith_f_op_f32(func_2()), false));
    var var_1 = Struct_1(countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.d.x, 1104u), ~min(u_input.d.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1561f)))), _wgslsmith_f_op_f32(f32(-1f) * -1430f)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, u_input.c, _wgslsmith_add_u32(u_input.d.x, 137253u), u_input.c), vec4<u32>(u_input.c, 56326u << (reverseBits(u_input.c) % 32u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 55698u, 18533u, 4294967295u), vec4<u32>(1u, 31383u, 60979u, 35294u))), 14772u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1828f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1338f, -1385f))), true | all(vec2<bool>(true, false))))), max(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, -1i, -1i, 2147483647i)), vec4<i32>(u_input.b.x, u_input.a, 12917i, arg_0) >> (vec4<u32>(0u, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u))), countOneBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, arg_0)) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -41931i, 27626i, 5918i), vec4<i32>(-1052i, -1i, -1i, arg_0))), abs(vec4<i32>(arg_0, -2147483647i, arg_0, -3035i)) | vec4<i32>(u_input.a >> (117520u % 32u), _wgslsmith_add_i32(u_input.b.x, arg_0), _wgslsmith_div_i32(-2147483647i, 45480i), arg_0)));
    return _wgslsmith_f_op_f32(max(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * var_1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~4294967295u);
    let var_1 = Struct_1(~4294967295u, _wgslsmith_f_op_f32(func_1(-29024i)), vec4<u32>(~abs(_wgslsmith_clamp_u32(1u, var_0, u_input.c)), var_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0, 52942u, u_input.d.x, var_0), min(vec4<u32>(1u, var_0, var_0, u_input.d.x), vec4<u32>(u_input.d.x, 71684u, 0u, 42308u)), true), vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53007u, u_input.c), vec3<u32>(var_0, 1u, var_0)), _wgslsmith_div_u32(4294967295u, 39488u), 1u)), _wgslsmith_sub_u32(max(0u, 31260u) << (1u % 32u), u_input.c)), 507f, vec4<i32>(u_input.b.x, 1i, firstLeadingBit(-u_input.a) >> (u_input.d.x % 32u), -(u_input.a << (_wgslsmith_mult_u32(u_input.d.x, var_0) % 32u))));
    global0 = array<vec2<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-579f, var_1.d))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, -287f) * vec2<f32>(-860f, -135f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1417f))))), vec2<bool>(true, true)));
    var var_3 = Struct_1(~var_0, _wgslsmith_f_op_f32(sign(1541f)), var_1.c, -162f, var_1.e);
    global2 = (_wgslsmith_sub_u32(~min(4294967295u, 1u), 49459u) | (var_1.c.x | 13779u)) << (_wgslsmith_clamp_u32(9006u, countOneBits(u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.c.x, 32463u, var_0, var_0), var_1.c) | _wgslsmith_clamp_u32(countOneBits(u_input.d.x), u_input.c >> (var_0 % 32u), ~4294967295u)) % 32u);
    let var_4 = _wgslsmith_div_i32(var_1.e.x, 2147483647i);
    let var_5 = Struct_1(_wgslsmith_add_u32(var_1.c.x, 13773u) ^ 4294967295u, -749f, var_3.c, var_1.d, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.c.x, var_3.a), var_1.c.xxw)), ~53798u, 1u) >> (_wgslsmith_sub_u32(min(var_0, 1u) | 1u, _wgslsmith_div_u32(var_1.c.x | var_5.c.x, 4294967295u)) % 32u), abs(_wgslsmith_add_vec2_u32(var_3.c.yx, u_input.d.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1826f, 190f))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.b, var_3.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, var_2.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(635f, var_1.b)))), var_5.e.wz, (firstLeadingBit(u_input.b.x << (4929u % 32u)) << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d.x, 1u, var_3.a), vec3<u32>(u_input.d.x, var_3.c.x, var_5.a), vec3<bool>(false, true, true)), ~var_1.c.yyy) % 32u)) | ~1i);
}

