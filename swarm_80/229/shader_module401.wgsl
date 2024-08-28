struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(2147483647i, true, -1654f), Struct_1(1i, true, 1549f), Struct_1(-9913i, true, -126f), Struct_1(2147483647i, false, -770f), Struct_1(25250i, true, 1650f), Struct_1(-28032i, false, -1000f), Struct_1(-14012i, false, -514f), Struct_1(-1i, false, -2494f), Struct_1(-42560i, true, -1047f), Struct_1(20291i, true, 1619f), Struct_1(24718i, false, 1648f), Struct_1(0i, true, 1000f), Struct_1(0i, true, -1000f), Struct_1(-36912i, true, -159f), Struct_1(2147483647i, false, -859f), Struct_1(-73371i, true, -1641f), Struct_1(-67054i, false, 2393f), Struct_1(i32(-2147483648), false, -373f), Struct_1(0i, true, -1000f), Struct_1(i32(-2147483648), true, -511f), Struct_1(-67973i, true, -1809f), Struct_1(-18555i, true, 604f), Struct_1(24174i, true, -538f), Struct_1(54489i, false, -1416f), Struct_1(-40850i, false, -282f), Struct_1(50443i, false, 173f), Struct_1(-14072i, true, 613f), Struct_1(38184i, true, -581f));

var<private> global2: i32;

var<private> global3: i32 = 0i;

var<private> global4: array<u32, 8> = array<u32, 8>(1u, 105u, 4294967295u, 4528u, 4294967295u, 62625u, 72077u, 39275u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~global4[_wgslsmith_index_u32(1u, 8u)], ~(~u_input.b.x) & u_input.a), u_input.b, vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b >> (vec2<u32>(global4[_wgslsmith_index_u32(37545u, 8u)], 4294967295u) % vec2<u32>(32u)), vec2<u32>(global4[_wgslsmith_index_u32(0u, 8u)], 0u)), ~countOneBits(~69924u)));
    var var_1 = Struct_3(arg_0.c, ~0u, any(vec3<bool>(true, u_input.a != _wgslsmith_clamp_u32(var_0.x, u_input.b.x, 0u), true)), !arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.c, arg_0.d.c))) < -231f);
    var var_2 = Struct_2(arg_0.c, ~(countOneBits(-arg_0.b) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d.a, var_1.a.a), arg_0.b)), Struct_1(select(_wgslsmith_mult_i32(firstTrailingBit(arg_0.a.a), i32(-1i) * -14631i), 68141i, all(vec3<bool>(false, true, true))), var_1.e || all(vec2<bool>(arg_0.d.b, arg_2.x)), 847f), arg_0.d);
    var var_3 = Struct_2(Struct_1(abs(var_1.a.a ^ _wgslsmith_sub_i32(var_1.a.a, arg_0.d.a)), true, _wgslsmith_f_op_f32(-525f - 250f)), vec2<i32>(-firstLeadingBit(-53913i), -18813i), var_2.c, Struct_1(((var_1.a.a >> (0u % 32u)) & -27845i) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a, -13251i, arg_0.b.x), vec3<i32>(1i, var_1.a.a, -13654i)) | -55792i), ~4294967295u != (max(u_input.b.x, arg_1) ^ global4[_wgslsmith_index_u32(61413u, 8u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f - var_1.a.c))));
    global3 = (arg_0.d.a >> ((_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(94270u, var_1.b, global4[_wgslsmith_index_u32(u_input.a, 8u)], var_0.x), vec4<u32>(4294967295u, 2353u, u_input.b.x, var_0.x)), _wgslsmith_mult_u32(var_0.x, 0u)) ^ ~_wgslsmith_clamp_u32(var_1.b, arg_1, var_0.x)) % 32u)) | abs(arg_0.c.a);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1551f, var_1.a.c, 251f, var_3.d.c) * vec4<f32>(1722f, 195f, var_1.a.c, -851f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.c, var_2.c.c, -1633f, var_3.a.c))), vec4<f32>(var_3.c.c, -2138f, var_2.d.c, -628f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, var_3.a.c, var_1.a.c, var_3.a.c) - vec4<f32>(var_3.c.c, 1423f, -2040f, arg_0.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, arg_0.c.c, arg_0.d.c, var_2.a.c)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c, 1000f, -598f, arg_0.a.c) * vec4<f32>(337f, -1986f, -208f, var_2.c.c)))), select(!vec4<bool>(false, arg_0.d.b, true, true), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(var_3.d.b, var_2.a.b, true, true)), !var_2.a.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(var_3.d.c, var_1.a.c), 141f, _wgslsmith_f_op_f32(var_1.a.c * var_1.a.c), -797f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_3.d.c, -1885f, arg_0.a.c))), vec4<f32>(-2041f, -1384f, -263f, 637f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.d.c, var_1.a.c, 536f, -465f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c, var_2.a.c, 1000f, var_2.a.c) + vec4<f32>(1815f, 634f, arg_0.d.c, -252f))))), !(!(!(!vec4<bool>(true, true, arg_0.a.b, true))))));
}

fn func_2() -> bool {
    global2 = 50570i;
    var var_0 = 256f;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(655f, 338f, -1161f, -780f), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 8u)], 21u)], u_input.a, vec2<bool>(true, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, 979f, 556f, 517f))))))));
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), vec2<i32>(countOneBits(1i), abs(28680i << (u_input.a % 32u)) >> (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(68851u, 4294967295u, 4294967295u, 59457u), vec4<u32>(u_input.b.x, 39409u, 0u, 72705u)), 8u)] % 32u)));
    let var_3 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false));
    return var_3.x;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(-7697i, -56639i)), func_2(), _wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(f32(-1f) * -663f)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.a, -45430i), -_wgslsmith_div_i32(-42718i, 64371i) ^ -(~var_0.a)), min(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(0i, var_0.a)), vec2<i32>(-21604i, var_0.a) << (u_input.b % vec2<u32>(32u)), vec2<i32>(var_0.a, 0i)), abs(vec2<i32>(-17335i, 2147483647i))));
    var var_2 = Struct_2(Struct_1(~var_1, ~_wgslsmith_mult_u32(606u, 38066u) >= ~global4[_wgslsmith_index_u32(~u_input.a, 8u)], 357f), min(firstLeadingBit(vec2<i32>(countOneBits(21343i), var_1 & -2147483647i)), max(vec2<i32>(-1i) * -vec2<i32>(var_0.a, var_0.a), vec2<i32>(-var_0.a, select(var_1, -1i, false)))), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) - var_0.c)), Struct_1(var_1 ^ var_0.a, !(u_input.b.x < 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1011f * var_0.c) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-653f)), _wgslsmith_f_op_f32(f32(-1f) * -322f))))));
    global4 = array<u32, 8>();
    let var_3 = firstTrailingBit(var_1);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1173f, -100f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), -1226f)), _wgslsmith_f_op_f32(max(-1220f, _wgslsmith_f_op_f32(sign(413f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1696f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-807f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -1000f))))))));
    global4 = array<u32, 8>();
    var var_1 = var_0;
    var var_2 = Struct_3(Struct_1(_wgslsmith_clamp_i32(-51563i, ~abs(34665i), _wgslsmith_sub_i32(_wgslsmith_add_i32(-3638i, -51299i), -31142i)), false, var_0.x), min(~(~(~31601u)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(53721u, 1u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~4491u, 8u)], 8u)], 8u)])), false, vec2<bool>(any(vec3<bool>(true, true, true)), false), !(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], global4[_wgslsmith_index_u32(0u, 8u)]) < ~u_input.a) || false);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(115577u, 8u)], 1u) & reverseBits(var_2.b))), _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b)), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec3<u32>(global4[_wgslsmith_index_u32(var_2.b, 8u)], 4294967295u, 4294967295u)) >> (countOneBits(vec3<u32>(16437u, 74572u, var_2.b)) % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(firstTrailingBit(4294967295u), ~0u, u_input.a)) % vec3<u32>(32u)), vec2<i32>(~firstLeadingBit(-22813i), var_3.d.a & 1i), ~1u);
}

