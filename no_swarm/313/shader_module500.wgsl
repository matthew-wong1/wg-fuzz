struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

var<private> global2: array<f32, 18> = array<f32, 18>(-1284f, -680f, 1001f, -1391f, -546f, -1546f, -707f, 1703f, -330f, -1000f, 201f, 1372f, -921f, 137f, -747f, 1192f, 251f, -375f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_add_u32(u_input.a, ~(~0u));
    var var_1 = select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), u_input.a > 39542u), select(true, true, true)), false);
    var var_2 = abs(_wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(arg_0, arg_0), -3730i), ~vec2<i32>(-24499i, -2147483647i)));
    let var_3 = Struct_2(Struct_1(min(~vec3<u32>(u_input.a, var_0, var_0), min(select(vec3<u32>(var_0, u_input.a, 0u), vec3<u32>(u_input.a, 32907u, var_0), true), countOneBits(vec3<u32>(u_input.a, u_input.a, var_0))))), Struct_1(max(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(13135u, 63699u, var_0)), _wgslsmith_div_vec3_u32(vec3<u32>(49684u, u_input.a, 76906u), vec3<u32>(47560u, u_input.a, var_0))), select(reverseBits(vec3<u32>(25124u, var_0, 9048u)), _wgslsmith_mult_vec3_u32(vec3<u32>(7448u, 22080u, 39884u), vec3<u32>(1u, u_input.a, 0u)), var_1.x | true))), Struct_1(~(~(~vec3<u32>(u_input.a, u_input.a, var_0)))), u_input.a);
    var var_4 = _wgslsmith_mod_u32(var_0, var_0) | ~(~var_0);
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) * _wgslsmith_f_op_f32(f32(-1f) * -470f)), 674f, -530f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 18u)], 203f, -266f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = all(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), !vec4<bool>(false, all(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, false, true)), true), -2147483647i == firstTrailingBit(5155i)));
    let var_1 = ~(-1i);
    var var_2 = -23321i;
    var var_3 = vec4<f32>(arg_0.x, _wgslsmith_f_op_vec3_f32(func_3(min(_wgslsmith_add_i32(arg_1.x, var_1), arg_1.x) << ((reverseBits(u_input.a) << (arg_2.x % 32u)) % 32u))).x, -1504f, 1165f);
    var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.x, 18u)]))) - 1f), arg_0.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(-731f, var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -597f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.x, 18u)], var_3.x, arg_0.x, 1659f) * vec4<f32>(1337f, -1051f, global2[_wgslsmith_index_u32(1323u, 18u)], 470f)) * vec4<f32>(global2[_wgslsmith_index_u32(arg_2.x, 18u)], global2[_wgslsmith_index_u32(45429u, 18u)], 2338f, 1777f)))))));
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = (u_input.a & _wgslsmith_div_u32(u_input.a & ~u_input.a, (u_input.a & u_input.a) ^ 1u)) < 0u;
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(13133u, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 18u)], -1517f, -576f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-346f, global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(6880u, 18u)])))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 18u)], -791f, 323f) * vec3<f32>(1838f, -1165f, global2[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_f_op_vec3_f32(func_3(1i))))), reverseBits(vec4<i32>(~(-1i), ~0i, -arg_0.x, _wgslsmith_mult_i32(arg_0.x, 1i)) & -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, -17972i, -1i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -28428i))), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 51764u, 1u, 1u), vec4<u32>(0u, 16701u, u_input.a, 45752u), vec4<bool>(true, true, false, true)), vec4<u32>(1u, 71634u, 907u, u_input.a))), abs(_wgslsmith_mod_u32(~6660u, 22502u)), u_input.a)));
    var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 18u)] + 1595f);
    global0 = (arg_0.x >> (max(u_input.a, firstLeadingBit(u_input.a)) % 32u)) == reverseBits(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(16965i, arg_0.x)), arg_0.x, abs(arg_0.x & -2147483647i)));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~(select(vec3<u32>(4294967295u, u_input.a, 102642u), vec3<u32>(1u, 4294967295u, u_input.a), false) & vec3<u32>(u_input.a, 35334u, 63254u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, ~u_input.a), ~0u ^ _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), firstTrailingBit(max(u_input.a, 4294967295u)))));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = true;
    global2 = array<f32, 18>();
    global0 = true;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_0.c.a.x, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(59582u, 18u)], -487f))))), -353f, -469f);
    let var_1 = Struct_2(arg_0.a, Struct_1(vec3<u32>(firstLeadingBit(arg_0.d ^ 9467u), 59097u, arg_0.d)), arg_0.b, 53931u);
    return Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 24916u | _wgslsmith_mult_u32(arg_0.d, 1u), var_1.b.a.x), abs(vec3<u32>(2124u, ~4294967295u, arg_0.c.a.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = func_5(Struct_2(func_2(arg_0.zxw), Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4727u, 31236u), vec3<u32>(u_input.a, u_input.a, 1u))), func_2(abs(arg_0.yzz)), ~(u_input.a | 42194u) | u_input.a), 733f);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~abs(var_0.a.x) >> (0u % 32u), 18u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(518f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(64532u, 18u)] - 630f)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(77689u, u_input.a, 1u), 18u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 18u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(26195u, 18u)], -651f, global2[_wgslsmith_index_u32(var_0.a.x, 18u)], global2[_wgslsmith_index_u32(73027u, 18u)]))))));
    global1 = false;
    global1 = _wgslsmith_mod_i32(-arg_0.x, -(-6519i ^ (arg_0.x & 36578i))) > arg_1.x;
    var var_2 = select(arg_2, false, true);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(40760u, 20607u, 3369u), min(vec3<u32>(u_input.a, 30896u, 0u), vec3<u32>(1u, 32558u, u_input.a))) >> (vec3<u32>(func_1(vec4<i32>(0i, 1i, -62167i, 41361i), vec2<i32>(-1i, 26362i), true), u_input.a, ~5508u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a) | select(u_input.a, u_input.a, true), func_1(vec4<i32>(1i, -75778i, 1i, 57753i), vec2<i32>(-2147483647i, 26199i) >> (vec2<u32>(u_input.a, 21810u) % vec2<u32>(32u)), false), u_input.a)));
    var var_1 = Struct_2(func_5(Struct_2(Struct_1(_wgslsmith_add_vec3_u32(var_0.a, var_0.a)), var_0, func_2(-vec3<i32>(26083i, 0i, -26612i)), ~(var_0.a.x ^ u_input.a)), 1000f), Struct_1(var_0.a), Struct_1(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 61762u, var_0.a.x), vec3<u32>(u_input.a, var_0.a.x, 1u)) & ~vec3<u32>(u_input.a, 17567u, 1u))), ~(_wgslsmith_div_u32(func_1(vec4<i32>(31891i, 2147483647i, -11708i, -2147483647i), vec2<i32>(-15175i, 0i), false), _wgslsmith_mult_u32(1u, u_input.a)) >> (~4294967295u % 32u)));
    var var_2 = Struct_2(func_2(vec3<i32>(1i, 1i, 1i)), Struct_1(vec3<u32>(var_1.c.a.x << (var_1.c.a.x % 32u), countOneBits(~var_1.b.a.x), var_0.a.x)), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a << (4514u % 32u), countOneBits(u_input.a), var_1.d ^ var_1.c.a.x), _wgslsmith_mod_vec3_u32(var_0.a, var_1.b.a))), ~u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(func_1(vec4<i32>(-2147483647i, -1i, 33097i, -68922i), vec2<i32>(2147483647i, 0i), false), 18u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1068u, 18u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]) + vec2<f32>(438f, global2[_wgslsmith_index_u32(0u, 18u)]))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]) * vec2<f32>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(var_1.a.a.x, 18u)]))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 18u)], -806f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1590f, 1073f), vec2<f32>(-459f, global2[_wgslsmith_index_u32(5760u, 18u)])))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.a, 18u)])))))));
    global0 = true & (func_5(Struct_2(Struct_1(var_2.c.a), Struct_1(vec3<u32>(0u, 1u, var_0.a.x)), func_2(vec3<i32>(-73885i, -1i, 1i)), 1u & u_input.a), _wgslsmith_f_op_f32(-1828f * 1046f)).a.x < 4294967295u);
    var var_4 = max(_wgslsmith_div_vec3_i32(max(-vec3<i32>(-1i, 30243i, 0i), ~vec3<i32>(25353i, 15956i, 0i)), vec3<i32>(2147483647i, ~0i, 1i)), vec3<i32>(_wgslsmith_div_i32(36325i, -7527i), 1i, 22744i) << (vec3<u32>(u_input.a, 47282u, ~1u) % vec3<u32>(32u))) | vec3<i32>(1i, 1i, 1i);
    global1 = false;
    var_1 = Struct_2(Struct_1(~firstTrailingBit(abs(var_2.b.a))), var_0, func_2(-(vec3<i32>(36484i, var_4.x, -31097i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_4.x, -735i, -1i), vec3<i32>(33191i, 16475i, var_4.x)))), var_2.a.a.x);
    let var_5 = Struct_1(_wgslsmith_div_vec3_u32(var_2.c.a, firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.b.a.x, var_1.a.a.x), var_2.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(9167u >> (u_input.a % 32u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a.x, var_5.a.x, 29146u, var_5.a.x), abs(vec4<u32>(17993u, var_2.c.a.x, 0u, 71419u))), 50083u, _wgslsmith_mult_u32(firstTrailingBit(var_0.a.x), u_input.a), 0u));
}

