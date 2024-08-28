struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec4<u32>(4294967295u, 20854u, 1u, 0u), Struct_2(true, vec2<i32>(17209i, -33499i), Struct_1(vec4<f32>(-540f, 1153f, -183f, -243f), vec2<i32>(-5625i, 0i), true, 36567u)), Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_2(false, vec2<i32>(-10207i, 2147483647i), Struct_1(vec4<f32>(-412f, -555f, -304f, -1410f), vec2<i32>(i32(-2147483648), 31556i), true, 85984u))), vec3<i32>(-1i, -37261i, -1i), Struct_2(false, vec2<i32>(-25600i, 18620i), Struct_1(vec4<f32>(-857f, -1237f, 1871f, 1000f), vec2<i32>(-16255i, i32(-2147483648)), true, 48612u))), Struct_4(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), Struct_2(true, vec2<i32>(-2378i, 26464i), Struct_1(vec4<f32>(232f, -1090f, 749f, 133f), vec2<i32>(-11299i, 2147483647i), true, 1u)), Struct_3(vec3<u32>(0u, 1u, 52271u), Struct_2(false, vec2<i32>(78019i, 18203i), Struct_1(vec4<f32>(-263f, 861f, -1373f, -696f), vec2<i32>(-425i, 447i), true, 4294967295u))), vec3<i32>(8329i, -17850i, 19929i), Struct_2(true, vec2<i32>(1i, 9471i), Struct_1(vec4<f32>(-248f, -1153f, 922f, 1462f), vec2<i32>(32358i, 20593i), false, 94617u))), Struct_4(vec4<u32>(1u, 0u, 4294967295u, 1u), Struct_2(true, vec2<i32>(0i, 49388i), Struct_1(vec4<f32>(-758f, 3027f, 1000f, -985f), vec2<i32>(0i, -1085i), false, 1105u)), Struct_3(vec3<u32>(4294967295u, 45119u, 1650u), Struct_2(true, vec2<i32>(-35395i, -40638i), Struct_1(vec4<f32>(-290f, -922f, -1147f, -1448f), vec2<i32>(2147483647i, i32(-2147483648)), false, 79151u))), vec3<i32>(15912i, 2147483647i, -9409i), Struct_2(true, vec2<i32>(-18852i, 36628i), Struct_1(vec4<f32>(882f, -841f, -396f, -836f), vec2<i32>(-61096i, 2147483647i), false, 1u))), Struct_4(vec4<u32>(31670u, 20732u, 0u, 1u), Struct_2(false, vec2<i32>(2147483647i, 2147483647i), Struct_1(vec4<f32>(-451f, -531f, 1405f, 240f), vec2<i32>(46392i, -1i), false, 4294967295u)), Struct_3(vec3<u32>(53669u, 63372u, 10823u), Struct_2(false, vec2<i32>(24957i, -34939i), Struct_1(vec4<f32>(115f, 1576f, 581f, 288f), vec2<i32>(-9713i, 59321i), true, 1u))), vec3<i32>(0i, -19096i, -17731i), Struct_2(false, vec2<i32>(-1i, 0i), Struct_1(vec4<f32>(-1509f, 624f, 561f, -121f), vec2<i32>(-1i, -1i), false, 14969u))), Struct_4(vec4<u32>(0u, 1u, 22745u, 4294967295u), Struct_2(true, vec2<i32>(0i, 1i), Struct_1(vec4<f32>(-1450f, 837f, -1000f, -1306f), vec2<i32>(1i, 2147483647i), false, 21451u)), Struct_3(vec3<u32>(13388u, 1u, 23601u), Struct_2(true, vec2<i32>(1i, -4900i), Struct_1(vec4<f32>(-662f, -1047f, 1000f, -1000f), vec2<i32>(i32(-2147483648), -42859i), false, 67912u))), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), Struct_2(false, vec2<i32>(-1i, 13043i), Struct_1(vec4<f32>(-468f, -1000f, -457f, 1412f), vec2<i32>(17364i, 0i), true, 80961u))), Struct_4(vec4<u32>(0u, 1785u, 1u, 5776u), Struct_2(true, vec2<i32>(0i, -1i), Struct_1(vec4<f32>(-322f, -1000f, 431f, -322f), vec2<i32>(1860i, i32(-2147483648)), true, 1u)), Struct_3(vec3<u32>(1u, 18418u, 0u), Struct_2(true, vec2<i32>(24170i, i32(-2147483648)), Struct_1(vec4<f32>(101f, -368f, 590f, -339f), vec2<i32>(6254i, 23243i), true, 64604u))), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_2(true, vec2<i32>(-3079i, 4445i), Struct_1(vec4<f32>(-1348f, -1121f, -520f, 291f), vec2<i32>(i32(-2147483648), -11912i), true, 4294967295u))), Struct_4(vec4<u32>(43523u, 1u, 79786u, 26189u), Struct_2(true, vec2<i32>(i32(-2147483648), -6034i), Struct_1(vec4<f32>(335f, -1607f, -654f, 1000f), vec2<i32>(18411i, -26032i), true, 36909u)), Struct_3(vec3<u32>(22733u, 36398u, 1u), Struct_2(true, vec2<i32>(-1i, -11093i), Struct_1(vec4<f32>(1608f, 223f, -727f, 1000f), vec2<i32>(i32(-2147483648), -2530i), false, 1u))), vec3<i32>(1i, 1i, 41990i), Struct_2(true, vec2<i32>(12406i, 2147483647i), Struct_1(vec4<f32>(1000f, 357f, -1050f, 879f), vec2<i32>(-10047i, 26787i), true, 4294967295u))), Struct_4(vec4<u32>(72778u, 62569u, 28737u, 4294967295u), Struct_2(false, vec2<i32>(24571i, 1i), Struct_1(vec4<f32>(-796f, 273f, 950f, -199f), vec2<i32>(2147483647i, 2147483647i), false, 0u)), Struct_3(vec3<u32>(0u, 40471u, 0u), Struct_2(true, vec2<i32>(-1i, -11059i), Struct_1(vec4<f32>(-295f, -1688f, 884f, 800f), vec2<i32>(0i, -5067i), false, 1u))), vec3<i32>(15585i, 7830i, 1i), Struct_2(true, vec2<i32>(-1i, 34869i), Struct_1(vec4<f32>(-147f, 1282f, -2699f, 1115f), vec2<i32>(-27346i, i32(-2147483648)), true, 12006u))));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = firstTrailingBit(vec3<u32>(1u, 1u, 1u));
    let var_1 = Struct_4(select(reverseBits(abs(~vec4<u32>(var_0.x, 81929u, 0u, var_0.x))), firstLeadingBit(vec4<u32>(~45968u, var_0.x, 43051u, _wgslsmith_mult_u32(35828u, var_0.x))), false), Struct_2(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))) | true, -_wgslsmith_clamp_vec2_i32(vec2<i32>(-18656i, u_input.a.x), arg_1, u_input.a) ^ vec2<i32>(-1i >> (var_0.x % 32u), u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -287f, arg_0)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1109f, arg_0, arg_0), vec4<f32>(arg_0, -278f, 1355f, -2504f), vec4<bool>(false, false, true, true)))), u_input.a, any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_u32(var_0, var_0) << (~var_0.x % 32u))), Struct_3(var_0, Struct_2(false, select(~vec2<i32>(-33597i, -49407i), arg_1 & arg_1, true), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -976f, 1075f, 554f), vec4<f32>(arg_0, 549f, arg_0, -1879f)), vec2<i32>(arg_1.x, 1i), true, 4294967295u))), vec3<i32>(45008i, -1i, _wgslsmith_clamp_i32(-7865i, ~(-2147483647i), -2147483647i)), Struct_2(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), vec2<i32>(u_input.a.x | reverseBits(0i), 0i), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-820f, arg_0, arg_0, arg_0)))), select(~vec2<i32>(-7194i, arg_1.x), select(arg_1, u_input.a, false), vec2<bool>(true, true)), 49814u < ~var_0.x, 0u)));
    return var_1.a;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~13720u, 1u, 4294967295u, abs(abs(_wgslsmith_div_u32(arg_0, 1u)))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(369f)))), _wgslsmith_f_op_f32(f32(-1f) * -130f)), countOneBits(-vec2<i32>(u_input.a.x, u_input.a.x))));
    global0 = array<Struct_4, 8>();
    var var_1 = ~(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-16071i, -37171i, 58208i), _wgslsmith_div_vec3_i32(vec3<i32>(-11457i, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))) >> (arg_0 % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1140f)));
    let var_3 = global0[_wgslsmith_index_u32(arg_0, 8u)];
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.a.x, var_3.b.c.b.x)), abs(var_3.c.b.c.b.x), -1198i, _wgslsmith_div_i32(-68723i, u_input.a.x)) << ((vec4<u32>(arg_0, 34240u, var_3.e.c.d, 13927u) & (var_3.a >> (vec4<u32>(var_3.e.c.d, 4294967295u, arg_0, var_0.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), reverseBits((~vec4<i32>(36670i, 23933i, 1i, 2147483647i) ^ vec4<i32>(30327i, -1i, -37420i, var_3.d.x)) << ((reverseBits(var_3.a) << ((var_0 ^ var_3.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_sub_i32(func_2(arg_1.b.c.d), ~(-1i));
    global0 = array<Struct_4, 8>();
    let var_1 = -(i32(-1i) * -_wgslsmith_mult_i32(reverseBits(arg_2.x), u_input.a.x));
    var var_2 = global0[_wgslsmith_index_u32(81181u << (~arg_1.c.b.c.d % 32u), 8u)];
    var var_3 = arg_1.c.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), true), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), func_1(false, global0[_wgslsmith_index_u32(31908u, 8u)], vec3<i32>(-23275i, 43641i, u_input.a.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 17920i, 2147483647i)) < max(u_input.a.x ^ u_input.a.x, -8110i)));
    var var_1 = Struct_3(vec3<u32>(~1u, 1u, 4153u), Struct_2(true, u_input.a, Struct_1(vec4<f32>(_wgslsmith_div_f32(188f, 1033f), _wgslsmith_div_f32(879f, 381f), -151f, _wgslsmith_f_op_f32(floor(-1097f))), u_input.a | (vec2<i32>(8168i, u_input.a.x) ^ u_input.a), !any(vec2<bool>(false, false)), _wgslsmith_mult_u32(1u, 1u))));
    var_1 = Struct_3(~var_1.a, Struct_2(var_1.b.c.c, var_1.b.c.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c.a.x, 623f, -944f, var_1.b.c.a.x) + vec4<f32>(var_1.b.c.a.x, -575f, -858f, -1169f)), vec4<f32>(-2212f, -1012f, -788f, 878f), true | var_1.b.a)), vec2<i32>(-1i, _wgslsmith_sub_i32(var_1.b.c.b.x, 15608i)), !all(vec3<bool>(false, var_1.b.a, var_1.b.c.c)), ~max(var_1.a.x, 0u))));
    var_1 = Struct_3(max(func_3(801f, var_1.b.b).zyw, vec3<u32>(var_1.a.x, ~21315u, _wgslsmith_div_u32(var_1.a.x, 1u) ^ ~35225u)), var_1.b);
    let var_2 = _wgslsmith_div_f32(-1230f, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, var_1.b.c.b.x, u_input.a.x, u_input.a.x)) ^ vec4<i32>(u_input.a.x, 15293i, u_input.a.x, 1i), countOneBits(vec4<i32>(-5602i, -1i, u_input.a.x, -7917i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-2658i, var_1.b.b.x, var_1.b.c.b.x, -7935i), vec4<i32>(u_input.a.x, 1i, var_1.b.c.b.x, -2147483647i), vec4<i32>(var_1.b.c.b.x, var_1.b.c.b.x, -18313i, var_1.b.c.b.x))) ^ (vec4<i32>(u_input.a.x, ~(-2147483647i), 1830i >> (var_1.b.c.d % 32u), _wgslsmith_mod_i32(u_input.a.x, var_1.b.b.x)) << (select(func_3(var_2, u_input.a), vec4<u32>(var_1.a.x, 4294967295u, 63822u, 11432u), !var_1.b.a) % vec4<u32>(32u))));
}

