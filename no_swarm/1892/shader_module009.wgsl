struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_2(Struct_1(2147483647i, true), vec3<i32>(i32(-2147483648), -32931i, -6728i), vec4<f32>(2043f, -289f, 1882f, 1000f), Struct_1(0i, true)), vec3<i32>(21691i, -45231i, -30500i)), Struct_4(Struct_2(Struct_1(-1i, true), vec3<i32>(-21140i, -1i, -1i), vec4<f32>(-1000f, -1621f, 997f, 137f), Struct_1(33930i, false)), vec3<i32>(25914i, 60529i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(17835i, false), vec3<i32>(-13475i, i32(-2147483648), -31946i), vec4<f32>(-990f, -158f, -839f, -400f), Struct_1(1i, true)), vec3<i32>(2147483647i, 16457i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(i32(-2147483648), true), vec3<i32>(i32(-2147483648), -27776i, 6054i), vec4<f32>(529f, 876f, 187f, -1000f), Struct_1(i32(-2147483648), true)), vec3<i32>(1i, 16616i, -16085i)), Struct_4(Struct_2(Struct_1(-48556i, true), vec3<i32>(24537i, i32(-2147483648), -7930i), vec4<f32>(270f, -1000f, 413f, -358f), Struct_1(-5631i, false)), vec3<i32>(37552i, -4284i, -1i)), Struct_4(Struct_2(Struct_1(0i, true), vec3<i32>(i32(-2147483648), -2409i, i32(-2147483648)), vec4<f32>(1129f, -695f, 494f, -1440f), Struct_1(-24231i, true)), vec3<i32>(1i, -44399i, -29765i)), Struct_4(Struct_2(Struct_1(29576i, true), vec3<i32>(0i, -1i, i32(-2147483648)), vec4<f32>(-406f, 311f, 1000f, -1505f), Struct_1(21606i, false)), vec3<i32>(-70989i, 2147483647i, 11133i)), Struct_4(Struct_2(Struct_1(5545i, true), vec3<i32>(2147483647i, -1i, 79948i), vec4<f32>(886f, 249f, 2064f, 1237f), Struct_1(2147483647i, false)), vec3<i32>(i32(-2147483648), 27977i, -1i)), Struct_4(Struct_2(Struct_1(-11249i, false), vec3<i32>(2147483647i, -1i, 1i), vec4<f32>(-1376f, -710f, -1059f, 506f), Struct_1(2147483647i, true)), vec3<i32>(2147483647i, -32614i, 34304i)), Struct_4(Struct_2(Struct_1(-12105i, false), vec3<i32>(-8406i, 798i, i32(-2147483648)), vec4<f32>(1224f, -180f, 1474f, -1451f), Struct_1(0i, false)), vec3<i32>(-5672i, 6972i, -40368i)), Struct_4(Struct_2(Struct_1(1i, true), vec3<i32>(0i, 4379i, 59507i), vec4<f32>(304f, -706f, -787f, -756f), Struct_1(6052i, true)), vec3<i32>(0i, 67404i, -43468i)), Struct_4(Struct_2(Struct_1(13622i, true), vec3<i32>(i32(-2147483648), 29895i, 1i), vec4<f32>(-460f, -587f, -1133f, -1614f), Struct_1(-1i, false)), vec3<i32>(i32(-2147483648), 2147483647i, -40421i)), Struct_4(Struct_2(Struct_1(2147483647i, true), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<f32>(309f, -690f, 623f, 569f), Struct_1(-1i, true)), vec3<i32>(2147483647i, 0i, -35219i)), Struct_4(Struct_2(Struct_1(45952i, true), vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<f32>(-163f, -119f, 1362f, 643f), Struct_1(1i, false)), vec3<i32>(29519i, -75549i, 2147483647i)), Struct_4(Struct_2(Struct_1(1i, false), vec3<i32>(-12733i, i32(-2147483648), -33942i), vec4<f32>(1425f, -343f, 446f, 386f), Struct_1(-30206i, false)), vec3<i32>(84229i, -28586i, -822i)), Struct_4(Struct_2(Struct_1(i32(-2147483648), false), vec3<i32>(-12223i, 21836i, 5478i), vec4<f32>(-802f, 581f, 486f, -282f), Struct_1(4445i, false)), vec3<i32>(-1i, -32281i, 11240i)), Struct_4(Struct_2(Struct_1(428i, true), vec3<i32>(0i, 0i, 1i), vec4<f32>(944f, 437f, 1389f, -999f), Struct_1(2147483647i, true)), vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_4(Struct_2(Struct_1(0i, true), vec3<i32>(-20403i, -9943i, 60210i), vec4<f32>(245f, 201f, -937f, -844f), Struct_1(0i, true)), vec3<i32>(41787i, -1i, -11544i)), Struct_4(Struct_2(Struct_1(60605i, true), vec3<i32>(42281i, 37199i, 2147483647i), vec4<f32>(194f, 495f, -644f, -1000f), Struct_1(-51028i, true)), vec3<i32>(-1i, 49764i, -16031i)), Struct_4(Struct_2(Struct_1(-1i, false), vec3<i32>(i32(-2147483648), -9668i, -1i), vec4<f32>(-1965f, 896f, 120f, 1839f), Struct_1(-7694i, true)), vec3<i32>(2147483647i, 0i, 0i)), Struct_4(Struct_2(Struct_1(2147483647i, false), vec3<i32>(1i, 22402i, 1i), vec4<f32>(-610f, -1408f, 783f, -1000f), Struct_1(-1i, false)), vec3<i32>(0i, 1i, -48450i)), Struct_4(Struct_2(Struct_1(1i, false), vec3<i32>(31368i, -15038i, -1i), vec4<f32>(799f, -1086f, 146f, 467f), Struct_1(0i, false)), vec3<i32>(-35322i, 0i, 1i)), Struct_4(Struct_2(Struct_1(-67192i, false), vec3<i32>(16426i, i32(-2147483648), 67431i), vec4<f32>(250f, -1326f, 212f, 452f), Struct_1(2147483647i, false)), vec3<i32>(0i, -44120i, 0i)), Struct_4(Struct_2(Struct_1(i32(-2147483648), false), vec3<i32>(i32(-2147483648), 12840i, 40136i), vec4<f32>(-1353f, 1000f, -209f, -589f), Struct_1(-1i, false)), vec3<i32>(i32(-2147483648), 9836i, i32(-2147483648))));

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<u32, 12>;

var<private> global3: Struct_4;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(87971u, 9u)], _wgslsmith_mult_vec3_i32(-global3.a.b, vec3<i32>(u_input.d.x << (~19907u % 32u), global3.b.x, global3.b.x)));
    global2 = array<u32, 12>();
    var var_1 = ~firstTrailingBit(u_input.c.xwz ^ vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 1u)) | ~u_input.c.www;
    var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~0u, 12u)], 12u)], _wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.c.x), 65160u), reverseBits(global2[_wgslsmith_index_u32(var_1.x, 12u)]) << (firstLeadingBit(21393u) % 32u))), ~(~vec3<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(0u, 20547u)), ~32174u)));
    var var_2 = vec3<bool>(true, global3.a.a.b, ~countOneBits(var_1.x) < u_input.c.x);
    return -1861f;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: bool) -> vec2<i32> {
    let var_0 = ~(~u_input.c.zx) << ((~(u_input.c.zy << (select(u_input.c.wy, vec2<u32>(69096u, u_input.c.x), false) % vec2<u32>(32u))) | ~u_input.c.zx) % vec2<u32>(32u));
    global1 = array<Struct_2, 9>();
    let var_1 = vec3<u32>(firstLeadingBit(~select(global2[_wgslsmith_index_u32(47508u, 12u)] >> (u_input.c.x % 32u), u_input.c.x, arg_2)), _wgslsmith_mod_u32((u_input.c.x >> (_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 12u)]) % 32u)) >> (27459u % 32u), ~(4294967295u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)] % 32u)) | global2[_wgslsmith_index_u32(~2558u, 12u)]), u_input.c.x);
    global3 = global0[_wgslsmith_index_u32(var_1.x, 24u)];
    global2 = array<u32, 12>();
    return abs(_wgslsmith_div_vec2_i32(abs(u_input.d.yz), vec2<i32>(_wgslsmith_sub_i32(reverseBits(38258i), firstLeadingBit(23310i)), -_wgslsmith_sub_i32(u_input.a, global3.a.d.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = abs(select(~min(vec4<u32>(1u, u_input.c.x, 36230u, u_input.c.x), vec4<u32>(4294967295u, 54149u, u_input.c.x, 0u)), vec4<u32>(select(u_input.c.x, 1u, false), select(u_input.c.x, 0u, global3.a.d.b), global2[_wgslsmith_index_u32(68648u, 12u)] >> (u_input.c.x % 32u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10095u >> (global2[_wgslsmith_index_u32(50550u, 12u)] % 32u), 12u)], 12u)]), select(select(vec4<bool>(arg_2.b, global3.a.a.b, true, false), vec4<bool>(arg_2.b, false, arg_2.b, global3.a.d.b), arg_2.b), !vec4<bool>(arg_2.b, global3.a.d.b, false, global3.a.a.b), !vec4<bool>(global3.a.d.b, false, arg_2.b, true))) << (~max(vec4<u32>(global2[_wgslsmith_index_u32(1u, 12u)], 76735u, 9780u, u_input.c.x), vec4<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], u_input.c.x, 27552u)) % vec4<u32>(32u)));
    let var_1 = Struct_3(!(!vec4<bool>(true, all(vec4<bool>(arg_2.b, true, arg_2.b, true)), true, !global3.a.d.b)), !global3.a.a.b, arg_3.zxy, var_0, vec3<bool>(arg_2.b, global3.a.a.b, -2050f > _wgslsmith_f_op_f32(arg_3.x * 1656f)));
    var var_2 = select(var_1.e.xz, !vec2<bool>(true, (var_1.d.x >= 4294967295u) != !global3.a.d.b), select(vec2<bool>(false, true), var_1.e.xx, vec2<bool>(true, global3.a.d.b)));
    let var_3 = Struct_3(vec4<bool>(true & global3.a.a.b, arg_2.b, ((var_1.d.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)]) >= _wgslsmith_mult_u32(52124u, var_0.x)) != (var_1.d.x >= 1u), false), !(!global3.a.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, _wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -120f))), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-global3.a.c.x)))), ~vec4<u32>(~(~var_0.x), abs(_wgslsmith_clamp_u32(4161u, 42035u, var_1.d.x)), ~min(u_input.c.x, 1u), ~4294967295u), select(!select(!vec3<bool>(var_1.b, true, true), select(vec3<bool>(true, global3.a.a.b, true), var_1.a.yzx, var_1.a.yyx), var_1.e), var_1.e, select(select(!vec3<bool>(global3.a.a.b, false, var_2.x), var_1.e, select(vec3<bool>(true, var_1.b, var_1.a.x), vec3<bool>(false, global3.a.d.b, true), false)), !vec3<bool>(var_1.e.x, var_1.e.x, true), firstTrailingBit(var_1.d.x) < firstLeadingBit(0u))));
    let var_4 = select(var_1.d, var_1.d, vec4<bool>(global3.a.a.b, global3.a.a.b && (!arg_2.b & true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-214f - var_1.c.x), -1611f, var_2.x)) >= arg_3.x, any(select(var_3.a, !var_3.a, select(false, false, false)))));
    return vec4<bool>(all(vec2<bool>(true, all(vec2<bool>(var_1.e.x, global3.a.d.b)))), ~max(_wgslsmith_mult_u32(34596u, global2[_wgslsmith_index_u32(var_0.x, 12u)]), ~11514u) > var_1.d.x, all(var_1.a), var_1.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>) -> u32 {
    global0 = array<Struct_4, 24>();
    let var_0 = select(func_4(vec4<f32>(-1000f, 1331f, _wgslsmith_div_f32(arg_0.c.x, -1074f), _wgslsmith_f_op_f32(func_2(vec2<i32>(-13517i, -14797i)))), func_3(!vec3<bool>(arg_0.d.b, arg_0.a.b, false), false, arg_0.a.b) << (vec2<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), arg_1.x) % vec2<u32>(32u)), arg_0.a, arg_0.c), vec4<bool>(1u == _wgslsmith_div_u32(arg_1.x ^ global2[_wgslsmith_index_u32(1u, 12u)], 4294967295u), false, true, any(vec2<bool>(all(vec3<bool>(arg_0.d.b, true, false)), true))), all(!(!select(vec2<bool>(arg_0.d.b, true), vec2<bool>(global3.a.a.b, true), vec2<bool>(false, global3.a.d.b)))));
    let var_1 = global3.a.a;
    let var_2 = vec4<bool>(arg_1.x >= (global2[_wgslsmith_index_u32(min(u_input.c.x, u_input.c.x), 12u)] | abs(3351u)), arg_0.a.b, global3.a.d.b, true);
    global1 = array<Struct_2, 9>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>((1u << (_wgslsmith_mod_u32(func_1(Struct_2(Struct_1(2147483647i, false), global3.a.b, vec4<f32>(global3.a.c.x, global3.a.c.x, global3.a.c.x, global3.a.c.x), Struct_1(u_input.a, true)), u_input.c, u_input.d.wy), _wgslsmith_add_u32(u_input.c.x, global2[_wgslsmith_index_u32(0u, 12u)])) % 32u)) != ~global2[_wgslsmith_index_u32(1u, 12u)], !global3.a.a.b);
    let var_1 = vec2<bool>(var_0.x, global3.a.d.b);
    global3 = Struct_4(Struct_2(Struct_1(~(global3.b.x | global3.a.b.x), global3.a.a.b), vec3<i32>(_wgslsmith_div_i32(-31590i, -2147483647i), -max(-62943i, u_input.d.x), global3.b.x), vec4<f32>(global3.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1357f + global3.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.c.x) + _wgslsmith_f_op_f32(-global3.a.c.x))), global3.a.d), -global3.b);
    global3 = Struct_4(Struct_2(Struct_1(-40136i, var_1.x), max(vec3<i32>(-global3.b.x, -1i, firstTrailingBit(global3.b.x)), firstTrailingBit(abs(vec3<i32>(u_input.d.x, global3.b.x, -2147483647i)))), global3.a.c, Struct_1(~(-1i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, 0u)), 12u)] > 29499u)), select(vec3<i32>(u_input.a | 6594i, _wgslsmith_clamp_i32(u_input.d.x, -12925i, 0i), i32(-1i) * -2147483647i), select(vec3<i32>(u_input.d.x, 0i, u_input.b), firstLeadingBit(vec3<i32>(global3.a.a.a, -3277i, global3.b.x)), !vec3<bool>(var_1.x, true, global3.a.a.b)), vec3<bool>(true, true, true)) >> (~u_input.c.yxw % vec3<u32>(32u)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(select(u_input.c.wwy, u_input.c.www, vec3<bool>(global3.a.d.b, false, true))), u_input.c.zyx) | 60384u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, ~global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 0u) ^ 0u, func_1(Struct_2(Struct_1(2147483647i, global3.a.d.b), _wgslsmith_sub_vec3_i32(global3.a.b, vec3<i32>(-2147483647i, -2147483647i, -13227i)), vec4<f32>(586f, 524f, 1029f, global3.a.c.x), global3.a.d), firstLeadingBit(u_input.c << (u_input.c % vec4<u32>(32u))), -_wgslsmith_mult_vec2_i32(global3.a.b.yz, u_input.d.xw)))), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(11229u, _wgslsmith_sub_vec3_i32(vec3<i32>(abs(4241i), _wgslsmith_add_i32(var_2.d.a, 1i), -17031i), global3.b));
}

