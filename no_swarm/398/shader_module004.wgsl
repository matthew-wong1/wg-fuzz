struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_1(vec2<f32>(-1000f, 1063f), true), vec2<u32>(60290u, 24829u), 153f, true, Struct_2(vec4<f32>(-1008f, 1000f, 1684f, -925f), 32141u, Struct_1(vec2<f32>(1191f, 2102f), false))), Struct_4(Struct_1(vec2<f32>(-1312f, -1234f), true), vec2<u32>(14054u, 33655u), 2038f, false, Struct_2(vec4<f32>(-309f, -347f, -290f, -159f), 4294967295u, Struct_1(vec2<f32>(-1318f, -713f), false))), Struct_4(Struct_1(vec2<f32>(-1500f, -413f), false), vec2<u32>(0u, 25825u), -664f, false, Struct_2(vec4<f32>(-1524f, -930f, -777f, 753f), 1u, Struct_1(vec2<f32>(-1000f, 988f), false))), Struct_4(Struct_1(vec2<f32>(-494f, -785f), true), vec2<u32>(1u, 0u), -812f, true, Struct_2(vec4<f32>(118f, 647f, -763f, -1452f), 6210u, Struct_1(vec2<f32>(363f, 519f), true))), Struct_4(Struct_1(vec2<f32>(-1501f, -534f), false), vec2<u32>(4294967295u, 4294967295u), -201f, true, Struct_2(vec4<f32>(663f, 741f, -1003f, 180f), 15774u, Struct_1(vec2<f32>(-1163f, 643f), false))), Struct_4(Struct_1(vec2<f32>(521f, -452f), false), vec2<u32>(1u, 38977u), 1181f, false, Struct_2(vec4<f32>(-396f, 893f, 268f, -1000f), 0u, Struct_1(vec2<f32>(1382f, -1310f), false))), Struct_4(Struct_1(vec2<f32>(1901f, -503f), true), vec2<u32>(1u, 0u), -2090f, false, Struct_2(vec4<f32>(266f, 602f, -1000f, -947f), 4294967295u, Struct_1(vec2<f32>(-1000f, -455f), false))), Struct_4(Struct_1(vec2<f32>(-1649f, -1000f), false), vec2<u32>(14041u, 4294967295u), 1502f, false, Struct_2(vec4<f32>(-1582f, -1041f, -1714f, 964f), 1u, Struct_1(vec2<f32>(456f, 1282f), false))), Struct_4(Struct_1(vec2<f32>(-1000f, 1038f), true), vec2<u32>(21585u, 1u), -2125f, true, Struct_2(vec4<f32>(-612f, 1787f, -921f, 2880f), 23705u, Struct_1(vec2<f32>(-1038f, 539f), true))), Struct_4(Struct_1(vec2<f32>(1138f, 1199f), false), vec2<u32>(0u, 42327u), 1306f, true, Struct_2(vec4<f32>(-2371f, -314f, 1960f, 1466f), 0u, Struct_1(vec2<f32>(643f, -718f), false))), Struct_4(Struct_1(vec2<f32>(-1791f, 686f), true), vec2<u32>(1u, 1u), 1452f, false, Struct_2(vec4<f32>(1488f, 590f, 1000f, 1000f), 8650u, Struct_1(vec2<f32>(2198f, 1353f), true))), Struct_4(Struct_1(vec2<f32>(1181f, 467f), false), vec2<u32>(4294967295u, 56754u), -243f, false, Struct_2(vec4<f32>(-1000f, 1362f, 190f, 627f), 0u, Struct_1(vec2<f32>(-1080f, 829f), true))), Struct_4(Struct_1(vec2<f32>(637f, 1075f), true), vec2<u32>(1u, 93001u), -770f, true, Struct_2(vec4<f32>(348f, 437f, 368f, -247f), 7470u, Struct_1(vec2<f32>(-1726f, -1084f), true))), Struct_4(Struct_1(vec2<f32>(1399f, 1000f), true), vec2<u32>(41026u, 31508u), 1042f, true, Struct_2(vec4<f32>(-901f, 1000f, -842f, 1039f), 3588u, Struct_1(vec2<f32>(-697f, -502f), true))), Struct_4(Struct_1(vec2<f32>(333f, -156f), false), vec2<u32>(1u, 6972u), -292f, false, Struct_2(vec4<f32>(329f, -231f, -1326f, 1003f), 4294967295u, Struct_1(vec2<f32>(-336f, -783f), false))), Struct_4(Struct_1(vec2<f32>(-177f, 1620f), false), vec2<u32>(64255u, 22827u), -1000f, false, Struct_2(vec4<f32>(-960f, 302f, -162f, 751f), 1u, Struct_1(vec2<f32>(-281f, -1681f), false))), Struct_4(Struct_1(vec2<f32>(380f, 1000f), true), vec2<u32>(1u, 1u), 797f, false, Struct_2(vec4<f32>(-1166f, -660f, 1000f, 1934f), 1u, Struct_1(vec2<f32>(271f, 328f), false))), Struct_4(Struct_1(vec2<f32>(-968f, -1207f), true), vec2<u32>(1u, 1u), 1653f, false, Struct_2(vec4<f32>(-179f, 1387f, 1185f, 522f), 30956u, Struct_1(vec2<f32>(670f, 582f), true))), Struct_4(Struct_1(vec2<f32>(-1174f, 565f), true), vec2<u32>(0u, 25401u), 658f, true, Struct_2(vec4<f32>(-559f, 1799f, -482f, -1161f), 101771u, Struct_1(vec2<f32>(1107f, 1085f), true))), Struct_4(Struct_1(vec2<f32>(-1652f, 1000f), false), vec2<u32>(60245u, 4294967295u), 1288f, false, Struct_2(vec4<f32>(-2647f, -526f, 240f, 741f), 43868u, Struct_1(vec2<f32>(-2527f, 157f), false))), Struct_4(Struct_1(vec2<f32>(132f, -514f), false), vec2<u32>(4294967295u, 39225u), -384f, false, Struct_2(vec4<f32>(732f, 1497f, -1192f, -101f), 32289u, Struct_1(vec2<f32>(1153f, 551f), false))), Struct_4(Struct_1(vec2<f32>(-424f, 644f), true), vec2<u32>(84807u, 0u), 1000f, true, Struct_2(vec4<f32>(-1000f, -1069f, -246f, 881f), 2144u, Struct_1(vec2<f32>(257f, 1066f), true))), Struct_4(Struct_1(vec2<f32>(-309f, -1116f), false), vec2<u32>(20432u, 0u), 290f, false, Struct_2(vec4<f32>(-210f, 524f, -1663f, 307f), 4294967295u, Struct_1(vec2<f32>(-718f, -1000f), true))), Struct_4(Struct_1(vec2<f32>(-327f, 1000f), false), vec2<u32>(0u, 0u), -883f, false, Struct_2(vec4<f32>(678f, -1000f, -247f, 530f), 4294967295u, Struct_1(vec2<f32>(696f, -849f), true))), Struct_4(Struct_1(vec2<f32>(-114f, 833f), false), vec2<u32>(0u, 4294967295u), -452f, true, Struct_2(vec4<f32>(1000f, -859f, -642f, 281f), 0u, Struct_1(vec2<f32>(-596f, -1785f), true))), Struct_4(Struct_1(vec2<f32>(438f, -881f), true), vec2<u32>(1u, 63440u), -620f, false, Struct_2(vec4<f32>(333f, 337f, -2189f, -1000f), 54988u, Struct_1(vec2<f32>(-176f, 546f), true))), Struct_4(Struct_1(vec2<f32>(308f, -327f), false), vec2<u32>(5616u, 0u), -472f, true, Struct_2(vec4<f32>(-925f, -321f, 509f, -963f), 0u, Struct_1(vec2<f32>(-1313f, -260f), false))), Struct_4(Struct_1(vec2<f32>(-1000f, 1000f), false), vec2<u32>(0u, 69914u), 599f, true, Struct_2(vec4<f32>(224f, -2230f, -622f, 487f), 4294967295u, Struct_1(vec2<f32>(372f, -368f), true))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = firstTrailingBit(-49273i);
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1023f, 387f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1325f), vec2<f32>(-244f, -401f), vec2<bool>(false, false)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), true), u_input.c.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-130f, -145f))), select(false & all(vec3<bool>(false, true, true)), 2147483647i != -(arg_0.a.x & arg_0.a.x), any(vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1508f, -1000f, -449f, 557f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(112f, -1247f, 435f, 156f))))), ~(~20889u), Struct_1(vec2<f32>(1f, 1f), true)));
    global1 = array<vec3<bool>, 29>();
    var var_1 = var_0.e.c;
    var_1 = var_0.e.c;
    return _wgslsmith_f_op_f32(-var_0.a.a.x);
}

fn func_2() -> Struct_4 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 28u)];
    let var_1 = ~abs(-vec3<i32>(0i, 14929i, ~38215i));
    var var_2 = !(!(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(var_1.x, -51600i)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.c, -363f, false))))));
    var var_3 = any(vec2<bool>(all(select(select(vec4<bool>(true, var_0.a.b, var_0.e.c.b, true), vec4<bool>(true, var_0.d, false, false), false), !vec4<bool>(false, var_0.d, false, var_0.a.b), !vec4<bool>(false, var_0.e.c.b, var_0.e.c.b, false))), var_0.d));
    var var_4 = select(vec2<bool>(true, true), vec2<bool>(var_0.d, false), select(!select(vec2<bool>(true, true), vec2<bool>(var_0.a.b, var_0.a.b), var_0.a.b && var_0.e.c.b), select(vec2<bool>(var_1.x != var_1.x, false), vec2<bool>(true, true), !(-4002i >= var_1.x)), true));
    return global2[_wgslsmith_index_u32(reverseBits(~var_0.b.x), 28u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    global1 = array<vec3<bool>, 29>();
    let var_0 = -13680i;
    var var_1 = func_2().e;
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-32623i, var_0, var_0, abs(var_0) >> (firstLeadingBit(~14566u) % 32u)), select(~(-vec4<i32>(var_0, 0i, var_0, -1i)) << (vec4<u32>(arg_3.b.x, 4294967295u, arg_3.e.b, var_1.b) % vec4<u32>(32u)), -abs(vec4<i32>(0i, var_0, -1i, 0i)), select(!(!vec4<bool>(arg_3.e.c.b, false, false, arg_1.a.b)), !select(vec4<bool>(var_1.c.b, false, true, true), vec4<bool>(arg_3.a.b, true, arg_3.a.b, false), var_1.c.b), select(select(vec4<bool>(arg_3.e.c.b, true, false, arg_0.d), vec4<bool>(true, arg_3.a.b, arg_0.a.b, arg_3.d), false), select(vec4<bool>(var_1.c.b, arg_1.d, arg_1.a.b, arg_1.e.c.b), vec4<bool>(var_1.c.b, true, true, true), arg_1.e.c.b), select(vec4<bool>(true, var_1.c.b, true, true), vec4<bool>(arg_1.e.c.b, arg_0.e.c.b, false, arg_0.e.c.b), false)))));
    global0 = 52378i & -countOneBits(var_0);
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.e.a.yw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-179f, arg_0.c), var_1.c.a))))), select(arg_0.a.b, any(vec2<bool>(any(vec4<bool>(arg_3.d, arg_3.a.b, arg_1.d, var_1.c.b)), all(global1[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)) < arg_1.a.a.x));
}

fn func_1() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d, 28u)];
    global0 = 9807i;
    var_0 = Struct_4(func_4(func_2(), global2[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.c.a.x, -611f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, var_0.c)))), Struct_4(Struct_1(var_0.e.a.ww, !var_0.e.c.b), vec2<u32>(~33574u, ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f + 263f) + _wgslsmith_div_f32(283f, var_0.c)), var_0.e.a.x < _wgslsmith_f_op_f32(floor(823f)), var_0.e)), ~var_0.b, 651f, false, var_0.e);
    global2 = array<Struct_4, 28>();
    var var_1 = Struct_4(var_0.a, vec2<u32>(var_0.e.b, u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(var_0.a.a.x * -412f)), var_0.e.a.x)), true, var_0.e);
    return 4294967295u >> (func_2().e.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.wzx;
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, reverseBits(1u), _wgslsmith_add_u32(_wgslsmith_mod_u32(~4294967295u, ~u_input.b.x), _wgslsmith_div_u32(func_1(), var_0.x)), ~var_0.x), u_input.c);
    var var_2 = 617f;
    let var_3 = vec2<u32>(1u, 4294967295u);
    global0 = _wgslsmith_mod_i32(-abs(_wgslsmith_sub_i32(55694i, 2147483647i)), -15773i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(vec4<i32>(2147483647i, 1i, -38459i, 19157i))), ~(-29891i));
}

