struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> f32 {
    global1 = abs(reverseBits(global0.x));
    global1 = ~4712i;
    global0 = -(arg_0.c & vec4<i32>(-arg_0.a, -global0.x, u_input.c.x, ~(arg_0.a & arg_0.e.e.b.x)));
    let var_0 = vec2<i32>(-1351i, i32(-1i) * -2147483647i);
    let var_1 = arg_0.e.e;
    return 1356f;
}

fn func_3() -> i32 {
    global0 = vec4<i32>(~max(1i, -u_input.c.x), -2147483647i, abs(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(u_input.c.x, abs(-1i), 0i))), abs(u_input.c.x));
    global1 = u_input.c.x;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, -236f, -253f, _wgslsmith_f_op_f32(sign(365f)))))), vec4<i32>(_wgslsmith_clamp_i32(-1i, 0i, (global0.x ^ -791i) ^ u_input.c.x), _wgslsmith_dot_vec2_i32(~(-u_input.c), -vec2<i32>(20595i, global0.x)), 1i, abs(-2147483647i)));
    var var_1 = u_input.a;
    let var_2 = Struct_1(var_0.a, vec4<i32>(var_0.b.x, var_0.b.x, _wgslsmith_div_i32(var_0.b.x, 1i), ~_wgslsmith_clamp_i32(-1i, var_0.b.x, _wgslsmith_mult_i32(0i, 1i))));
    return max(min(u_input.c.x, 0i), ~var_2.b.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global1 = arg_2.b.x;
    var var_0 = vec3<i32>(arg_2.b.x << (4294967295u % 32u), ~firstTrailingBit(min(global0.x, 2147483647i) & 1i), func_3());
    let var_1 = arg_0;
    let var_2 = Struct_4(~_wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(var_0.x), countOneBits(0i)), 2147483647i), var_1.e.b.a.xw, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, var_1.e.e.b.x, -arg_0.a, ~(-1i))), firstTrailingBit(vec4<i32>(countOneBits(-21227i), 97851i << (arg_0.e.a % 32u), var_1.e.b.b.x, ~arg_0.a))), abs(20366u), var_1.e);
    return countOneBits(~var_1.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> i32 {
    var var_0 = select(arg_1.yz, arg_1.zz, arg_0.e.d);
    let var_1 = arg_2.e;
    var_0 = !(!arg_1.zz);
    let var_2 = reverseBits(vec4<i32>(-2147483647i, ~(~(~u_input.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(42579i, 1i), vec2<i32>(arg_2.a, u_input.c.x)) << (~u_input.b % 32u), -1i));
    let var_3 = vec3<bool>((i32(-1i) * -countOneBits(16245i)) > -(_wgslsmith_dot_vec3_i32(arg_0.e.b.b.wxy, vec3<i32>(global0.x, var_1.b.b.x, -37330i)) << (~0u % 32u)), var_1.d, var_0.x);
    return -28386i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(815f, 1004f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(firstTrailingBit(u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-752f, 1709f) - vec2<f32>(286f, -478f)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 2147483647i, -12593i, u_input.c.x), vec4<i32>(global0.x, 1i, u_input.c.x, global0.x)), ~u_input.b, Struct_2(u_input.d.x, Struct_1(vec4<f32>(391f, -2332f, 351f, -1311f), vec4<i32>(-52947i, u_input.c.x, -2147483647i, 56063i)), -118f, true, Struct_1(vec4<f32>(-258f, 1534f, -989f, 736f), vec4<i32>(0i, 14932i, 1i, 1623i)))), 4294967295u, true))));
    global1 = _wgslsmith_div_i32(func_4(Struct_4(reverseBits(-83832i), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, 843f)), -513f), vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i, 20054i, _wgslsmith_div_i32(1i, -2147483647i)), u_input.b, Struct_2(func_2(Struct_4(51627i, vec2<f32>(-417f, -158f), vec4<i32>(307i, u_input.c.x, global0.x, -1i), 0u, Struct_2(1u, Struct_1(vec4<f32>(169f, 1313f, 452f, 599f), vec4<i32>(1i, u_input.c.x, 0i, global0.x)), -717f, true, Struct_1(vec4<f32>(344f, 376f, 901f, 1156f), vec4<i32>(u_input.c.x, 0i, 2147483647i, -1i)))), vec4<u32>(u_input.b, 84583u, 4294967295u, 2306u), Struct_1(vec4<f32>(-297f, -1672f, -130f, -1014f), vec4<i32>(1i, global0.x, -29707i, 2147483647i))), Struct_1(vec4<f32>(346f, 1619f, 1352f, 736f), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 6923i)), -1521f, true, Struct_1(vec4<f32>(-720f, 1939f, 442f, 120f), vec4<i32>(global0.x, global0.x, global0.x, 0i)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true), Struct_4((-53068i >> (u_input.d.x % 32u)) | 48315i, vec2<f32>(_wgslsmith_f_op_f32(1608f * -1288f), -410f), vec4<i32>(global0.x, 38864i, global0.x, 63896i) | vec4<i32>(34422i, -18796i, -2147483647i, 1996i), 12072u, Struct_2(u_input.a.x, Struct_1(vec4<f32>(-531f, -358f, -1801f, 348f), vec4<i32>(-2147483647i, global0.x, 1i, 1i)), _wgslsmith_div_f32(303f, 715f), any(vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-317f, -1088f, 473f, 390f), vec4<i32>(-3984i, global0.x, 12255i, global0.x))))), func_4(Struct_4(31626i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, 784f)), vec4<i32>(_wgslsmith_clamp_i32(73136i, u_input.c.x, -20546i), -11091i, func_3(), -30485i), reverseBits(1u), Struct_2(1u, Struct_1(vec4<f32>(-1151f, 2360f, -1071f, 1248f), vec4<i32>(8954i, 0i, global0.x, global0.x)), _wgslsmith_f_op_f32(-1584f * 1009f), true, Struct_1(vec4<f32>(1000f, -1000f, 859f, -849f), vec4<i32>(32340i, -13530i, global0.x, -6930i)))), vec3<bool>(false, false, all(vec3<bool>(false, true, true)) | true), Struct_4(~func_3(), vec2<f32>(-1219f, _wgslsmith_f_op_f32(max(-925f, -1219f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 6970i, 2147483647i, 1i), vec4<i32>(global0.x, 2147483647i, -63685i, 0i) | vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.c.x)), 4294967295u, Struct_2(firstLeadingBit(25543u), Struct_1(vec4<f32>(1382f, -1492f, -170f, -550f), vec4<i32>(0i, u_input.c.x, global0.x, -68850i)), 1f, false, Struct_1(vec4<f32>(-2210f, -467f, 2030f, 225f), vec4<i32>(global0.x, -19118i, -1156i, 2147483647i))))));
    global0 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_add_i32(countOneBits(global0.x), 0i), -61213i, select(~(-2436i), -56291i, any(vec2<bool>(true, true))) << (func_2(Struct_4(0i, vec2<f32>(-453f, 1174f), vec4<i32>(2147483647i, -9823i, 0i, 0i), u_input.a.x, Struct_2(u_input.b, Struct_1(vec4<f32>(109f, 277f, 1527f, -1000f), vec4<i32>(-1i, -1i, -1i, 0i)), 439f, true, Struct_1(vec4<f32>(640f, -302f, 768f, -519f), vec4<i32>(1i, -22665i, -2147483647i, -36717i)))), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), Struct_1(vec4<f32>(-2196f, -235f, 799f, 534f), vec4<i32>(global0.x, u_input.c.x, u_input.c.x, -2147483647i))) % 32u)), -1i | -func_4(Struct_4(global0.x, vec2<f32>(359f, -253f), vec4<i32>(global0.x, -28163i, 30680i, 10979i), 0u, Struct_2(28812u, Struct_1(vec4<f32>(-1802f, -202f, 1000f, -653f), vec4<i32>(u_input.c.x, u_input.c.x, global0.x, u_input.c.x)), 1770f, false, Struct_1(vec4<f32>(445f, -351f, -1124f, 165f), vec4<i32>(17471i, u_input.c.x, global0.x, -1i)))), vec3<bool>(true, true, true), Struct_4(u_input.c.x, vec2<f32>(187f, -374f), vec4<i32>(2147483647i, global0.x, u_input.c.x, 18601i), u_input.a.x, Struct_2(3022u, Struct_1(vec4<f32>(386f, 1064f, -281f, -862f), vec4<i32>(u_input.c.x, global0.x, global0.x, global0.x)), -431f, true, Struct_1(vec4<f32>(1000f, -919f, 321f, -928f), vec4<i32>(13294i, u_input.c.x, u_input.c.x, 61523i))))), _wgslsmith_mod_i32(reverseBits(global0.x), -u_input.c.x), -func_4(Struct_4(global0.x, vec2<f32>(1000f, 111f), vec4<i32>(u_input.c.x, global0.x, u_input.c.x, 66760i), u_input.a.x, Struct_2(u_input.d.x, Struct_1(vec4<f32>(1051f, 421f, -1000f, 426f), vec4<i32>(u_input.c.x, u_input.c.x, -8507i, u_input.c.x)), 1026f, true, Struct_1(vec4<f32>(904f, -422f, -1707f, -152f), vec4<i32>(global0.x, -5961i, 1i, -1i)))), vec3<bool>(true, true, true), Struct_4(u_input.c.x, vec2<f32>(1021f, 1677f), vec4<i32>(global0.x, global0.x, global0.x, 36102i), 0u, Struct_2(1u, Struct_1(vec4<f32>(138f, -1947f, 1277f, -436f), vec4<i32>(-2147483647i, 1i, -29057i, 0i)), -906f, true, Struct_1(vec4<f32>(-1136f, -334f, 1270f, -500f), vec4<i32>(0i, u_input.c.x, global0.x, 0i))))) ^ _wgslsmith_div_i32(28013i, -_wgslsmith_dot_vec2_i32(global0.zz, vec2<i32>(10855i, u_input.c.x))));
    global1 = _wgslsmith_mod_i32(-2147483647i, u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(947f, -602f, 358f, -742f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, 1000f, -1452f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(-352f + -751f), -606f, _wgslsmith_f_op_f32(min(124f, 765f)), -2215f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1514f, 703f, 572f), vec4<f32>(1360f, 331f, -1016f, -183f), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, 622f, -211f, 321f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, 397f, -1000f, 474f)), vec4<bool>(true, true, false, false))))), reverseBits(vec4<i32>(-1i, global0.x, u_input.c.x, -1i) ^ -countOneBits(vec4<i32>(25974i, global0.x, u_input.c.x, 0i))));
    var var_2 = vec4<u32>(u_input.d.x, ~1u, u_input.d.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(var_1.b.yyz, var_1.b.yzw), vec3<i32>(~(-_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 6105i)), -_wgslsmith_mod_i32(max(0i, -2147483647i), u_input.c.x), 1i));
}

