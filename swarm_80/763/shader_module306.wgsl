struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 18>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<u32>(30847u, 0u, 0u), 1000f, vec4<i32>(-50266i, -1i, 2147483647i, 25266i)), -19936i, -684f, Struct_1(vec3<u32>(0u, 88671u, 15480u), -437f, vec4<i32>(10220i, -2503i, 2147483647i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(1u, 67744u, 33703u), 1282f, vec4<i32>(-32483i, -8105i, -1i, -1i)), 23285i, 1570f, Struct_1(vec3<u32>(25940u, 77613u, 1u), -1101f, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i))), Struct_2(Struct_1(vec3<u32>(79101u, 1u, 9169u), 643f, vec4<i32>(21379i, -44996i, 28721i, 1i)), -1i, 542f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 39744u), -398f, vec4<i32>(18371i, -80092i, -49021i, -55905i))), Struct_2(Struct_1(vec3<u32>(22546u, 0u, 0u), -298f, vec4<i32>(953i, 322i, -1i, 2147483647i)), 1i, 932f, Struct_1(vec3<u32>(0u, 14013u, 90291u), -1090f, vec4<i32>(-8024i, 0i, -29559i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(98078u, 65042u, 4294967295u), 1683f, vec4<i32>(23654i, 1i, 2147483647i, 24245i)), 2147483647i, -594f, Struct_1(vec3<u32>(1756u, 4294967295u, 28042u), -910f, vec4<i32>(-38250i, -20080i, 14488i, 2552i))), Struct_2(Struct_1(vec3<u32>(0u, 62056u, 34801u), 436f, vec4<i32>(14824i, 39909i, -42147i, 2147483647i)), 5139i, 820f, Struct_1(vec3<u32>(20809u, 119091u, 15002u), 146f, vec4<i32>(-6039i, -12153i, -29575i, 0i))), Struct_2(Struct_1(vec3<u32>(46297u, 33672u, 74407u), -530f, vec4<i32>(1i, -14722i, 0i, -69075i)), -1i, 744f, Struct_1(vec3<u32>(71778u, 1u, 19728u), 1942f, vec4<i32>(1i, 2066i, 28862i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(54362u, 20810u, 31881u), 210f, vec4<i32>(2147483647i, 7571i, -3672i, 2147483647i)), 2147483647i, 719f, Struct_1(vec3<u32>(0u, 0u, 1u), -2281f, vec4<i32>(3398i, -4461i, 0i, -38643i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 23600u), -416f, vec4<i32>(17215i, 32032i, 46621i, 1i)), -51693i, 133f, Struct_1(vec3<u32>(1u, 46572u, 1u), -455f, vec4<i32>(2147483647i, 2147483647i, 14758i, -1i))), Struct_2(Struct_1(vec3<u32>(18882u, 11433u, 51187u), -622f, vec4<i32>(0i, -29003i, -1i, 2147483647i)), 21612i, -1299f, Struct_1(vec3<u32>(4294967295u, 1u, 1u), -2555f, vec4<i32>(3638i, 2147483647i, -1i, -53711i))), Struct_2(Struct_1(vec3<u32>(12994u, 1u, 11139u), -149f, vec4<i32>(1i, 15062i, 47086i, -1338i)), -16263i, -123f, Struct_1(vec3<u32>(23962u, 4294967295u, 1u), 502f, vec4<i32>(20186i, -42288i, 0i, 37607i))), Struct_2(Struct_1(vec3<u32>(7813u, 0u, 0u), 125f, vec4<i32>(i32(-2147483648), -22552i, -38580i, 22197i)), 7582i, 370f, Struct_1(vec3<u32>(982u, 34299u, 4294967295u), 460f, vec4<i32>(-1i, 38787i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(34546u, 4294967295u, 0u), 1274f, vec4<i32>(-1i, i32(-2147483648), -18252i, 44071i)), 26013i, -564f, Struct_1(vec3<u32>(0u, 1u, 32302u), 2490f, vec4<i32>(-45397i, 1i, i32(-2147483648), 14249i))), Struct_2(Struct_1(vec3<u32>(11208u, 155011u, 4294967295u), -139f, vec4<i32>(i32(-2147483648), 0i, 0i, 8450i)), i32(-2147483648), -1000f, Struct_1(vec3<u32>(3391u, 25314u, 0u), 760f, vec4<i32>(8353i, -1i, 2147483647i, 65691i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 6250u), 288f, vec4<i32>(39379i, 13703i, -53555i, 7223i)), 20293i, 472f, Struct_1(vec3<u32>(4294967295u, 3996u, 0u), -2220f, vec4<i32>(-11783i, -17390i, 14005i, -19636i))), Struct_2(Struct_1(vec3<u32>(0u, 3629u, 1u), -1098f, vec4<i32>(-1i, -67444i, 22073i, -61143i)), 12692i, -712f, Struct_1(vec3<u32>(1u, 2277u, 4294967295u), 145f, vec4<i32>(1i, 2147483647i, 0i, 6241i))), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), 788f, vec4<i32>(i32(-2147483648), i32(-2147483648), -15327i, -18111i)), -129877i, -786f, Struct_1(vec3<u32>(0u, 1u, 1u), 1723f, vec4<i32>(1i, 1i, i32(-2147483648), 0i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 37529u), 126f, vec4<i32>(26917i, i32(-2147483648), -38594i, 1i)), -52224i, -148f, Struct_1(vec3<u32>(33069u, 4294967295u, 1u), -563f, vec4<i32>(-26284i, 33949i, -4748i, 4609i))), Struct_2(Struct_1(vec3<u32>(74403u, 1u, 4294967295u), -1137f, vec4<i32>(-1883i, -3798i, i32(-2147483648), 12802i)), -24022i, -765f, Struct_1(vec3<u32>(2591u, 4294967295u, 57768u), 824f, vec4<i32>(i32(-2147483648), 1i, -7237i, -54395i))), Struct_2(Struct_1(vec3<u32>(1u, 53331u, 0u), 252f, vec4<i32>(2147483647i, 1i, -34924i, -23525i)), 61652i, 135f, Struct_1(vec3<u32>(0u, 16709u, 74016u), 1161f, vec4<i32>(1i, -31301i, 25324i, 5213i))), Struct_2(Struct_1(vec3<u32>(21914u, 0u, 1678u), -1000f, vec4<i32>(-1228i, 0i, -6920i, 2147483647i)), 1i, 2781f, Struct_1(vec3<u32>(1u, 31389u, 0u), -964f, vec4<i32>(0i, 14683i, -18073i, 45229i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 0u), 1000f, vec4<i32>(1i, -937i, -13265i, 1i)), 1i, -938f, Struct_1(vec3<u32>(49440u, 1u, 1u), 818f, vec4<i32>(-1i, -1i, 0i, -7903i))), Struct_2(Struct_1(vec3<u32>(64031u, 44134u, 0u), 1597f, vec4<i32>(1i, 0i, 1i, 9398i)), -1i, -437f, Struct_1(vec3<u32>(51487u, 28851u, 35334u), -1496f, vec4<i32>(23159i, 0i, 30481i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 41422u), -927f, vec4<i32>(1i, i32(-2147483648), 1i, -44396i)), 1i, -879f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), -341f, vec4<i32>(26923i, 16203i, -9488i, -36416i))), Struct_2(Struct_1(vec3<u32>(0u, 20868u, 0u), -1017f, vec4<i32>(0i, 13752i, 15797i, 24236i)), -1i, 262f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -685f, vec4<i32>(-71199i, 2147483647i, 1i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(18052u, 96957u, 19099u), -1434f, vec4<i32>(0i, 24946i, 1i, -1i)), 2147483647i, -2410f, Struct_1(vec3<u32>(61516u, 4294967295u, 4294967295u), 1444f, vec4<i32>(0i, -6370i, -1i, 1i))), Struct_2(Struct_1(vec3<u32>(0u, 11538u, 49731u), -351f, vec4<i32>(0i, 1i, 4926i, -44330i)), -27007i, -908f, Struct_1(vec3<u32>(13602u, 79062u, 0u), -1000f, vec4<i32>(1i, 0i, i32(-2147483648), 0i))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(reverseBits(_wgslsmith_div_vec3_u32(global0.a.a, vec3<u32>(0u, 1u, u_input.b)))), global0.a.a | global0.a.a), global2.x >> ((global0.d.a.x | (global2.x ^ 14573u)) % 32u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.d.a.x, u_input.c.x, 18187u, 0u) ^ vec4<u32>(u_input.c.x, 4151u, u_input.b, 0u)) << ((~u_input.c >> ((vec4<u32>(95719u, 50991u, global0.a.a.x, 55660u) >> (vec4<u32>(34888u, 3036u, global0.d.a.x, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~((vec4<u32>(global0.d.a.x, 1u, 25743u, 54402u) << (vec4<u32>(0u, u_input.b, global0.a.a.x, 4294967295u) % vec4<u32>(32u))) >> (min(u_input.c, u_input.c) % vec4<u32>(32u))))), 27u)];
    global3 = array<Struct_2, 27>();
    global0 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_0 = global0.d;
    let var_1 = Struct_2(Struct_1(~(~vec3<u32>(u_input.c.x, global0.d.a.x, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, global0.d.c.x, var_0.c.x), var_0.c)), max(-_wgslsmith_sub_i32(firstLeadingBit(var_0.c.x), ~0i), abs(-abs(2147483647i))), 242f, Struct_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(23593u, global2.x, 36753u), vec3<u32>(var_0.a.x, 1u, global2.x))), _wgslsmith_f_op_f32(-global0.d.b), _wgslsmith_mod_vec4_i32(global0.a.c, -(vec4<i32>(global0.a.c.x, 0i, 38166i, global0.a.c.x) & var_0.c))));
    return vec4<u32>(~(~select(~4294967295u, ~16536u, any(vec4<bool>(false, false, false, false)))), u_input.c.x, 35106u ^ _wgslsmith_div_u32(74888u, ~u_input.b), 0u ^ abs(_wgslsmith_dot_vec2_u32(~global0.d.a.xx, vec2<u32>(global2.x, global0.d.a.x))));
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(u_input.c.yyw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + global0.a.b)), 1520f), global0.a.c);
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    return firstTrailingBit(~(-2147483647i));
}

fn func_2() -> i32 {
    let var_0 = -func_4(func_3());
    let var_1 = Struct_2(global0.a, _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, var_0), firstTrailingBit(_wgslsmith_dot_vec3_i32(global0.d.c.wwx, vec3<i32>(global0.d.c.x, global0.b, 0i))), 30781i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1290f, global0.d.b)), -124f))) - 1f), global0.d);
    global1 = array<Struct_2, 18>();
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1577f, _wgslsmith_f_op_f32(global0.a.b - global0.d.b)) * global0.d.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_f_op_f32(1389f + -296f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(455f)) - _wgslsmith_f_op_f32(global0.a.b + global0.c))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1488f, global0.c, -1119f)))))))));
    global1 = array<Struct_2, 18>();
    return 1i;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = vec4<i32>(countOneBits(2147483647i), countOneBits(39427i) & _wgslsmith_add_i32(func_2(), ~firstTrailingBit(u_input.a)), func_2(), ~_wgslsmith_clamp_i32(global0.b, ~(-50430i), _wgslsmith_div_i32(arg_0.a.c.x, global0.d.c.x)));
    let var_1 = -_wgslsmith_sub_vec3_i32(abs(global0.d.c.zxz), vec3<i32>(1i, ~(~2147483647i), arg_1));
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    var var_2 = Struct_1(max(_wgslsmith_sub_vec3_u32(~u_input.c.wyw, select(~vec3<u32>(59690u, global2.x, u_input.b), countOneBits(vec3<u32>(33892u, arg_0.a.a.x, 37592u)), vec3<bool>(true, false, true))), u_input.c.zxz), _wgslsmith_f_op_f32(f32(-1f) * -341f), -vec4<i32>(u_input.a, -1i, ~(i32(-1i) * -33592i), -1i));
    return any(vec4<bool>(arg_0.a.a.x != u_input.c.x, true, (~80903u << (_wgslsmith_div_u32(68401u, u_input.b) % 32u)) != 13922u, var_2.a.x != _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a.x, 1u, arg_0.a.a.x) << (vec3<u32>(4294967295u, global2.x, global2.x) % vec3<u32>(32u)), firstTrailingBit(arg_0.a.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = min(vec2<u32>(global0.a.a.x, 8400u), max(_wgslsmith_clamp_vec2_u32(global2.xz, ~vec2<u32>(4294967295u, 4294967295u) & vec2<u32>(global2.x, global2.x), vec2<u32>(0u, global2.x) << ((vec2<u32>(668u, 66050u) >> (vec2<u32>(arg_2.a.a.x, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_2.d.a.zy));
    var var_1 = Struct_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0.d.a.x, 4294967295u), min(0u, 0u), ~0u), u_input.c.yxy)), global0.d.b, firstLeadingBit(abs(-(vec4<i32>(5077i, arg_0.c.x, global0.d.c.x, global0.a.c.x) | vec4<i32>(u_input.a, global0.a.c.x, 29032i, arg_0.c.x)))));
    var var_2 = arg_2;
    var var_3 = global1[_wgslsmith_index_u32(~reverseBits(~reverseBits(min(arg_2.a.a.x, global0.a.a.x))), 18u)];
    let var_4 = _wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.d.b, -1550f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-425f + var_3.d.b)) * -224f)));
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(global2.yx, _wgslsmith_add_vec2_u32(var_2.a.a.zz, ~global2.yz)), abs(var_2.d.a.x), global0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_5(Struct_1(u_input.c.xww & vec3<u32>(global0.a.a.x, 26343u, 28510u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec4<i32>(2147483647i, global0.a.c.x, u_input.a, 0i)), vec4<bool>(u_input.a <= 2147483647i, false, any(vec2<bool>(false, true)), func_1(Struct_2(Struct_1(global0.d.a, global0.c, global0.d.c), -2147483647i, -221f, Struct_1(vec3<u32>(global2.x, global0.a.a.x, global2.x), global0.c, vec4<i32>(u_input.a, -24073i, u_input.a, u_input.a))), 12161i)), Struct_2(Struct_1(u_input.c.xzz, -100f, global0.a.c), global0.b, _wgslsmith_f_op_f32(-global0.d.b), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)), global0.d.c), countOneBits(_wgslsmith_div_i32(u_input.a, u_input.a)), global0.d.b, global0.d);
    var var_1 = vec2<bool>(any(!vec3<bool>(false, any(vec2<bool>(false, true)), true)), false | (func_1(global3[_wgslsmith_index_u32(var_0.d.a.x, 27u)], ~u_input.a) != true));
    var_0 = Struct_2(Struct_1(var_0.a.a, global0.d.b, -_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.a.c, vec4<i32>(var_0.d.c.x, u_input.a, -20617i, u_input.a), vec4<i32>(var_0.b, global0.b, u_input.a, global0.a.c.x)), -var_0.d.c, var_0.a.c)), global0.b, var_0.d.b, Struct_1(~global0.a.a, 525f, global0.a.c));
    var_1 = !vec2<bool>(var_1.x, false);
    let var_2 = !(!(!all(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global0.d.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(703f))), var_0.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(281f, 1541f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_div_f32(var_0.d.b, var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1277f, var_0.c, var_0.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(757f, -1146f, global0.d.b) * vec3<f32>(229f, var_0.a.b, global0.c)))))), -16495i);
}

