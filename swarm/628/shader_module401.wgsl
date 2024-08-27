struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(Struct_3(Struct_1(4488i, vec2<u32>(4294967295u, 1288u))), false, vec3<i32>(-34089i, -1i, 71974i)), Struct_5(Struct_3(Struct_1(0i, vec2<u32>(1u, 12197u))), true, vec3<i32>(-7217i, 0i, -30249i)), Struct_5(Struct_3(Struct_1(19078i, vec2<u32>(41407u, 43668u))), true, vec3<i32>(-1i, 1i, 2147483647i)), Struct_5(Struct_3(Struct_1(-8658i, vec2<u32>(13550u, 4294967295u))), true, vec3<i32>(-1i, -45246i, 2147483647i)), Struct_5(Struct_3(Struct_1(27379i, vec2<u32>(16728u, 106859u))), false, vec3<i32>(1i, -63098i, 1i)), Struct_5(Struct_3(Struct_1(0i, vec2<u32>(4294967295u, 79272u))), false, vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_5(Struct_3(Struct_1(-92633i, vec2<u32>(0u, 1u))), false, vec3<i32>(1i, -1632i, -4771i)), Struct_5(Struct_3(Struct_1(31145i, vec2<u32>(4294967295u, 16925u))), false, vec3<i32>(-1i, 9266i, 7306i)), Struct_5(Struct_3(Struct_1(-9643i, vec2<u32>(4294967295u, 1u))), false, vec3<i32>(2497i, -27261i, i32(-2147483648))), Struct_5(Struct_3(Struct_1(-20144i, vec2<u32>(0u, 32007u))), true, vec3<i32>(2147483647i, 1i, -25175i)), Struct_5(Struct_3(Struct_1(11693i, vec2<u32>(0u, 3641u))), false, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_5(Struct_3(Struct_1(0i, vec2<u32>(82578u, 1u))), false, vec3<i32>(-91627i, 0i, 22177i)), Struct_5(Struct_3(Struct_1(3293i, vec2<u32>(0u, 21794u))), true, vec3<i32>(1i, -1i, -19801i)), Struct_5(Struct_3(Struct_1(2147483647i, vec2<u32>(98709u, 1u))), true, vec3<i32>(-17689i, 0i, -29009i)), Struct_5(Struct_3(Struct_1(10117i, vec2<u32>(0u, 21444u))), false, vec3<i32>(2147483647i, 65801i, -8658i)), Struct_5(Struct_3(Struct_1(-1i, vec2<u32>(65080u, 1u))), true, vec3<i32>(2147483647i, 1i, -1i)), Struct_5(Struct_3(Struct_1(0i, vec2<u32>(71718u, 0u))), false, vec3<i32>(-1i, -25264i, -17048i)), Struct_5(Struct_3(Struct_1(-45518i, vec2<u32>(4294967295u, 4294967295u))), true, vec3<i32>(8579i, i32(-2147483648), i32(-2147483648))), Struct_5(Struct_3(Struct_1(1i, vec2<u32>(0u, 3303u))), false, vec3<i32>(i32(-2147483648), -1i, 11114i)), Struct_5(Struct_3(Struct_1(-23781i, vec2<u32>(1u, 6047u))), true, vec3<i32>(3652i, 24509i, -42910i)), Struct_5(Struct_3(Struct_1(-1i, vec2<u32>(0u, 12425u))), false, vec3<i32>(-32780i, -44812i, 10116i)), Struct_5(Struct_3(Struct_1(1122i, vec2<u32>(29616u, 1238u))), true, vec3<i32>(2147483647i, -1i, -12204i)), Struct_5(Struct_3(Struct_1(0i, vec2<u32>(4896u, 33063u))), false, vec3<i32>(1i, -7346i, 14022i)), Struct_5(Struct_3(Struct_1(-1i, vec2<u32>(47847u, 17789u))), true, vec3<i32>(13532i, 0i, -10968i)), Struct_5(Struct_3(Struct_1(34947i, vec2<u32>(0u, 38781u))), false, vec3<i32>(-46603i, i32(-2147483648), 9797i)), Struct_5(Struct_3(Struct_1(44582i, vec2<u32>(4294967295u, 4294967295u))), false, vec3<i32>(-30074i, 920i, i32(-2147483648))));

var<private> global1: array<Struct_3, 27>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec3<bool> {
    global0 = array<Struct_5, 26>();
    global0 = array<Struct_5, 26>();
    let var_0 = _wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c);
    var var_1 = 30663u;
    var var_2 = vec3<i32>(abs(~countOneBits(u_input.a) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.a.x, 23414i), vec3<i32>(-2147483647i, -2147483647i, u_input.a)), vec3<i32>(52639i, -39966i, u_input.a))), 1i >> (var_0 % 32u), arg_1.a.x);
    return vec3<bool>(all(!select(select(vec2<bool>(arg_1.b.x, arg_1.b.x), vec2<bool>(false, arg_1.b.x), false), !arg_1.b, select(vec2<bool>(false, true), arg_1.b, arg_1.b))), true || !arg_1.b.x, all(vec3<bool>(arg_1.b.x || true, !arg_1.b.x, u_input.a <= -2147483647i)) & (all(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, false)) | arg_1.b.x));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -17214i) << (vec4<u32>(0u, 0u, 17226u, 58239u) % vec4<u32>(32u)), -(vec4<i32>(6507i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(76029u, 34567u, 30492u, 4294967295u) % vec4<u32>(32u))))), vec4<i32>(~(~1i), -1172i, firstLeadingBit(-14993i), 22434i));
    let var_1 = !func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1341f)))), Struct_4(_wgslsmith_div_vec2_i32(-var_0.ww, var_0.yw), vec2<bool>(all(vec3<bool>(false, true, true)), true), vec3<u32>(1u, 1u, max(80358u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(980f, 850f, 1454f))))));
    var var_2 = Struct_4(vec2<i32>(_wgslsmith_mod_i32(~(-2147483647i) ^ abs(u_input.a), (var_0.x ^ -14681i) ^ u_input.a), -var_0.x), select(func_3(-1857f, Struct_4(~vec2<i32>(u_input.a, 0i), select(vec2<bool>(var_1.x, var_1.x), var_1.yz, var_1.xz), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 15504u, 56283u), vec3<u32>(4294967295u, 1u, 86807u)), _wgslsmith_div_vec3_f32(vec3<f32>(113f, 1000f, 1162f), vec3<f32>(-635f, -133f, 909f)))).yz, !select(select(var_1.zx, vec2<bool>(true, true), var_1.x), func_3(-1042f, Struct_4(vec2<i32>(u_input.a, var_0.x), var_1.zz, vec3<u32>(0u, 44043u, 0u), vec3<f32>(1000f, -1517f, 1581f))).zy, !var_1.xx), var_1.zy), max(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(24718u, 35156u), _wgslsmith_dot_vec4_u32(vec4<u32>(26178u, 71219u, 0u, 1u), vec4<u32>(23484u, 480u, 123484u, 9472u)), 0u), ~(~vec3<u32>(0u, 4294967295u, 0u))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1057f))), _wgslsmith_f_op_f32(select(812f, 860f, var_1.x)), _wgslsmith_f_op_f32(626f - _wgslsmith_f_op_f32(min(340f, -517f)))) - vec3<f32>(1f, 1f, 1f)));
    global0 = array<Struct_5, 26>();
    var var_3 = Struct_2(var_2.c, Struct_1(-(-2147483647i | _wgslsmith_mod_i32(var_0.x, 2147483647i)), vec2<u32>(~(~var_2.c.x), _wgslsmith_mult_u32(1u, var_2.c.x))), firstTrailingBit(vec2<i32>(-u_input.a, -1i)));
    return ~0u;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = -(~vec2<i32>(-2147483647i, max(u_input.a, u_input.a)));
    let var_1 = vec2<u32>(firstTrailingBit(~(~41029u)), select(9641u, ~1u, (_wgslsmith_clamp_u32(4294967295u, 0u, arg_0.x) > func_2()) && true));
    let var_2 = -2147483647i;
    let var_3 = Struct_2(~countOneBits(select(arg_0, vec3<u32>(var_1.x, arg_1, arg_0.x), vec3<bool>(arg_2.x, false, true)) >> (~vec3<u32>(1u, 38206u, arg_1) % vec3<u32>(32u))), Struct_1(firstTrailingBit(2147483647i), vec2<u32>(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_1), reverseBits(var_1)))), vec2<i32>(-2147483647i, -34027i));
    global0 = array<Struct_5, 26>();
    return _wgslsmith_add_vec2_u32(abs(~vec2<u32>(firstLeadingBit(var_1.x), 1u)), arg_0.zx & var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~reverseBits(func_1(vec3<u32>(0u, 4294967295u, 4294967295u), 34336u, vec4<bool>(true, false, false, false)) & vec2<u32>(48424u, 24379u)));
    global0 = array<Struct_5, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-528f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1286f)))));
    let var_2 = Struct_1(29156i, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(1u, 1u)) & vec2<u32>(1u, 1u)));
    global1 = array<Struct_3, 27>();
    var var_3 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, select(abs(var_2.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(14578u, var_2.b.x, 36060u), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x)), var_2.a == var_2.a), ~var_2.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, 5611u, func_2()), firstLeadingBit(abs(vec3<u32>(4294967295u, var_2.b.x, 4294967295u))))), var_2.b.x >> (var_2.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(834f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1811f, 1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(ceil(1045f)))))), (_wgslsmith_mult_vec4_u32(vec4<u32>(38457u, var_2.b.x, 4294967295u, 123324u), vec4<u32>(var_2.b.x, 1u, var_2.b.x, 33183u) | vec4<u32>(0u, var_2.b.x, 4294967295u, 0u)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 1u, 4294967295u), vec4<u32>(var_2.b.x, 43878u, 4294967295u, var_2.b.x))) << (vec4<u32>((4294967295u & var_2.b.x) ^ reverseBits(44341u), 33592u, min(_wgslsmith_dot_vec2_u32(var_2.b, vec2<u32>(var_2.b.x, var_2.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.b.x, var_2.b.x), vec3<u32>(15453u, var_2.b.x, 0u))), var_2.b.x) % vec4<u32>(32u)));
}

