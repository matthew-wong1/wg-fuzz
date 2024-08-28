struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec3<i32>(6058i, 2147483647i, 41000i), i32(-2147483648)), Struct_3(vec3<i32>(0i, -2787i, 29901i), 17890i), Struct_3(vec3<i32>(i32(-2147483648), -72304i, -2187i), -82053i), Struct_3(vec3<i32>(-20024i, 2146i, -1i), -1i), Struct_3(vec3<i32>(39513i, -22183i, 0i), 0i), Struct_3(vec3<i32>(0i, 10482i, 23548i), i32(-2147483648)), Struct_3(vec3<i32>(-1i, 9406i, -11835i), -9552i), Struct_3(vec3<i32>(i32(-2147483648), 828i, 5001i), i32(-2147483648)), Struct_3(vec3<i32>(-1i, 1i, -1i), -1i), Struct_3(vec3<i32>(2263i, -17811i, 7476i), 0i), Struct_3(vec3<i32>(25724i, 8038i, 67347i), -34211i), Struct_3(vec3<i32>(-7258i, -22421i, 0i), -91210i), Struct_3(vec3<i32>(57199i, i32(-2147483648), 0i), 2147483647i), Struct_3(vec3<i32>(2147483647i, -29495i, 2147483647i), -57498i), Struct_3(vec3<i32>(-62532i, -5680i, -7547i), i32(-2147483648)), Struct_3(vec3<i32>(64707i, 1i, 30554i), -14961i), Struct_3(vec3<i32>(-1i, 0i, 2147483647i), 0i), Struct_3(vec3<i32>(0i, 2147483647i, -20551i), 7978i), Struct_3(vec3<i32>(10807i, 1i, 89530i), 6718i), Struct_3(vec3<i32>(-1i, -34925i, 0i), 1i), Struct_3(vec3<i32>(0i, -1i, -29135i), 3923i), Struct_3(vec3<i32>(-36400i, i32(-2147483648), i32(-2147483648)), -75385i), Struct_3(vec3<i32>(1i, 1i, 1i), 34093i), Struct_3(vec3<i32>(-1i, 9364i, 59067i), 8601i), Struct_3(vec3<i32>(2410i, -38174i, -65790i), i32(-2147483648)), Struct_3(vec3<i32>(24848i, -35287i, -14317i), 533i), Struct_3(vec3<i32>(i32(-2147483648), -86552i, 5096i), 1i), Struct_3(vec3<i32>(-10109i, 2147483647i, -1i), 14736i), Struct_3(vec3<i32>(2147483647i, 2147483647i, 2147483647i), 1i), Struct_3(vec3<i32>(0i, 12761i, 62873i), i32(-2147483648)), Struct_3(vec3<i32>(1i, 19556i, -35125i), 23097i), Struct_3(vec3<i32>(1i, 1i, 1i), 1i));

var<private> global1: array<vec4<bool>, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -834f) * vec2<f32>(2559f, -165f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-736f, 198f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(min(1091f, 1000f)))), true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(988f, -1222f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(418f, 561f), vec2<f32>(-265f, -1418f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, -791f)) - vec2<f32>(-149f, 189f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2320f, _wgslsmith_f_op_f32(-135f * 712f)))));
    let var_1 = Struct_5(select(select(vec4<bool>(true, u_input.c < 0i, 13856u < u_input.b.x, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), all(vec2<bool>(false, true))), !global1[_wgslsmith_index_u32(1u ^ arg_0.x, 24u)]), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(4294967295u, 24u)], true), select(vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 24u)], global1[_wgslsmith_index_u32(63794u, 24u)])), select(true || (52797u <= arg_0.x), true, _wgslsmith_f_op_f32(sign(var_0.x)) <= 1f)), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true), true)));
    global1 = array<vec4<bool>, 24>();
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(8754i, (u_input.c >> (0u % 32u)) ^ -1i, -27521i, _wgslsmith_mod_i32(u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, -2147483647i), vec3<i32>(u_input.c, 2147483647i, 15087i)), u_input.c, -1i) >> (vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(40968u, 5743u, u_input.a.x), ~0u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(28569i, 0i, 880i, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -40825i, 27090i, u_input.c))) | max(abs(vec4<i32>(38637i, -22664i, u_input.c, u_input.c)), vec4<i32>(2147483647i, 1i, u_input.c, u_input.c) >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1496f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(2348f + var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.x, 418f)))), 1000f)), firstLeadingBit(vec3<i32>(-(~u_input.c), 0i, ~(i32(-1i) * -32384i))), firstLeadingBit(abs(u_input.a)), select(!(!(!vec2<bool>(true, var_1.b))), select(var_1.a.wz, !var_1.a.yy, var_1.a.zz), select(select(var_1.a.yw, select(var_1.a.yz, vec2<bool>(var_1.b, var_1.a.x), var_1.a.zz), var_1.b), select(vec2<bool>(true, var_1.a.x), select(vec2<bool>(var_1.b, var_1.a.x), vec2<bool>(var_1.b, false), var_1.a.wz), any(vec3<bool>(false, true, var_1.b))), var_1.a.x)));
    return 1i;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], !any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)));
    global0 = array<Struct_3, 32>();
    var var_1 = func_3(~u_input.a.zzx);
    var var_2 = Struct_1(vec4<i32>(u_input.c, 1i, u_input.c, -u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(177f, 204f, -376f, 804f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i ^ u_input.c, 2147483647i, u_input.c), reverseBits(vec3<i32>(21961i, u_input.c, -2147483647i)))), _wgslsmith_mod_vec4_u32(~u_input.a, vec4<u32>(1u, 9273u << (~u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, 6736u, 0u), vec3<u32>(u_input.a.x, 19784u, u_input.b.x), true), _wgslsmith_add_vec3_u32(u_input.a.zxz, vec3<u32>(u_input.a.x, 1u, 7811u))), _wgslsmith_sub_u32(4294967295u, u_input.b.x) | ~u_input.b.x)), !select(var_0.a.yx, select(var_0.a.yw, var_0.a.wz, false), var_0.a.x & var_0.a.x));
    var_2 = Struct_1(~var_2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1028f, _wgslsmith_f_op_f32(f32(-1f) * -932f))), var_2.b.x), _wgslsmith_f_op_f32(step(var_2.b.x, 449f)), -2068f, var_2.b.x), vec3<i32>(1i, 45765i, ~var_2.a.x), u_input.a, var_0.a.xx);
    return select(~u_input.b, vec3<u32>(var_2.d.x, ~_wgslsmith_div_u32(~0u, u_input.b.x), u_input.b.x), select(vec3<bool>(var_0.b && false, true, false), var_0.a.xxz, var_0.a.x));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    global0 = array<Struct_3, 32>();
    let var_0 = Struct_2(vec2<i32>(u_input.c, (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, -2147483647i), vec3<i32>(-1i, -1i, u_input.c)) & u_input.c) & (1i << (0u % 32u))));
    var var_1 = func_2() << (_wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(~u_input.b)), u_input.a.zwz, vec3<u32>(1u, u_input.b.x, 0u)) % vec3<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 0i, var_0.a.x), vec3<i32>(-3214i, var_0.a.x, 2147483647i), vec3<i32>(43067i, 16929i, 2147483647i)), vec3<i32>(0i, 46180i, 9341i) << (u_input.b % vec3<u32>(32u))), countOneBits(min(vec3<i32>(u_input.c, var_0.a.x, var_0.a.x), vec3<i32>(u_input.c, 5379i, u_input.c)))) << (~(~(~vec3<u32>(var_1.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u)), -27208i);
    var var_3 = -vec4<i32>(abs(-2147483647i), abs(~var_2.b << (23029u % 32u)), 1i, select(abs(~var_2.a.x), -3817i, var_2.a.x != _wgslsmith_add_i32(-15850i, u_input.c)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1403f, -1050f, arg_0)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1009f, -1615f)) - -156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f - 274f)) + -405f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-278f * 692f), _wgslsmith_f_op_f32(583f * -1295f), false))))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-678f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(535f, 263f))))), 1233f, _wgslsmith_f_op_f32(round(-261f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1(false)), vec3<f32>(-743f, -2380f, -1078f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, -929f, 1017f) - vec3<f32>(114f, 1000f, -190f)) - vec3<f32>(-427f, -389f, -940f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 966f, _wgslsmith_div_f32(579f, _wgslsmith_f_op_f32(min(-524f, 839f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, -734f, -1292f) - vec3<f32>(1429f, -265f, -851f))))))));
    var var_1 = Struct_2(-(~(-(vec2<i32>(0i, 3748i) ^ vec2<i32>(u_input.c, 0i)))));
    var var_2 = Struct_2(var_1.a);
    let var_3 = select(select(vec2<bool>(false, true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(select(u_input.b.x, u_input.a.x, true) < 38004u)), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(false, false, true, true)), false), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, true, true), global1[_wgslsmith_index_u32(min(27598u, 4294967295u), 24u)]))));
    var var_4 = Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.x, 46790i, 2147483647i), vec3<i32>(u_input.c, _wgslsmith_add_i32(var_2.a.x, var_2.a.x), 0i)), -vec3<i32>(func_3(vec3<u32>(u_input.b.x, u_input.b.x, 1u)), var_1.a.x, _wgslsmith_div_i32(u_input.c, -2147483647i)), -(~(~vec3<i32>(u_input.c, var_2.a.x, var_2.a.x)))), -_wgslsmith_mod_i32(-2777i, 60786i));
    let var_5 = Struct_4(vec4<i32>(-1i, abs(~reverseBits(var_1.a.x)), -51063i, select(firstTrailingBit(min(u_input.c, -43210i)), i32(-1i) * -13100i, all(var_3))), Struct_1(vec4<i32>(var_2.a.x, abs(var_1.a.x >> (u_input.a.x % 32u)), 1i, _wgslsmith_mod_i32(var_4.b, ~13808i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, 355f, 338f), vec4<f32>(534f, var_0.x, var_0.x, 1318f))))), vec3<i32>(1i, 44240i, min(~u_input.c, _wgslsmith_sub_i32(-1i, var_2.a.x))), ~vec4<u32>(~u_input.b.x, ~u_input.a.x, _wgslsmith_mult_u32(1u, 33589u), u_input.a.x), var_3), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), u_input.a), select(1u, 23292u, var_3.x), ~0u), vec4<u32>(reverseBits(u_input.a.x), 63707u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 12359u), vec4<u32>(4294967295u, 10764u, 40148u, u_input.a.x)), 48047u)), 4294967295u), 32u)], 170f);
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1066f * _wgslsmith_f_op_f32(var_5.b.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, var_5.b.d.x)) >> (4294967295u % 32u), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(~u_input.b.x, abs(63895u))), ~var_5.b.d.x, 0u), var_5.b.b.xyz, 1u);
}

