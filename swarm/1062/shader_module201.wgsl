struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(524f, Struct_1(false, vec4<bool>(false, true, false, true), vec2<u32>(24661u, 50378u), 0u, vec3<u32>(7143u, 4294967295u, 0u)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<u32>(1u, 4294967295u), 37607u, vec3<u32>(4294967295u, 61155u, 18280u)));

var<private> global2: Struct_3 = Struct_3(Struct_1(true, vec4<bool>(true, true, true, false), vec2<u32>(1u, 33751u), 0u, vec3<u32>(4294967295u, 1u, 35223u)), Struct_1(true, vec4<bool>(false, true, false, false), vec2<u32>(1u, 87u), 81812u, vec3<u32>(4294967295u, 1u, 43649u)), 11256i, -387f, 166f);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec4<bool>(false, false, true, false), vec2<u32>(52042u, 24952u), 6413u, vec3<u32>(1u, 0u, 0u)), Struct_1(true, vec4<bool>(true, false, false, false), vec2<u32>(68577u, 24871u), 0u, vec3<u32>(25401u, 0u, 19039u)), Struct_1(true, vec4<bool>(true, true, false, false), vec2<u32>(0u, 0u), 23506u, vec3<u32>(1u, 1u, 0u)), Struct_1(false, vec4<bool>(false, false, true, false), vec2<u32>(1u, 46450u), 21907u, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(true, vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 1u), 8563u, vec3<u32>(1u, 32605u, 13093u)), Struct_1(true, vec4<bool>(false, false, true, false), vec2<u32>(97252u, 4294967295u), 0u, vec3<u32>(4294967295u, 4294967295u, 172u)), Struct_1(false, vec4<bool>(true, true, true, true), vec2<u32>(0u, 4294967295u), 5858u, vec3<u32>(4294967295u, 28193u, 1u)), Struct_1(false, vec4<bool>(true, false, false, true), vec2<u32>(53888u, 1u), 36556u, vec3<u32>(6554u, 4294967295u, 37516u)), Struct_1(false, vec4<bool>(false, false, true, true), vec2<u32>(1u, 0u), 7436u, vec3<u32>(19806u, 1u, 0u)), Struct_1(false, vec4<bool>(true, false, false, false), vec2<u32>(0u, 1u), 1u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(false, vec4<bool>(false, true, true, false), vec2<u32>(68765u, 0u), 1u, vec3<u32>(17524u, 11027u, 0u)), Struct_1(true, vec4<bool>(false, false, false, false), vec2<u32>(44974u, 17616u), 24217u, vec3<u32>(54853u, 1u, 4294967295u)), Struct_1(true, vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 87420u), 4294967295u, vec3<u32>(5936u, 45782u, 46824u)), Struct_1(true, vec4<bool>(true, false, false, false), vec2<u32>(0u, 4294967295u), 4294967295u, vec3<u32>(0u, 50848u, 0u)), Struct_1(false, vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 55473u), 25715u, vec3<u32>(1u, 50271u, 21759u)), Struct_1(true, vec4<bool>(false, false, false, true), vec2<u32>(3657u, 1u), 45575u, vec3<u32>(11023u, 32843u, 4294967295u)), Struct_1(false, vec4<bool>(false, true, true, false), vec2<u32>(0u, 4294967295u), 12533u, vec3<u32>(18059u, 71154u, 91294u)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<u32>(0u, 4294967295u), 4294967295u, vec3<u32>(2809u, 4294967295u, 36755u)), Struct_1(true, vec4<bool>(true, false, false, true), vec2<u32>(24647u, 0u), 11741u, vec3<u32>(4294967295u, 44818u, 0u)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 1u), 71026u, vec3<u32>(0u, 0u, 0u)), Struct_1(true, vec4<bool>(false, true, true, false), vec2<u32>(47723u, 32912u), 39495u, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(true, vec4<bool>(true, true, true, true), vec2<u32>(35457u, 4294967295u), 14742u, vec3<u32>(32202u, 4294967295u, 0u)), Struct_1(true, vec4<bool>(true, false, false, true), vec2<u32>(1u, 21452u), 930u, vec3<u32>(105046u, 25218u, 465u)), Struct_1(false, vec4<bool>(true, true, true, false), vec2<u32>(1u, 1u), 10725u, vec3<u32>(1090u, 34492u, 0u)), Struct_1(false, vec4<bool>(false, true, false, true), vec2<u32>(50926u, 0u), 38665u, vec3<u32>(0u, 52063u, 5761u)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 0u), 41035u, vec3<u32>(38460u, 35803u, 1u)), Struct_1(false, vec4<bool>(false, false, false, true), vec2<u32>(0u, 1u), 0u, vec3<u32>(1u, 1u, 14260u)));

var<private> global4: Struct_3 = Struct_3(Struct_1(true, vec4<bool>(false, true, true, false), vec2<u32>(14998u, 37349u), 1u, vec3<u32>(4288u, 63509u, 32886u)), Struct_1(false, vec4<bool>(false, false, false, true), vec2<u32>(61385u, 1u), 1u, vec3<u32>(1u, 0u, 8427u)), 916i, 1409f, -167f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~reverseBits(vec2<i32>(min(-28313i, 1i), -global0.c >> (_wgslsmith_clamp_u32(78471u, global2.b.d, global4.a.e.x) % 32u)));
    var var_1 = global0.a;
    global3 = array<Struct_1, 27>();
    var var_2 = Struct_3(Struct_1((11935i <= ~global0.c) && (_wgslsmith_f_op_f32(abs(global2.d)) < -1166f), vec4<bool>(!any(vec2<bool>(global1.c.a, false)), !any(global0.b.b.xxz), any(vec3<bool>(true, global0.b.a, global2.a.b.x)), -551f == _wgslsmith_f_op_f32(max(1000f, global4.d))), global4.b.e.xz, ~_wgslsmith_div_u32(global1.c.c.x, 0u ^ var_1.e.x), ~(~select(vec3<u32>(0u, u_input.b, global2.a.d), vec3<u32>(57113u, global1.c.d, var_1.e.x), vec3<bool>(global4.a.b.x, var_1.a, var_1.b.x)))), global3[_wgslsmith_index_u32(global4.b.c.x, 27u)], u_input.e, 1087f, _wgslsmith_f_op_f32(global2.d + global2.e));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(265f, _wgslsmith_f_op_f32(f32(-1f) * -3204f))), global4.b, global1.b);
    return min(vec2<u32>(~(var_2.b.d >> (global2.a.e.x % 32u)), var_2.a.c.x) << (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d, global0.b.c.x, var_3.c.d), vec4<u32>(49705u, 31882u, global1.c.d, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c.d, var_1.c.x, 0u, u_input.b), vec4<u32>(var_2.b.c.x, 1u, 59281u, 42289u))), _wgslsmith_sub_u32(global1.b.c.x, var_3.b.e.x)) % vec2<u32>(32u)), global1.b.e.yz);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(global1.c.a, global1.c.b, ~(vec2<u32>(global2.a.c.x, u_input.b) ^ func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.e.x, max(32882u, global4.b.d), 76388u, global1.c.e.x), vec4<u32>(~global0.b.c.x, _wgslsmith_clamp_u32(4912u, 1u, 0u), _wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.d, 4294967295u, global0.b.e.x), vec3<u32>(1u, global0.b.c.x, 34048u)))), countOneBits(_wgslsmith_add_vec3_u32(global2.a.e, max(vec3<u32>(60260u, global1.c.c.x, 9493u), global4.a.e)))), Struct_1(true, vec4<bool>(!all(vec3<bool>(global1.b.b.x, global1.b.a, global2.a.a)), all(!vec4<bool>(false, true, global2.b.a, true)), _wgslsmith_f_op_f32(global2.d * global1.a) <= _wgslsmith_f_op_f32(f32(-1f) * -317f), all(select(vec3<bool>(global4.a.b.x, global1.c.b.x, false), global2.b.b.wwy, global0.a.b.xxy))), global4.a.e.xy >> (global1.c.e.xy % vec2<u32>(32u)), u_input.d, ~(~global0.a.e)), ~(~(~u_input.e) ^ 1i), _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(280f + -1042f))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(124f + global4.d), _wgslsmith_f_op_f32(step(global4.d, global1.a))), vec2<f32>(_wgslsmith_f_op_f32(max(1032f, -2334f)), -574f))));
    let var_3 = var_0;
    global1 = Struct_2(var_2.x, var_3.a, global0.b);
    return Struct_1(_wgslsmith_sub_i32(32669i, countOneBits(0i)) > global4.c, global1.b.b, ~(global0.a.c | vec2<u32>(var_0.a.c.x, var_3.a.d >> (u_input.b % 32u))), _wgslsmith_add_u32(30785u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.c.x, 539u, var_0.b.d, u_input.b), firstLeadingBit(vec4<u32>(global1.c.c.x, 4294967295u, var_1.b.e.x, 55320u)))), vec3<u32>(abs(firstLeadingBit(13878u)), _wgslsmith_sub_u32(0u, var_3.b.e.x), ~abs(0u)) | (max(vec3<u32>(46713u, global1.b.c.x, 3779u), select(vec3<u32>(93147u, global2.a.c.x, 0u), var_1.a.e, global0.b.b.wwy)) ^ vec3<u32>(~19735u, 1u, ~var_0.b.e.x)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    global2 = Struct_3(arg_0.a, global1.b, _wgslsmith_add_i32(0i, abs(global2.c)), _wgslsmith_f_op_f32(-global1.a), -1074f);
    let var_0 = !vec2<bool>(!(!global0.b.b.x), true);
    global3 = array<Struct_1, 27>();
    global0 = Struct_3(arg_0.a, global2.b, abs(-(~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(102f - global4.e), 241f, select(true, false, var_0.x))) * global0.e) - global4.e), 627f);
    global0 = arg_0;
    return _wgslsmith_sub_u32(u_input.a, 0u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = select(global0.a.b, vec4<bool>(true, true, true, !global1.c.b.x), global2.a.a);
    global1 = Struct_2(-1071f, global4.b, arg_3.c);
    var var_1 = arg_3.b.a;
    var var_2 = select(_wgslsmith_add_vec4_i32(~(vec4<i32>(-33657i, arg_1, -11595i, 1i) >> (vec4<u32>(arg_3.b.e.x, global2.b.e.x, u_input.a, global0.b.c.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global4.c, global0.c, -12812i, 2147483647i)), u_input.c)) << (_wgslsmith_mod_vec4_u32((vec4<u32>(global0.b.e.x, u_input.d, 0u, u_input.a) ^ vec4<u32>(global4.a.e.x, global1.c.d, arg_3.b.d, arg_3.c.d)) & vec4<u32>(global2.a.d, 0u, global2.a.d, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_3.b.d, 32190u), vec4<u32>(arg_0, global0.b.c.x, 30510u, global4.b.c.x))) % vec4<u32>(32u)), vec4<i32>(11428i, -1i, global0.c, ~(-_wgslsmith_div_i32(336i, arg_1))), any(vec3<bool>(global0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -329f) >= global0.e, true)));
    var var_3 = !all(select(select(!global0.b.b, !vec4<bool>(true, global4.a.b.x, global2.b.a, global4.b.a), vec4<bool>(true, false, false, false)), select(vec4<bool>(global4.b.b.x, arg_3.c.b.x, false, arg_3.c.b.x), vec4<bool>(true, true, global2.b.b.x, true), select(arg_3.c.b, vec4<bool>(true, global4.b.a, arg_3.b.b.x, false), false)), global4.b.b.x));
    return Struct_2(global0.d, global1.b, func_2());
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(global1.b, func_2(), global4.c | -firstTrailingBit(global2.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a, 894f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(ceil(1811f)))), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(888f, 1000f) * _wgslsmith_f_op_f32(-arg_0.a)))), -249f);
    global2 = Struct_3(Struct_1(true, select(vec4<bool>(true, all(global0.a.b), true, global4.b.b.x), vec4<bool>(false, false && global1.c.b.x, false, false), !vec4<bool>(var_0.b.a, global1.b.a, arg_0.b.a, arg_0.b.b.x)), ~(~(~vec2<u32>(37647u, u_input.a))), 1u, func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(25457u, global2.a.d), arg_0.b.e.yx), ~global2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, -19706i, global4.c), u_input.c.yxy), Struct_2(845f, global2.a, global4.b)).c.e ^ select(global1.c.e, var_0.a.e ^ global0.b.e, vec3<bool>(global1.c.a, true, global4.a.b.x))), func_5(global0.b.c.x, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -51066i), 26429i), countOneBits(u_input.e), arg_0).b, 0i, global4.d, 4263f);
    var var_1 = func_2();
    var var_2 = max(~(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 49664u, 1u, global0.a.d), vec4<u32>(0u, global2.a.d, 65814u, global0.a.e.x)), vec4<u32>(4294967295u, global0.a.c.x, 0u, global0.b.d)) & min(abs(vec4<u32>(55926u, global0.b.d, 53998u, 0u)), vec4<u32>(global1.c.c.x, 0u, global1.b.e.x, 79060u))), vec4<u32>(93831u, max(0u, var_0.a.e.x), 61125u, 27804u));
    let var_3 = vec4<bool>(all(vec4<bool>(any(!global0.b.b), !(878f <= global4.e), true, _wgslsmith_add_i32(1i, -2147483647i) < u_input.c.x)), any(!select(vec2<bool>(var_1.b.x, global4.b.b.x), !vec2<bool>(false, global4.b.b.x), global2.a.a)), all(!func_2().b.wy), true);
    return Struct_2(_wgslsmith_f_op_f32(abs(var_0.d)), Struct_1(true, var_0.a.b, global2.b.e.yx, func_5(~(~4294967295u), ~u_input.c.x, countOneBits(global4.c), func_5(firstTrailingBit(global0.b.c.x), global4.c, global4.c, Struct_2(-570f, global1.c, Struct_1(global1.c.b.x, vec4<bool>(var_3.x, var_3.x, true, true), vec2<u32>(global0.a.c.x, 64280u), 0u, global0.b.e)))).b.d, min(countOneBits(vec3<u32>(4294967295u, 37754u, 0u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.a.d, 50406u), var_2.wzz) % vec3<u32>(32u)), vec3<u32>(abs(global2.a.c.x), 39735u >> (u_input.d % 32u), ~20990u))), global2.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-global1.a);
    let var_1 = func_6(func_5(func_4(Struct_3(func_2(), func_2(), 11208i, 261f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.b.a), 1i, ~_wgslsmith_mod_i32(12636i, 2147483647i >> (arg_0.d % 32u)), Struct_2(1847f, Struct_1(false, !global1.b.b, global2.b.e.xz, ~arg_0.d, global0.b.e), Struct_1(arg_1.b.x, !vec4<bool>(true, global2.b.b.x, true, global1.c.b.x), global0.a.e.xz, max(4294967295u, global2.a.e.x), ~global2.a.e))));
    return Struct_3(global0.b, func_2(), -(-29863i >> (arg_0.d % 32u)), func_5(var_1.b.e.x, global4.c, ~(24582i & min(global2.c, 9640i)), Struct_2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 - global0.d)), Struct_1(true, global4.a.b, vec2<u32>(global4.a.c.x, global4.a.d), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3829u, 6204u), vec3<u32>(22032u, 1u, global1.b.d)), ~vec3<u32>(0u, global1.c.c.x, global4.a.c.x)), func_2())).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(297f, 130f)), -184f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3[_wgslsmith_index_u32(74986u, 27u)], global3[_wgslsmith_index_u32(reverseBits(global1.b.e.x), 27u)]);
    global0 = Struct_3(global2.b, global4.a, _wgslsmith_mod_i32(-2147483647i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f * global1.a) - _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 620f), func_5(global0.a.c.x, global0.c, 1i, Struct_2(var_0.d, Struct_1(global1.b.b.x, vec4<bool>(global1.b.b.x, global0.a.b.x, true, global1.c.a), vec2<u32>(1u, 67666u), global2.b.c.x, vec3<u32>(global0.a.e.x, u_input.d, 0u)), Struct_1(var_0.a.b.x, vec4<bool>(true, true, false, global4.b.a), vec2<u32>(0u, global1.b.d), 4294967295u, vec3<u32>(4294967295u, 54235u, 4294967295u)))).a));
    let var_1 = (_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, var_0.a.e.x) ^ 1u, ~_wgslsmith_clamp_u32(31770u, 12282u, 83173u)) | max(16102u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.d, 61921u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.e.x, global4.a.e.x), vec2<u32>(global4.a.d, 0u))))) << (firstTrailingBit(_wgslsmith_mod_u32(abs(firstLeadingBit(var_0.b.d)), ~1u | global0.a.c.x)) % 32u);
    var var_2 = func_1(global1.b, Struct_1(global4.b.b.x, vec4<bool>(!global2.a.a, global0.a.a, !all(vec3<bool>(global1.b.a, var_0.b.a, false)), false), ~(~(~var_0.a.e.yz)), u_input.b, _wgslsmith_clamp_vec3_u32(var_0.a.e, _wgslsmith_add_vec3_u32(global0.a.e, global4.a.e), var_0.a.e) | vec3<u32>(reverseBits(global2.b.d), func_3().x, ~global1.b.c.x))).b;
    global0 = func_1(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(854f, 1384f))) >= global4.e, func_2().b, vec2<u32>(4294967295u, func_1(func_2(), global1.c).b.d), 4294967295u >> (~_wgslsmith_clamp_u32(global0.b.e.x, 4294967295u, 34894u) % 32u), vec3<u32>(countOneBits(~1u), ~select(global1.b.c.x, global0.a.d, true), reverseBits(4294967295u))), global3[_wgslsmith_index_u32(func_1(func_6(Struct_2(_wgslsmith_f_op_f32(858f - global0.d), global1.c, global4.a)).c, Struct_1(true, !global1.c.b, ~(vec2<u32>(var_2.d, 1u) >> (global4.b.e.zy % vec2<u32>(32u))), 29176u, global2.b.e)).a.c.x, 27u)]);
    var var_3 = func_2();
    global1 = func_6(Struct_2(global4.d, func_6(func_5(abs(1633u), ~u_input.c.x, var_0.c << (4294967295u % 32u), Struct_2(global4.d, global1.c, Struct_1(false, vec4<bool>(global4.b.a, false, true, false), vec2<u32>(20258u, var_1), global1.b.e.x, vec3<u32>(var_0.a.c.x, 1u, 12918u))))).b, func_2()));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.d * global4.d))), -1314f, _wgslsmith_f_op_f32(trunc(func_6(Struct_2(1068f, global3[_wgslsmith_index_u32(global0.a.c.x, 27u)], global0.b)).a)), func_6(func_5(4294967295u, global0.c, global2.c, Struct_2(global4.e, global0.b, global3[_wgslsmith_index_u32(global4.b.d, 27u)]))).a) - vec4<f32>(global4.d, 885f, _wgslsmith_f_op_f32(trunc(-1215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f - -746f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_1, 36359u, 5454u, 2212u), vec4<u32>(76652u, 4294967295u, var_1, 1u), vec4<bool>(true, var_2.a, var_3.a, global4.a.b.x)), vec4<u32>(var_1, 4294967295u, var_2.d, 14167u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(155f, global4.e) + vec2<f32>(var_4.x, var_0.e))), var_4.wx)), func_3().x, ~var_0.b.c.x);
}

