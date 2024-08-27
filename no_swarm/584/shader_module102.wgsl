struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_1(abs(~(~vec2<u32>(u_input.c, 14374u))), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(firstLeadingBit(-2147483647i), -20335i)), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(0i, 2147483647i), -1i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(19769i, -2147483647i))))), countOneBits(1i));
    var var_1 = var_0.a;
    var_1 = vec2<u32>(1u, var_1.x | _wgslsmith_mult_u32(countOneBits(arg_0), 1u));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-555f, -786f, -691f, _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, -454f, 728f, 797f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1290f, -414f, -472f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2046f - -435f) - _wgslsmith_f_op_f32(414f * -1013f)), 1001f, -420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f * -1154f))))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(vec2<u32>(min(_wgslsmith_clamp_u32(u_input.d, u_input.d ^ 81246u, u_input.d), 0u), u_input.d), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 719i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstTrailingBit(u_input.b.wz))), u_input.b.ww), max(u_input.b.x, abs(_wgslsmith_div_i32(firstLeadingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1923f) >= arg_0;
    var var_2 = u_input.d;
    var var_3 = !(all(vec4<bool>(true, true, true, true)) & true);
    var_2 = ~(~(var_0.a.x | 40116u));
    return -(max(-_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, 42560i, u_input.b.x, -2147483647i)), _wgslsmith_add_i32(abs(2147483647i), -u_input.a)) << (_wgslsmith_clamp_u32(var_0.a.x, ~_wgslsmith_mod_u32(u_input.d, u_input.d), 4294967295u) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<u32> {
    global0 = arg_0.b.a.x;
    let var_0 = arg_0.c;
    global0 = select(4294967295u, _wgslsmith_sub_u32(max(u_input.c, u_input.d), 4783u), true);
    var var_1 = vec4<u32>(u_input.c, 1u, 1u, _wgslsmith_add_u32(91564u, 28201u));
    var var_2 = reverseBits(~var_1.x);
    return var_1.yww;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    global0 = arg_1;
    let var_0 = arg_1;
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(func_2(~1u)), Struct_1(vec2<u32>(~var_0, 49080u | var_0), _wgslsmith_div_vec2_i32(~vec2<i32>(-29076i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(50978i, u_input.a), arg_2.zz)), -(i32(-1i) * -5547i)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1855f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2005f + 877f) * -168f)), _wgslsmith_sub_i32(48500i ^ _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-10647i, u_input.b.x, arg_2.x, -23931i)), max(15757i, func_3(1171f))), Struct_1(~min(vec2<u32>(arg_1, u_input.d), vec2<u32>(4294967295u, arg_1)), arg_2.xy, reverseBits(-arg_2.x))), _wgslsmith_f_op_f32(-1313f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-488f + 924f) + _wgslsmith_f_op_vec4_f32(func_2(u_input.d)).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1424f)) - _wgslsmith_f_op_f32(round(1508f))))));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(1831f)), -810f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(399f * -879f), _wgslsmith_f_op_f32(trunc(-261f))) * 231f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(1u)).x, 635f, arg_1 == 16296u))))), Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, 1u) & var_1.yz), var_1.xx), vec2<i32>(_wgslsmith_mod_i32(-7901i, _wgslsmith_clamp_i32(0i, u_input.b.x, 1i)), 1i), select((i32(-1i) * -19517i) << (var_0 % 32u), _wgslsmith_add_i32(arg_2.x ^ 26794i, ~(-1i)), !arg_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f * -213f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1620f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-497f, -487f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 529f))))), vec2<bool>(false, true))), select(arg_2.x << (var_0 % 32u), _wgslsmith_div_i32(-arg_2.x, ~u_input.a | (u_input.a & 1i)), false), Struct_1(~vec2<u32>(~arg_1, 1u), vec2<i32>(arg_2.x, arg_2.x), 0i));
    let var_3 = ~26531i;
    return var_2.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(19201u, _wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_mult_u32(arg_1.e.a.x, 0u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.e.a.x, 5779u, 39367u), reverseBits(111268u))), 1u);
    let var_0 = firstLeadingBit(vec2<u32>(7851u, arg_1.e.a.x));
    global0 = ~var_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(u_input.c));
    global0 = _wgslsmith_add_u32(4294967295u << (0u % 32u), arg_1.e.a.x);
    return func_1(true, var_0.x, _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -28374i, -10382i), vec3<i32>(59494i, arg_1.d, -1i)), _wgslsmith_div_vec3_i32(-min(vec3<i32>(arg_1.b.b.x, -1i, 26286i), u_input.b.wxw), u_input.b.yzz)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    let var_0 = vec3<bool>(!((u_input.b.x != -1i) || select(true, true, true)) || true, true, arg_0);
    global0 = 5138u;
    global0 = reverseBits(u_input.d);
    var var_1 = arg_2.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1746f, -1134f))) * 1103f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(arg_2.a.x)).x, _wgslsmith_f_op_f32(540f * 1000f), select(arg_0, var_0.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f + _wgslsmith_f_op_f32(396f + -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2052f))))));
    return StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, -1669f, -2007f, var_2.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))) + vec4<f32>(var_2.x, -114f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(588f, 1334f, var_2.x, var_2.x) - vec4<f32>(var_2.x, var_2.x, -148f, var_2.x)))), ~min(~vec2<u32>(u_input.c, 24941u) | abs(vec2<u32>(1u, 0u)), ~arg_1.a), arg_2.a.x, ~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, arg_3), ~vec3<u32>(u_input.d, 0u, u_input.c)) | min(func_4(Struct_2(vec4<f32>(751f, var_2.x, -153f, 403f), Struct_1(vec2<u32>(arg_3, 4294967295u), vec2<i32>(arg_1.b.x, arg_2.b.x), 6514i), vec2<f32>(var_2.x, var_2.x), 0i, arg_1), -290f), countOneBits(vec3<u32>(arg_2.a.x, u_input.c, 12890u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(vec2<bool>(true, false)), false, (_wgslsmith_sub_u32(u_input.d, u_input.d) >= u_input.d) | true);
    var_0 = !vec3<bool>(!var_0.x, true, true);
    global0 = abs(min(9836u, u_input.d)) ^ 0u;
    let x = u_input.a;
    s_output = func_6(true, func_5(select(select(var_0.zy, !var_0.xx, !vec2<bool>(var_0.x, false)), vec2<bool>(false, !var_0.x), var_0.zx), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, -698f, -382f, -500f))), func_1(var_0.x, ~1u, u_input.b.wxw << (vec3<u32>(0u, 22304u, u_input.c) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(floor(950f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a, Struct_1(vec2<u32>(u_input.d, u_input.c), vec2<i32>(-35357i, u_input.b.x), func_3(-754f))), var_0.x), func_5(var_0.yx, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, -186f, -1025f, 417f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1240f, -306f, -1089f, -502f))), func_5(var_0.yz, Struct_2(vec4<f32>(1147f, -277f, 1000f, -751f), Struct_1(vec2<u32>(u_input.c, u_input.c), u_input.b.xy, u_input.b.x), vec2<f32>(-335f, -1136f), -21573i, Struct_1(vec2<u32>(0u, 1u), vec2<i32>(u_input.a, 0i), u_input.b.x)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1122f, -397f)), u_input.a, func_1(false, ~4294967295u, vec3<i32>(u_input.b.x, 31507i, -49597i))), any(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, true)))), 4294967295u);
}

