struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(33251u, Struct_1(11920u, false, vec4<u32>(4294967295u, 1u, 38133u, 7907u), -6415i), Struct_1(4294967295u, false, vec4<u32>(80120u, 5938u, 4294967295u, 7406u), -1i), vec2<bool>(true, true), Struct_1(43524u, false, vec4<u32>(4294967295u, 4921u, 0u, 5384u), 1i)), Struct_2(4294967295u, Struct_1(23993u, true, vec4<u32>(0u, 4294967295u, 43674u, 39406u), 0i), Struct_1(4294967295u, true, vec4<u32>(163u, 60317u, 1u, 12081u), 15326i), vec2<bool>(true, false), Struct_1(0u, true, vec4<u32>(18863u, 1u, 1u, 24327u), -48202i)), Struct_2(4578u, Struct_1(1u, true, vec4<u32>(4294967295u, 24497u, 51333u, 0u), 0i), Struct_1(1u, true, vec4<u32>(5378u, 29806u, 67937u, 43555u), -1i), vec2<bool>(true, true), Struct_1(42401u, true, vec4<u32>(1u, 16194u, 0u, 44802u), -10303i)), Struct_2(32949u, Struct_1(4294967295u, true, vec4<u32>(4294967295u, 1u, 0u, 8579u), -56384i), Struct_1(1u, true, vec4<u32>(39698u, 1137u, 4294967295u, 26830u), 1i), vec2<bool>(true, true), Struct_1(4294967295u, true, vec4<u32>(87249u, 92305u, 1u, 0u), -52253i)), Struct_2(54554u, Struct_1(4294967295u, false, vec4<u32>(1u, 4294967295u, 6665u, 0u), -89980i), Struct_1(1u, true, vec4<u32>(4294967295u, 0u, 4376u, 32851u), -112153i), vec2<bool>(false, true), Struct_1(13096u, false, vec4<u32>(4294967295u, 33504u, 4294967295u, 1u), 71i)), Struct_2(0u, Struct_1(0u, true, vec4<u32>(0u, 6461u, 15090u, 4294967295u), 1i), Struct_1(4294967295u, true, vec4<u32>(63717u, 87073u, 0u, 1u), 0i), vec2<bool>(true, true), Struct_1(64990u, false, vec4<u32>(1u, 1u, 1u, 4294967295u), 2147483647i)), Struct_2(5398u, Struct_1(13389u, false, vec4<u32>(1u, 0u, 19516u, 37887u), -54743i), Struct_1(0u, false, vec4<u32>(0u, 13946u, 33496u, 40612u), -38277i), vec2<bool>(true, false), Struct_1(1u, true, vec4<u32>(22197u, 0u, 0u, 4294967295u), -13649i)), Struct_2(50684u, Struct_1(4294967295u, false, vec4<u32>(0u, 23306u, 19950u, 14037u), -36118i), Struct_1(1u, false, vec4<u32>(78272u, 42511u, 4294967295u, 0u), 2147483647i), vec2<bool>(true, true), Struct_1(3988u, true, vec4<u32>(67768u, 14632u, 34672u, 6421u), 34820i)), Struct_2(0u, Struct_1(91521u, true, vec4<u32>(49750u, 0u, 1u, 4294967295u), -61137i), Struct_1(0u, true, vec4<u32>(71861u, 33154u, 6822u, 0u), i32(-2147483648)), vec2<bool>(false, true), Struct_1(18311u, true, vec4<u32>(1u, 59287u, 3849u, 46602u), 4662i)), Struct_2(4294967295u, Struct_1(108242u, true, vec4<u32>(55597u, 0u, 1u, 4294967295u), 0i), Struct_1(0u, false, vec4<u32>(0u, 80615u, 1u, 59541u), -17379i), vec2<bool>(true, true), Struct_1(0u, true, vec4<u32>(46611u, 1u, 1u, 1u), -1i)), Struct_2(120115u, Struct_1(1u, true, vec4<u32>(0u, 4294967295u, 43170u, 0u), 0i), Struct_1(2059u, true, vec4<u32>(5591u, 31361u, 0u, 0u), 2147483647i), vec2<bool>(false, false), Struct_1(1u, true, vec4<u32>(428u, 41184u, 97281u, 89972u), 24352i)), Struct_2(1u, Struct_1(29309u, true, vec4<u32>(1u, 0u, 103345u, 4294967295u), 0i), Struct_1(13649u, false, vec4<u32>(19900u, 47023u, 4294967295u, 66437u), -1i), vec2<bool>(true, true), Struct_1(51u, false, vec4<u32>(0u, 1u, 47082u, 15533u), 10474i)), Struct_2(1u, Struct_1(8558u, true, vec4<u32>(19997u, 53031u, 16114u, 4294967295u), 21637i), Struct_1(26480u, true, vec4<u32>(5882u, 4294967295u, 1u, 0u), i32(-2147483648)), vec2<bool>(true, false), Struct_1(0u, false, vec4<u32>(13312u, 63793u, 4294967295u, 0u), -28999i)), Struct_2(4294967295u, Struct_1(117904u, false, vec4<u32>(4294967295u, 0u, 0u, 45087u), 21843i), Struct_1(26996u, true, vec4<u32>(0u, 15408u, 4294967295u, 4294967295u), 0i), vec2<bool>(true, true), Struct_1(90537u, false, vec4<u32>(71482u, 15207u, 89423u, 0u), 1i)), Struct_2(39643u, Struct_1(0u, true, vec4<u32>(21843u, 409u, 83442u, 33755u), 1i), Struct_1(33145u, false, vec4<u32>(89778u, 1u, 23060u, 51047u), i32(-2147483648)), vec2<bool>(false, false), Struct_1(30473u, false, vec4<u32>(7911u, 4294967295u, 10705u, 4294967295u), -46978i)), Struct_2(0u, Struct_1(45897u, true, vec4<u32>(4294967295u, 50276u, 46689u, 1u), -33722i), Struct_1(4294967295u, false, vec4<u32>(55644u, 25049u, 40900u, 0u), 0i), vec2<bool>(false, true), Struct_1(46698u, false, vec4<u32>(1u, 64424u, 1u, 15084u), 1i)), Struct_2(4294967295u, Struct_1(59168u, true, vec4<u32>(4294967295u, 48705u, 4294967295u, 4294967295u), 28400i), Struct_1(1u, true, vec4<u32>(4294967295u, 1u, 51462u, 0u), 0i), vec2<bool>(true, false), Struct_1(31308u, true, vec4<u32>(4294967295u, 4294967295u, 1u, 26601u), -1i)), Struct_2(5867u, Struct_1(4294967295u, false, vec4<u32>(0u, 4294967295u, 34691u, 0u), 72695i), Struct_1(4294967295u, false, vec4<u32>(95879u, 4294967295u, 49644u, 6663u), 2147483647i), vec2<bool>(true, false), Struct_1(1u, false, vec4<u32>(20052u, 48891u, 16243u, 1u), 0i)), Struct_2(17089u, Struct_1(46674u, true, vec4<u32>(4294967295u, 45552u, 1u, 0u), 9812i), Struct_1(3512u, false, vec4<u32>(69952u, 0u, 0u, 16650u), 4749i), vec2<bool>(false, true), Struct_1(75291u, true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), i32(-2147483648))), Struct_2(105042u, Struct_1(31518u, false, vec4<u32>(15353u, 4294967295u, 9182u, 35543u), -6156i), Struct_1(1u, false, vec4<u32>(117370u, 6549u, 51890u, 11955u), 1i), vec2<bool>(false, false), Struct_1(1u, false, vec4<u32>(23575u, 1u, 10135u, 96564u), -1i)), Struct_2(10972u, Struct_1(4294967295u, false, vec4<u32>(4294967295u, 49755u, 32980u, 4294967295u), -19386i), Struct_1(83625u, false, vec4<u32>(0u, 4294967295u, 13647u, 66890u), 25544i), vec2<bool>(false, false), Struct_1(33068u, false, vec4<u32>(20314u, 8165u, 15357u, 9548u), 21734i)), Struct_2(1u, Struct_1(41432u, true, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 2147483647i), Struct_1(57253u, false, vec4<u32>(1u, 1u, 0u, 30165u), 1i), vec2<bool>(false, true), Struct_1(33720u, true, vec4<u32>(4294967295u, 1u, 4294967295u, 1u), i32(-2147483648))), Struct_2(12647u, Struct_1(1u, false, vec4<u32>(0u, 40345u, 1u, 59935u), -24953i), Struct_1(8234u, false, vec4<u32>(0u, 3814u, 10458u, 14827u), -1i), vec2<bool>(false, true), Struct_1(27961u, false, vec4<u32>(1u, 1u, 4294967295u, 7288u), i32(-2147483648))), Struct_2(0u, Struct_1(758u, true, vec4<u32>(0u, 0u, 4294967295u, 72464u), 0i), Struct_1(15172u, false, vec4<u32>(0u, 1u, 16065u, 17994u), 2147483647i), vec2<bool>(false, false), Struct_1(1u, true, vec4<u32>(1u, 0u, 23387u, 0u), i32(-2147483648))), Struct_2(27729u, Struct_1(48867u, false, vec4<u32>(1u, 401u, 1u, 27712u), 15830i), Struct_1(99967u, false, vec4<u32>(46227u, 1u, 6192u, 0u), -23908i), vec2<bool>(true, true), Struct_1(49646u, false, vec4<u32>(25879u, 15735u, 2393u, 0u), 0i)), Struct_2(4294967295u, Struct_1(4294967295u, false, vec4<u32>(13176u, 0u, 14815u, 0u), 14065i), Struct_1(59491u, false, vec4<u32>(60241u, 4294967295u, 505u, 1u), 18372i), vec2<bool>(true, false), Struct_1(4294967295u, false, vec4<u32>(84520u, 12190u, 0u, 0u), 1i)), Struct_2(23327u, Struct_1(4294967295u, true, vec4<u32>(9860u, 35614u, 4294967295u, 4294967295u), 9892i), Struct_1(0u, false, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 10499i), vec2<bool>(false, true), Struct_1(0u, true, vec4<u32>(0u, 70668u, 4294967295u, 45905u), -21601i)), Struct_2(0u, Struct_1(31157u, true, vec4<u32>(0u, 4294967295u, 21710u, 1u), 13364i), Struct_1(10233u, true, vec4<u32>(4294967295u, 1u, 17062u, 22686u), i32(-2147483648)), vec2<bool>(true, true), Struct_1(1u, true, vec4<u32>(65818u, 0u, 36769u, 11573u), 41502i)), Struct_2(66802u, Struct_1(7788u, true, vec4<u32>(53370u, 4294967295u, 1u, 4294967295u), 1094i), Struct_1(1u, false, vec4<u32>(18822u, 0u, 36688u, 0u), -17535i), vec2<bool>(false, false), Struct_1(29003u, false, vec4<u32>(39117u, 4294967295u, 44216u, 112958u), -1i)));

var<private> global1: array<vec2<u32>, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = select(global1[_wgslsmith_index_u32(~var_0, 4u)], _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 1u), ~min(global1[_wgslsmith_index_u32(u_input.a, 4u)], vec2<u32>(arg_2, var_0))) >> (countOneBits(vec2<u32>(u_input.a, var_0)) % vec2<u32>(32u)), vec2<bool>(false, true));
    var var_2 = Struct_3(1033f);
    let var_3 = Struct_3(-845f);
    global0 = array<Struct_2, 29>();
    return Struct_1(~select(~firstTrailingBit(var_0), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27563u, 34568u, arg_2), vec4<u32>(21197u, 17923u, 24094u, arg_2)), true), 2147483647i == arg_3, ~vec4<u32>(~arg_2 & arg_2, ~_wgslsmith_sub_u32(42885u, 36913u), var_0, 1u), 36879i);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = reverseBits(select(vec3<i32>(abs(u_input.b >> (arg_2.c.c.x % 32u)), u_input.b, ~firstLeadingBit(arg_2.d.d)), abs(min(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(arg_2.d.d, arg_2.d.d, u_input.b)) | min(vec3<i32>(arg_2.d.d, arg_2.c.d, 54116i), vec3<i32>(u_input.b, 1i, 5906i))), vec3<bool>(-33251i >= u_input.b, true, false)));
    var var_1 = !vec4<bool>(arg_0 || false, (~1047u == arg_2.d.c.x) | true, select(!(var_0.x > var_0.x), arg_0, arg_2.a.x), true);
    let var_2 = _wgslsmith_add_vec4_u32(arg_2.c.c, arg_2.c.c);
    var var_3 = var_1.xw;
    var_3 = arg_2.a.xy;
    return vec4<i32>(i32(-1i) * -firstLeadingBit(i32(-1i) * -2147483647i), 0i, -firstLeadingBit((u_input.b & 4257i) & arg_2.d.d), var_0.x & 15270i);
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    global1 = array<vec2<u32>, 4>();
    let var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(~0u, u_input.a | 153437u) & (select(49782u, 4219u, false) << ((u_input.a | 0u) % 32u)), u_input.a | u_input.a, u_input.a << (~1u % 32u)));
    var var_1 = Struct_2(_wgslsmith_div_u32(16420u, var_0.x), func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-825f, -463f, 935f), vec3<f32>(942f, -1000f, 1005f), false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -105f))))), firstLeadingBit(countOneBits(u_input.a)), -2147483647i), Struct_1(var_0.x, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true))), ~select(vec4<u32>(0u, u_input.a, var_0.x, u_input.a), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<bool>(true, true, true, true)) << (~abs(vec4<u32>(50548u, 4294967295u, var_0.x, u_input.a)) % vec4<u32>(32u)), u_input.b), vec2<bool>(false, true), Struct_1(~select(var_0.x, abs(u_input.a), true), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), ~vec4<u32>(u_input.a, 4294967295u, var_0.x, u_input.a) >> ((vec4<u32>(var_0.x, var_0.x, u_input.a, 9827u) | (vec4<u32>(var_0.x, var_0.x, 0u, 1u) ^ vec4<u32>(var_0.x, 0u, var_0.x, 36011u))) % vec4<u32>(32u)), 0i));
    let var_2 = Struct_5(vec3<bool>(var_1.c.b, !(_wgslsmith_f_op_f32(step(-1000f, 1358f)) >= _wgslsmith_f_op_f32(f32(-1f) * -820f)), true), -857f, func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1590f))), _wgslsmith_f_op_f32(f32(-1f) * -1035f), -347f), _wgslsmith_f_op_f32(f32(-1f) * -828f), var_1.e.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, 2147483647i), _wgslsmith_add_i32(-53681i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.d, 75689i, -1i), arg_0.yyw)))), var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1236f, 1000f, var_1.d.x)), _wgslsmith_f_op_f32(trunc(688f)))), _wgslsmith_f_op_f32(min(-929f, _wgslsmith_div_f32(-814f, -1055f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1346f - _wgslsmith_f_op_f32(1069f * -1159f)) + -1723f))));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(u_input.a, select(var_0.x, firstTrailingBit(0u | u_input.a), false)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~4294967295u, var_1.c.a), ~1u), ~(~var_2.c.c.zw) ^ ~(~vec2<u32>(0u, var_2.c.c.x)))), 29u)];
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.d.c, ~func_1(vec3<f32>(-906f, 1073f, var_2.b), 243f, ~4294967295u, var_1.e.d).c), ~abs(vec4<u32>(var_0.x, var_2.d.a ^ 1u, 7171u, max(var_1.c.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!(!select(false, true, false))), !any(vec2<bool>(true, true)), true);
    var var_1 = func_3(func_2(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), -1000f, Struct_5(var_0, -881f, Struct_1(u_input.a, false, vec4<u32>(u_input.a, 66110u, u_input.a, 97749u), u_input.b), func_1(vec3<f32>(237f, 177f, 516f), 197f, 987u, u_input.b), 193f)) | vec4<i32>(u_input.b, min(36074i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, 11170i, 1i))), 1i, 2147483647i));
    var var_2 = vec3<u32>(~var_1.x, countOneBits(firstTrailingBit(firstLeadingBit(4294967295u))) | ~var_1.x, ~(~(~var_1.x)));
    global0 = array<Struct_2, 29>();
    var var_3 = vec4<u32>(min(_wgslsmith_mod_u32(34163u, ~1u), ~22531u), var_1.x, 45735u, ~525u);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-730f, -1334f) + _wgslsmith_f_op_f32(f32(-1f) * -162f)))));
    global0 = array<Struct_2, 29>();
    let var_5 = ~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(22786i, -1308i), -53837i & u_input.b, firstTrailingBit(1i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-45866i, u_input.b, -54214i), vec3<i32>(u_input.b, u_input.b, -1i)), func_2(true, var_4.a, Struct_5(var_0, var_4.a, Struct_1(var_2.x, var_0.x, vec4<u32>(0u, 48493u, 974u, var_1.x), u_input.b), Struct_1(9536u, var_0.x, vec4<u32>(var_1.x, 4294967295u, 0u, 1u), 43787i), var_4.a)).wwx >> (vec3<u32>(var_3.x, 4294967295u, var_2.x) % vec3<u32>(32u))));
    var var_6 = ~33785u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec2_i32(-var_5.zx, vec2<i32>(var_5.x, u_input.b))) ^ ~(vec2<i32>(-1i) * -var_5.xx));
}

