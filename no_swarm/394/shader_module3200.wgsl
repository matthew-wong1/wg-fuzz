struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 24867u, 17628u);

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(1000f, -1016f, -213f, 521f), vec4<f32>(583f, -172f, 299f, 1000f), vec4<f32>(1579f, 1033f, 538f, -1129f), vec4<f32>(736f, 2061f, 1000f, 1623f), vec4<f32>(-786f, 1204f, -313f, -477f), vec4<f32>(-430f, -1000f, 515f, 2495f), vec4<f32>(-482f, 1669f, -1395f, 108f), vec4<f32>(1335f, -1128f, 273f, -441f), vec4<f32>(-1000f, -259f, 1914f, 263f), vec4<f32>(-321f, 930f, -560f, 376f), vec4<f32>(-1159f, -118f, 1000f, -661f), vec4<f32>(-1477f, -272f, -426f, 1240f), vec4<f32>(-2325f, 426f, 785f, -1838f), vec4<f32>(875f, -333f, 1582f, -320f), vec4<f32>(1801f, -333f, 208f, -788f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<vec4<f32>, 15>();
    var var_0 = arg_2.a;
    let var_1 = vec4<i32>(~select(~_wgslsmith_mod_i32(-37862i, 69659i), arg_2.c, all(vec4<bool>(true, false, arg_1.a, arg_1.b))), -arg_1.c, -arg_2.c, u_input.a);
    global0 = _wgslsmith_sub_vec3_u32(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, global0.x, 62669u), vec3<u32>(4294967295u, global0.x, u_input.d.x), vec3<u32>(global0.x, 0u, 4294967295u)), firstLeadingBit(vec3<u32>(17774u, 0u, u_input.d.x)), arg_1.c != arg_1.c) << (~min(~vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(104305u, 4294967295u, u_input.d.x) >> (vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(countOneBits(~u_input.d.x), global0.x & max(0u, 31820u | u_input.d.x), 1u));
    var var_2 = select(!vec4<bool>(true, !arg_1.a, !(1u < u_input.d.x), arg_2.a), !vec4<bool>(true, (arg_1.c > u_input.b) && arg_2.a, any(vec4<bool>(true, arg_1.b, arg_2.d, arg_1.a)) & !arg_1.b, arg_1.d), !select(vec4<bool>(false, all(vec4<bool>(true, arg_1.a, true, false)), all(vec3<bool>(false, true, true)), true), select(select(vec4<bool>(false, arg_2.d, true, arg_2.d), vec4<bool>(arg_2.d, false, arg_1.b, true), false), select(vec4<bool>(true, arg_1.b, true, false), vec4<bool>(false, true, arg_1.d, arg_2.b), vec4<bool>(false, true, arg_1.a, true)), all(vec4<bool>(arg_1.b, false, false, false))), select(!vec4<bool>(arg_1.a, true, false, false), !vec4<bool>(true, arg_2.d, false, arg_1.b), select(vec4<bool>(false, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.a, arg_2.d, false, false), true))));
    return select(select(!vec2<bool>(arg_2.d && arg_2.b, false), vec2<bool>(all(!var_2.xww), arg_2.a), vec2<bool>(true, _wgslsmith_f_op_f32(sign(arg_0)) != 1f)), select(select(var_2.wx, select(select(vec2<bool>(arg_1.d, true), var_2.xz, vec2<bool>(true, true)), vec2<bool>(false, true), all(var_2.zy)), all(!vec2<bool>(arg_2.d, arg_2.a))), select(vec2<bool>(select(true, true, var_2.x), false), select(vec2<bool>(arg_1.d, arg_2.b), !vec2<bool>(false, arg_2.b), !arg_2.d), vec2<bool>(false, all(vec3<bool>(true, false, arg_1.d)))), var_2.wy), arg_2.d);
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    let var_0 = Struct_1((0u ^ ~global0.x) <= abs(arg_0.x), any(!func_3(_wgslsmith_f_op_f32(-172f - 914f), Struct_1(false, false, u_input.c, false), Struct_1(false, false, u_input.c, false))), ~25731i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-675f, _wgslsmith_f_op_f32(-1027f * -349f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(240f, -403f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -808f)))));
    global1 = array<vec4<f32>, 15>();
    var var_1 = Struct_1(var_0.b, all(!vec3<bool>(true, !var_0.d, any(vec3<bool>(true, var_0.a, var_0.a)))), 55509i, true);
    return !(!func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-849f, -603f, var_0.b)))), Struct_1(!var_0.d, true, max(-1i, var_1.c), true), var_0).x);
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    var var_0 = Struct_1(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(min(4294967295u, 16359u), countOneBits(1u), reverseBits(47732u)), ~(~vec3<u32>(global0.x, 4294967295u, u_input.d.x)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-341f, 1000f) * _wgslsmith_div_f32(-485f, -969f)) - -847f), Struct_1(true, func_2(vec3<u32>(25489u, 0u, 4294967295u)), u_input.b, false), Struct_1(true, true, firstTrailingBit(-1i), false)).x, 0i, func_3(-791f, Struct_1(all(vec2<bool>(false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), reverseBits(u_input.c), true), Struct_1(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), any(func_3(-402f, Struct_1(true, true, u_input.a, true), Struct_1(true, false, u_input.c, true))), u_input.a, true)).x);
    return Struct_1(false, _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 9320i), vec2<i32>(2147483647i, u_input.c)), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a, u_input.c)))) != -select(~u_input.a, -var_0.c, all(vec2<bool>(false, var_0.b))), _wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(-1i, u_input.c, -32381i))), _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 18909i), vec3<i32>(u_input.c, -18223i, 2147483647i)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, u_input.c, var_0.c), vec3<i32>(var_0.c, 1i, var_0.c), vec3<bool>(true, var_0.a, false)), ~vec3<i32>(-7972i, var_0.c, u_input.b)))), true);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-547f, -160f) + _wgslsmith_f_op_f32(f32(-1f) * -640f)) + _wgslsmith_f_op_f32(-1290f + _wgslsmith_f_op_f32(1925f + 1445f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1255f, 778f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(248f * 573f), -102f)), 1000f), -1000f), arg_0.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -156f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(561f * -334f), var_0.x)))));
    var var_2 = Struct_1(true, u_input.a > u_input.a, countOneBits(_wgslsmith_div_i32(14627i, u_input.a)), all(vec3<bool>(arg_0.a, arg_0.d, false)) | func_3(_wgslsmith_f_op_f32(max(589f, _wgslsmith_f_op_f32(-var_1.x))), func_1(), arg_0).x);
    var_2 = func_1();
    global0 = ~vec3<u32>(_wgslsmith_add_u32(global0.x, u_input.d.x), abs(u_input.d.x) >> (31999u % 32u), u_input.d.x >> (1u % 32u));
    return ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, ~31293u, 1u), reverseBits(vec3<u32>(global0.x, 27806u, global0.x) & vec3<u32>(40969u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, true, abs(-20864i | u_input.c), true);
    global1 = array<vec4<f32>, 15>();
    global0 = func_4(func_1()) ^ (vec3<u32>(39333u, _wgslsmith_mult_u32(23789u, 8119u) ^ u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, reverseBits(global0.x), u_input.d.x)) >> (vec3<u32>(1u, u_input.d.x, u_input.d.x << (4294967295u % 32u)) % vec3<u32>(32u)));
    global1 = array<vec4<f32>, 15>();
    let var_1 = Struct_1(!(!(func_1().d == false)), !var_0.d, 2147483647i, func_1().d);
    var var_2 = var_0;
    global0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, ~4294967295u, u_input.d.x), ~vec3<u32>(83883u, global0.x, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(-select(vec2<i32>(var_1.c, var_0.c), vec2<i32>(var_1.c, u_input.b), vec2<bool>(var_1.d, var_2.d)) >> (~vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.c, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2826i), vec2<i32>(2147483647i, 34936i))), var_1.c)), _wgslsmith_div_vec4_i32(~vec4<i32>(-var_0.c, var_1.c ^ u_input.c, 1i, 48917i), vec4<i32>(~1i, -_wgslsmith_clamp_i32(var_2.c, var_0.c, var_1.c), var_0.c & firstLeadingBit(u_input.c), abs(-34179i))), max(abs(vec4<i32>(var_2.c, _wgslsmith_mult_i32(var_0.c, u_input.c), func_1().c, var_2.c)), vec4<i32>(var_2.c << (~u_input.d.x % 32u), _wgslsmith_mult_i32(select(var_0.c, 16797i, var_0.a), _wgslsmith_clamp_i32(var_0.c, 34080i, 0i)), countOneBits(-25550i), var_1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, -771f, 136f) * vec3<f32>(529f, -104f, -270f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(972f, 131f, -1248f) - vec3<f32>(-107f, 726f, 623f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, 611f, -107f))))), firstTrailingBit(-19589i));
}

