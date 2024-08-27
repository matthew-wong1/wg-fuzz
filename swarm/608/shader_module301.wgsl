struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: bool = false;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = ~u_input.b >> (~(~u_input.a.x) % 32u);
    var var_1 = Struct_2(true, Struct_1(vec3<i32>(arg_0.d.a.x, _wgslsmith_sub_i32(u_input.b, 2147483647i) | (-59340i >> (1u % 32u)), ~(-16454i << (1u % 32u))), ~reverseBits(u_input.a.x ^ 41167u), arg_0.d.c, arg_0.c.d), Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(~arg_0.b.a), _wgslsmith_mult_vec3_i32(firstLeadingBit(arg_0.d.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-32381i, u_input.b, 1i), vec3<i32>(arg_0.c.a.x, -25522i, u_input.b)))), countOneBits(arg_0.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.c.x, arg_0.d.c.x, 100f, arg_0.b.c.x)))), vec4<f32>(2050f, arg_0.d.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(335f, -1186f)), 576f), arg_0.d.d.x)), Struct_1(arg_0.b.a | countOneBits(firstTrailingBit(arg_0.d.a)), ~38752u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c.c, vec4<f32>(arg_0.d.c.x, -1136f, 1040f, -1557f), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c.x, arg_0.c.c.x, arg_0.b.c.x, -1380f))))), _wgslsmith_f_op_vec4_f32(-arg_0.b.c)));
    global0 = ~0i > countOneBits(~var_0);
    var_1 = arg_0;
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(arg_0.b.d.x - -299f);
}

fn func_2() -> i32 {
    global0 = true;
    let var_0 = Struct_1(vec3<i32>(-1i) * -countOneBits(-vec3<i32>(2147483647i, 0i, u_input.b)), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-506f, 1774f)), _wgslsmith_f_op_f32(-1256f * -1094f), _wgslsmith_f_op_f32(-114f * 255f), _wgslsmith_f_op_f32(f32(-1f) * -267f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -339f, 306f, 1000f))))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(false, Struct_1(vec3<i32>(0i, u_input.b, u_input.b), u_input.a.x, vec4<f32>(1449f, 1000f, 1208f, -788f), vec4<f32>(-1323f, -358f, -1000f, 707f)), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.a.x, vec4<f32>(-1065f, -470f, 1298f, -1000f), vec4<f32>(-281f, 2653f, -1235f, 1227f)), Struct_1(vec3<i32>(27850i, u_input.b, u_input.b), 0u, vec4<f32>(-1299f, -1310f, 369f, -2633f), vec4<f32>(-2019f, -634f, 1161f, -366f)))))), -1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f))));
    global0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1150f, var_0.d.x)))))));
    global0 = !(!any(vec4<bool>(false, true, false, false)) == any(vec3<bool>(true, true, true))) & true;
    return var_0.a.x;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = -vec2<i32>(-func_2(), 19457i);
    let var_1 = -var_0.x << (~(~_wgslsmith_div_u32(1u, arg_0.x) >> ((firstTrailingBit(85884u) | reverseBits(u_input.a.x)) % 32u)) % 32u);
    var var_2 = Struct_2(true, Struct_1(firstLeadingBit(-vec3<i32>(-53394i, var_0.x, 22722i) | vec3<i32>(var_1, var_0.x, 2147483647i)), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(472f + -1576f))), 383f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-206f + -554f))), _wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1140f, 1182f, 152f, 272f) + vec4<f32>(769f, -699f, -139f, -290f))), vec4<f32>(383f, _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(trunc(650f)), _wgslsmith_f_op_f32(f32(-1f) * -1168f)))), Struct_1(~vec3<i32>(abs(-27863i), ~1055i, var_0.x), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, 237f, 872f, 141f)) + vec4<f32>(-533f, _wgslsmith_f_op_f32(-918f * 342f), 225f, _wgslsmith_f_op_f32(abs(-709f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, -1913f, 1353f, 2183f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -928f, 1047f, 245f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1049f, 585f, -717f, -682f), vec4<f32>(-369f, 561f, 801f, 164f))))))), Struct_1(vec3<i32>(select(var_0.x, u_input.b, true), -1i, u_input.b), arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-370f, -1522f, _wgslsmith_f_op_f32(select(-1220f, 1000f, true)), 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 596f, 900f, 893f) - vec4<f32>(230f, -2557f, -804f, -819f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1253f, 913f, 376f, -772f), vec4<f32>(1929f, -1000f, 745f, 825f), false))))))));
    global0 = false;
    var var_3 = -vec4<i32>(~(-var_1) | -4321i, _wgslsmith_sub_i32(-var_0.x, firstTrailingBit(var_1)), var_0.x, u_input.b);
    return ~15303u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> bool {
    global0 = false;
    global0 = false;
    let var_0 = Struct_1(-vec3<i32>(u_input.b, -_wgslsmith_add_i32(1i, arg_1.x), ~0i), arg_2.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(1000f + 1333f))), arg_3.x, -776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f - arg_3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_0.d.x, -977f, -1852f) - arg_3))) + arg_0.d)));
    global0 = !(!(all(vec3<bool>(true, false, true)) | select(true, false, true)));
    global0 = all(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(~vec3<i32>(u_input.b, _wgslsmith_mult_i32(u_input.b, -1i), 0i), ~func_1(u_input.a.yxx ^ vec3<u32>(40012u, u_input.a.x, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -560f, -965f, -394f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, 733f, -190f), vec4<f32>(-1851f, -193f, 2076f, 582f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1598f, _wgslsmith_f_op_f32(1064f * -613f), -667f, _wgslsmith_f_op_f32(f32(-1f) * -2212f))))), firstLeadingBit(_wgslsmith_div_vec2_i32(max(vec2<i32>(-2147483647i, u_input.b), -vec2<i32>(-4671i, 0i)), countOneBits(-vec2<i32>(u_input.b, -8641i)))), _wgslsmith_sub_vec3_u32(u_input.a.yzx, abs(vec3<u32>(u_input.a.x & 45887u, 0u, countOneBits(u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1382f, -1057f, _wgslsmith_f_op_f32(func_3(Struct_2(true, Struct_1(vec3<i32>(8043i, u_input.b, 24089i), 47572u, vec4<f32>(1000f, 658f, -1676f, -1725f), vec4<f32>(-1000f, 1000f, 1612f, -388f)), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), 43308u, vec4<f32>(-607f, -895f, 964f, -2198f), vec4<f32>(339f, -1739f, 1239f, -1000f)), Struct_1(vec3<i32>(-10305i, u_input.b, 1i), 0u, vec4<f32>(1339f, 1097f, -214f, -1985f), vec4<f32>(907f, 660f, 336f, -986f))))), -475f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(3004f, 1653f, 839f, 216f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, -1204f, -851f, -2545f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(795f, -1323f, 171f, 219f), vec4<f32>(-1000f, 130f, -196f, -1000f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-533f, -310f, 1040f, -130f) - vec4<f32>(225f, -811f, 880f, 1763f)))))));
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(25874i, 2147483647i, -20063i)), max(vec3<i32>(-40622i, 0i, 5864i), vec3<i32>(u_input.b, 42235i, u_input.b))), countOneBits(vec3<i32>(8054i, min(10630i, 80203i), ~u_input.b)), vec3<i32>(-10642i, min(-u_input.b, ~(-1i)), 13221i)), u_input.a.x | u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-145f * -201f), _wgslsmith_f_op_f32(-541f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1006f, -296f) + 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-687f, -556f, false)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-537f, -796f), _wgslsmith_f_op_f32(389f * 1502f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1750f + 967f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, 366f, 122f, -1515f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, 634f, 565f, -300f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 1000f, -176f, 1000f))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, 1150f, 548f, -252f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(794f, 585f, 1138f, 696f) - vec4<f32>(-1352f, 376f, -629f, 247f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1485f, -2175f, 365f, 1359f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(838f, var_0.d.x));
}

