struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(abs(min(abs(arg_0.a), select(arg_0.a, u_input.a, vec4<bool>(false, false, true, false)))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 0u, _wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x), _wgslsmith_mod_u32(u_input.d, arg_0.a.x)), ~u_input.a)), arg_0.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c.x, -1918f), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(ceil(arg_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1215f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-205f, 131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) + -1009f)), -1302f));
    var_0 = firstTrailingBit(reverseBits(~(~vec4<u32>(arg_0.a.x, var_1.a.x, 60927u, var_0.x))) ^ u_input.a);
    var_0 = reverseBits(~_wgslsmith_add_vec4_u32(arg_0.a, u_input.a));
    var var_2 = arg_0;
    return _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.a.x, 23926u), var_0.x)), u_input.b.x, countOneBits(_wgslsmith_mult_u32(var_1.a.x, 58147u) ^ _wgslsmith_sub_u32(1u, 1u)), ~_wgslsmith_mult_u32(15445u & var_2.a.x, var_0.x)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_1(1000f, _wgslsmith_add_u32(45879u, u_input.d ^ ~u_input.a.x) << (~u_input.b.x % 32u), 1i);
    var var_1 = Struct_2(func_3(Struct_2(u_input.a, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yy, vec2<i32>(var_0.c, -63187i), u_input.c.yy), vec2<i32>(-16014i, -24770i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1449f, -1444f, 352f, 1895f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-715f, var_0.a, 1313f, 139f), vec4<f32>(var_0.a, var_0.a, 1447f, var_0.a)))))), min(u_input.c.xx, u_input.c.yx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, -832f, var_0.a), vec4<f32>(var_0.a, var_0.a, var_0.a, 617f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -353f, var_0.a, -1480f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1805f, var_0.a, var_0.a, 1000f) - vec4<f32>(var_0.a, var_0.a, var_0.a, -898f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(228f, 1000f, 1123f, -1095f) - vec4<f32>(-108f, -956f, var_0.a, -972f))))))));
    let var_2 = firstTrailingBit(0u) & (firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.b, 4294967295u), ~var_1.a.wzw)) ^ _wgslsmith_dot_vec4_u32(var_1.a, var_1.a));
    let var_3 = ~vec2<u32>(4294967295u, 4294967295u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), min(1u, ~min(var_0.b, 36678u)) & var_0.b, -1i);
    return max(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.x, -20066i, u_input.c.x, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.c, u_input.c.x, var_4.c, u_input.c.x), vec4<i32>(-4968i, 22285i, u_input.c.x, 13427i)), vec4<i32>(var_1.b.x, 36248i, 0i, var_0.c) ^ vec4<i32>(var_1.b.x, 2147483647i, -12945i, var_4.c)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, var_4.c, -2147483647i, var_4.c), vec4<i32>(1i, 2147483647i, var_4.c, u_input.c.x)))), abs(firstLeadingBit(~(~vec4<i32>(u_input.c.x, -2845i, 0i, -28870i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(firstTrailingBit(u_input.a), -arg_0.wy >> (arg_2 % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(379f, _wgslsmith_f_op_f32(1124f + 424f))), _wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(floor(544f))), arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f * -885f)), -121f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1488f + 1028f)), _wgslsmith_f_op_f32(round(-723f))))));
    var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yxw << (vec3<u32>(19963u, 0u, 1u) % vec3<u32>(32u)), select(u_input.a.wwy, var_0.a.zzy, vec3<bool>(true, arg_3, arg_3))) & arg_2.x, abs(var_0.a.x), func_3(Struct_2(var_0.a, _wgslsmith_sub_vec2_i32(var_0.b, vec2<i32>(-41634i, arg_1)), var_0.c)).x, ~(~_wgslsmith_sub_u32(1u, var_0.a.x))), var_0.b, var_0.c);
    var var_1 = Struct_1(_wgslsmith_div_f32(-1865f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))))), max(arg_2.x ^ 1u, _wgslsmith_dot_vec3_u32(u_input.a.xzx, ~(~var_0.a.zzz))), var_0.b.x);
    let var_2 = vec3<i32>(-5701i, ~var_1.c, -u_input.c.x);
    var_0 = Struct_2(~(~var_0.a), select(-(var_0.b >> (abs(vec2<u32>(u_input.a.x, 52158u)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, 10971i), vec2<i32>(var_0.b.x, -45682i)), !select(select(vec2<bool>(arg_3, false), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3)), !vec2<bool>(true, arg_3), vec2<bool>(arg_3, false))), _wgslsmith_f_op_vec4_f32(-var_0.c));
    return Struct_2(_wgslsmith_mod_vec4_u32(u_input.a, ~(~(~vec4<u32>(var_0.a.x, 41091u, var_0.a.x, u_input.b.x)))), arg_0.yx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-677f, var_1.a, 1025f, 887f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    var var_0 = arg_0.c;
    let var_1 = func_4(firstTrailingBit(func_2(vec3<bool>(true, true, false))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, arg_0.a.x ^ 35140u, _wgslsmith_div_u32(u_input.b.x, 85684u), firstTrailingBit(arg_0.a.x)), min(~vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, arg_0.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 26777u, 1u), vec4<u32>(u_input.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))) % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.c.x, arg_0.b.x), u_input.b << (vec2<u32>(~arg_0.a.x, u_input.d) % vec2<u32>(32u)), true);
    var var_2 = abs(func_4(select(vec4<i32>(u_input.c.x, -u_input.c.x, 0i, 1i), ~(-vec4<i32>(-5884i, 1303i, -17599i, u_input.c.x)), vec4<bool>(false, false, any(vec4<bool>(true, false, true, true)), true)), var_1.b.x, reverseBits(arg_0.a.wx), any(vec3<bool>(true, true, true))).a);
    var var_3 = select(vec4<bool>(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), true, true), vec4<bool>(!(any(vec2<bool>(true, true)) || true), true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), true)), false), true);
    let var_4 = var_0.ywy;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -12832i)), -(vec4<i32>(-5536i, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<i32>(42279i, 0i, u_input.c.x, u_input.c.x))) & vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(min(2147483647i, 36957i), u_input.c.x), u_input.c.x, -2147483647i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1440f, 1821f) * vec2<f32>(-1000f, 546f))), vec2<f32>(_wgslsmith_f_op_f32(1000f * -1215f), _wgslsmith_f_op_f32(f32(-1f) * -1504f)), select(true, true, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2215f, -873f), vec2<f32>(461f, -679f))))))), -(~((u_input.c.x & u_input.c.x) >> (func_1(Struct_2(vec4<u32>(u_input.a.x, u_input.d, u_input.b.x, 0u), vec2<i32>(15924i, u_input.c.x), vec4<f32>(-2342f, -523f, -574f, -661f)), vec3<f32>(-1164f, -943f, -690f)) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1643f + 1f))));
}

