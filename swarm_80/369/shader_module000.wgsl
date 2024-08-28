struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(true, Struct_1(vec3<f32>(-138f, 337f, 1602f), 1036f, vec2<u32>(105407u, 0u), -1522f, -2005f)), vec4<f32>(2495f, -217f, 428f, -1019f), 37975u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1251f, 479f, 1000f), -446f, vec2<u32>(31280u, 0u), 875f, 237f)), vec4<f32>(456f, -1000f, 289f, 1377f), 0u), Struct_3(Struct_2(true, Struct_1(vec3<f32>(511f, -165f, 661f), -2366f, vec2<u32>(15630u, 1974u), -554f, 2347f)), vec4<f32>(726f, 1611f, 426f, -1000f), 11402u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1734f, -395f, -1315f), 696f, vec2<u32>(58351u, 0u), -540f, 1200f)), vec4<f32>(-841f, -1418f, -1462f, -278f), 110457u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1856f, 435f, 1066f), -1030f, vec2<u32>(83957u, 38690u), -1283f, 638f)), vec4<f32>(-487f, 589f, -479f, 263f), 69162u), Struct_3(Struct_2(true, Struct_1(vec3<f32>(488f, 1611f, 2157f), -2101f, vec2<u32>(41603u, 1u), -2507f, -731f)), vec4<f32>(-1392f, -1600f, 1000f, 800f), 1u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(-1000f, -1000f, -848f), 1000f, vec2<u32>(4294967295u, 0u), -1061f, 1047f)), vec4<f32>(118f, -390f, -2258f, -1686f), 4294967295u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(-300f, 561f, -525f), -668f, vec2<u32>(33318u, 1u), -135f, 961f)), vec4<f32>(1581f, 2096f, -693f, -1990f), 55517u), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1042f, -373f, -1004f), -769f, vec2<u32>(78763u, 4294967295u), 971f, -1366f)), vec4<f32>(-1002f, -1000f, -1056f, 1227f), 4294967295u), Struct_3(Struct_2(true, Struct_1(vec3<f32>(-657f, -197f, 153f), -288f, vec2<u32>(18927u, 35823u), 1097f, 1187f)), vec4<f32>(-2255f, 178f, 839f, 530f), 27672u), Struct_3(Struct_2(true, Struct_1(vec3<f32>(524f, 1029f, 116f), -194f, vec2<u32>(5829u, 4294967295u), 310f, 295f)), vec4<f32>(737f, -1608f, -2249f, 1393f), 0u));

var<private> global1: array<vec2<u32>, 5>;

var<private> global2: array<vec3<i32>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = any(select(vec4<bool>(any(select(vec4<bool>(true, arg_2.a, arg_1.x, arg_2.a), vec4<bool>(arg_1.x, arg_0.a.a, false, arg_1.x), arg_2.a)), arg_0.a.a, !all(vec2<bool>(true, arg_0.a.a)), true), !vec4<bool>(arg_1.x, false & arg_2.a, any(vec2<bool>(arg_1.x, arg_1.x)), arg_2.a), !(!vec4<bool>(arg_2.a, arg_0.a.a, false, true))));
    let var_1 = Struct_3(Struct_2(any(select(arg_1, !arg_1, arg_2.a)), arg_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, arg_2.b.e, 450f, arg_2.b.a.x) * arg_0.b)), arg_0.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.e, 1395f, arg_0.b.x, arg_2.b.b))))), arg_2.b.c.x);
    var var_2 = arg_2.b.c.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-254f)), -649f) + _wgslsmith_f_op_f32(arg_2.b.e - _wgslsmith_f_op_f32(floor(-679f))));
    var var_4 = ~0i;
    return vec2<u32>(~_wgslsmith_dot_vec2_u32(select(~arg_2.b.c, firstTrailingBit(u_input.b), any(vec3<bool>(false, arg_1.x, arg_1.x))), vec2<u32>(~1u, u_input.b.x << (arg_2.b.c.x % 32u))), arg_0.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.xx));
    global2 = array<vec3<i32>, 18>();
    let var_1 = arg_2;
    var var_2 = select(((true | select(false, arg_0, arg_0)) || true) != !all(vec4<bool>(var_1, true, arg_0, arg_0)), true, true);
    var var_3 = max(i32(-1i) * -1i, firstTrailingBit(-217i));
    return arg_1.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = countOneBits(~4294967295u ^ _wgslsmith_sub_u32(28266u, u_input.b.x | ~1u));
    var var_1 = u_input.a;
    let var_2 = u_input.b.x;
    let var_3 = vec2<bool>(true, !any(!select(vec3<bool>(false, arg_1.a.a, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.a.a, true), arg_1.a.a)));
    global2 = array<vec3<i32>, 18>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_1.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1076f, -565f)), _wgslsmith_f_op_f32(min(arg_3, arg_3)), func_3(Struct_3(Struct_2(true, Struct_1(vec3<f32>(arg_3, arg_2, -753f), 510f, arg_1.a.b.c, 1556f, 1868f)), vec4<f32>(arg_3, arg_1.a.b.d, arg_2, 224f), var_2), var_3, arg_1.a, u_input.c), _wgslsmith_f_op_f32(-arg_2), -568f), arg_1.a.a, ~countOneBits(4294967295u))), arg_2, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), global1[_wgslsmith_index_u32(26280u, 5u)], arg_3, _wgslsmith_f_op_f32(func_4(select(var_3.x, true, !(u_input.c.x >= u_input.c.x)), arg_1.a.b, any(select(vec4<bool>(false, arg_1.a.a, true, arg_1.a.a), vec4<bool>(true, var_3.x, var_3.x, var_3.x), arg_1.a.a)), var_2)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    global0 = array<Struct_3, 11>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(641f))), _wgslsmith_f_op_f32(-func_2(vec2<i32>(-arg_3.x, abs(u_input.c.x)), global0[_wgslsmith_index_u32(~u_input.b.x, 11u)], _wgslsmith_f_op_f32(-1996f * 797f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1111f)))).d), _wgslsmith_f_op_f32(trunc(arg_1.b.a.x)));
    global2 = array<vec3<i32>, 18>();
    global0 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~30591u, _wgslsmith_mult_u32(min(select(4294967295u, arg_1.b.c.x, false), u_input.b.x), func_3(global0[_wgslsmith_index_u32(18983u & u_input.b.x, 11u)], select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), vec2<bool>(false, arg_1.a)), arg_1, vec3<i32>(arg_0.x, -10600i, 15983i)).x), _wgslsmith_add_u32(abs(u_input.b.x), ~u_input.b.x) & (u_input.b.x | (0u << (arg_1.b.c.x % 32u)))), vec4<u32>(0u, func_2(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_3.x), vec2<i32>(1i, arg_0.x)), global0[_wgslsmith_index_u32(1u, 11u)], -1000f, 1495f).c.x, _wgslsmith_add_u32(19342u, 37470u), 7369u));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    global0 = array<Struct_3, 11>();
    var var_0 = 1248f;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(func_5(min(u_input.c.yz, -vec2<i32>(37939i, u_input.a)), func_5(~u_input.c.xx, Struct_2(false, arg_1.b), arg_1.a, arg_3), true, _wgslsmith_mult_vec3_i32(arg_3, vec3<i32>(1i, 0i, u_input.c.x)) & ~vec3<i32>(arg_3.x, 17069i, -28905i)).b.e, arg_1.b.e, arg_1.b.e, _wgslsmith_f_op_f32(min(-105f, arg_1.b.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.b.a.x, arg_1.b.b), func_5(arg_3.zx, arg_1, arg_1.a, vec3<i32>(2147483647i, 33616i, 0i)).b.b, _wgslsmith_f_op_f32(abs(arg_1.b.a.x)), arg_1.b.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.b, arg_1.b.a.x, arg_1.b.d, -1000f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2146f, -403f, arg_1.b.e, -846f))))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wwx))))), arg_1.b.b, vec2<u32>(~arg_0, ~92027u), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-arg_1.b.d));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~1u)), 5u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1283f - -275f)))));
    let var_2 = Struct_2(any(vec4<bool>(true, true, true, true)), func_6(~19628u, func_5(vec2<i32>(-36035i, u_input.a) << (min(vec2<u32>(4294967295u, arg_0), u_input.b) % vec2<u32>(32u)), Struct_2(false, func_2(vec2<i32>(u_input.a, 2147483647i), Struct_3(Struct_2(true, Struct_1(vec3<f32>(var_1, var_1, -763f), -747f, vec2<u32>(var_0.x, 1u), -719f, var_1)), vec4<f32>(var_1, -560f, -2358f, var_1), u_input.b.x), -2675f, var_1)), all(vec4<bool>(true, false, true, true)) && (u_input.c.x > 1776i), u_input.c), ~(~vec2<u32>(arg_0, 1u)), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i, u_input.a, 0i) >> (vec3<u32>(12303u, var_0.x, u_input.b.x) % vec3<u32>(32u))), ~(vec3<i32>(1i, u_input.c.x, -17211i) >> (vec3<u32>(var_0.x, 1u, 35409u) % vec3<u32>(32u))))));
    let var_3 = var_2.a;
    let var_4 = !select(!vec4<bool>(var_2.a, any(vec2<bool>(true, true)), var_3, func_5(vec2<i32>(-1i, 0i), var_2, true, vec3<i32>(u_input.a, -1i, -2147483647i)).a), select(vec4<bool>(true && var_3, !var_2.a, all(vec3<bool>(var_2.a, var_2.a, false)), var_2.a), select(!vec4<bool>(false, var_2.a, var_3, false), !vec4<bool>(var_3, false, true, var_2.a), var_3 != var_2.a), select(!vec4<bool>(false, var_2.a, var_3, var_3), select(vec4<bool>(true, true, false, false), vec4<bool>(var_3, var_2.a, true, var_3), true), !vec4<bool>(var_3, true, true, var_3))), true);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, u_input.b.x);
    let var_2 = -22272i;
    let var_3 = Struct_2(any(select(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true))), func_1(var_1 & ~(var_1 << (var_1 % 32u))));
    var var_4 = u_input.c.yy;
    let var_5 = var_3;
    var_4 = vec2<i32>(_wgslsmith_mod_i32(-u_input.c.x, 33585i), -var_4.x);
    var var_6 = vec4<u32>(~(~4294967295u), var_1 >> (0u % 32u), 32309u, var_5.b.c.x);
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a, 1u, u_input.a, _wgslsmith_mult_u32(firstLeadingBit(0u), var_3.b.c.x));
}

