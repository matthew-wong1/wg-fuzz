struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(18694u, 20417u, 0u)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(4294967295u, 54315u, 39880u)), 1u, vec2<f32>(-1683f, 463f));

var<private> global3: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(vec3<u32>(1u, 1u, 1u)), vec2<i32>(32277i, -32951i), Struct_1(vec3<u32>(86184u, 4294967295u, 0u)), vec3<f32>(-970f, -122f, -507f)), Struct_3(Struct_1(vec3<u32>(10134u, 46911u, 25094u)), vec2<i32>(i32(-2147483648), 13657i), Struct_1(vec3<u32>(4294967295u, 1u, 18766u)), vec3<f32>(1000f, -963f, -1205f)), Struct_3(Struct_1(vec3<u32>(9689u, 1u, 38803u)), vec2<i32>(-1i, 0i), Struct_1(vec3<u32>(4294967295u, 9706u, 92193u)), vec3<f32>(-1412f, -1140f, 1039f)), Struct_3(Struct_1(vec3<u32>(16324u, 0u, 4294967295u)), vec2<i32>(-3555i, -57338i), Struct_1(vec3<u32>(25314u, 25828u, 0u)), vec3<f32>(1209f, -343f, -2307f)), Struct_3(Struct_1(vec3<u32>(1u, 62233u, 4294967295u)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec3<u32>(93844u, 22459u, 4294967295u)), vec3<f32>(-1671f, 420f, 1000f)), Struct_3(Struct_1(vec3<u32>(54550u, 4294967295u, 0u)), vec2<i32>(26905i, -37806i), Struct_1(vec3<u32>(11508u, 72241u, 43429u)), vec3<f32>(-181f, -1134f, 985f)), Struct_3(Struct_1(vec3<u32>(1u, 7628u, 54839u)), vec2<i32>(1i, 8567i), Struct_1(vec3<u32>(0u, 4294967295u, 41335u)), vec3<f32>(1037f, 731f, -854f)), Struct_3(Struct_1(vec3<u32>(69206u, 18631u, 9267u)), vec2<i32>(-31966i, -9905i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<f32>(-1784f, -1180f, 595f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 79820u, 0u)), vec2<i32>(0i, 8095i), Struct_1(vec3<u32>(1u, 79719u, 51505u)), vec3<f32>(-299f, 821f, -1129f)), Struct_3(Struct_1(vec3<u32>(41996u, 27725u, 107154u)), vec2<i32>(2147483647i, -29095i), Struct_1(vec3<u32>(4294967295u, 45747u, 1u)), vec3<f32>(-165f, 1692f, 1395f)), Struct_3(Struct_1(vec3<u32>(17331u, 4294967295u, 0u)), vec2<i32>(15705i, 2147483647i), Struct_1(vec3<u32>(7178u, 27905u, 4294967295u)), vec3<f32>(-2211f, 615f, -1000f)), Struct_3(Struct_1(vec3<u32>(25283u, 4294967295u, 61641u)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 35029u, 0u)), vec3<f32>(608f, -1526f, -1375f)), Struct_3(Struct_1(vec3<u32>(0u, 1u, 72245u)), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec3<u32>(31267u, 28301u, 17360u)), vec3<f32>(-1713f, 1107f, 1786f)), Struct_3(Struct_1(vec3<u32>(1u, 22679u, 4294967295u)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec3<u32>(58054u, 38111u, 1u)), vec3<f32>(577f, -1000f, -1272f)), Struct_3(Struct_1(vec3<u32>(1u, 44294u, 4294967295u)), vec2<i32>(-1i, -40721i), Struct_1(vec3<u32>(0u, 1u, 37457u)), vec3<f32>(-503f, 1000f, 1552f)), Struct_3(Struct_1(vec3<u32>(34538u, 1u, 16817u)), vec2<i32>(-29901i, 0i), Struct_1(vec3<u32>(0u, 0u, 13586u)), vec3<f32>(-328f, -1244f, 1230f)), Struct_3(Struct_1(vec3<u32>(1u, 36392u, 69260u)), vec2<i32>(20788i, 42846i), Struct_1(vec3<u32>(4294967295u, 1u, 19628u)), vec3<f32>(-142f, 576f, -501f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), vec2<i32>(1i, 15072i), Struct_1(vec3<u32>(832u, 0u, 4587u)), vec3<f32>(228f, -819f, -358f)), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 1u)), vec2<i32>(-1461i, -16374i), Struct_1(vec3<u32>(2605u, 28923u, 36859u)), vec3<f32>(1538f, -531f, -257f)), Struct_3(Struct_1(vec3<u32>(65667u, 16544u, 26314u)), vec2<i32>(-2791i, -24928i), Struct_1(vec3<u32>(18755u, 36447u, 4294967295u)), vec3<f32>(650f, -924f, -480f)), Struct_3(Struct_1(vec3<u32>(36794u, 0u, 1u)), vec2<i32>(16169i, 2147483647i), Struct_1(vec3<u32>(1u, 1u, 0u)), vec3<f32>(1253f, -368f, 279f)), Struct_3(Struct_1(vec3<u32>(13758u, 38641u, 45507u)), vec2<i32>(-21089i, 23888i), Struct_1(vec3<u32>(1u, 79242u, 67070u)), vec3<f32>(250f, -343f, 1193f)), Struct_3(Struct_1(vec3<u32>(40548u, 0u, 9603u)), vec2<i32>(-1i, -84424i), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), vec3<f32>(-580f, -366f, -167f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 63476u, 62530u)), vec2<i32>(36470i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 4294967295u, 49277u)), vec3<f32>(-2260f, 1119f, -715f)), Struct_3(Struct_1(vec3<u32>(13511u, 1u, 9884u)), vec2<i32>(14572i, -1i), Struct_1(vec3<u32>(1u, 78372u, 0u)), vec3<f32>(-196f, -710f, -1986f)), Struct_3(Struct_1(vec3<u32>(37803u, 1u, 41365u)), vec2<i32>(1i, 22562i), Struct_1(vec3<u32>(0u, 20664u, 21732u)), vec3<f32>(599f, 259f, -1521f)), Struct_3(Struct_1(vec3<u32>(30950u, 28164u, 0u)), vec2<i32>(0i, 2147483647i), Struct_1(vec3<u32>(0u, 4294967295u, 26290u)), vec3<f32>(-251f, -1849f, -1146f)), Struct_3(Struct_1(vec3<u32>(1u, 21491u, 1u)), vec2<i32>(53965i, 0i), Struct_1(vec3<u32>(0u, 90244u, 17291u)), vec3<f32>(1000f, -892f, 956f)), Struct_3(Struct_1(vec3<u32>(0u, 1u, 64802u)), vec2<i32>(i32(-2147483648), 1i), Struct_1(vec3<u32>(16444u, 0u, 40408u)), vec3<f32>(-1064f, -1000f, 940f)), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 5102u)), vec2<i32>(-1i, -33956i), Struct_1(vec3<u32>(54317u, 30871u, 1u)), vec3<f32>(-1420f, 232f, -1060f)), Struct_3(Struct_1(vec3<u32>(19552u, 94869u, 61483u)), vec2<i32>(5675i, -12909i), Struct_1(vec3<u32>(4294967295u, 48491u, 4294967295u)), vec3<f32>(1099f, 375f, -1240f)));

var<private> global4: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(2147483647i, 55648i), vec2<i32>(-19050i, -13574i), vec2<i32>(-37180i, 55860i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(10975i, 21479i), vec2<i32>(36718i, 31287i), vec2<i32>(-1i, 16607i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(6931i, 3292i), vec2<i32>(i32(-2147483648), 31913i), vec2<i32>(0i, -4575i), vec2<i32>(-1i, -25871i), vec2<i32>(-28884i, 1i), vec2<i32>(-1i, -69544i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(6513i, 2147483647i), vec2<i32>(19595i, -1i), vec2<i32>(9050i, 2147483647i), vec2<i32>(14165i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = global2.c.a.x;
    global3 = array<Struct_3, 31>();
    var var_1 = -20723i;
    global0 = array<Struct_3, 5>();
    global4 = array<vec2<i32>, 20>();
    return -1341f;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = abs(_wgslsmith_mult_u32(1u, arg_0.a.a.x) << (global2.c.a.x % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, global2.e.x, -872f)), vec3<f32>(_wgslsmith_div_f32(global2.e.x, _wgslsmith_f_op_f32(func_3())), global2.e.x, global2.e.x)) - _wgslsmith_f_op_vec3_f32(abs(arg_0.d)));
    var var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.a.xz, vec2<u32>(global2.a.a.x, arg_2.d)), _wgslsmith_dot_vec3_u32(arg_2.a.a, vec3<u32>(global2.c.a.x, u_input.d, u_input.d)), ~arg_0.a.a.x, 0u), ~abs(vec4<u32>(arg_0.a.a.x, u_input.c, global2.a.a.x, 36480u)), vec4<bool>(1970f < global2.e.x, var_1.x != global2.e.x, global2.b.x, true)), ~abs(vec4<u32>(1u, 84601u, 43249u, 1u) | vec4<u32>(arg_2.d, 1u, 1u, global2.d))), vec4<u32>(~_wgslsmith_div_u32(u_input.c, firstLeadingBit(arg_2.d)), _wgslsmith_mod_u32(~26297u, arg_0.c.a.x & max(0u, 27342u)), _wgslsmith_sub_u32(~21455u, ~93013u), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(99394u, global2.d, 15216u, global2.c.a.x))), vec4<u32>(abs(u_input.d), _wgslsmith_clamp_u32(11570u, 1u, 0u), 40563u, ~1u))));
    var var_3 = !(u_input.c < (~select(8453u, 1u, arg_2.b.x) & max(u_input.d, u_input.d >> (u_input.d % 32u))));
    global4 = array<vec2<i32>, 20>();
    return 0u << (_wgslsmith_clamp_u32(~37181u, select(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.a.a.x, 1u, arg_2.c.a.x, arg_2.d), vec4<u32>(0u, arg_0.c.a.x, 13698u, 0u)), vec4<u32>(0u, var_2.x, arg_0.c.a.x, 11595u) ^ vec4<u32>(arg_2.a.a.x, 4294967295u, 0u, var_2.x)), 1u, any(!arg_2.b.zz)), 4294967295u) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = ~countOneBits(_wgslsmith_mod_vec4_u32(reverseBits(min(vec4<u32>(u_input.c, u_input.c, u_input.d, u_input.d), vec4<u32>(1705u, u_input.c, u_input.d, 6853u))), vec4<u32>(func_2(global3[_wgslsmith_index_u32(4294967295u, 31u)], -8550i, Struct_2(Struct_1(global2.c.a), arg_0.xxw, global2.c, u_input.d, global2.e)), reverseBits(u_input.d), ~u_input.c, ~u_input.c)));
    var var_1 = abs(_wgslsmith_div_i32(-1i, u_input.e.x));
    var_1 = -(~(-11349i) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c.a.x, 42808u), countOneBits(vec2<u32>(u_input.c, var_0.x))), ~global2.a.a.x) % 32u));
    var var_2 = 14172u >> (abs(_wgslsmith_mod_u32(global2.c.a.x, ~103219u)) % 32u);
    let var_3 = _wgslsmith_f_op_f32(select(-1500f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-285f * _wgslsmith_f_op_f32(-global2.e.x)))))), false));
    return Struct_2(Struct_1(~(~vec3<u32>(0u, 1u, u_input.d))), arg_0.yyz, global2.c, ~_wgslsmith_mult_u32(global2.d, _wgslsmith_clamp_u32(func_2(global0[_wgslsmith_index_u32(var_0.x, 5u)], u_input.a.x, Struct_2(global2.c, vec3<bool>(global2.b.x, true, true), global2.a, global2.c.a.x, global2.e)), u_input.c, u_input.d << (19110u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -423f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.e * vec2<f32>(662f, 442f))))) + global2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(any(vec2<bool>(global2.b.x, global2.b.x && true)), global2.b.x, global2.b.x, true));
    global4 = array<vec2<i32>, 20>();
    global0 = array<Struct_3, 5>();
    var var_1 = -global4[_wgslsmith_index_u32(20004u, 20u)] & global4[_wgslsmith_index_u32(7277u, 20u)];
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(0i, 42491i, u_input.e.x, u_input.e.x)), -(-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 23086i) | vec4<i32>(68382i, 66270i, 62177i, u_input.a.x))), min(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, u_input.b, -19788i, -10149i), vec4<i32>(var_1.x, -58324i, -2147483647i, var_1.x)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(52934u, 0u, 4294967295u, var_0.c.a.x), vec4<u32>(9459u, u_input.d, var_0.a.a.x, 4294967295u)) % vec4<u32>(32u)), (-vec4<i32>(1i, var_1.x, u_input.e.x, -16382i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(8791u, var_0.a.a.x, var_0.a.a.x, var_0.c.a.x), vec4<u32>(0u, var_0.a.a.x, u_input.c, var_0.d)) % vec4<u32>(32u))) | vec4<i32>(var_1.x, min(1i, -12024i), 1i, _wgslsmith_mult_i32(0i, var_1.x))));
    var var_3 = !global2.b.x;
    let var_4 = 1u;
    var_1 = u_input.e.zx;
    var var_5 = vec2<bool>(all(!(!global2.b.zy)) == (-1184f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1880f + global2.e.x))), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, ~firstTrailingBit(global2.c.a.x), 141404u), 0u << (var_0.a.a.x % 32u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.e.x, 502f)), -200f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.e.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - var_0.e.x), _wgslsmith_f_op_f32(-global2.e.x), false))), global2.e.x), 4294967295u);
}

