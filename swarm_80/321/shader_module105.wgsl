struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-985f, -463f, 1074f, 1603f, 559f);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_4 = Struct_4(vec3<u32>(1u, 0u, 1u), -57469i, vec4<u32>(0u, 0u, 59316u, 29312u), Struct_3(vec4<u32>(53386u, 89900u, 4294967295u, 4294967295u)));

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(387f, 1635f, -1410f, 569f), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true), vec2<f32>(1000f, 1000f)), true), Struct_2(vec4<f32>(-1174f, -1267f, 953f, 277f), Struct_1(vec2<i32>(-34995i, 0i), vec2<bool>(true, false), vec2<f32>(728f, -518f)), false), Struct_2(vec4<f32>(-1000f, -327f, -1155f, 380f), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<bool>(false, false), vec2<f32>(234f, 580f)), false), Struct_2(vec4<f32>(-1632f, 1840f, -547f, -919f), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, false), vec2<f32>(-270f, -969f)), true), Struct_2(vec4<f32>(-712f, 1077f, -1000f, 575f), Struct_1(vec2<i32>(11030i, 1i), vec2<bool>(true, false), vec2<f32>(1724f, -279f)), false), Struct_2(vec4<f32>(-1103f, -685f, 516f, 1476f), Struct_1(vec2<i32>(i32(-2147483648), 16535i), vec2<bool>(false, false), vec2<f32>(-2231f, -1000f)), false), Struct_2(vec4<f32>(-1127f, -1225f, -199f, -817f), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-944f, 626f)), true), Struct_2(vec4<f32>(1282f, -849f, 1061f, -1349f), Struct_1(vec2<i32>(-18558i, i32(-2147483648)), vec2<bool>(false, true), vec2<f32>(-1375f, 878f)), false), Struct_2(vec4<f32>(-277f, 301f, 1000f, 989f), Struct_1(vec2<i32>(-1i, 16679i), vec2<bool>(true, false), vec2<f32>(-991f, 511f)), true), Struct_2(vec4<f32>(897f, -1508f, 1151f, 263f), Struct_1(vec2<i32>(2147483647i, 26716i), vec2<bool>(false, false), vec2<f32>(-543f, -1154f)), true), Struct_2(vec4<f32>(-845f, -1394f, -475f, -1000f), Struct_1(vec2<i32>(17873i, 15892i), vec2<bool>(true, false), vec2<f32>(-107f, 495f)), false), Struct_2(vec4<f32>(-672f, 145f, 427f, -1413f), Struct_1(vec2<i32>(-17009i, -1i), vec2<bool>(true, true), vec2<f32>(-509f, -2311f)), false), Struct_2(vec4<f32>(1004f, 399f, -762f, -829f), Struct_1(vec2<i32>(-30541i, 48008i), vec2<bool>(false, true), vec2<f32>(-717f, 239f)), true), Struct_2(vec4<f32>(1030f, -467f, 1026f, 1000f), Struct_1(vec2<i32>(20946i, -14807i), vec2<bool>(false, true), vec2<f32>(-527f, -391f)), false), Struct_2(vec4<f32>(-1512f, -438f, -140f, -292f), Struct_1(vec2<i32>(2147483647i, -5764i), vec2<bool>(false, true), vec2<f32>(719f, -2198f)), true), Struct_2(vec4<f32>(-134f, -324f, 1598f, -1691f), Struct_1(vec2<i32>(2147483647i, 1i), vec2<bool>(false, false), vec2<f32>(-451f, 1084f)), false), Struct_2(vec4<f32>(-189f, -457f, 1450f, -1352f), Struct_1(vec2<i32>(0i, 32190i), vec2<bool>(true, true), vec2<f32>(-525f, -1000f)), false), Struct_2(vec4<f32>(-1000f, -240f, 1000f, 218f), Struct_1(vec2<i32>(-21161i, -11280i), vec2<bool>(false, true), vec2<f32>(2401f, 373f)), false), Struct_2(vec4<f32>(1177f, 506f, 711f, -303f), Struct_1(vec2<i32>(8798i, -31887i), vec2<bool>(true, true), vec2<f32>(-606f, 696f)), true), Struct_2(vec4<f32>(1742f, -1245f, -380f, 682f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, false), vec2<f32>(112f, -1526f)), false), Struct_2(vec4<f32>(-233f, 220f, 777f, 610f), Struct_1(vec2<i32>(11760i, 4408i), vec2<bool>(true, false), vec2<f32>(276f, -637f)), false), Struct_2(vec4<f32>(-1019f, -1266f, 956f, -1230f), Struct_1(vec2<i32>(-1i, 20241i), vec2<bool>(false, true), vec2<f32>(881f, 1828f)), true), Struct_2(vec4<f32>(1527f, -392f, 2267f, 776f), Struct_1(vec2<i32>(-5416i, 6407i), vec2<bool>(false, true), vec2<f32>(-1750f, 2418f)), true), Struct_2(vec4<f32>(-1000f, 262f, 150f, 382f), Struct_1(vec2<i32>(i32(-2147483648), 1689i), vec2<bool>(false, true), vec2<f32>(-729f, -1227f)), true), Struct_2(vec4<f32>(-179f, -1000f, 271f, 177f), Struct_1(vec2<i32>(-41222i, i32(-2147483648)), vec2<bool>(false, true), vec2<f32>(501f, 319f)), true), Struct_2(vec4<f32>(280f, -305f, 179f, -115f), Struct_1(vec2<i32>(1i, -23716i), vec2<bool>(true, true), vec2<f32>(-518f, 180f)), true), Struct_2(vec4<f32>(-391f, -1910f, 722f, 531f), Struct_1(vec2<i32>(8596i, 0i), vec2<bool>(false, false), vec2<f32>(-1048f, 601f)), true), Struct_2(vec4<f32>(175f, -1518f, -691f, -476f), Struct_1(vec2<i32>(-12963i, 1i), vec2<bool>(false, true), vec2<f32>(453f, 513f)), false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    global2 = Struct_4(global2.c.xxz, -1i, global2.c, arg_0);
    let var_0 = 63790i;
    global1 = !select(select(!select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), !select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), true), vec2<bool>(true, false || global1.x)), vec2<bool>(true, true), !all(vec3<bool>(global1.x, true, false)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 5u)];
    var var_2 = Struct_5(_wgslsmith_clamp_u32(global2.d.a.x, max(1u, _wgslsmith_add_u32(arg_0.a.x, ~global2.a.x)), ~79973u), global3[_wgslsmith_index_u32(firstLeadingBit(15133u), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) + 1000f))), global3[_wgslsmith_index_u32(1u, 28u)]);
    return _wgslsmith_f_op_vec4_f32(-var_2.d.a);
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d.x, global2.c.x), 1u, _wgslsmith_mod_u32(41013u, max(global2.d.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, 105681u), ~u_input.b))));
}

fn func_2(arg_0: Struct_2) -> bool {
    global2 = Struct_4(abs(global2.c.zzy), _wgslsmith_mod_i32(~(-1i), -25509i), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, global2.a.x, global2.c.x), global2.d.a) ^ global2.d.a, vec4<u32>(0u, abs(35091u), u_input.a.x, func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(global2.d.a)))))), global2.d);
    let var_0 = vec2<i32>(arg_0.b.a.x, -(~0i));
    let var_1 = true;
    let var_2 = 2088f;
    var var_3 = u_input.a.yx;
    return any(select(arg_0.b.b, vec2<bool>(true, all(!vec3<bool>(false, arg_0.c, arg_0.b.b.x))), arg_0.b.b.x));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.e.yy, vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, 6667u), reverseBits(global2.d.a.wxz)) <= _wgslsmith_mult_u32(4294967295u, 62636u & global2.c.x), func_2(Struct_2(vec4<f32>(465f, -342f, global0[_wgslsmith_index_u32(10289u, 5u)], 1411f), Struct_1(vec2<i32>(global2.b, global2.b), vec2<bool>(global1.x, false), vec2<f32>(-250f, -116f)), false)) == false), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(global2.a.x, 5u)]));
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    var var_0 = vec4<u32>(~(_wgslsmith_dot_vec2_u32(u_input.a.yz, abs(vec2<u32>(u_input.a.x, 0u))) << (1u % 32u)), ~(~global2.d.a.x), 35933u, u_input.a.x);
    let var_1 = Struct_4(global2.a, global2.b, global2.d.a, global2.d);
    return Struct_4(vec3<u32>(var_1.a.x & ~(34553u | var_0.x), global2.c.x << (~var_0.x % 32u), 2610u), _wgslsmith_add_i32(1i, 1i), global2.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    global3 = array<Struct_2, 28>();
    global2 = func_5(func_1());
    let var_0 = ~global2.c;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, min(~(17145u & _wgslsmith_mult_u32(var_0.x, global2.c.x)), global2.c.x)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c.x, 44824u), vec2<u32>(global2.d.a.x, 12498u)), vec2<u32>(global2.c.x, global2.c.x) >> (~vec2<u32>(4294967295u, global2.d.a.x) % vec2<u32>(32u))) & max(~vec2<u32>(global2.d.a.x, 17619u), func_5(Struct_1(var_1.b.a, vec2<bool>(false, false), var_1.a.wy)).c.xw), ~(~(~_wgslsmith_mod_u32(u_input.d.x, u_input.b))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-1000f, 142f))));
}

