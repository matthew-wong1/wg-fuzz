struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: array<Struct_5, 24>;

var<private> global3: bool;

var<private> global4: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(1i, vec3<f32>(-106f, 1255f, 618f), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), Struct_1(vec4<f32>(-202f, -1520f, 580f, 1192f))), Struct_5(i32(-2147483648), vec3<f32>(999f, 657f, 201f), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), Struct_1(vec4<f32>(-847f, 480f, -1435f, 2573f))), Struct_5(-82112i, vec3<f32>(165f, 452f, 1000f), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(232f, -1108f, -653f, -174f))), Struct_5(-11883i, vec3<f32>(1006f, 593f, -230f), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(250f, 411f, -1898f, -959f))), Struct_5(0i, vec3<f32>(301f, -582f, 245f), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(944f, 539f, 873f, -1851f))), Struct_5(i32(-2147483648), vec3<f32>(-1585f, 2405f, 812f), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), Struct_1(vec4<f32>(-518f, 2384f, -252f, -587f))), Struct_5(-10800i, vec3<f32>(1181f, -1018f, 1293f), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(-152f, 236f, -864f, -2020f))), Struct_5(0i, vec3<f32>(-182f, -1499f, -354f), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), Struct_1(vec4<f32>(-524f, -583f, 363f, -1000f))), Struct_5(0i, vec3<f32>(-480f, 708f, 937f), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(-1239f, 855f, -745f, 326f))), Struct_5(-25882i, vec3<f32>(-1000f, 714f, -425f), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(-912f, -1000f, -1000f, -200f))), Struct_5(11189i, vec3<f32>(-1233f, -1150f, 1533f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(385f, 1000f, -1000f, 652f))), Struct_5(i32(-2147483648), vec3<f32>(921f, 1530f, -126f), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), Struct_1(vec4<f32>(-1472f, 851f, 1696f, 562f))), Struct_5(2147483647i, vec3<f32>(433f, -143f, 409f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(312f, 408f, -1000f, -1967f))), Struct_5(2147483647i, vec3<f32>(-1596f, -1040f, -655f), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(-1000f, -997f, -358f, 736f))), Struct_5(i32(-2147483648), vec3<f32>(1133f, 416f, -175f), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(-668f, 452f, -960f, 2924f))), Struct_5(-28422i, vec3<f32>(-826f, 738f, -1843f), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(2400f, -495f, 633f, -385f))), Struct_5(30312i, vec3<f32>(1154f, 791f, 355f), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), Struct_1(vec4<f32>(-1863f, 1872f, 1428f, 665f))), Struct_5(-11335i, vec3<f32>(-1000f, -422f, 482f), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), Struct_1(vec4<f32>(1039f, 851f, 1210f, -156f))), Struct_5(52770i, vec3<f32>(-156f, -279f, -116f), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(285f, 1090f, -352f, -248f))), Struct_5(52028i, vec3<f32>(-296f, 906f, 1629f), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(-1031f, 1424f, -596f, -2421f))), Struct_5(0i, vec3<f32>(1130f, 224f, -650f), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), Struct_1(vec4<f32>(3004f, -1375f, 1493f, -1574f))), Struct_5(19515i, vec3<f32>(256f, -611f, 895f), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(601f, 380f, 524f, 443f))), Struct_5(0i, vec3<f32>(184f, 538f, -2030f), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(1163f, -805f, 708f, -490f))), Struct_5(1i, vec3<f32>(2132f, 513f, -320f), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(1741f, 1250f, 858f, 315f))), Struct_5(2147483647i, vec3<f32>(546f, -417f, 331f), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(-1465f, -138f, -821f, -524f))), Struct_5(2147483647i, vec3<f32>(-1371f, -787f, -1069f), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(-229f, -1619f, 1549f, -609f))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> vec4<f32> {
    global1 = array<vec2<f32>, 11>();
    global3 = -31988i <= u_input.a.x;
    var var_0 = false;
    let var_1 = true;
    global3 = false;
    return arg_0.b.a;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = false;
    global3 = ~(~_wgslsmith_div_u32(7643u, _wgslsmith_sub_u32(4294967295u, 43309u))) == _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(4294967295u, 0u, 4294967295u, 598u)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 42871u, 40825u, 1u), vec4<u32>(25324u, 0u, 0u, 1u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, 334f, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, arg_0, global0.x, global0.x) + vec4<f32>(global0.x, -1254f, -1000f, 480f))))), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global0.x + 590f), _wgslsmith_div_f32(global0.x, -438f), 1f, arg_0), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), -869f, -2240f, 633f)))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1127f, arg_0, arg_0, -413f), vec4<f32>(global0.x, global0.x, 608f, 1032f), vec4<bool>(false, false, false, true))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(vec4<f32>(774f, global0.x, 496f, -890f)), Struct_1(vec4<f32>(arg_0, arg_0, -1501f, -277f)), u_input.a), vec3<u32>(38978u, 11103u, 1u)))), vec4<f32>(_wgslsmith_div_f32(225f, arg_0), _wgslsmith_f_op_f32(1000f + -665f), -1826f, _wgslsmith_f_op_f32(-152f * arg_0))))));
    let var_2 = -2147483647i;
    global2 = array<Struct_5, 24>();
    return Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.b.a)), var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.x, 318f));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a.x, global0.x, arg_1.c.a.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(134f, -1115f, 883f), vec3<f32>(134f, arg_1.b.a.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(arg_0.c.a.wzy + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-745f, var_0, -1000f))))) + arg_1.c.a.xxw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.c.a.zwx, arg_0.b.a.ywx)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.a.yzy - vec3<f32>(744f, arg_0.b.a.x, 294f))) - _wgslsmith_f_op_vec3_f32(-arg_1.a.a.zww))), true));
    var var_2 = u_input.a.x;
    let var_3 = select(true, true, true);
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.c.a.x, -711f)), var_1.x)), arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-780f, _wgslsmith_f_op_f32(trunc(arg_0.c.a.x)), -1027f), arg_1.b.a.wxx)));
    return select(select(select(vec3<bool>(!var_3, all(vec4<bool>(var_3, false, false, false)), var_3), vec3<bool>(false && var_3, !var_3, true), select(select(vec3<bool>(true, var_3, var_3), vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, var_3, var_3)), vec3<bool>(false, var_3, true), select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, false, false)))), select(vec3<bool>(select(true, var_3, var_3), var_3, any(vec4<bool>(var_3, var_3, var_3, true))), vec3<bool>(select(var_3, false, false), any(vec4<bool>(var_3, var_3, var_3, var_3)), !var_3), !vec3<bool>(var_3, var_3, var_3)), var_3), select(!select(vec3<bool>(var_3, var_3, var_3), !vec3<bool>(var_3, var_3, var_3), true | var_3), select(vec3<bool>(true, true, true), !vec3<bool>(var_3, true, var_3), vec3<bool>(false, select(true, var_3, false), var_3)), var_3), !select(vec3<bool>(false, any(vec3<bool>(var_3, var_3, var_3)), all(vec2<bool>(true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, var_3, var_3)), select(vec3<bool>(var_3, var_3, var_3), select(vec3<bool>(var_3, var_3, false), vec3<bool>(var_3, var_3, false), var_3), vec3<bool>(var_3, var_3, var_3))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(arg_0.zy, arg_0.xz, !func_4(Struct_2(arg_2, Struct_1(vec4<f32>(2916f, global0.x, arg_2.a.x, 1131f)), func_2(480f).a), func_2(-895f)).yx);
    global3 = true;
    let var_1 = -14156i & (reverseBits(countOneBits(-6803i)) ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(arg_1), i32(-1i) * -33014i), arg_1));
    let var_2 = false;
    var var_3 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 37639u, 0u, 0u))), abs(select(vec4<u32>(max(28642u, 61440u), min(4294967295u, 99792u), ~0u, ~0u), ~(~vec4<u32>(0u, 1u, 29289u, 1u)), vec4<bool>(select(var_0.x, true, var_0.x), true, true, select(false, false, false)))));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * -972f) - _wgslsmith_f_op_f32(f32(-1f) * -243f)) - _wgslsmith_f_op_f32(global0.x - arg_2.a.x))).a;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_5, 24>();
    return func_5(select(func_4(func_2(_wgslsmith_f_op_f32(-global0.x)), func_2(288f)), func_4(func_2(_wgslsmith_f_op_f32(-global0.x)), Struct_2(func_2(global0.x).c, func_2(global0.x).c, func_2(global0.x).c)), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), !any(vec3<bool>(false, false, false)))), -19145i, Struct_1(vec4<f32>(-320f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(743f * -911f), 659f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-780f, 1499f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a.wzz;
    var var_2 = vec4<bool>(!select(func_4(Struct_2(Struct_1(vec4<f32>(-1432f, var_0.a.x, global0.x, var_1.x)), Struct_1(vec4<f32>(-569f, -1869f, global0.x, 944f)), Struct_1(var_0.a)), Struct_2(Struct_1(var_0.a), Struct_1(vec4<f32>(var_1.x, -697f, -935f, 512f)), Struct_1(vec4<f32>(859f, var_0.a.x, global0.x, var_0.a.x)))).x, all(vec3<bool>(false, true, true)) | func_4(Struct_2(Struct_1(var_0.a), Struct_1(vec4<f32>(var_1.x, var_0.a.x, 139f, var_1.x)), Struct_1(var_0.a)), Struct_2(Struct_1(var_0.a), Struct_1(var_0.a), Struct_1(var_0.a))).x, func_4(func_2(-2259f), Struct_2(Struct_1(vec4<f32>(2779f, global0.x, 1039f, 345f)), Struct_1(vec4<f32>(449f, -1924f, 148f, var_0.a.x)), Struct_1(vec4<f32>(var_1.x, 762f, var_1.x, var_0.a.x)))).x), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) & false);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a)), func_5(vec3<bool>(true, all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), var_2.x & true), ~select(u_input.a.x << (0u % 32u), 1i, var_2.x), func_5(var_2.yzy, u_input.a.x, func_2(1394f).b)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-333f - var_1.x), var_0.a.x)))).b);
    var var_4 = ~reverseBits(vec4<u32>(32944u, ~0u, 0u, ~_wgslsmith_clamp_u32(4294967295u, 0u, 19827u)));
    let var_5 = _wgslsmith_f_op_f32(max(-271f, 1993f));
    var var_6 = Struct_3(func_1(), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1154f, var_1.x)))).a, _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i), u_input.a.x)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -2147483647i), 12823i) ^ -u_input.a));
    global4 = array<Struct_5, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-373f, firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(var_4.x, 0u, 4294967295u) | var_4.wzx, var_4.xxy)), var_5, -1523f);
}

