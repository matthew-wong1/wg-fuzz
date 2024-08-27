struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1757f + arg_0.x), 1f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 388f, _wgslsmith_f_op_f32(f32(-1f) * -1092f))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -346f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) * arg_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(275f, var_0.x)) - 1154f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1145f - var_0.x) + var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, -497f)), _wgslsmith_f_op_f32(747f * var_0.x))), _wgslsmith_f_op_f32(ceil(arg_0.x)), 2120f))));
    var var_1 = abs(vec4<i32>(_wgslsmith_sub_i32(~(-u_input.b.x), 41387i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(countOneBits(u_input.b.x), _wgslsmith_sub_i32(u_input.c, u_input.c))), -u_input.b.x, u_input.c));
    var var_2 = Struct_1(!select(vec4<bool>(arg_1.x, u_input.e >= 4294967295u, false, true), !select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), true), ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 2070u, u_input.e, 0u), vec4<u32>(12081u, 69357u, u_input.d, 13875u)), u_input.e, u_input.e)));
    var_2 = Struct_1(!vec4<bool>(select(arg_1.x, arg_1.x & false, any(var_2.a.xwy)), all(var_2.a.yz), arg_1.x, true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(59158u, 7578u, u_input.d, 1u), abs(vec4<u32>(1u, u_input.e, 8919u, 33598u)), true), ~vec4<u32>(20169u, var_2.b, u_input.e, u_input.d)), vec4<u32>(~var_2.b, 123300u, u_input.d & 1u, 69492u >> (0u % 32u)) | ~vec4<u32>(var_2.b, var_2.b, var_2.b, 0u)));
    return all(!var_2.a.zxw);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(763f, -353f));
    var var_1 = vec2<bool>(true, var_0 != var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(2310f, 644f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1411f, var_0) * vec3<f32>(var_0, -430f, var_0)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -361f, var_0)) - vec3<f32>(var_0, -851f, -1308f))))), _wgslsmith_div_vec3_f32(vec3<f32>(440f, var_0, var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1784f, -1106f)) - vec3<f32>(-1000f, 307f, var_0)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1552f, 723f, -512f), vec3<f32>(var_0, 301f, var_0), vec3<bool>(var_1.x, var_1.x, var_1.x))))))), true & any(vec2<bool>(true & var_1.x, var_1.x))));
    var_1 = vec2<bool>(true, true);
    var_1 = !(!(!vec2<bool>(!var_1.x, func_3(vec4<f32>(2719f, var_0, var_2.x, var_0), vec2<bool>(var_1.x, true), var_1.x))));
    return Struct_1(vec4<bool>(false, (1f > var_2.x) && true, var_1.x, _wgslsmith_f_op_f32(ceil(var_0)) > -1000f), u_input.e);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = abs(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.b.x, ~arg_1.c, ~(-2147483647i)), vec3<i32>(~arg_1.c, ~u_input.a.x, -7479i)), u_input.a));
    let var_1 = var_0.x;
    let var_2 = arg_3.x;
    let var_3 = 19602u;
    let var_4 = Struct_1(func_2(4294967295u, u_input.a).a, ~firstLeadingBit(16965u));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = -(~(-_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-19100i, arg_0.c, arg_0.c)), -u_input.a)));
    var var_1 = func_4(vec2<u32>(arg_3, func_4(vec2<u32>(arg_2, arg_2) & (arg_0.b.zy | arg_0.b.xz), func_4(select(arg_1.b.xy, arg_0.b.yy, vec2<bool>(true, arg_1.d.a.x)), arg_0, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, -466f, -763f, -451f))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, -872f, 212f, 156f)) + vec4<f32>(210f, 322f, 344f, 2110f))).b.x), arg_0, (_wgslsmith_sub_u32(firstTrailingBit(arg_3), ~u_input.d) << (select(22489u, arg_3, false) % 32u)) == arg_0.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(556f, 1646f, -1000f, -944f), vec4<f32>(258f, 1974f, -862f, -481f))))))));
    let var_2 = u_input.a.zy;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 853f, false)), _wgslsmith_f_op_f32(step(-1467f, 2306f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f))));
    var_0 = min(vec3<i32>(firstLeadingBit(~(-20960i)), -1i, firstLeadingBit(0i)), _wgslsmith_mult_vec3_i32(-reverseBits(u_input.a), u_input.a));
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_mult_u32(min(arg_2, 41374u), ~u_input.e), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, arg_0.c, 34254i), -38672i), arg_3.xy), arg_3.x, ~(-2147483647i)));
    var_0 = Struct_1(vec4<bool>(arg_0.a, false, any(var_0.a.wy), !(any(var_0.a.zxy) & any(vec4<bool>(true, true, var_0.a.x, var_0.a.x)))), ~var_0.b);
    let var_1 = !vec3<bool>(arg_0.e.a.x, arg_1, !var_0.a.x);
    var_0 = func_5(Struct_2(func_4(arg_0.b.zy | vec2<u32>(arg_0.b.x, u_input.e), Struct_2(var_0.a.x, arg_0.b, 18320i, arg_0.e, arg_0.d), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -409f, 104f, 1283f))).a != !(!var_0.a.x), _wgslsmith_clamp_vec3_u32(arg_0.b ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, arg_0.e.b, 3435u), vec3<u32>(0u, 19777u, u_input.d)), _wgslsmith_mod_vec3_u32(arg_0.b, arg_0.b), arg_0.b), abs(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, arg_3.x, u_input.b.x), _wgslsmith_mod_i32(arg_0.c, arg_0.c))), arg_0.e, arg_0.d), func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(1u), 14580u), min(_wgslsmith_mult_vec2_u32(arg_0.b.xx, vec2<u32>(0u, 101047u)), countOneBits(arg_0.b.zz))), arg_0, arg_0.e.a.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -819f, _wgslsmith_f_op_f32(f32(-1f) * -887f), _wgslsmith_div_f32(1330f, 266f))))), 17812u, abs(13121u) >> (select(min(var_0.b, reverseBits(arg_2)), ~(~38479u), false) % 32u)).d;
    var var_2 = arg_0;
    return func_5(arg_0, func_5(arg_0, Struct_2(all(vec4<bool>(false, true, arg_1, true)), ~var_2.b, firstTrailingBit(33609i), arg_0.d, arg_0.e), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_0.b, arg_0.b), ~var_2.b), ~firstLeadingBit(1u)), u_input.d, max(~_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, var_0.b), _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(var_0.b, u_input.d, 73985u))), countOneBits(1u) ^ select(_wgslsmith_mult_u32(arg_2, var_2.e.b), ~4294967295u, var_2.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(func_4(vec2<u32>(u_input.d, u_input.d) ^ abs(vec2<u32>(60086u, u_input.d)), Struct_2(true, ~vec3<u32>(48253u, 1u, u_input.d), ~2147483647i, func_2(u_input.d, vec3<i32>(u_input.c, -1i, -1i)), func_2(115270u, vec3<i32>(1i, -2147483647i, 2147483647i))), any(vec4<bool>(false, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(step(-1757f, 346f)), -674f, -980f, _wgslsmith_f_op_f32(step(835f, 893f)))), Struct_2((u_input.e > u_input.d) && select(true, true, false), vec3<u32>(reverseBits(1u), reverseBits(u_input.e), ~u_input.d), firstTrailingBit(u_input.c), func_4(abs(vec2<u32>(u_input.e, u_input.d)), func_4(vec2<u32>(u_input.d, 0u), Struct_2(false, vec3<u32>(u_input.e, u_input.d, u_input.e), 2147483647i, Struct_1(vec4<bool>(false, true, false, true), u_input.d), Struct_1(vec4<bool>(false, false, false, true), u_input.d)), true, vec4<f32>(-142f, 314f, -1000f, -229f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1689f, -877f, 470f, -719f))).d, Struct_1(func_4(vec2<u32>(u_input.e, u_input.d), Struct_2(false, vec3<u32>(4294967295u, 1u, u_input.d), -7657i, Struct_1(vec4<bool>(true, true, true, true), u_input.e), Struct_1(vec4<bool>(false, false, false, true), u_input.d)), true, vec4<f32>(923f, -178f, 428f, 911f)).e.a, u_input.d)), firstLeadingBit(73242u), 1u), !(!all(func_5(Struct_2(true, vec3<u32>(1u, u_input.e, u_input.e), -20807i, Struct_1(vec4<bool>(true, false, false, true), u_input.d), Struct_1(vec4<bool>(false, false, true, true), u_input.e)), Struct_2(false, vec3<u32>(0u, u_input.d, u_input.d), u_input.c, Struct_1(vec4<bool>(false, false, true, false), u_input.e), Struct_1(vec4<bool>(true, false, true, false), 1u)), u_input.d, 1u).d.a.wyz)), ~firstTrailingBit((u_input.d | 19419u) ^ ~22823u), select(-_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.a), u_input.a), firstTrailingBit(u_input.a << (vec3<u32>(u_input.d, 68982u, u_input.d) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-85700i, 2147483647i, 2147483647i) << (vec3<u32>(u_input.e, u_input.d, u_input.e) % vec3<u32>(32u))), vec3<bool>(select(true, true, false), true, all(func_2(0u, vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x)).a))));
    var var_1 = Struct_2(!var_0.e.a.x, vec3<u32>(var_0.d.b, ~abs(countOneBits(0u)), ~func_5(Struct_2(true, vec3<u32>(u_input.e, u_input.e, var_0.e.b), u_input.b.x, Struct_1(var_0.e.a, 15149u), var_0.d), func_4(vec2<u32>(u_input.e, u_input.e), Struct_2(var_0.a, var_0.b, var_0.c, var_0.e, Struct_1(var_0.e.a, 60413u)), var_0.d.a.x, vec4<f32>(726f, 1000f, -1815f, -418f)), max(60618u, u_input.e), var_0.b.x).e.b), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -25124i), -17895i), var_0.e, var_0.d);
    var_1 = func_6(Struct_2(func_6(Struct_2(func_4(var_0.b.xx, Struct_2(var_0.d.a.x, var_0.b, u_input.a.x, var_0.e, Struct_1(vec4<bool>(true, var_1.a, true, true), var_1.d.b)), var_1.a, vec4<f32>(1575f, 125f, -236f, -275f)).e.a.x, var_1.b, var_0.c, var_1.e, Struct_1(var_1.e.a, 4294967295u)), var_1.d.a.x, ~u_input.d, u_input.a).a, _wgslsmith_div_vec3_u32(var_1.b, var_1.b) << ((vec3<u32>(var_1.b.x, 1u, 38900u) >> (vec3<u32>(26893u, 15645u, 6749u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(~func_4(var_1.b.zz, Struct_2(true, vec3<u32>(u_input.e, var_1.e.b, u_input.e), 65181i, Struct_1(vec4<bool>(true, false, var_0.e.a.x, false), 1u), Struct_1(vec4<bool>(true, true, false, var_0.d.a.x), 1u)), true, vec4<f32>(776f, 163f, -219f, -448f)).c), func_2(0u, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, var_1.c, 2147483647i), vec3<i32>(-5552i, 28524i, 0i))), var_0.e), true, u_input.d, reverseBits(u_input.a));
    var_1 = Struct_2(true, ~vec3<u32>((0u << (var_1.e.b % 32u)) << (_wgslsmith_div_u32(39221u, 44904u) % 32u), _wgslsmith_mult_u32(func_2(68037u, u_input.a).b, reverseBits(55190u)), _wgslsmith_mod_u32(0u, 1u) | var_0.e.b), ~select(var_1.c, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(var_0.c, var_1.c)), var_0.a), var_1.e, var_1.d);
    return Struct_1(!vec4<bool>(_wgslsmith_clamp_i32(-2147483647i, 10990i, u_input.a.x) >= 1i, all(!var_1.e.a.yzz), !var_1.a, true), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, u_input.d) << (vec3<u32>(1u, u_input.e, 21126u) % vec3<u32>(32u)), vec3<u32>(u_input.d, 4294967295u, 4294967295u)) > u_input.d, !(_wgslsmith_mod_i32(0i, u_input.b.x) > 1i)), ~(~u_input.d));
    var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_1(func_1().a, abs(_wgslsmith_clamp_u32(~(~u_input.e), min(~72518u, u_input.e), firstTrailingBit(firstLeadingBit(u_input.d)))));
    var_0 = Struct_1(func_5(func_5(Struct_2(!var_1.a.x, reverseBits(vec3<u32>(11600u, 0u, 0u)), -25242i >> (1u % 32u), func_4(vec2<u32>(1171u, 4294967295u), Struct_2(false, vec3<u32>(var_0.b, var_0.b, 4294967295u), u_input.c, Struct_1(var_0.a, u_input.d), Struct_1(vec4<bool>(var_0.a.x, false, true, false), 0u)), var_0.a.x, vec4<f32>(-1080f, 1000f, -790f, -1476f)).d, func_2(1u, u_input.a)), Struct_2(!var_1.a.x, ~vec3<u32>(var_0.b, var_1.b, var_0.b), -18192i, func_2(var_1.b, u_input.a), func_6(Struct_2(true, vec3<u32>(var_0.b, 4294967295u, 50779u), -53006i, Struct_1(vec4<bool>(var_1.a.x, true, var_1.a.x, false), u_input.d), Struct_1(vec4<bool>(false, true, var_1.a.x, false), var_1.b)), var_1.a.x, 29414u, vec3<i32>(10688i, u_input.b.x, u_input.c)).e), func_1().b, ~1u), func_6(func_5(Struct_2(true, vec3<u32>(var_1.b, var_1.b, var_0.b), u_input.a.x, Struct_1(vec4<bool>(false, true, true, var_0.a.x), 4294967295u), Struct_1(var_0.a, u_input.e)), func_6(Struct_2(false, vec3<u32>(var_0.b, 0u, 0u), u_input.a.x, Struct_1(var_1.a, 55606u), Struct_1(vec4<bool>(var_0.a.x, false, false, false), 83104u)), true, 92165u, vec3<i32>(u_input.c, u_input.c, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 2243u, 1u), vec3<u32>(u_input.e, u_input.e, 1u)), u_input.e), all(vec2<bool>(var_1.a.x, false)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(var_1.b, 57386u)), -(vec3<i32>(1i, u_input.c, 1i) & vec3<i32>(2147483647i, u_input.b.x, u_input.a.x))), firstLeadingBit(var_0.b), var_0.b).e.a, 19537u);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(994f, -514f, -318f)), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1947f, 1000f), vec3<f32>(219f, 1000f, 364f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(375f, -836f, 1000f), vec3<f32>(1000f, -579f, -480f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(444f + 273f), _wgslsmith_f_op_f32(f32(-1f) * -169f), var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(154f, var_2.x, var_2.x) - vec3<f32>(-1000f, var_2.x, var_2.x))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1258f, -491f, 628f)))), false))))));
    let var_3 = func_6(func_5(func_5(Struct_2(var_1.a.x, ~vec3<u32>(0u, var_1.b, 4294967295u), 0i, Struct_1(var_0.a, 0u), Struct_1(var_0.a, var_0.b)), Struct_2(var_1.a.x, min(vec3<u32>(u_input.d, 4294967295u, 13880u), vec3<u32>(u_input.d, 0u, 5154u)), u_input.b.x, Struct_1(vec4<bool>(var_0.a.x, false, false, false), 0u), Struct_1(var_0.a, 8562u)), u_input.e, ~func_4(vec2<u32>(18379u, 48979u), Struct_2(false, vec3<u32>(1u, 8835u, 1u), 1i, Struct_1(var_0.a, 68276u), Struct_1(vec4<bool>(var_0.a.x, false, var_0.a.x, true), 50566u)), false, vec4<f32>(123f, var_2.x, 272f, 1192f)).e.b), Struct_2(var_0.a.x, ~(~vec3<u32>(u_input.d, var_1.b, var_1.b)), u_input.b.x, Struct_1(var_0.a, var_0.b), func_5(Struct_2(true, vec3<u32>(39894u, 14382u, 120949u), u_input.b.x, Struct_1(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), var_1.b), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, true), var_0.b)), func_4(vec2<u32>(1u, 4294967295u), Struct_2(var_1.a.x, vec3<u32>(var_0.b, 1u, var_1.b), -1i, Struct_1(var_1.a, 4294967295u), Struct_1(var_0.a, u_input.e)), var_0.a.x, vec4<f32>(-1000f, -1031f, -132f, 592f)), _wgslsmith_dot_vec4_u32(vec4<u32>(67179u, 0u, var_1.b, u_input.d), vec4<u32>(u_input.d, 4294967295u, u_input.e, var_0.b)), u_input.e).e), u_input.d, ~_wgslsmith_mod_u32(~var_1.b, var_0.b)), all(vec3<bool>(select(true, 0i >= u_input.b.x, false & var_1.a.x), all(var_0.a), false)), func_2(_wgslsmith_sub_u32(firstLeadingBit(62019u), var_0.b | 15855u), u_input.a & _wgslsmith_clamp_vec3_i32(vec3<i32>(17354i, 0i, 1i), _wgslsmith_add_vec3_i32(u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-13202i, 37149i, -1i), u_input.a))).b, u_input.a).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(933f, -1068f, 1003f, var_2.x), vec4<f32>(var_2.x, 675f, -313f, var_2.x), var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1727f, -838f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-674f, var_2.x, var_2.x, var_2.x), vec4<f32>(-882f, 316f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(667f, -1059f, var_2.x, -1101f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, -584f, 516f, var_2.x))), !vec4<bool>(false, true, true, var_0.a.x)))))), ~vec2<u32>(func_6(Struct_2(false, vec3<u32>(var_0.b, var_3.b, var_1.b), -17685i, Struct_1(vec4<bool>(true, true, true, true), u_input.e), var_3), false, var_1.b, vec3<i32>(-62257i, -43198i, 12107i)).d.b, ~var_1.b) << (~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(89466u, 1u)), vec2<u32>(u_input.e, var_1.b)) % vec2<u32>(32u)), ~func_5(Struct_2(true, vec3<u32>(33206u, var_1.b, var_0.b), -u_input.a.x, var_3, Struct_1(var_1.a, var_0.b)), func_6(Struct_2(true, vec3<u32>(var_0.b, var_1.b, u_input.d), 0i, var_3, var_3), var_0.a.x, 4294967295u, -vec3<i32>(u_input.b.x, u_input.a.x, -16510i)), firstLeadingBit(var_0.b | u_input.e), var_3.b).b, var_2.x, vec3<f32>(1550f, -1019f, 323f));
}

