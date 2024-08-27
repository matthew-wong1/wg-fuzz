struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<f32>(322f, 1069f, 122f, 1901f), vec4<f32>(212f, 841f, -332f, 181f), vec2<bool>(true, false), Struct_1(59022u, vec3<u32>(134849u, 45433u, 47782u), false), false), Struct_2(vec4<f32>(-152f, -903f, -1323f, 881f), vec4<f32>(816f, 1990f, -1517f, 1892f), vec2<bool>(true, false), Struct_1(0u, vec3<u32>(9305u, 30115u, 54211u), true), false), Struct_2(vec4<f32>(-901f, 1181f, 895f, 1079f), vec4<f32>(1063f, 295f, -932f, 992f), vec2<bool>(true, false), Struct_1(16113u, vec3<u32>(41343u, 19835u, 62056u), false), true), Struct_2(vec4<f32>(926f, 795f, 1300f, -556f), vec4<f32>(-252f, -1403f, 548f, -553f), vec2<bool>(true, false), Struct_1(1u, vec3<u32>(77001u, 9125u, 19700u), false), true), Struct_2(vec4<f32>(594f, 1137f, -1564f, 538f), vec4<f32>(969f, 541f, 259f, -982f), vec2<bool>(false, false), Struct_1(12706u, vec3<u32>(49820u, 20005u, 22290u), true), false), Struct_2(vec4<f32>(1000f, 109f, 568f, 347f), vec4<f32>(-1273f, -1000f, 1483f, 1463f), vec2<bool>(false, false), Struct_1(13938u, vec3<u32>(82586u, 1u, 1u), true), true), Struct_2(vec4<f32>(257f, -374f, 1473f, -1589f), vec4<f32>(-550f, -263f, 1000f, 1000f), vec2<bool>(false, true), Struct_1(4294967295u, vec3<u32>(0u, 1u, 1u), true), false), Struct_2(vec4<f32>(214f, -320f, -2263f, 799f), vec4<f32>(894f, 538f, -369f, 395f), vec2<bool>(true, false), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), false), false), Struct_2(vec4<f32>(168f, 1058f, -1174f, -1004f), vec4<f32>(-1405f, -513f, -411f, -397f), vec2<bool>(false, true), Struct_1(0u, vec3<u32>(0u, 51557u, 1059u), true), true), Struct_2(vec4<f32>(-957f, 923f, 212f, -534f), vec4<f32>(-107f, -858f, -723f, 351f), vec2<bool>(true, true), Struct_1(6807u, vec3<u32>(24836u, 4294967295u, 1u), false), true), Struct_2(vec4<f32>(-296f, 1610f, 1644f, -462f), vec4<f32>(-440f, 256f, 288f, -450f), vec2<bool>(false, true), Struct_1(4294967295u, vec3<u32>(4294967295u, 95537u, 4294967295u), false), true), Struct_2(vec4<f32>(269f, -2026f, 1107f, 255f), vec4<f32>(-1335f, -179f, 2035f, 1048f), vec2<bool>(false, true), Struct_1(6914u, vec3<u32>(4294967295u, 79370u, 86987u), true), true), Struct_2(vec4<f32>(-1000f, 551f, 1000f, -443f), vec4<f32>(-2227f, -428f, -216f, -116f), vec2<bool>(true, false), Struct_1(0u, vec3<u32>(4294967295u, 69683u, 4294967295u), true), true), Struct_2(vec4<f32>(405f, -1000f, -1556f, 246f), vec4<f32>(1000f, -584f, -1210f, 324f), vec2<bool>(true, false), Struct_1(73064u, vec3<u32>(35910u, 36597u, 4294967295u), true), true), Struct_2(vec4<f32>(490f, -1144f, 702f, -587f), vec4<f32>(-787f, -538f, 491f, -659f), vec2<bool>(false, false), Struct_1(4142u, vec3<u32>(4294967295u, 16306u, 0u), true), false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2042f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f) + _wgslsmith_f_op_f32(-349f - 816f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -455f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-190f, -296f), _wgslsmith_f_op_f32(483f - 403f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, -175f) - vec2<f32>(3554f, 360f))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> vec3<bool> {
    global0 = array<Struct_2, 15>();
    let var_0 = !select(vec3<bool>(arg_0.b.e, true, all(!vec3<bool>(arg_0.b.e, false, false))), !vec3<bool>(true, !arg_0.b.e, true), vec3<bool>(select(false, arg_0.b.c.x, arg_0.b.d.c), arg_2 < -12993i, true));
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    var var_1 = arg_0.b.d;
    return !(!vec3<bool>(false, any(!var_0.xx), true));
}

fn func_2() -> i32 {
    var var_0 = u_input.a;
    var var_1 = u_input.a.x;
    let var_2 = -413f;
    let var_3 = Struct_3(select(func_4(Struct_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec4<bool>(false, false, true, true), false))), Struct_2(vec4<f32>(412f, var_2, 981f, -683f), vec4<f32>(var_2, var_2, -785f, var_2), vec2<bool>(false, true), Struct_1(1u, vec3<u32>(1u, 44024u, 4294967295u), false), true), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f + -341f)), 0i), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(any(func_4(Struct_4(vec2<f32>(var_2, var_2), global0[_wgslsmith_index_u32(1u, 15u)], 46259u), var_2, -1438i)), false, true)), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), func_4(Struct_4(vec2<f32>(1000f, -1464f), Struct_2(vec4<f32>(-763f, -262f, var_2, var_2), vec4<f32>(-1140f, 336f, var_2, 1259f), vec2<bool>(false, false), Struct_1(56197u, vec3<u32>(4294967295u, 0u, 43544u), false), false), 870u), 559f, -1i), all(vec3<bool>(true, false, true))), vec3<bool>(true, func_4(Struct_4(vec2<f32>(var_2, var_2), global0[_wgslsmith_index_u32(4490u, 15u)], 29865u), -474f, u_input.a.x).x, any(vec2<bool>(true, false))), -784f == _wgslsmith_div_f32(var_2, var_2)), vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), false));
    var var_4 = var_2;
    return _wgslsmith_dot_vec2_i32(-(~reverseBits(var_0.xz)), _wgslsmith_add_vec2_i32(var_0.ww, (-var_0.wz & (u_input.a.wx << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))) & _wgslsmith_clamp_vec2_i32(countOneBits(u_input.a.zy), var_0.zw, -var_0.wy)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_0 = func_2();
    var var_1 = func_4(Struct_4(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -694f)), global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_add_u32(abs(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(12654u, 4294967295u, 25542u), vec3<u32>(6911u, 0u, 1u))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec4<bool>(all(vec2<bool>(false, true)), true, false, false), !(var_0 != u_input.a.x)))).x, -(17601i | var_0));
    let var_2 = global0[_wgslsmith_index_u32(~(~1u), 15u)];
    return 1u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-2599i << ((arg_0 | arg_1) % 32u), -2147483647i), reverseBits(_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.xy), u_input.a.ww))) << (vec2<u32>(101343u, arg_3) % vec2<u32>(32u));
    global0 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec4<bool>(arg_1 > 66778u, true, !arg_2.c.x, func_4(Struct_4(arg_2.a.wx, arg_2, 1u), -1238f, -49458i).x), !(!arg_2.c.x)))));
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    return Struct_1(arg_0, arg_2.d.b, arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(1u), 80109u, global0[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x) & vec4<i32>(-17246i, u_input.a.x, 2147483647i, u_input.a.x), firstLeadingBit(vec4<i32>(-32765i, u_input.a.x, -40803i, -2147483647i))))), 15u)], abs(min(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(4294967295u, 0u, 16414u)), 2173u)));
    let var_1 = Struct_1(~(~_wgslsmith_div_u32(var_0.b.x, 0u) ^ (select(var_0.a, var_0.a, true) & abs(var_0.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(var_0.b.x) >> (0u % 32u), var_0.b.x, var_0.a), vec3<u32>(~24354u, var_0.b.x << (36165u % 32u), ~_wgslsmith_mult_u32(4294967295u, var_0.a))), !(!var_0.c) & func_5(21878u ^ var_0.b.x, var_0.b.x ^ var_0.a, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, var_0.b.x), 15u)], 4294967295u ^ (22982u & var_0.b.x)).c);
    let var_2 = var_1.b.xy;
    global0 = array<Struct_2, 15>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1574f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f - -485f))))));
    var var_4 = vec2<bool>(true, any(!(!(!vec3<bool>(var_3, var_3, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yzw, u_input.a, -20592i, 9404u, var_1.a);
}

