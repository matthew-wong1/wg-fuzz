struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(279f, -281f), i32(-2147483648), vec4<f32>(-473f, 2550f, 760f, 548f))), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(-667f, -944f), -1i, vec4<f32>(1147f, -649f, 129f, 659f)), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-162f, -238f), 2147483647i, vec4<f32>(-1244f, -1087f, -562f, 1000f)))), Struct_2(Struct_1(vec2<f32>(2126f, -542f), 1i, vec4<f32>(-156f, -412f, -467f, -508f))), vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(1147f, 1327f), 56647i, vec4<f32>(1320f, -316f, -530f, -1000f))), vec2<u32>(1u, 11394u), Struct_1(vec2<f32>(-1000f, 2308f), 12021i, vec4<f32>(-2031f, -1411f, -1959f, -491f)), vec2<u32>(1u, 1u), Struct_2(Struct_1(vec2<f32>(240f, 798f), 4904i, vec4<f32>(-197f, 1363f, -1401f, -1000f)))), Struct_2(Struct_1(vec2<f32>(1000f, 727f), 1i, vec4<f32>(-1508f, -1229f, -848f, 1929f))), vec3<bool>(false, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(653f, -140f), 0i, vec4<f32>(-1065f, -1000f, 138f, -143f))), vec2<u32>(1u, 33700u), Struct_1(vec2<f32>(1024f, -1046f), 62035i, vec4<f32>(-1666f, -626f, 734f, 367f)), vec2<u32>(1u, 14349u), Struct_2(Struct_1(vec2<f32>(-675f, 1563f), 27327i, vec4<f32>(-1987f, -416f, 1308f, -554f)))), Struct_2(Struct_1(vec2<f32>(-2781f, 353f), -41902i, vec4<f32>(-1000f, 1000f, 513f, -843f))), vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(1140f, 508f), -11821i, vec4<f32>(296f, -498f, 1373f, -884f))), vec2<u32>(1u, 19791u), Struct_1(vec2<f32>(1000f, 1392f), 13415i, vec4<f32>(-886f, 2269f, 1621f, -706f)), vec2<u32>(57419u, 160u), Struct_2(Struct_1(vec2<f32>(-1402f, -773f), -3240i, vec4<f32>(-612f, -594f, -1486f, 892f)))), Struct_2(Struct_1(vec2<f32>(522f, -1264f), -75922i, vec4<f32>(242f, -670f, -1014f, -1223f))), vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(-385f, 1260f), 0i, vec4<f32>(-465f, -1165f, 380f, 1022f))), vec2<u32>(0u, 94631u), Struct_1(vec2<f32>(-318f, 1324f), -17308i, vec4<f32>(-1000f, 422f, -158f, 2050f)), vec2<u32>(55289u, 1u), Struct_2(Struct_1(vec2<f32>(-250f, 680f), 0i, vec4<f32>(101f, -554f, 1510f, -643f)))), Struct_2(Struct_1(vec2<f32>(218f, 1852f), 1i, vec4<f32>(1268f, 108f, -372f, -1862f))), vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(905f, -412f), 59531i, vec4<f32>(513f, -1278f, -559f, -539f))), vec2<u32>(0u, 17576u), Struct_1(vec2<f32>(729f, -938f), 46860i, vec4<f32>(-862f, -980f, -1000f, -859f)), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-449f, -771f), 0i, vec4<f32>(402f, 453f, -575f, 545f)))), Struct_2(Struct_1(vec2<f32>(-1411f, 1336f), -1i, vec4<f32>(203f, -608f, 180f, 631f))), vec3<bool>(false, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(-553f, -1371f), -1i, vec4<f32>(-596f, -1000f, -482f, -660f))), vec2<u32>(53642u, 17952u), Struct_1(vec2<f32>(-238f, -1000f), -1i, vec4<f32>(943f, -823f, 597f, 721f)), vec2<u32>(7799u, 1u), Struct_2(Struct_1(vec2<f32>(1080f, 149f), 1i, vec4<f32>(1459f, 1038f, -670f, -1062f)))), Struct_2(Struct_1(vec2<f32>(422f, -605f), -1i, vec4<f32>(-153f, 297f, -1000f, -1434f))), vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(-2100f, -629f), 1i, vec4<f32>(-1045f, -124f, 799f, -1552f))), vec2<u32>(9081u, 0u), Struct_1(vec2<f32>(-526f, 135f), 48158i, vec4<f32>(-447f, -498f, 307f, -1273f)), vec2<u32>(4598u, 1u), Struct_2(Struct_1(vec2<f32>(-961f, -633f), 49607i, vec4<f32>(381f, -1186f, 678f, -1260f)))), Struct_2(Struct_1(vec2<f32>(1372f, 624f), 2147483647i, vec4<f32>(945f, -2539f, -868f, 304f))), vec3<bool>(false, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(1567f, -1817f), 2535i, vec4<f32>(-263f, -1457f, -374f, -310f))), vec2<u32>(72460u, 0u), Struct_1(vec2<f32>(1121f, 794f), i32(-2147483648), vec4<f32>(1321f, -1120f, -2103f, -1490f)), vec2<u32>(4294967295u, 18624u), Struct_2(Struct_1(vec2<f32>(-820f, 912f), -29554i, vec4<f32>(398f, 1152f, -2109f, -1630f)))), Struct_2(Struct_1(vec2<f32>(-532f, -498f), -14058i, vec4<f32>(-1242f, -726f, 1015f, -689f))), vec3<bool>(false, true, false)));

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = min(abs(~(~(~u_input.d))), u_input.d);
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = ~vec4<u32>(23156u, 1u | arg_2.b.x, ~(~arg_2.b.x), min(_wgslsmith_add_u32(func_3(0u), arg_2.b.x & u_input.d.x), _wgslsmith_mod_u32(arg_2.d.x, 52646u) & ~75392u));
    var_0 = vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, _wgslsmith_mod_u32(~arg_2.d.x, ~(~1u)));
    let var_1 = arg_2.c;
    global1 = array<vec3<bool>, 6>();
    return _wgslsmith_div_u32(var_0.x, 1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    global0 = array<Struct_5, 9>();
    global0 = array<Struct_5, 9>();
    let var_0 = vec2<bool>(true, !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) & false);
    global2 = array<vec4<bool>, 23>();
    var var_1 = 286f;
    return 1319f;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1606f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -540f)))), -1236f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-325f)) + -271f)), _wgslsmith_f_op_f32(-231f + -1622f) > _wgslsmith_f_op_f32(func_4(vec2<u32>(52597u, func_2(vec4<f32>(905f, -147f, 1399f, 1138f), Struct_2(Struct_1(vec2<f32>(-210f, -1000f), u_input.a, vec4<f32>(651f, 1157f, -387f, -695f))), Struct_3(Struct_2(Struct_1(vec2<f32>(137f, -794f), 2147483647i, vec4<f32>(-133f, -877f, 915f, -670f))), u_input.d.ww, Struct_1(vec2<f32>(-1000f, -604f), u_input.a, vec4<f32>(-1642f, 2005f, -1353f, 1000f)), u_input.b, Struct_2(Struct_1(vec2<f32>(1016f, 334f), -1i, vec4<f32>(187f, -174f, -1366f, -862f)))), -690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(695f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 1f));
    global0 = array<Struct_5, 9>();
    var var_1 = max(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -20929i, 0i), vec4<i32>(37182i, -16209i, u_input.a, u_input.a))), -1i) >> (~u_input.c % 32u);
    var var_2 = true;
    global2 = array<vec4<bool>, 23>();
    let var_3 = _wgslsmith_dot_vec3_u32(u_input.d.zyw, vec3<u32>(_wgslsmith_add_u32(0u, u_input.b.x), 1u, (u_input.b.x << (37291u % 32u)) ^ u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_3, u_input.d.x), ~select(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, 42515i, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_div_vec3_i32(-vec3<i32>(-28404i, -2147483647i, 16080i), vec3<i32>(2986i, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, -41468i)), !select(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(18123u, 6u)])), countOneBits(vec2<i32>(_wgslsmith_div_i32(u_input.a, 15378i), u_input.a)) << (u_input.b % vec2<u32>(32u)), -u_input.a);
}

