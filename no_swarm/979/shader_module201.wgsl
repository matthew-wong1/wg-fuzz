struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<f32> {
    return arg_2.b.a.zwx;
}

fn func_3() -> i32 {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 668f, -134f, -1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1608f, 229f, -718f, -1610f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-165f, 751f, 1000f, -591f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 215f) - vec4<f32>(117f, -578f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, -908f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1223f, var_0.x) - vec4<f32>(448f, var_0.x, -519f, -1961f)))))), var_0.x, 948f);
    let var_2 = vec2<u32>(~(~(~21938u)), u_input.a.x);
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(var_2.x, Struct_3(144f, Struct_1(var_1.a, -292f, var_0.x), true), Struct_3(-627f, Struct_1(vec4<f32>(-673f, var_0.x, -238f, var_1.a.x), -528f, -889f), false), vec2<u32>(u_input.a.x, 42671u) ^ var_2)).x))), _wgslsmith_f_op_f32(var_0.x + 178f));
    return -1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec2<bool>(arg_2.c, !(!any(vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c)) || false));
    global0 = ~u_input.a.x;
    var var_1 = arg_1.d.a.wyx;
    var var_2 = arg_1.b.x;
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.b.x, arg_1.b.x, -2147483647i, arg_1.b.x), abs(vec4<i32>(20641i, arg_1.b.x, -2147483647i, arg_1.b.x))), ~max(~vec4<i32>(arg_1.b.x, 0i, arg_1.b.x, arg_1.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -47724i, arg_1.b.x, 22927i), vec4<i32>(arg_1.b.x, -465i, arg_1.b.x, arg_1.b.x), vec4<i32>(arg_1.b.x, arg_1.b.x, 1i, arg_1.b.x))), vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.b.x, arg_1.b.x), 1i), ~(i32(-1i) * -2147483647i), func_3())), countOneBits(vec4<i32>(i32(-1i) * -32578i, -2147483647i, arg_1.b.x | arg_1.b.x, abs(arg_1.b.x)) ^ -firstLeadingBit(vec4<i32>(-2147483647i, -24335i, arg_1.b.x, 0i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -arg_1.b, arg_1.b), countOneBits(_wgslsmith_add_i32(arg_1.b.x, arg_1.b.x) & -16915i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-34534i, arg_1.b.x, arg_1.b.x)), arg_1.b), arg_1.b.x));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec4<f32> {
    return vec4<f32>(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2196f, 1673f, arg_3.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.a.wwy))), func_2(arg_0.d.a.ywz, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, 209f, arg_3.a.x, 1302f)), _wgslsmith_sub_vec3_i32(arg_0.b, vec3<i32>(24183i, arg_3.b.x, arg_0.b.x)), u_input.a.x, Struct_1(arg_0.d.a, 527f, arg_3.a.x)), Struct_3(_wgslsmith_f_op_vec3_f32(func_1(4294967295u, Struct_3(-1006f, arg_0.d, arg_3.c.x), Struct_3(194f, Struct_1(vec4<f32>(343f, 143f, arg_0.d.b, arg_3.a.x), -420f, 126f), arg_3.c.x), arg_1)).x, arg_0.d, false)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-706f, arg_0.d.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, 743f, arg_0.d.a.x, -916f)), _wgslsmith_f_op_f32(max(arg_3.a.x, arg_0.a.x)), 450f), any(arg_3.c))).d.a.x, _wgslsmith_f_op_f32(1635f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.c - arg_3.a.x) + _wgslsmith_f_op_f32(-arg_3.a.x)) + _wgslsmith_f_op_f32(arg_0.d.c * _wgslsmith_f_op_f32(sign(244f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.x), arg_3.a.x))), _wgslsmith_f_op_f32(-903f * arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    global0 = ~u_input.a.x;
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(max(-15631i, 22343i), 70966i, countOneBits(1i)), -((vec3<i32>(-2147483647i, -2147483647i, -227i) >> (u_input.a.xyx % vec3<u32>(32u))) & vec3<i32>(-1i, 0i, 38139i))), (vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -20553i, -40213i, -43574i), vec4<i32>(38819i, -1942i, 2147483647i, -1i)), 17877i, -1i) | select(-vec3<i32>(52336i, -2147483647i, -2147483647i), -vec3<i32>(2147483647i, -1i, 59256i), var_0.x)) << (u_input.a.xyw % vec3<u32>(32u)));
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(_wgslsmith_f_op_vec3_f32(func_1(4294967295u, Struct_3(-942f, Struct_1(vec4<f32>(2640f, -1860f, -131f, -945f), -2048f, 390f), true), Struct_3(-819f, Struct_1(vec4<f32>(-1000f, -1254f, -384f, -297f), 1536f, -1303f), false), u_input.a.zw)), Struct_2(vec4<f32>(389f, 561f, 644f, -161f), var_1, 4294967295u, Struct_1(vec4<f32>(-2505f, -127f, -317f, 337f), 881f, -1357f)), Struct_3(-1000f, Struct_1(vec4<f32>(1861f, 2206f, -615f, 217f), 457f, -771f), false)), ~abs(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.zw, Struct_4(vec2<f32>(-848f, -1402f), _wgslsmith_mod_vec2_i32(var_1.xz, var_1.yy), var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 217f, -1472f, -1013f)) + vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1(30891u, Struct_3(-1000f, Struct_1(vec4<f32>(-671f, -484f, -289f, 415f), -1000f, -1405f), false), Struct_3(325f, Struct_1(vec4<f32>(-229f, 131f, 193f, -489f), 1456f, -224f), var_0.x), vec2<u32>(115512u, 20824u))).x, _wgslsmith_f_op_f32(-202f + 804f), -397f, -1685f))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-5854i, var_1.x, -1i), vec3<i32>(var_1.x, 2147483647i, var_1.x), var_1) >> (_wgslsmith_add_vec3_u32(select(u_input.a.yyw, u_input.a.wwy, var_0.x), ~u_input.a.xww) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(abs(27675i), var_1.x), func_3(), 9821i), vec3<i32>(_wgslsmith_mult_i32(var_1.x, -1i), 20861i, 31873i)), countOneBits(~59001u), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1219f, 1148f, -416f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, -724f, 427f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, -1444f, 679f) - vec3<f32>(-120f, -1209f, -1313f)))), func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(175f)), _wgslsmith_f_op_f32(step(659f, 731f)), _wgslsmith_div_f32(-498f, -1008f)), Struct_2(vec4<f32>(704f, -903f, 1062f, 385f), vec3<i32>(0i, var_1.x, 31185i), 4294967295u, Struct_1(vec4<f32>(-239f, 945f, 747f, 872f), -273f, 564f)), Struct_3(_wgslsmith_div_f32(609f, 283f), func_2(vec3<f32>(-144f, -2194f, -1838f), Struct_2(vec4<f32>(-2134f, -1458f, -720f, -1293f), var_1, 0u, Struct_1(vec4<f32>(-133f, -795f, -313f, 391f), -284f, -599f)), Struct_3(873f, Struct_1(vec4<f32>(-769f, -827f, 1000f, 922f), 1392f, -1146f), true)).d, all(vec2<bool>(var_0.x, var_0.x)))), Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, -979f, -642f)), Struct_2(vec4<f32>(2549f, -767f, -474f, -543f), vec3<i32>(var_1.x, 2147483647i, -14950i), 0u, Struct_1(vec4<f32>(-474f, 1134f, 1755f, 1103f), 206f, 511f)), Struct_3(854f, Struct_1(vec4<f32>(-1356f, -346f, -471f, 1368f), 608f, -285f), var_0.x)).d.c, func_2(vec3<f32>(793f, 1409f, -2243f), Struct_2(vec4<f32>(-289f, 689f, -1273f, 1002f), vec3<i32>(-1i, -28826i, -1i), 4294967295u, Struct_1(vec4<f32>(-822f, 712f, -413f, -1513f), 1000f, -1283f)), Struct_3(829f, Struct_1(vec4<f32>(-704f, 684f, -295f, 1680f), 857f, -444f), var_0.x)).d, var_0.x)).d);
    let var_3 = var_2.d;
    var var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(14576u, u_input.a.x), u_input.a.xw, ~u_input.a.wx);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), var_4.x & u_input.a.x, 56548u), ~(~vec3<u32>(74373u, u_input.a.x, 47519u)))), 0i, _wgslsmith_f_op_f32(f32(-1f) * -132f));
}

