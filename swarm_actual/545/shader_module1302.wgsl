struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1317f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-277f, -118f, false)), 1294f)))) + 596f), _wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(983f, 210f)))))));
    let var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-19283i, -1i)), vec2<i32>(1i, 1i))), reverseBits(vec2<i32>(1i, 1i))) | -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 32170i), vec3<i32>(-31443i, -1i, -12285i)), -1i), vec2<i32>(2147483647i, countOneBits(11268i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))));
    global0 = 1144f;
    return max(abs(2658u), 21372u);
}

fn func_4(arg_0: u32, arg_1: u32) -> u32 {
    global0 = -114f;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1518f * -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f + 1673f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-208f, -670f), _wgslsmith_f_op_f32(f32(-1f) * -2566f), true))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, 326f, 1428f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-627f, -728f, -766f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2023f, -345f, -1703f))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-663f - -306f), -278f, 911f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2158f, 385f, 1887f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, -679f, -373f) - vec3<f32>(-2617f, -1304f, 1567f)))))));
    let var_1 = Struct_5(Struct_4(!vec3<bool>(false, any(vec2<bool>(true, true)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(~27969i, 19103i), -vec2<i32>(-2147483647i, -10648i))));
    let var_2 = Struct_1(select(reverseBits(arg_1), countOneBits(60235u), var_1.a.a.x), !(!vec4<bool>(var_1.a.a.x, any(var_1.a.a), true, any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(floor(-2089f)));
    let var_3 = !(!any(vec2<bool>(true, true)));
    return _wgslsmith_div_u32(u_input.a.x, arg_0);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_0, arg_0, arg_0, arg_0)), abs(vec4<i32>(arg_0, 0i, arg_0, 57650i)), ~vec4<i32>(arg_0, -21257i, arg_0, -18384i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 0i, -2147483647i, arg_0), vec4<i32>(0i, arg_0, -527i, 0i)) >> (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))) & -vec4<i32>(-arg_0, arg_0, arg_0, 57219i));
    let var_1 = false;
    global0 = 296f;
    var var_2 = 43403u;
    var var_3 = arg_1.a;
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(737f, _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true)), arg_1.a))))), Struct_1(func_4((u_input.a.x & 4294967295u) << (u_input.a.x % 32u), func_3(true, arg_2, arg_2.zz)), vec4<bool>(true, arg_2.x, !(!var_1), select(var_1, true && arg_2.x, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(111f, -325f))))), countOneBits(vec2<u32>(u_input.a.x, 71883u) & ~u_input.a.zw) << (vec2<u32>(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(0u, 1u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(203f, _wgslsmith_f_op_f32(-arg_1.a), false)) + -866f))), _wgslsmith_f_op_f32(-1336f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1052f)) * _wgslsmith_f_op_f32(-283f * 933f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    global0 = arg_1.e;
    let var_0 = func_2(_wgslsmith_mod_i32(arg_2.b, ~(~_wgslsmith_clamp_i32(arg_2.b, arg_2.b, arg_2.b))), Struct_3(func_2(arg_2.b, Struct_3(arg_0), !arg_1.b.b.yyx).b.c), select(select(!arg_2.a, !select(vec3<bool>(true, false, arg_2.a.x), arg_1.b.b.xyz, false), any(arg_2.a)), select(select(!arg_1.b.b.xyw, select(vec3<bool>(arg_1.b.b.x, false, false), arg_2.a, arg_1.b.b.xwx), arg_2.a), select(arg_2.a, vec3<bool>(arg_2.a.x, true, false), !arg_1.b.b.wyw), select(vec3<bool>(arg_2.a.x, arg_1.b.b.x, false), vec3<bool>(arg_1.b.b.x, false, arg_1.b.b.x), true)), !(!func_2(27510i, Struct_3(191f), arg_2.a).b.b.wzz))).b;
    let var_1 = var_0;
    let var_2 = Struct_4(!vec3<bool>(all(!vec3<bool>(var_1.b.x, arg_1.b.b.x, false)), !(arg_1.b.b.x != true), !arg_2.a.x), arg_2.b);
    global0 = 1343f;
    return _wgslsmith_mult_u32(arg_1.b.a, _wgslsmith_sub_u32(47135u, ~arg_1.b.a));
}

fn func_1(arg_0: i32) -> Struct_5 {
    var var_0 = func_5(1000f, func_2(-select(arg_0, 20218i, true) << (u_input.a.x % 32u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-311f, 1376f)) + 462f)), vec3<bool>(true, true, true)), Struct_4(select(vec3<bool>(false, true, any(vec3<bool>(true, false, false))), func_2(arg_0, Struct_3(-136f), vec3<bool>(true, true, true)).b.b.wyy, vec3<bool>(false, false, all(vec3<bool>(false, false, true)))), arg_0));
    var var_1 = -_wgslsmith_sub_vec3_i32(~min(vec3<i32>(-2147483647i, arg_0, 24513i), select(vec3<i32>(0i, -23869i, 2147483647i), vec3<i32>(arg_0, -6137i, 8484i), true)), vec3<i32>(_wgslsmith_mult_i32(arg_0, -42260i), _wgslsmith_add_i32(firstTrailingBit(arg_0), 0i), abs(1i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(f32(-1f) * -706f))))), -227f, func_2(-1i, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -236f)), vec3<bool>(true, true, true)).b.b.x)));
    let var_3 = Struct_1(u_input.a.x, func_2(arg_0, Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -414f)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))).b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-271f, _wgslsmith_f_op_f32(1000f + -506f))), -1000f) * _wgslsmith_f_op_f32(round(696f))));
    let var_4 = ~u_input.a.x;
    return Struct_5(Struct_4(func_2(-2147483647i, Struct_3(-237f), vec3<bool>(true, false, true)).b.b.wxw, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1000f;
    var var_0 = func_1(~1i);
    var var_1 = Struct_5(var_0.a);
    let var_2 = abs(~(-436i));
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1470f)))))), select(~u_input.a.xxz, u_input.a.xzz, select(true, any(!vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, false)), var_1.a.a.x)));
}

