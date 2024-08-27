struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<f32>(-1266f, 1000f, -1011f, 762f), Struct_1(true, 19537i, vec4<i32>(-10946i, -11167i, 2147483647i, 0i)), -45271i), Struct_2(vec4<f32>(-718f, -2128f, -499f, 768f), Struct_1(false, -23600i, vec4<i32>(2147483647i, 1i, 1i, 40144i)), -6794i), Struct_2(vec4<f32>(-1010f, 268f, -137f, -336f), Struct_1(false, 2147483647i, vec4<i32>(-53054i, 52456i, i32(-2147483648), i32(-2147483648))), 64421i), Struct_2(vec4<f32>(181f, 2001f, 921f, 1027f), Struct_1(true, -1i, vec4<i32>(2147483647i, -7793i, -1i, -1i)), -62004i), Struct_2(vec4<f32>(402f, -447f, 1277f, -884f), Struct_1(true, 1i, vec4<i32>(6719i, -42995i, -8911i, -14257i)), 55717i), Struct_2(vec4<f32>(-318f, 416f, -951f, -283f), Struct_1(true, 1i, vec4<i32>(12148i, -38606i, 0i, 9350i)), -12008i), Struct_2(vec4<f32>(-709f, 594f, 364f, -328f), Struct_1(true, i32(-2147483648), vec4<i32>(2147483647i, 28922i, 15501i, 7598i)), 2147483647i), Struct_2(vec4<f32>(-1413f, 132f, 1047f, -1364f), Struct_1(true, i32(-2147483648), vec4<i32>(13969i, 28850i, -32270i, -29535i)), -1i), Struct_2(vec4<f32>(-907f, 1575f, -265f, -1963f), Struct_1(false, -1i, vec4<i32>(3289i, i32(-2147483648), i32(-2147483648), 17702i)), 7515i), Struct_2(vec4<f32>(2218f, 865f, 881f, -744f), Struct_1(true, 3565i, vec4<i32>(240i, 1i, -1i, i32(-2147483648))), 1i), Struct_2(vec4<f32>(-300f, -935f, -254f, -615f), Struct_1(false, -9964i, vec4<i32>(-43350i, 0i, 20018i, 25359i)), 6973i), Struct_2(vec4<f32>(798f, -271f, -1720f, -543f), Struct_1(true, 2147483647i, vec4<i32>(-32435i, -1i, 38882i, -1i)), 1i), Struct_2(vec4<f32>(-375f, -1000f, -1741f, 825f), Struct_1(true, 1985i, vec4<i32>(0i, -10276i, -1i, -1i)), -1i), Struct_2(vec4<f32>(696f, -137f, 107f, -947f), Struct_1(true, 34449i, vec4<i32>(-16623i, -22959i, -46838i, 27460i)), -1i), Struct_2(vec4<f32>(-168f, -159f, 1000f, -794f), Struct_1(true, 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), -28780i, 12345i)), 18646i), Struct_2(vec4<f32>(-1392f, 290f, -2059f, 859f), Struct_1(false, -32991i, vec4<i32>(-51293i, -35071i, i32(-2147483648), -9303i)), 2147483647i), Struct_2(vec4<f32>(463f, 316f, -158f, 1619f), Struct_1(false, 2147483647i, vec4<i32>(2649i, 0i, -31322i, 1i)), 0i), Struct_2(vec4<f32>(1521f, 237f, 1377f, 451f), Struct_1(true, 27841i, vec4<i32>(-1i, 1i, i32(-2147483648), -16522i)), i32(-2147483648)), Struct_2(vec4<f32>(289f, 2034f, -1338f, 915f), Struct_1(true, -1687i, vec4<i32>(-15830i, -1i, 26361i, 50202i)), 1i), Struct_2(vec4<f32>(-1570f, 370f, -270f, 513f), Struct_1(true, i32(-2147483648), vec4<i32>(2147483647i, 4539i, 25365i, -1i)), -14271i), Struct_2(vec4<f32>(-703f, 1347f, -1046f, 1000f), Struct_1(true, 2147483647i, vec4<i32>(-8722i, 70402i, 0i, 0i)), -1i), Struct_2(vec4<f32>(-1000f, -173f, -452f, -2533f), Struct_1(true, 59139i, vec4<i32>(-14058i, -18209i, 2147483647i, 1i)), 7002i), Struct_2(vec4<f32>(1000f, 671f, -395f, 1065f), Struct_1(false, 1i, vec4<i32>(22251i, 0i, i32(-2147483648), 0i)), -9580i), Struct_2(vec4<f32>(1739f, -180f, 549f, 999f), Struct_1(false, -16397i, vec4<i32>(2147483647i, 1446i, -9554i, 151i)), 2147483647i), Struct_2(vec4<f32>(721f, 584f, -675f, -1614f), Struct_1(true, 2147483647i, vec4<i32>(-1i, i32(-2147483648), 1i, 69133i)), -18273i), Struct_2(vec4<f32>(-1149f, -311f, 235f, 623f), Struct_1(true, 4473i, vec4<i32>(45987i, -19189i, -46134i, 22100i)), 21967i), Struct_2(vec4<f32>(-708f, -1954f, 785f, 276f), Struct_1(false, 2147483647i, vec4<i32>(-1i, -14971i, 2147483647i, i32(-2147483648))), -42081i), Struct_2(vec4<f32>(217f, 775f, -284f, 690f), Struct_1(true, 21329i, vec4<i32>(-33148i, 0i, -114030i, -1i)), 6988i), Struct_2(vec4<f32>(367f, 1300f, 1867f, -874f), Struct_1(false, 0i, vec4<i32>(2147483647i, 19775i, -36121i, 15262i)), -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = !vec2<bool>(true, all(vec2<bool>(true, true)));
    let var_1 = Struct_1(var_0.x, -53676i, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(7382i, 1i, -2147483647i, -31362i), vec4<i32>(2147483647i, -41650i, 46i, 0i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 24065u, 1u, 1u), vec4<u32>(u_input.a, 28838u, u_input.b, 0u)) % vec4<u32>(32u)), select(vec4<i32>(0i, 0i, -1i, 1i), ~vec4<i32>(-20778i, 1i, -23801i, -10015i), var_0.x || false)), -abs(countOneBits(vec4<i32>(-24652i, 1i, 39007i, -2147483647i)))));
    var_0 = !select(select(vec2<bool>(var_1.a, 31421i < var_1.c.x), !select(vec2<bool>(true, true), vec2<bool>(var_1.a, false), vec2<bool>(var_0.x, false)), false), vec2<bool>(true, true), !all(vec4<bool>(var_1.a, var_0.x, true, var_1.a)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(300f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-945f * 298f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(step(1107f, 2174f)))) + _wgslsmith_f_op_f32(f32(-1f) * -249f)), -(i32(-1i) * -1i), -vec4<i32>(var_1.b, ~var_1.c.x << (u_input.b % 32u), countOneBits(abs(var_1.c.x)), -8503i));
    var_0 = !(!(!vec2<bool>(var_2.a, var_2.a && false)));
    return -2147483647i;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    global1 = array<Struct_2, 29>();
    var var_0 = 205f;
    var var_1 = Struct_1(_wgslsmith_sub_u32(firstTrailingBit(u_input.a), u_input.c) != ~5501u, ~0i, _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-35693i, -35459i), vec2<i32>(-2147483647i, 1i)), abs(abs(52977i)), _wgslsmith_mod_i32(1i, ~48052i), -1i | func_3()), countOneBits(~vec4<i32>(4605i, -35843i, 25652i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = 247f;
    return Struct_1(all(vec4<bool>(any(vec3<bool>(var_1.a, false, var_1.a)), var_1.a, any(!vec3<bool>(var_1.a, true, var_1.a)), var_1.a)), abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-18693i, 1i), reverseBits(var_1.c.zz))), firstTrailingBit(firstLeadingBit(var_1.c)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = -186f;
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, -320f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + 1556f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f + _wgslsmith_div_f32(1699f, -690f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(640f, var_2.x)), var_2.x) - _wgslsmith_f_op_vec2_f32(-var_2.yy));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -139f);
    return Struct_1(true, -arg_1, vec4<i32>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(749f, var_3.x, var_3.x, 847f), vec4<f32>(-1000f, var_3.x, -276f, var_2.x))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, var_2.x, 1537f), vec4<f32>(1643f, 718f, var_2.x, var_2.x))))).b, 0i, 1i, arg_1));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.c, u_input.c, 98102u), ~vec4<u32>(27890u, 13920u, u_input.c, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, 122824u), vec4<u32>(1u, 1u, 3755u, 1u)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(7758u, u_input.d, 9117u, u_input.a) ^ vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.d, 20102u), vec4<u32>(u_input.a, u_input.d, 0u, 0u)))));
    var var_1 = arg_2;
    var_1 = arg_2;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(var_1.a.x + 1769f)))));
    let var_3 = _wgslsmith_mod_i32(1i, arg_2.c);
    return ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.c, 0u, var_0.x)), var_0.x), _wgslsmith_mult_u32(~(~1u), var_0.x >> (1u % 32u)), var_0.x, 1u);
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(42393u, 10u)];
    global1 = array<Struct_2, 29>();
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 20784u, u_input.c), vec4<u32>(0u, u_input.b, 0u, u_input.a)), vec4<u32>(34193u, 1u, 39362u, u_input.b), vec4<u32>(23638u, 24652u, 17587u, 15432u) & vec4<u32>(7548u, 1u, u_input.b, u_input.b)), ~vec4<u32>(u_input.a, u_input.c, 46553u, 0u) & vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u)) >> (func_5(var_0.a.wz, -3963i, Struct_2(var_0.a, func_4(func_2(vec4<f32>(var_0.a.x, -1226f, -930f, -974f)), 26107i), firstLeadingBit(~(-11437i)))) % vec4<u32>(32u));
    var var_2 = var_0.b.a;
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))))), 0i, global1[_wgslsmith_index_u32(24750u, 29u)]).zx;
    return Struct_1(countOneBits(_wgslsmith_mod_i32(1i, -20269i) | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b.b, var_0.c, var_0.c), var_0.b.c)) <= 0i, -2147483647i, var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_add_i32(((-30689i >> (u_input.a % 32u)) & ~11006i) ^ -48995i, ~2147483647i));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 331f, -1517f) + vec3<f32>(-1236f, -233f, -333f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(184f, 541f, -204f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, -1000f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-659f, -235f, 640f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, -432f, -1987f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1141f, 610f, -1824f))))))));
    global1 = array<Struct_2, 29>();
    var_0 = firstTrailingBit(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.zz), ~(~(abs(5110u) >> (_wgslsmith_mod_u32(u_input.a, u_input.d) % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), _wgslsmith_mod_u32(u_input.d, 45045u), u_input.d, u_input.a), max(select(abs(vec4<u32>(1u, u_input.d, 1u, u_input.a)), vec4<u32>(u_input.a, 4294967295u, 42039u, 15855u) & vec4<u32>(u_input.c, u_input.c, 4294967295u, 10171u), select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(true, var_1.a, false, false))), firstTrailingBit(vec4<u32>(12281u, u_input.c, 4294967295u, 4294967295u) & vec4<u32>(u_input.c, 67995u, u_input.c, 40162u)))), abs(firstTrailingBit(-vec4<i32>(17784i, 21507i, 4978i, var_1.b))));
}

