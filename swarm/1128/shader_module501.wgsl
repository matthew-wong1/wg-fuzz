struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_3,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(0u, 4294967295u), vec2<u32>(76294u, 1u), vec2<u32>(78007u, 10899u), vec2<u32>(4294967295u, 1u), vec2<u32>(455u, 0u), vec2<u32>(18319u, 10598u), vec2<u32>(53456u, 0u), vec2<u32>(4189u, 23849u), vec2<u32>(50483u, 1u), vec2<u32>(63210u, 15521u), vec2<u32>(4294967295u, 96983u), vec2<u32>(16329u, 0u), vec2<u32>(26317u, 69341u));

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(64211i, 4930u, false), Struct_1(18228i, 32383u, false)), Struct_2(Struct_1(43643i, 23926u, false), Struct_1(1i, 0u, true)), Struct_2(Struct_1(i32(-2147483648), 0u, true), Struct_1(69062i, 4294967295u, false)), Struct_2(Struct_1(-32135i, 62774u, false), Struct_1(0i, 4294967295u, true)), Struct_2(Struct_1(0i, 4294967295u, true), Struct_1(1i, 91921u, true)), Struct_2(Struct_1(-20346i, 14720u, true), Struct_1(11567i, 39501u, true)), Struct_2(Struct_1(31463i, 0u, false), Struct_1(1i, 22404u, false)), Struct_2(Struct_1(61167i, 1u, false), Struct_1(i32(-2147483648), 83079u, false)), Struct_2(Struct_1(16627i, 76790u, false), Struct_1(2147483647i, 32981u, true)), Struct_2(Struct_1(-1i, 12774u, true), Struct_1(17680i, 0u, true)), Struct_2(Struct_1(-1i, 50002u, true), Struct_1(6564i, 25923u, false)), Struct_2(Struct_1(i32(-2147483648), 4294967295u, true), Struct_1(-48383i, 48733u, true)), Struct_2(Struct_1(-77730i, 21105u, true), Struct_1(23367i, 4294967295u, true)), Struct_2(Struct_1(-18377i, 1u, false), Struct_1(62627i, 4294967295u, true)), Struct_2(Struct_1(i32(-2147483648), 0u, true), Struct_1(1i, 6664u, false)), Struct_2(Struct_1(-34052i, 4294967295u, true), Struct_1(2147483647i, 1u, true)), Struct_2(Struct_1(i32(-2147483648), 1u, false), Struct_1(-1i, 4294967295u, false)), Struct_2(Struct_1(i32(-2147483648), 4294967295u, true), Struct_1(-7714i, 88555u, true)), Struct_2(Struct_1(1i, 72161u, false), Struct_1(73148i, 24403u, false)), Struct_2(Struct_1(2147483647i, 0u, true), Struct_1(58601i, 65114u, false)), Struct_2(Struct_1(i32(-2147483648), 32871u, true), Struct_1(2147483647i, 37701u, false)), Struct_2(Struct_1(1i, 1u, false), Struct_1(22551i, 0u, true)), Struct_2(Struct_1(i32(-2147483648), 0u, false), Struct_1(-16152i, 28953u, true)), Struct_2(Struct_1(-52337i, 27646u, true), Struct_1(i32(-2147483648), 1u, false)), Struct_2(Struct_1(2147483647i, 28804u, false), Struct_1(-12771i, 4294967295u, true)), Struct_2(Struct_1(-37523i, 4294967295u, true), Struct_1(-27903i, 55379u, false)), Struct_2(Struct_1(i32(-2147483648), 5088u, true), Struct_1(2147483647i, 9599u, true)), Struct_2(Struct_1(-1i, 44100u, true), Struct_1(9564i, 88361u, false)), Struct_2(Struct_1(0i, 0u, true), Struct_1(2147483647i, 97944u, false)), Struct_2(Struct_1(-51006i, 0u, true), Struct_1(1i, 0u, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 13>();
    let var_0 = (i32(-1i) * -27685i) << (firstLeadingBit(~(~firstLeadingBit(u_input.c))) % 32u);
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(arg_0.b, 30u)], max(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39931u, 4294967295u, u_input.e, 8981u), vec4<u32>(1u, 4294967295u, 1u, u_input.c)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 62510u, u_input.c), vec4<u32>(u_input.c, 4294967295u, arg_0.b, 4294967295u)), vec4<u32>(0u, 4294967295u, u_input.e, 38444u) & vec4<u32>(u_input.c, arg_0.b, 34197u, arg_0.b)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(3300u, 1u, arg_0.b, u_input.c), vec4<u32>(0u, 1u, u_input.c, arg_0.b)) & _wgslsmith_mult_vec4_u32(vec4<u32>(26641u, u_input.c, 56091u, arg_0.b), vec4<u32>(49224u, 30949u, 40832u, 28414u)), select(vec4<u32>(24419u, 0u, u_input.e, arg_0.b), vec4<u32>(u_input.e, arg_0.b, u_input.c, u_input.e), vec4<bool>(arg_0.c, false, false, true)) | vec4<u32>(arg_0.b, u_input.c, arg_0.b, u_input.c), !vec4<bool>(true, false, arg_0.c, false))), Struct_3(!select(!vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, true), arg_0.c), vec2<bool>(true, arg_0.c)), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17177u, 1u, 21770u), vec3<u32>(arg_0.b, arg_0.b, 4294967295u)), 0u, u_input.c, u_input.e)), Struct_1(var_0, firstLeadingBit(_wgslsmith_div_u32(0u, 78994u)), arg_0.c || true), true, global1[_wgslsmith_index_u32(u_input.e, 30u)]), vec3<u32>(~_wgslsmith_add_u32(u_input.c, select(u_input.c, arg_0.b, arg_0.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.b, arg_0.b), vec3<u32>(u_input.c, 1u, 51938u)) << (~vec3<u32>(0u, arg_0.b, 46775u) % vec3<u32>(32u)), abs(~vec3<u32>(85583u, arg_0.b, 11539u))), _wgslsmith_dot_vec4_u32((vec4<u32>(0u, 33647u, 4294967295u, 42582u) ^ vec4<u32>(1u, 0u, 0u, arg_0.b)) >> ((vec4<u32>(arg_0.b, arg_0.b, 1u, u_input.c) << (vec4<u32>(arg_0.b, 20567u, 0u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(52769u, arg_0.b, u_input.e, 0u) >> (vec4<u32>(4294967295u, 4294967295u, 0u, 50356u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(arg_0.b, 47370u, 20181u) >> (vec3<u32>(0u, 11918u, 169u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.e, 4294967295u, 33815u)), arg_0.c), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_0.b, u_input.e, 2868u)), vec3<u32>(1u, 41221u, 21173u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.e, 17066u, 1u), vec3<u32>(0u, ~arg_0.b, 0u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-161f, -2140f))), _wgslsmith_f_op_f32(select(-129f, _wgslsmith_f_op_f32(trunc(389f)), u_input.e >= arg_0.b))) * vec2<f32>(_wgslsmith_f_op_f32(362f + _wgslsmith_f_op_f32(floor(1299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f + -1412f))))));
    let var_3 = var_1.c;
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(58173i, 26697u, true))))), _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f - 1100f) + _wgslsmith_f_op_f32(279f * 1830f)) + 1674f)));
    let var_1 = vec4<bool>(all(select(vec4<bool>(select(false, false, true), true, u_input.c < 1u, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), (1138f < var_0.x) != true)), all(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(0u != u_input.c))), !(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.e, 0u, 62818u)), vec3<u32>(u_input.c, u_input.e, u_input.e)) < 1u), true);
    var var_2 = vec2<bool>(false, false);
    let var_3 = (13755i << ((~u_input.c >> (~_wgslsmith_div_u32(u_input.c, u_input.e) % 32u)) % 32u)) >> (countOneBits(min(3021u, firstTrailingBit(u_input.e))) % 32u);
    var var_4 = u_input.b;
    return Struct_1(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~84271u, u_input.c), vec2<u32>(u_input.e, u_input.e)), !(var_1.x & false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec3_i32(-max(~vec3<i32>(-238i, arg_1.a.a.a, 0i), u_input.d), vec3<i32>(-1i | ~arg_1.a.b.a, -(i32(-1i) * -2147483647i), u_input.b.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f), -1332f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_1.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f * -1757f)))))));
    let var_2 = arg_1.c;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_2.e.a.a, 2147483647i, 1i), u_input.d), firstTrailingBit(reverseBits(~_wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(1i, 8689i)))));
    var var_4 = true;
    return Struct_4(Struct_2(arg_1.a.a, var_2.c), select(abs(var_2.b), ~(~vec4<u32>(var_2.b.x, var_2.c.b, 0u, u_input.e)), true && arg_0.c), var_2, ~arg_1.d, firstTrailingBit(vec3<u32>(~_wgslsmith_mult_u32(arg_0.b, 1u), ~_wgslsmith_dot_vec3_u32(var_2.b.zwx, vec3<u32>(1114u, 32524u, arg_1.d.x)), var_2.b.x)));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    global0 = array<vec2<u32>, 13>();
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_clamp_i32(abs(u_input.a), _wgslsmith_div_i32(~u_input.b.x, 1i) | u_input.b.x, u_input.a), ~(~abs(u_input.c) | u_input.c), true);
    var var_2 = func_4(func_2(), Struct_4(global1[_wgslsmith_index_u32(~(~(~u_input.c)), 30u)], ~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, arg_0.x, 11491u, u_input.e), vec4<u32>(arg_0.x, 4294967295u, 0u, 57982u))), Struct_3(vec2<bool>(true, var_0), vec4<u32>(27566u, arg_0.x, 1u | arg_0.x, ~u_input.e), Struct_1(-13402i, 72147u, true), func_2().c, global1[_wgslsmith_index_u32(~firstLeadingBit(var_1.b), 30u)]), select(abs(vec3<u32>(var_1.b, 39358u, u_input.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(23551u, u_input.c, 1u), vec3<u32>(var_1.b, var_1.b, 70860u)), select(vec3<bool>(var_1.c, var_0, var_0), vec3<bool>(false, var_0, true), false)) | min(~vec3<u32>(117271u, 1u, 69594u), firstLeadingBit(vec3<u32>(23607u, arg_0.x, 1u))), vec3<u32>(var_1.b, var_1.b, ~(~u_input.c))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-679f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(min(var_3, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2075f + var_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(firstLeadingBit(vec2<u32>(10822u, u_input.c) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.c), vec2<u32>(53355u, u_input.c)) % vec2<u32>(32u))))) + _wgslsmith_f_op_f32(-1533f * 1000f));
    let var_1 = -u_input.b.zx;
    var var_2 = func_4(Struct_1(var_1.x, 0u, func_2().c), Struct_4(func_4(func_4(func_4(Struct_1(-2147483647i, u_input.c, true), Struct_4(Struct_2(Struct_1(var_1.x, u_input.c, true), Struct_1(var_1.x, 28746u, true)), vec4<u32>(56314u, u_input.e, u_input.c, u_input.e), Struct_3(vec2<bool>(false, false), vec4<u32>(u_input.c, 60884u, u_input.c, u_input.e), Struct_1(u_input.b.x, u_input.e, true), true, Struct_2(Struct_1(-16377i, 1u, false), Struct_1(var_1.x, u_input.c, false))), vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(19425u, 18477u, u_input.e))).a.b, Struct_4(Struct_2(Struct_1(var_1.x, 37333u, false), Struct_1(-2147483647i, u_input.c, true)), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_3(vec2<bool>(false, false), vec4<u32>(0u, u_input.c, 0u, 1u), Struct_1(-23159i, u_input.c, true), false, global1[_wgslsmith_index_u32(95114u, 30u)]), vec3<u32>(u_input.c, u_input.e, 13055u), vec3<u32>(54475u, u_input.e, 4294967295u))).c.e.a, Struct_4(Struct_2(Struct_1(u_input.d.x, u_input.c, true), Struct_1(var_1.x, u_input.c, false)), vec4<u32>(u_input.c, u_input.e, 40185u, 10388u), func_4(Struct_1(var_1.x, 40221u, false), Struct_4(global1[_wgslsmith_index_u32(19695u, 30u)], vec4<u32>(u_input.c, u_input.c, 43802u, 44851u), Struct_3(vec2<bool>(true, true), vec4<u32>(1853u, 1u, u_input.e, u_input.e), Struct_1(-8762i, 1u, true), false, global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, u_input.c))).c, vec3<u32>(4294967295u, 4294967295u, 4294967295u), countOneBits(vec3<u32>(u_input.c, u_input.c, 29532u)))).a, func_4(Struct_1(_wgslsmith_mod_i32(var_1.x, u_input.b.x), u_input.e, func_2().c), func_4(Struct_1(var_1.x, 0u, true), func_4(Struct_1(-58406i, 4294967295u, false), Struct_4(Struct_2(Struct_1(var_1.x, u_input.c, true), Struct_1(u_input.d.x, u_input.c, true)), vec4<u32>(88541u, u_input.c, 0u, 26421u), Struct_3(vec2<bool>(false, true), vec4<u32>(u_input.e, 2201u, u_input.e, 1u), Struct_1(u_input.d.x, u_input.c, false), true, global1[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(u_input.e, 4294967295u, 89870u), vec3<u32>(u_input.c, 1u, u_input.c))))).c.b, func_4(func_2(), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), global0[_wgslsmith_index_u32(u_input.e, 13u)]), 30u)], ~vec4<u32>(4294967295u, 13781u, u_input.c, u_input.c), Struct_3(vec2<bool>(true, true), vec4<u32>(u_input.e, 52730u, u_input.c, 0u), Struct_1(u_input.b.x, 98919u, false), false, global1[_wgslsmith_index_u32(u_input.e, 30u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 4294967295u, 1u), vec3<u32>(u_input.e, 44200u, u_input.e)), ~vec3<u32>(u_input.e, u_input.c, u_input.c))).c, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27576u, 1u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.e), vec3<u32>(u_input.e, 4294967295u, 0u))), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 4294967295u, 60031u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 58069u), vec3<u32>(49415u, u_input.e, 38098u), vec3<u32>(u_input.e, 52695u, u_input.e)))), vec3<u32>(~u_input.c, ~4294967295u, ~26175u) ^ vec3<u32>(~9369u, 1u & u_input.e, ~u_input.e))).c;
    var var_3 = func_4(Struct_1(i32(-1i) * -1i, var_2.c.b, false), func_4(func_2(), func_4(func_2(), Struct_4(var_2.e, _wgslsmith_add_vec4_u32(var_2.b, var_2.b), func_4(var_2.e.b, Struct_4(global1[_wgslsmith_index_u32(var_2.b.x, 30u)], vec4<u32>(u_input.e, var_2.e.a.b, var_2.b.x, u_input.c), Struct_3(var_2.a, vec4<u32>(0u, u_input.c, 1u, u_input.c), Struct_1(var_1.x, var_2.c.b, var_2.d), false, global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<u32>(0u, var_2.c.b, 32578u), var_2.b.yxy)).c, var_2.b.wzz, vec3<u32>(u_input.e, u_input.c, 9995u) >> (vec3<u32>(var_2.c.b, u_input.e, var_2.c.b) % vec3<u32>(32u)))))).a;
    var var_4 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d >> (var_2.b.xwy % vec3<u32>(32u)), u_input.d) & _wgslsmith_sub_vec3_i32(-u_input.b, firstLeadingBit(vec3<i32>(-1i, -5469i, -18365i))), _wgslsmith_add_vec3_i32(abs(u_input.d), vec3<i32>(2147483647i, 46204i, -1i) << (~var_2.b.zyw % vec3<u32>(32u))));
    let var_5 = Struct_4(Struct_2(Struct_1(-20333i, var_2.b.x, true), var_3.b), var_2.b, func_4(func_2(), func_4(Struct_1(func_2().a, var_2.c.b, false), func_4(Struct_1(-1i, u_input.c, var_2.a.x), func_4(var_2.e.b, Struct_4(Struct_2(Struct_1(var_2.c.a, var_3.b.b, true), var_2.c), var_2.b, Struct_3(var_2.a, var_2.b, Struct_1(var_3.b.a, var_2.b.x, var_2.c.c), false, Struct_2(Struct_1(var_1.x, 1u, false), Struct_1(1i, 20004u, false))), var_2.b.www, vec3<u32>(u_input.c, 0u, var_3.b.b)))))).c, func_4(Struct_1(~abs(var_2.e.a.a), 68042u, !(var_2.e.a.c | true)), func_4(var_3.b, Struct_4(func_4(var_2.e.a, Struct_4(global1[_wgslsmith_index_u32(56588u, 30u)], var_2.b, Struct_3(vec2<bool>(var_3.a.c, var_2.c.c), var_2.b, var_3.b, true, var_2.e), vec3<u32>(4294967295u, var_3.b.b, var_2.e.a.b), vec3<u32>(0u, 1u, 1u))).a, vec4<u32>(var_2.b.x, 21974u, 0u, var_2.b.x), func_4(var_3.a, Struct_4(global1[_wgslsmith_index_u32(33934u, 30u)], var_2.b, Struct_3(var_2.a, vec4<u32>(u_input.e, var_2.c.b, 20389u, u_input.e), Struct_1(1i, 0u, var_2.a.x), var_3.b.c, Struct_2(Struct_1(var_4.x, u_input.e, false), Struct_1(var_2.c.a, 40050u, true))), var_2.b.yxy, var_2.b.zzz)).c, ~var_2.b.ywz, ~vec3<u32>(66583u, 4294967295u, 0u)))).b.yww, max(~vec3<u32>(var_3.a.b, 68412u, 43741u) ^ ~(~vec3<u32>(var_3.a.b, 13269u, 37770u)), var_2.b.xyz));
    global1 = array<Struct_2, 30>();
    var var_6 = var_3.a;
    var_2 = var_5.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_u32(~max(var_6.b, 0u), ~abs(u_input.c)), 0u, all(var_2.a)), select(~(var_6.a >> (firstTrailingBit(var_6.b) % 32u)), -_wgslsmith_div_i32(-2147483647i << (var_3.a.b % 32u), 10958i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1340f * var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
}

