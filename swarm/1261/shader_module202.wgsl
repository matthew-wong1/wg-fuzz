struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<f32>(-701f, 392f, -735f, -1000f), vec2<i32>(4628i, i32(-2147483648)), true), Struct_3(vec4<f32>(-1047f, 478f, 1399f, 1561f), vec2<i32>(2147483647i, 643i), true), Struct_3(vec4<f32>(-1318f, 735f, 1876f, -809f), vec2<i32>(1581i, 10861i), true), Struct_3(vec4<f32>(-639f, 237f, -379f, 742f), vec2<i32>(-20828i, -20860i), true), Struct_3(vec4<f32>(-1000f, -2414f, -1580f, 404f), vec2<i32>(1i, -9746i), true), Struct_3(vec4<f32>(-967f, -163f, 1502f, -457f), vec2<i32>(i32(-2147483648), 1i), false), Struct_3(vec4<f32>(-513f, -408f, -1000f, -1524f), vec2<i32>(4686i, 21350i), true), Struct_3(vec4<f32>(1479f, 1386f, 303f, 2634f), vec2<i32>(2147483647i, 2147483647i), true), Struct_3(vec4<f32>(-995f, -499f, 1280f, 1253f), vec2<i32>(-13423i, 28832i), true), Struct_3(vec4<f32>(-962f, -1225f, 342f, 1080f), vec2<i32>(10095i, i32(-2147483648)), true), Struct_3(vec4<f32>(1008f, 287f, 2077f, 239f), vec2<i32>(-1i, 0i), false), Struct_3(vec4<f32>(-1894f, -384f, 1000f, -617f), vec2<i32>(-8975i, -10903i), true), Struct_3(vec4<f32>(-1559f, 1417f, 2096f, 1000f), vec2<i32>(78395i, 25035i), false), Struct_3(vec4<f32>(105f, -755f, -1383f, 429f), vec2<i32>(i32(-2147483648), -32463i), true), Struct_3(vec4<f32>(542f, -1026f, 627f, 1778f), vec2<i32>(35329i, -1135i), false), Struct_3(vec4<f32>(-931f, 282f, 1432f, -1089f), vec2<i32>(26199i, 4381i), true), Struct_3(vec4<f32>(-1213f, 292f, -684f, 1080f), vec2<i32>(24041i, 2147483647i), false), Struct_3(vec4<f32>(-440f, -1942f, 350f, 1533f), vec2<i32>(-1i, 0i), false), Struct_3(vec4<f32>(269f, 694f, -477f, -243f), vec2<i32>(2147483647i, -36773i), false), Struct_3(vec4<f32>(-544f, 159f, -470f, 1041f), vec2<i32>(5791i, i32(-2147483648)), true), Struct_3(vec4<f32>(-1175f, 1476f, 322f, 721f), vec2<i32>(2147483647i, 1i), true), Struct_3(vec4<f32>(-472f, -889f, -1245f, -670f), vec2<i32>(-7984i, -39160i), false), Struct_3(vec4<f32>(320f, 307f, 476f, -1834f), vec2<i32>(-7136i, 1i), true), Struct_3(vec4<f32>(-982f, 1000f, -1360f, -907f), vec2<i32>(-17144i, -12406i), true), Struct_3(vec4<f32>(124f, 541f, 324f, -864f), vec2<i32>(-45347i, -14045i), true), Struct_3(vec4<f32>(167f, 469f, 1210f, 572f), vec2<i32>(1i, 31137i), true), Struct_3(vec4<f32>(1000f, -456f, -977f, 635f), vec2<i32>(i32(-2147483648), 0i), true));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(25492i, -1i), vec2<i32>(1i, -20583i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-16705i, -1i), vec2<i32>(-4062i, -21333i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, -13276i), vec2<i32>(-1i, -29231i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(37116i, i32(-2147483648)), vec2<i32>(2147483647i, -73122i), vec2<i32>(-1i, -13566i), vec2<i32>(-4026i, -1i), vec2<i32>(7951i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> vec3<bool> {
    global1 = array<Struct_3, 27>();
    let var_0 = Struct_2(Struct_1(select(arg_1.a.c.zyw, arg_1.a.c.yyx, !any(arg_1.a.c)), ~(~countOneBits(vec3<u32>(arg_1.a.b.x, 22826u, 0u))), arg_2.d.a.c, !arg_1.a.d, u_input.a.xz));
    global2 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 16>();
    let var_1 = arg_0;
    return !select(global0[_wgslsmith_index_u32(var_0.a.e.x, 11u)], var_0.a.c.zwz, vec3<bool>(any(arg_1.a.c), select(any(vec3<bool>(true, var_0.a.d.x, false)), !arg_2.d.a.a.x, all(vec2<bool>(false, var_0.a.d.x))), false));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    var var_0 = min(~countOneBits(arg_0.x), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(15765u, 18173u), arg_1.e.x), arg_0.x));
    var_0 = ~(1u ^ (select(~arg_0.x, _wgslsmith_mult_u32(arg_1.e.x, arg_0.x), true) | u_input.b.x));
    let var_1 = arg_1.d;
    return func_3(abs(vec4<i32>(-14206i, _wgslsmith_div_i32(_wgslsmith_mod_i32(67472i, arg_2), arg_2), -_wgslsmith_div_i32(arg_2, -37852i), -56083i)), Struct_2(Struct_1(!vec3<bool>(var_1.x, var_1.x, false), vec3<u32>(~arg_0.x, u_input.a.x, arg_0.x << (arg_1.e.x % 32u)), arg_1.c, select(select(var_1, vec2<bool>(false, var_1.x), arg_1.d), arg_1.a.xy, !var_1), arg_0.xy)), Struct_4(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), arg_0, -111f, Struct_2(arg_1)), 18042i);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 11>();
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(1u, max(1u, _wgslsmith_mult_u32(2395u, ~u_input.b.x)), u_input.a.x)), 27u)];
    return Struct_2(Struct_1(func_4(min(u_input.a, u_input.b), Struct_1(func_3(vec4<i32>(-1i, 2147483647i, -2147483647i, -39659i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.b, vec4<bool>(true, var_0.c, var_0.c, false), vec2<bool>(var_0.c, false), u_input.b.xx)), Struct_4(u_input.b.x, u_input.b, 636f, Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec4<bool>(true, false, var_0.c, true), vec2<bool>(var_0.c, false), vec2<u32>(u_input.b.x, 12613u)))), var_0.b.x), ~u_input.a, vec4<bool>(var_0.c, var_0.c, false, false), vec2<bool>(false, false), vec2<u32>(7653u, u_input.a.x) & vec2<u32>(u_input.a.x, u_input.b.x)), firstLeadingBit(var_0.b.x)), vec3<u32>(abs(reverseBits(u_input.a.x)), 6072u, min(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zz))), select(select(select(vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(var_0.c, false, false, false), var_0.c), !vec4<bool>(var_0.c, var_0.c, true, true), !vec4<bool>(var_0.c, var_0.c, false, var_0.c)), select(vec4<bool>(var_0.c, false, var_0.c, true), select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, var_0.c, false, var_0.c)), true), false), vec2<bool>(-var_0.b.x <= -var_0.b.x, !var_0.c & true), ~(~select(u_input.b.yz, u_input.a.xx, vec2<bool>(var_0.c, var_0.c)))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    let var_0 = arg_2.a.x;
    var var_1 = abs(~vec4<i32>(~(~(-49403i)), 1i << (~u_input.b.x % 32u), 1i, _wgslsmith_mult_i32(-1i, arg_2.b.x)));
    var_1 = vec4<i32>(var_1.x, arg_2.b.x << (arg_0.a % 32u), -47384i, 2147483647i);
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(max(~arg_2.b.x, -16453i), _wgslsmith_dot_vec2_i32(var_1.zx, ~_wgslsmith_add_vec2_i32(arg_2.b, vec2<i32>(arg_2.b.x, var_1.x))), abs(-37667i)), firstTrailingBit(vec3<i32>(arg_2.b.x, select(abs(var_1.x), ~var_1.x, arg_1), select(max(var_1.x, arg_2.b.x), var_1.x, false))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) * _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-arg_3)))));
    return arg_0.d;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec2_u32(~u_input.a.xy, ~select(~vec2<u32>(8177u, u_input.b.x), vec2<u32>(max(0u, u_input.a.x), u_input.b.x), true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(753f, _wgslsmith_f_op_f32(sign(-195f))))) - 367f);
    let var_2 = func_5(Struct_4(var_0.x, vec3<u32>(0u, select(~7306u, var_0.x, false), 69711u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), var_1)), func_2()), true, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(482f + -1028f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f) * -1000f), 1000f, _wgslsmith_div_f32(-213f, _wgslsmith_div_f32(-1000f, var_1))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -global2[_wgslsmith_index_u32(21850u, 16u)], vec2<i32>(min(103368i, -1i), firstTrailingBit(2147483647i))), select(var_1 > _wgslsmith_f_op_f32(-var_1), true, true)), _wgslsmith_f_op_f32(round(681f)));
    global2 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 16>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(736f, -1331f, 752f, var_1))))))))), global2[_wgslsmith_index_u32(abs(max(8835u, 0u & var_2.a.b.x) ^ ~_wgslsmith_add_u32(34242u, 21354u)), 16u)], true);
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = func_2().a;
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    var var_1 = vec3<bool>((u_input.b.x <= u_input.b.x) != func_5(Struct_4(~arg_1, u_input.b << (vec3<u32>(4294967295u, arg_0, var_0.b.x) % vec3<u32>(32u)), arg_2.a.x, func_5(Struct_4(arg_0, u_input.a, arg_2.a.x, Struct_2(var_0)), var_0.c.x, Struct_3(arg_2.a, vec2<i32>(2147483647i, arg_2.b.x), true), arg_2.a.x)), arg_2.c & !var_0.a.x, func_1(), 1095f).a.a.x, arg_2.c, true);
    var_1 = vec3<bool>(!var_0.c.x, any(func_3(vec4<i32>(arg_2.b.x, i32(-1i) * -21159i, abs(arg_2.b.x), arg_2.b.x), Struct_2(func_5(Struct_4(u_input.b.x, u_input.a, arg_2.a.x, Struct_2(var_0)), arg_2.c, Struct_3(arg_2.a, vec2<i32>(arg_2.b.x, arg_2.b.x), var_1.x), 313f).a), Struct_4(29783u, ~u_input.b, _wgslsmith_f_op_f32(-arg_2.a.x), Struct_2(var_0)), 19714i)), var_0.d.x);
    return any(func_4(~(~var_0.b) ^ vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(49012u, var_0.b.x, u_input.b.x)), arg_1), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.b, var_0.c, select(!vec2<bool>(var_1.x, true), var_1.yy, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_div_vec2_u32(~var_0.b.xy, ~vec2<u32>(var_0.b.x, 18750u))), ~22236i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 16>();
    var var_0 = func_6(43190u, ~(~(~40342u)), func_1());
    var_0 = true;
    var var_1 = ~_wgslsmith_mod_i32(-2147483647i, 14261i);
    var var_2 = -930f;
    let x = u_input.a;
    s_output = StorageBuffer(~38417u | u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, countOneBits(~u_input.a.x)), 16u)], -996f, func_1().a.x);
}

