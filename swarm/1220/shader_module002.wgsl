struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(409f, -1008f, 703f, 1012f), true, 1u), Struct_1(vec4<f32>(-234f, 1623f, -1208f, 1000f), false, 0u), Struct_1(vec4<f32>(121f, 491f, -1000f, -960f), false, 21585u), Struct_1(vec4<f32>(-547f, 893f, -924f, -1903f), false, 16716u), Struct_1(vec4<f32>(2062f, 1017f, 390f, 1733f), false, 1u), Struct_1(vec4<f32>(1687f, -1793f, 2082f, 1059f), false, 4294967295u), Struct_1(vec4<f32>(-447f, 1068f, -833f, 221f), false, 1u), Struct_1(vec4<f32>(415f, -475f, -482f, 1455f), true, 70711u), Struct_1(vec4<f32>(-256f, -453f, 672f, -1910f), true, 36929u), Struct_1(vec4<f32>(-1348f, -894f, 161f, 781f), false, 4499u), Struct_1(vec4<f32>(2186f, -2594f, -238f, -288f), false, 0u), Struct_1(vec4<f32>(1207f, -833f, 1200f, -1509f), false, 0u), Struct_1(vec4<f32>(-116f, -517f, -1015f, 369f), false, 105835u), Struct_1(vec4<f32>(713f, -861f, 348f, -1978f), true, 106479u), Struct_1(vec4<f32>(1000f, 1372f, 870f, 1741f), true, 41185u), Struct_1(vec4<f32>(583f, -1244f, 1000f, -1000f), true, 1u), Struct_1(vec4<f32>(-2475f, -1007f, -1000f, 1204f), true, 0u), Struct_1(vec4<f32>(1110f, 491f, -681f, 593f), true, 1u), Struct_1(vec4<f32>(-342f, -708f, 1378f, 3963f), false, 70588u), Struct_1(vec4<f32>(427f, 473f, 780f, 1180f), true, 1u), Struct_1(vec4<f32>(1272f, -1313f, 823f, 705f), false, 4294967295u), Struct_1(vec4<f32>(-204f, 744f, 142f, -570f), false, 4294967295u), Struct_1(vec4<f32>(-1517f, -261f, -547f, 1000f), false, 21559u), Struct_1(vec4<f32>(346f, 456f, -1096f, -749f), true, 4294967295u), Struct_1(vec4<f32>(-918f, 290f, 1152f, -1792f), true, 3077u), Struct_1(vec4<f32>(773f, -486f, 160f, -1575f), true, 0u), Struct_1(vec4<f32>(1665f, -794f, -244f, -877f), false, 3411u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.c.x, arg_1.a.x))), 1535f), _wgslsmith_f_op_f32(max(arg_0.c.x, arg_2.c.x))));
    let var_1 = arg_0;
    let var_2 = Struct_1(arg_3.c, false, ~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_3.a, arg_3.a), reverseBits(arg_0.d), _wgslsmith_dot_vec3_u32(u_input.b.ywz, u_input.b.wwz)) << ((~arg_2.a | arg_2.a) % 32u)));
    let var_3 = abs(countOneBits(vec3<u32>(26132u, abs(53498u), _wgslsmith_div_u32(abs(35604u), _wgslsmith_dot_vec2_u32(vec2<u32>(11472u, arg_3.d), vec2<u32>(0u, var_1.d))))));
    return var_2.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-271f, 2302f, 1000f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(527f, -179f, -1134f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, 663f, 972f)))), true))));
    let var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(1101f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(1u, vec4<i32>(u_input.c, -70782i, 644i, u_input.c), vec4<f32>(var_0.x, var_0.x, var_0.x, 789f), u_input.d, true), global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)], Struct_2(0u, u_input.a, vec4<f32>(1000f, var_0.x, 1090f, var_0.x), u_input.d, false), Struct_2(65186u, vec4<i32>(1i, u_input.c, -1i, u_input.c), vec4<f32>(-1154f, 1000f, 1521f, -1001f), 4294967295u, false))))));
    var var_2 = select(vec4<bool>(true, -1i != u_input.a.x, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(any(vec2<bool>(true, true)), false, false) || all(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(true, true, true)), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), 4294967295u < u_input.d), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), false), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), !any(vec4<bool>(false, true, false, true))), false);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(12031u, ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(u_input.d, 16783u, u_input.d)), 1u)), 27u)];
    let var_4 = max(_wgslsmith_mod_vec3_i32(u_input.a.xxx, vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, max(vec4<i32>(30423i, u_input.c, u_input.a.x, u_input.a.x), u_input.a)), ~u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(32400i, 1i, -2147483647i), vec3<i32>(u_input.c, -2147483647i, 27313i)), abs(vec3<i32>(-12361i, u_input.c, 2147483647i)) | abs(vec3<i32>(-18211i, 51606i, -1i))), (vec3<i32>(-17851i, 76125i, u_input.c) & u_input.a.yxx) | -(~vec3<i32>(44305i, -2147483647i, u_input.c))));
    return global0[_wgslsmith_index_u32(countOneBits(1u), 27u)];
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = ~arg_1;
    let var_1 = select(!(!vec2<bool>(func_2().b, arg_3 || false)), vec2<bool>(arg_3, false), select(select(vec2<bool>(true, !arg_3), select(vec2<bool>(true, arg_3), vec2<bool>(true, true), arg_2.b), all(vec2<bool>(arg_3, arg_2.b))), select(vec2<bool>(all(vec3<bool>(arg_2.b, arg_2.b, true)), false), select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), arg_2.b), !vec2<bool>(arg_3, arg_3), all(vec2<bool>(true, arg_2.b))), vec2<bool>(arg_3, all(vec4<bool>(arg_3, arg_2.b, false, false)))), vec2<bool>(true, !(arg_2.b || true))));
    let var_2 = i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(5585i, 2147483647i, arg_0, -36997i), u_input.a), _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.c, u_input.c, 0i, u_input.a.x), vec4<i32>(u_input.c, arg_0, -2147483647i, u_input.c)), -u_input.a));
    var var_3 = countOneBits(((vec2<i32>(arg_0, -2147483647i) ^ u_input.a.yz) | vec2<i32>(u_input.c, arg_0)) & reverseBits(reverseBits(vec2<i32>(arg_0, var_2))));
    var_3 = -abs(select(-vec2<i32>(-1024i, u_input.a.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(var_2, -6200i)), -vec2<i32>(-2147483647i, u_input.c)), !var_1));
    return Struct_2(~1u, u_input.a, arg_2.a, u_input.b.x, !(!var_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = -vec4<i32>(select(~0i, min(max(-21579i, arg_0.b.x), 0i), true), 8173i, u_input.c, ~(min(2147483647i, 1i) >> (select(arg_0.a, arg_0.d, var_0.b) % 32u)));
    global0 = array<Struct_1, 27>();
    let var_2 = arg_0;
    var var_3 = func_4(-29959i, _wgslsmith_mult_u32(0u, 3186u), func_2(), true);
    return Struct_2(_wgslsmith_dot_vec2_u32(u_input.b.zw, ~_wgslsmith_clamp_vec2_u32(u_input.b.wx, u_input.b.yx, u_input.b.yw) << (vec2<u32>(arg_0.d, var_3.a) % vec2<u32>(32u))), var_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), var_0.b)))), var_0.c, false);
}

fn func_1() -> bool {
    global0 = array<Struct_1, 27>();
    let var_0 = select(!(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), true)), !vec4<bool>(true, true, true, ~u_input.c != u_input.a.x), true);
    let var_1 = func_5(func_4(29413i, u_input.d, func_2(), ~max(u_input.b.x, 1u) > u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1448f)), _wgslsmith_f_op_f32(func_3(Struct_2(8109u, u_input.a, vec4<f32>(1000f, -1434f, 1478f, -239f), 4294967295u, false), global0[_wgslsmith_index_u32(34798u, 27u)], Struct_2(u_input.b.x, u_input.a, vec4<f32>(2037f, -504f, 1931f, -1474f), 1u, var_0.x), Struct_2(4294967295u, vec4<i32>(u_input.c, -64672i, u_input.c, -26336i), vec4<f32>(-225f, 511f, 351f, 887f), u_input.d, false))), _wgslsmith_f_op_f32(f32(-1f) * -503f)))));
    let var_2 = Struct_1(vec4<f32>(-1000f, -275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1049f)) + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f - -1000f) - _wgslsmith_f_op_f32(abs(-941f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - 1000f))), var_1.d == abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.a, u_input.d, var_1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.a, var_1.d, var_1.d), vec4<u32>(u_input.d, var_1.d, var_1.d, 51373u)), var_1.d)), u_input.b.x);
    global0 = array<Struct_1, 27>();
    return ~1u < u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = 364f;
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = u_input.a.wyw;
    let var_2 = select(vec4<bool>(select(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), false, select(false, any(vec3<bool>(false, false, true)), true)), any(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, 3122u >= u_input.b.x, true)), !func_1(), 1834f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(ceil(-1000f))))), vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_f_op_f32(func_3(func_5(Struct_2(u_input.d, vec4<i32>(var_1.x, var_1.x, u_input.c, -2147483647i), vec4<f32>(-819f, var_0, 712f, -127f), 1u, false), vec3<f32>(-1535f, -191f, -341f)), func_2(), func_5(Struct_2(u_input.b.x, vec4<i32>(var_1.x, 0i, u_input.c, -11232i), vec4<f32>(var_0, var_0, var_0, var_0), u_input.d, false), vec3<f32>(var_0, 921f, -222f)), Struct_2(u_input.d, vec4<i32>(var_1.x, -1169i, var_1.x, 1i), vec4<f32>(var_0, 954f, var_0, var_0), u_input.b.x, false))) > _wgslsmith_f_op_f32(min(-860f, -756f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -756f)) >= var_0, true), true);
    let var_3 = var_1.x;
    global0 = array<Struct_1, 27>();
    var var_4 = -var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -var_4.x);
}

