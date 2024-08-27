struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(0u, 41105u, 8625u), vec3<u32>(1u, 1u, 58199u), vec3<u32>(29406u, 4294967295u, 427u), vec3<u32>(6178u, 4294967295u, 17789u), vec3<u32>(0u, 40074u, 3153u), vec3<u32>(12028u, 32980u, 42351u), vec3<u32>(4294967295u, 0u, 9505u), vec3<u32>(4294967295u, 0u, 9914u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 44872u), vec3<u32>(16091u, 0u, 4294967295u), vec3<u32>(45430u, 0u, 1u), vec3<u32>(34713u, 73535u, 26872u), vec3<u32>(42624u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(-1590f, 12095u, vec2<u32>(88477u, 4294967295u), -274f, Struct_1(vec3<u32>(1u, 1u, 13015u), -310f)), Struct_2(-267f, 1u, vec2<u32>(1u, 25673u), 1719f, Struct_1(vec3<u32>(0u, 60302u, 0u), 701f))), Struct_3(Struct_2(-1657f, 5164u, vec2<u32>(1u, 0u), 950f, Struct_1(vec3<u32>(22531u, 4294967295u, 0u), 176f)), Struct_2(939f, 1u, vec2<u32>(1u, 0u), -136f, Struct_1(vec3<u32>(4294967295u, 35872u, 24226u), -364f))), Struct_3(Struct_2(1000f, 4294967295u, vec2<u32>(0u, 1u), -132f, Struct_1(vec3<u32>(0u, 4294967295u, 19609u), 494f)), Struct_2(705f, 65902u, vec2<u32>(1u, 62608u), 103f, Struct_1(vec3<u32>(4294967295u, 3001u, 18447u), 1888f))), Struct_3(Struct_2(-112f, 18099u, vec2<u32>(1u, 47169u), 1208f, Struct_1(vec3<u32>(1u, 0u, 79130u), -1000f)), Struct_2(622f, 21787u, vec2<u32>(4294967295u, 1u), 1331f, Struct_1(vec3<u32>(1u, 1u, 1u), 229f))), Struct_3(Struct_2(403f, 48277u, vec2<u32>(29577u, 1u), 1000f, Struct_1(vec3<u32>(4294967295u, 17668u, 1u), -608f)), Struct_2(818f, 0u, vec2<u32>(0u, 2810u), -321f, Struct_1(vec3<u32>(4294967295u, 379u, 1u), 160f))), Struct_3(Struct_2(-638f, 42492u, vec2<u32>(42608u, 4294967295u), 374f, Struct_1(vec3<u32>(5559u, 1u, 52162u), 939f)), Struct_2(-1579f, 0u, vec2<u32>(4294967295u, 0u), -1078f, Struct_1(vec3<u32>(72086u, 0u, 1u), 1000f))), Struct_3(Struct_2(-743f, 25300u, vec2<u32>(52236u, 35573u), -128f, Struct_1(vec3<u32>(23230u, 4294967295u, 0u), -614f)), Struct_2(-1000f, 52851u, vec2<u32>(1u, 1u), -1067f, Struct_1(vec3<u32>(1u, 3244u, 0u), -170f))), Struct_3(Struct_2(-725f, 463u, vec2<u32>(27611u, 1u), 918f, Struct_1(vec3<u32>(0u, 4601u, 4294967295u), 987f)), Struct_2(1000f, 4294967295u, vec2<u32>(1u, 44457u), -254f, Struct_1(vec3<u32>(1u, 13679u, 14206u), 1097f))), Struct_3(Struct_2(-1383f, 11050u, vec2<u32>(4294967295u, 47570u), 1107f, Struct_1(vec3<u32>(77015u, 10534u, 30699u), 520f)), Struct_2(-1326f, 0u, vec2<u32>(4294967295u, 8704u), -152f, Struct_1(vec3<u32>(2482u, 1u, 33023u), 1000f))), Struct_3(Struct_2(2344f, 51940u, vec2<u32>(4294967295u, 11527u), 1498f, Struct_1(vec3<u32>(87378u, 10378u, 1u), 821f)), Struct_2(467f, 7877u, vec2<u32>(0u, 1u), -705f, Struct_1(vec3<u32>(15260u, 1u, 23508u), -2584f))), Struct_3(Struct_2(782f, 47871u, vec2<u32>(56706u, 1u), 665f, Struct_1(vec3<u32>(0u, 2683u, 1u), 1633f)), Struct_2(-693f, 83043u, vec2<u32>(4294967295u, 20656u), 707f, Struct_1(vec3<u32>(25415u, 59111u, 60262u), -220f))), Struct_3(Struct_2(655f, 4294967295u, vec2<u32>(1u, 16111u), -164f, Struct_1(vec3<u32>(0u, 52397u, 26061u), -200f)), Struct_2(-1034f, 1u, vec2<u32>(1u, 0u), -841f, Struct_1(vec3<u32>(37566u, 1u, 61014u), 1000f))), Struct_3(Struct_2(-686f, 25976u, vec2<u32>(61680u, 1u), 297f, Struct_1(vec3<u32>(1062u, 1u, 0u), 625f)), Struct_2(1000f, 4294967295u, vec2<u32>(66768u, 1u), 421f, Struct_1(vec3<u32>(0u, 18525u, 1u), 296f))));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(133f, 1u, vec2<u32>(1u, 4294967295u), 1258f, Struct_1(vec3<u32>(1u, 4294967295u, 1u), 790f)), Struct_2(142f, 39234u, vec2<u32>(1u, 1u), -1447f, Struct_1(vec3<u32>(1u, 270u, 0u), 128f)), Struct_2(1000f, 4294967295u, vec2<u32>(1u, 0u), 266f, Struct_1(vec3<u32>(1u, 1u, 4294967295u), 1146f)), Struct_2(669f, 16525u, vec2<u32>(10777u, 4294967295u), 1103f, Struct_1(vec3<u32>(4294967295u, 1u, 25374u), -706f)), Struct_2(-289f, 0u, vec2<u32>(4294967295u, 74149u), -590f, Struct_1(vec3<u32>(20813u, 1u, 20098u), -1562f)), Struct_2(-316f, 28331u, vec2<u32>(30155u, 17136u), -951f, Struct_1(vec3<u32>(0u, 11497u, 4294967295u), -1607f)), Struct_2(430f, 0u, vec2<u32>(4294967295u, 1u), 263f, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), -1000f)), Struct_2(186f, 124711u, vec2<u32>(9230u, 97262u), -838f, Struct_1(vec3<u32>(1u, 1u, 0u), -968f)), Struct_2(1770f, 56993u, vec2<u32>(19134u, 4294967295u), 1441f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 17079u), -1142f)), Struct_2(-1000f, 0u, vec2<u32>(71108u, 1u), -274f, Struct_1(vec3<u32>(90663u, 79389u, 21812u), 1344f)), Struct_2(-293f, 4294967295u, vec2<u32>(0u, 0u), 1478f, Struct_1(vec3<u32>(27280u, 0u, 4294967295u), 2144f)), Struct_2(1628f, 2265u, vec2<u32>(19005u, 0u), 372f, Struct_1(vec3<u32>(29966u, 1u, 50328u), -877f)), Struct_2(260f, 45986u, vec2<u32>(32812u, 3979u), -2372f, Struct_1(vec3<u32>(15233u, 62998u, 28632u), 430f)), Struct_2(-493f, 0u, vec2<u32>(0u, 0u), 359f, Struct_1(vec3<u32>(1u, 4827u, 4294967295u), 378f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-361f))))), 1f);
    return _wgslsmith_f_op_f32(f32(-1f) * -1892f);
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<u32>, 16>();
    var var_0 = select(vec4<bool>(false, u_input.a.x >= 4294967295u, true, select(true, all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, true, true)))), vec4<bool>(all(vec3<bool>(true, false, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 33684u <= u_input.c), vec4<bool>(any(vec3<bool>(true, false, true)), 27269u <= u_input.a.x, all(vec3<bool>(true, false, false)), true)));
    var_0 = vec4<bool>(!var_0.x, var_0.x, var_0.x, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.c, 86152u, u_input.a.x, u_input.c)) << ((u_input.a | vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) > 1u);
    var var_1 = 2601f;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f + -1141f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f)))));
    return Struct_3(global2[_wgslsmith_index_u32(min(~25269u, ~u_input.a.x), 14u)], Struct_2(-1847f, 1u, vec2<u32>(~(u_input.a.x & 77145u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - 556f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -153f) - -195f)), Struct_1(_wgslsmith_add_vec3_u32(~u_input.a.xzy, u_input.a.yxy), _wgslsmith_f_op_f32(func_2()))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    var var_0 = firstLeadingBit(_wgslsmith_div_u32((firstLeadingBit(arg_1) | arg_0.c.x) >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(arg_0.e.a, vec3<u32>(u_input.b, select(arg_0.b, 0u, false), select(1u, arg_0.e.a.x, false)))));
    var var_1 = -(abs(-vec4<i32>(u_input.d.x, u_input.d.x, -1i, -1i)) >> (~(~vec4<u32>(arg_1, arg_1, 33150u, 21038u) & (vec4<u32>(arg_0.b, 5067u, 52781u, 1u) | vec4<u32>(arg_0.e.a.x, 1u, 11752u, 5348u))) % vec4<u32>(32u)));
    global2 = array<Struct_2, 14>();
    var var_2 = Struct_4(vec4<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), false, true, all(vec3<bool>(select(false, true, true), true, -206f == arg_0.e.b))));
    let var_3 = var_2.a.x;
    return var_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.d))), _wgslsmith_f_op_f32(func_1().a.a - _wgslsmith_f_op_f32(arg_0.b.d * 2364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)), arg_0.a.e.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(469f, 139f, arg_0.a.e.b, 419f) - vec4<f32>(arg_0.a.a, 866f, arg_0.a.d, arg_0.a.e.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d, arg_0.a.d, arg_0.a.d, arg_0.b.e.b) + vec4<f32>(-594f, -129f, arg_0.b.a, arg_0.a.a))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-594f * _wgslsmith_div_f32(2104f, arg_0.b.e.b)), 1872f, 689f, 674f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1602f, -696f), -630f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = false;
    var var_3 = 0i;
    var_3 = max(_wgslsmith_mult_i32(arg_2.x, countOneBits(2147483647i)), arg_2.x);
    return Struct_4(!select(vec4<bool>(arg_1, true, arg_3.x, any(arg_3.wz)), func_3(func_1().b, 4294967295u), select(!arg_3, arg_3, arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), any(vec3<bool>(true, any(func_3(Struct_2(203f, u_input.a.x, u_input.a.zy, 1000f, Struct_1(vec3<u32>(u_input.a.x, 45190u, u_input.b), -545f)), u_input.b)), true)), -vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d.x, 2272i), u_input.d.x), _wgslsmith_mod_i32(-46873i, u_input.d.x | 2147483647i), u_input.d.x), func_3(Struct_2(-371f, u_input.c, u_input.a.ww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1032f + -1618f) - _wgslsmith_f_op_f32(f32(-1f) * -979f)), Struct_1(~vec3<u32>(u_input.b, 1u, 1494u), _wgslsmith_f_op_f32(-451f + -1000f))), u_input.b));
    let var_1 = all(func_4(Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 46319u)), u_input.a.x), 14u)], Struct_2(-2034f, ~u_input.b, abs(vec2<u32>(u_input.a.x, 42629u)), _wgslsmith_f_op_f32(func_2()), func_1().a.e)), 1u <= countOneBits(_wgslsmith_add_u32(4294967295u, u_input.b)), vec4<i32>(29871i, _wgslsmith_clamp_i32(19908i >> (0u % 32u), u_input.d.x, u_input.d.x | u_input.d.x), _wgslsmith_div_i32(u_input.d.x ^ u_input.d.x, 26538i << (u_input.c % 32u)), ~(u_input.d.x >> (u_input.c % 32u))), vec4<bool>(false, all(vec2<bool>(var_0.a.x, var_0.a.x)) && true, func_3(Struct_2(1650f, u_input.c, vec2<u32>(26132u, u_input.b), -1491f, Struct_1(global0[_wgslsmith_index_u32(u_input.b, 16u)], -697f)), u_input.c).x, all(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), false)))).a.wyx);
    var_0 = Struct_4(!(!var_0.a));
    global1 = array<Struct_3, 13>();
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(select(~u_input.b, ~0u, var_1) & _wgslsmith_mod_u32(abs(u_input.c), u_input.c), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.b, 16u)], vec3<u32>(0u, _wgslsmith_mod_u32(15566u, u_input.c), _wgslsmith_div_u32(u_input.c, 1u)))), 14u)];
    let var_3 = Struct_5(func_4(func_1(), func_3(func_1().a, _wgslsmith_clamp_u32(~var_2.b, min(1u, u_input.b), 34497u)).x, _wgslsmith_mult_vec4_i32(vec4<i32>(~1i, -u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, 7805i), ~u_input.d.x), abs(~vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x))), func_3(global2[_wgslsmith_index_u32(u_input.b, 14u)], ~_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u))), var_0.a.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.d));
}

