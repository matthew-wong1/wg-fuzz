struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(vec2<i32>(1i, 60646i), 1i, vec4<f32>(359f, -553f, -456f, 228f), -278f, Struct_1(vec3<f32>(121f, 198f, 197f), vec2<i32>(8142i, -42554i), 9725u, vec3<i32>(i32(-2147483648), 0i, -79113i))), Struct_5(vec2<i32>(i32(-2147483648), 1i), -1i, vec4<f32>(131f, 1000f, -400f, -393f), -1172f, Struct_1(vec3<f32>(-627f, -620f, 1346f), vec2<i32>(i32(-2147483648), 27026i), 1728u, vec3<i32>(1i, -1i, 72277i))), Struct_5(vec2<i32>(-1i, -32092i), -67757i, vec4<f32>(-684f, -789f, 364f, -1000f), 2020f, Struct_1(vec3<f32>(-411f, -331f, 1458f), vec2<i32>(-7371i, -9811i), 30862u, vec3<i32>(2147483647i, 0i, -1314i))), Struct_5(vec2<i32>(1i, -15360i), 15147i, vec4<f32>(-1073f, 298f, -822f, -182f), -526f, Struct_1(vec3<f32>(-296f, 1356f, -571f), vec2<i32>(0i, -1i), 0u, vec3<i32>(1i, 46775i, 1i))), Struct_5(vec2<i32>(-1i, 13599i), 10849i, vec4<f32>(-1412f, 929f, 413f, 684f), -902f, Struct_1(vec3<f32>(-977f, -2646f, 1148f), vec2<i32>(16828i, -1i), 0u, vec3<i32>(i32(-2147483648), -23029i, -21461i))), Struct_5(vec2<i32>(-73119i, i32(-2147483648)), -28879i, vec4<f32>(-381f, 317f, 454f, -1042f), -759f, Struct_1(vec3<f32>(641f, -637f, 989f), vec2<i32>(1i, -11877i), 83567u, vec3<i32>(45261i, 2147483647i, i32(-2147483648)))), Struct_5(vec2<i32>(42438i, -1i), 0i, vec4<f32>(510f, 1279f, 1024f, -1000f), 1000f, Struct_1(vec3<f32>(-263f, -1161f, 1302f), vec2<i32>(-18870i, 2147483647i), 4294967295u, vec3<i32>(0i, 2147483647i, 2147483647i))), Struct_5(vec2<i32>(2305i, 2147483647i), 32175i, vec4<f32>(2135f, -603f, -401f, 1292f), 701f, Struct_1(vec3<f32>(-1000f, 254f, 1000f), vec2<i32>(-25252i, -45906i), 100425u, vec3<i32>(17166i, 0i, 37036i))), Struct_5(vec2<i32>(14092i, 2147483647i), i32(-2147483648), vec4<f32>(2006f, -469f, 2627f, -425f), -314f, Struct_1(vec3<f32>(1000f, 1097f, 1008f), vec2<i32>(1i, -43611i), 1u, vec3<i32>(i32(-2147483648), 1484i, 2454i))), Struct_5(vec2<i32>(1i, 0i), -34803i, vec4<f32>(821f, 880f, 2512f, -1594f), -660f, Struct_1(vec3<f32>(213f, -1000f, 1000f), vec2<i32>(2147483647i, -12044i), 4294967295u, vec3<i32>(-9191i, 2147483647i, -17066i))), Struct_5(vec2<i32>(1i, 0i), 2147483647i, vec4<f32>(-1312f, 1000f, -1000f, -906f), 639f, Struct_1(vec3<f32>(825f, 215f, -1045f), vec2<i32>(6942i, -9986i), 116283u, vec3<i32>(-52372i, -6389i, 199i))), Struct_5(vec2<i32>(23249i, -51636i), -62086i, vec4<f32>(-1044f, -1433f, -1040f, 732f), -686f, Struct_1(vec3<f32>(906f, 1083f, 542f), vec2<i32>(-1i, 2147483647i), 4294967295u, vec3<i32>(-31544i, -23035i, 0i))), Struct_5(vec2<i32>(1i, -7354i), 1i, vec4<f32>(425f, 565f, -227f, 1505f), -526f, Struct_1(vec3<f32>(-507f, -509f, 332f), vec2<i32>(0i, 6921i), 4294967295u, vec3<i32>(44418i, 2147483647i, i32(-2147483648)))), Struct_5(vec2<i32>(i32(-2147483648), -17478i), 15237i, vec4<f32>(216f, -495f, -365f, 723f), 1194f, Struct_1(vec3<f32>(-639f, -1051f, -574f), vec2<i32>(0i, -1i), 41069u, vec3<i32>(0i, -48201i, 1i))), Struct_5(vec2<i32>(93685i, 8395i), i32(-2147483648), vec4<f32>(-1702f, 1289f, 196f, 537f), 646f, Struct_1(vec3<f32>(482f, -1660f, 608f), vec2<i32>(-15277i, 1i), 1u, vec3<i32>(-1i, 0i, 16700i))), Struct_5(vec2<i32>(i32(-2147483648), 0i), 45555i, vec4<f32>(-524f, 244f, 394f, -867f), 1000f, Struct_1(vec3<f32>(883f, -596f, 878f), vec2<i32>(1i, 35706i), 0u, vec3<i32>(5221i, -27013i, -1i))), Struct_5(vec2<i32>(1i, 38707i), -77958i, vec4<f32>(-1034f, -1128f, -601f, 1733f), -1949f, Struct_1(vec3<f32>(835f, -1532f, 233f), vec2<i32>(i32(-2147483648), 11560i), 22083u, vec3<i32>(-1i, -9861i, 101089i))));

var<private> global2: array<Struct_5, 19>;

var<private> global3: Struct_3;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_5, 19>();
    let var_0 = Struct_5(_wgslsmith_add_vec2_i32(~(-vec2<i32>(global4.x, global4.x)), firstLeadingBit(u_input.d.xz)), ~(abs(_wgslsmith_add_i32(global3.b.b.d.x, 0i)) >> (global3.b.a % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.a.x, global3.a.a.x, 1244f, _wgslsmith_f_op_f32(-global3.a.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(2564f, 458f)), _wgslsmith_f_op_f32(2170f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a.x) - _wgslsmith_f_op_f32(exp2(global3.b.b.a.x)))))), global3.b.b);
    global1 = array<Struct_5, 17>();
    let var_1 = Struct_4(-var_0.e.d.yy << (u_input.b % vec2<u32>(32u)));
    let var_2 = vec4<i32>((abs(global3.b.b.d.x) & _wgslsmith_div_i32(1i, -1847i)) << (countOneBits(var_0.e.c << (~u_input.a.x % 32u)) % 32u), u_input.d.x, firstLeadingBit(-1i), select(var_0.e.d.x, u_input.d.x, !global3.b.c.x));
    return Struct_3(global3.b.b, Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.b.b.a), _wgslsmith_f_op_vec3_f32(-var_0.c.zyx))), global3.b.b.b, ~global3.a.c, _wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, 2147483647i, var_1.a.x), var_2.wzx) << ((u_input.a.xzz ^ vec3<u32>(1u, u_input.c, 35418u)) % vec3<u32>(32u))), !vec3<bool>(select(true, true, true), true && global3.b.c.x, var_2.x == 33836i), global3.b.d, ~(~_wgslsmith_div_u32(u_input.e, global3.b.e))), global3.b.d.x | global0.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.b.x, 140946u, u_input.a.x, 9044u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(52832u, global3.b.b.c), u_input.b), 4294967295u, ~global3.a.c, _wgslsmith_mod_u32(global3.a.c, 9754u)) ^ u_input.a), Struct_1(global3.a.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, global3.b.b.d.x, arg_0.x), global3.a.d), _wgslsmith_dot_vec3_i32(global3.b.b.d, vec3<i32>(arg_0.x, arg_0.x, 1i))) >> (u_input.a.yx % vec2<u32>(32u)), 77105u, abs(~_wgslsmith_div_vec3_i32(global3.a.d, u_input.d.zww))), vec3<bool>(arg_1, true, global3.c), select(vec4<bool>(arg_1, any(vec2<bool>(global0.x, arg_1)), all(!global3.b.d.zx), !all(global0.zxz)), !(!global3.b.d), 1000f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1180f - global3.b.b.a.x) - _wgslsmith_f_op_f32(global3.a.a.x - 394f))), global3.b.e);
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1313f);
    var var_1 = ~(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 20588u), 18024u), func_3(vec2<i32>(-2147483647i, -2147483647i) ^ u_input.d.zy, true), ~47496u) >> (global3.b.a % 32u));
    var var_2 = _wgslsmith_add_vec2_i32(max(-u_input.d.wy, -firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, 0i), global3.b.b.b))), reverseBits(vec2<i32>(2147483647i, ~(global3.b.b.b.x ^ -41491i))));
    var var_3 = global0.ywx;
    var_3 = func_1().b.d.xyw;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = Struct_2(~select(48540u, abs(18105u), global3.b.d.x && false) << (func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.a.x * -1000f), global3.b.b.a.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 1u), 62083u << (u_input.a.x % 32u))) % 32u), global3.a, select(select(global0.xwy, select(!vec3<bool>(global3.b.c.x, global0.x, false), global0.zzz, global3.b.c), global3.b.d.x), vec3<bool>(true, true, true), false), func_1().b.d, ~firstLeadingBit(~39291u));
    var var_1 = Struct_2(1u, func_1().a, var_0.c, func_1().b.d, 34000u);
    global3 = func_1();
    global1 = array<Struct_5, 17>();
    let var_2 = abs(_wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(u_input.b.x, var_0.e, global3.b.b.c)), u_input.a.zyw));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(u_input.a.x, 1u, var_2.x) ^ vec3<u32>(u_input.e & 28474u, u_input.e & u_input.b.x, var_1.e)), min(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.e, var_1.a), _wgslsmith_dot_vec3_u32(u_input.a.zyw, var_2)) & var_0.e), 7801u, global3.b.b.c, vec4<i32>(global4.x, max(~var_1.b.b.x, var_1.b.d.x), -7975i, -25374i) ^ u_input.d);
}

