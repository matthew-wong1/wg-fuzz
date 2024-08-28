struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-709f, -458f, -187f, 269f, 329f, -714f, -743f, 2408f, -399f, -598f, -1095f, 255f, 962f, -545f, 1263f, -1393f, 2188f, -605f, -155f, -916f, -872f, 115f, -379f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], 1128f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1570f, arg_0.a.x, -1509f, -1000f)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(53564u, 23u)], -464f, global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1318f, -102f) * _wgslsmith_f_op_f32(-1189f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(u_input.c), 23u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 23u)] + 1242f)), -698f)));
    let var_1 = u_input.e.x | _wgslsmith_sub_i32(-51667i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(62863i, u_input.a.x, -1i, arg_1), vec4<i32>(-19223i, arg_1, u_input.b.x, u_input.e.x))), firstTrailingBit(-39675i), u_input.e.x));
    var var_2 = any(!vec3<bool>(false, all(vec2<bool>(true, true)) && true, true));
    var_2 = firstLeadingBit(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(0i, -6926i), var_1)) <= _wgslsmith_sub_i32(firstLeadingBit(~var_1), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstTrailingBit(2147483647i), -var_1, 1i >> (u_input.d % 32u)), var_1));
    var var_3 = Struct_3(vec2<i32>(-39660i, 24329i), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(74304u, 1u, false), 23u)]))) * -113f);
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 23>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], _wgslsmith_f_op_f32(min(-903f, -138f)), -632f)), u_input.b.x | ~(u_input.a.x >> (0u % 32u))))));
    let var_1 = u_input.d;
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return Struct_2(Struct_1(~reverseBits(u_input.c)), true, true);
}

fn func_1() -> vec4<f32> {
    global0 = array<f32, 23>();
    var var_0 = func_2();
    var var_1 = vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-firstTrailingBit(countOneBits(0i)), -2147483647i), ~(~(-_wgslsmith_clamp_i32(-2147483647i, u_input.e.x, u_input.e.x))), u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_div_u32(~func_2().a.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, 1u) & vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.a.a, 35598u) >> (vec2<u32>(u_input.d, var_0.a.a) % vec2<u32>(32u))) % 32u), var_0.a.a ^ ~(~u_input.d)));
    global0 = array<f32, 23>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-489f - global0[_wgslsmith_index_u32(76575u, 23u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.d, 23u)], _wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(-842f, global0[_wgslsmith_index_u32(var_0.a.a, 23u)], -1000f)), -2147483647i)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.a, 23u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22847u, 23u)]), global0[_wgslsmith_index_u32(select(var_0.a.a, var_0.a.a, var_0.b), 23u)]))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(75155u, 23u)], -539f, 787f, global0[_wgslsmith_index_u32(var_2.a, 23u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(542f, global0[_wgslsmith_index_u32(var_0.a.a, 23u)], -954f, 135f), vec4<f32>(-2501f, global0[_wgslsmith_index_u32(120128u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], -415f)) - vec4<f32>(global0[_wgslsmith_index_u32(var_0.a.a, 23u)], 2053f, global0[_wgslsmith_index_u32(2048u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-974f, global0[_wgslsmith_index_u32(var_2.a, 23u)], 1428f, global0[_wgslsmith_index_u32(20276u, 23u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], 1079f, 1687f), vec4<f32>(global0[_wgslsmith_index_u32(4143u, 23u)], -436f, -1117f, global0[_wgslsmith_index_u32(1u, 23u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-391f, -1229f, global0[_wgslsmith_index_u32(6265u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], 1023f, -472f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1515f, global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)])))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], -462f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 200f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1979f, global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(u_input.d, u_input.c)), 23u)], -1288f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-901f, -763f, global0[_wgslsmith_index_u32(4294967295u, 23u)], -1633f)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-157f - -1550f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)])), 1478f, _wgslsmith_f_op_f32(abs(-636f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(31924u, 23u)], 180f, -687f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], -540f, -1353f), true)) + vec4<f32>(383f, 953f, global0[_wgslsmith_index_u32(4294967295u, 23u)], -626f)))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, 2160f, -592f, -841f)) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], var_0.x, -1102f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1320f, var_0.x, 170f))))), vec4<f32>(_wgslsmith_f_op_f32(max(326f, var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] * 1591f)))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -448f)));
    let var_1 = func_2().a;
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.e.x, 14331i), vec3<i32>(-40329i, u_input.e.x, u_input.b.x)), _wgslsmith_div_i32(u_input.a.x, -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-18306i, -2206i), -u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -16662i, 2147483647i), vec3<i32>(-8969i, -2147483647i, u_input.a.x))) | 2147483647i), true);
    var_2 = Struct_3(select(-var_2.a, _wgslsmith_div_vec2_i32(u_input.e.xy, var_2.a), !vec2<bool>(var_2.b, var_2.b)) >> (vec2<u32>(abs(1u), u_input.d) % vec2<u32>(32u)), ~(~var_1.a) <= firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, u_input.d, 13158u, var_1.a)), vec4<u32>(1u, 37453u, u_input.c, var_1.a))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), -2853f, 304f);
    let var_3 = max(vec3<u32>(4294967295u, var_1.a, var_1.a), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.a, 1u, 4294967295u) ^ (vec3<u32>(1u, var_1.a, u_input.d) | vec3<u32>(4294967295u, 4294967295u, 5569u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.a, 65958u), vec3<u32>(42213u, var_1.a, u_input.d)) & vec3<u32>(10869u, 0u, 34259u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(622f, var_0.x, global0[_wgslsmith_index_u32(u_input.c, 23u)], var_0.x) * vec4<f32>(-1305f, global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0.x, var_0.x)) - vec4<f32>(143f, var_0.x, -638f, -393f))), true)));
    var_2 = Struct_3(var_2.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, var_2.a.x, max(-(~(-1i)), ~2147483647i), -_wgslsmith_add_i32(-26604i, _wgslsmith_mod_i32(-11315i, var_2.a.x))), 4294967295u);
}

