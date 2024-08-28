struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = ~max(abs(u_input.b.zwz), _wgslsmith_sub_vec3_u32(countOneBits(abs(u_input.b.yxx)), u_input.b.www));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -526f);
    var_0 = ~u_input.b.xwz;
    var_0 = reverseBits(_wgslsmith_div_vec3_u32(~firstLeadingBit(~u_input.b.zyz), ~abs(u_input.b.yyw)));
    let var_2 = any(vec2<bool>(false, any(!vec3<bool>(true, arg_0.a.x, true)) || arg_0.a.x));
    return max(_wgslsmith_clamp_u32(~(firstTrailingBit(30494u) | arg_2), var_0.x, 1u), arg_3);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_2;
    var var_1 = abs(~(u_input.b.xzy | vec3<u32>(func_3(arg_2, u_input.a, 4294967295u, 1454u), ~arg_2.b, func_3(arg_2, -1i, 33272u, arg_2.c))));
    let var_2 = arg_2;
    var_0 = arg_2;
    return vec4<f32>(_wgslsmith_div_f32(-1060f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -936f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2346f, 348f) * -446f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(343f + 1033f), _wgslsmith_div_f32(-1562f, 2274f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1457f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, -1518f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(464f * -872f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-934f))))), -524f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x - -293f))) + arg_1.x), 602f, _wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 705f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(4294967295u, vec2<bool>(arg_2.a.x, arg_2.a.x), Struct_1(arg_0.a, 11617u, 4294967295u), arg_0.a.x))))), vec4<f32>(2237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -308f)), -417f), true)));
    let var_1 = 1015f;
    let var_2 = Struct_1(!vec4<bool>(all(vec4<bool>(arg_2.a.x, false, false, arg_2.a.x)), true, arg_2.a.x, _wgslsmith_add_i32(arg_3.x, -1i) > max(-29693i, arg_3.x)), _wgslsmith_mod_u32(19383u & select(_wgslsmith_add_u32(arg_0.c, 18318u), 40387u, arg_2.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b, 1u), ~u_input.b.ww)), firstLeadingBit(arg_0.b));
    var var_3 = var_1;
    let var_4 = select(var_2.a.wxx, vec3<bool>(arg_0.a.x, var_2.a.x, arg_0.a.x), vec3<bool>(any(vec4<bool>(arg_1.x > 1000f, arg_0.a.x, true, false)), arg_2.a.x, (_wgslsmith_f_op_f32(max(arg_1.x, var_0.x)) == _wgslsmith_div_f32(-1171f, -1332f)) & any(vec4<bool>(arg_0.a.x, true, true, false))));
    return Struct_1(vec4<bool>(var_2.a.x, false, true, any(!select(vec4<bool>(false, false, true, false), var_2.a, arg_0.a))), var_2.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.b, ~(var_2.c | 4835u)), 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = (-30041i ^ firstLeadingBit(_wgslsmith_mod_i32(select(u_input.a, -21061i, true), ~1i))) > ~(-firstTrailingBit(u_input.a));
    let var_1 = u_input.a;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(136f)) * _wgslsmith_f_op_f32(-1925f * 3070f)))));
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, var_1), vec2<i32>(8233i, -2147483647i), true), -vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(-6296i, 30744i), vec2<i32>(reverseBits(var_1), 2147483647i)), -(~vec2<i32>(-2147483647i, var_1) << (~arg_3 % vec2<u32>(32u)))) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_1.b, 0u), var_2.b) % 32u);
    return Struct_1(arg_0.a, func_3(arg_1, var_1, arg_0.b, u_input.b.x), _wgslsmith_sub_u32(arg_3.x, 0u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<i32>(u_input.a, u_input.a, -7869i);
    var_0 = select(vec3<i32>(~abs(var_0.x), firstTrailingBit(firstLeadingBit(abs(12184i))), 2147483647i), reverseBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 42392i), vec3<i32>(u_input.a, -37397i, var_0.x)))) << (((u_input.b.xxy & firstTrailingBit(u_input.b.yxx)) ^ max(select(vec3<u32>(37004u, arg_1.b, 1u), vec3<u32>(arg_0.x, arg_1.b, arg_0.x), true), u_input.b.wxy)) % vec3<u32>(32u)), arg_3.a.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(628f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1511f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(round(-684f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1075f, 1000f) + -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 913f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f * _wgslsmith_f_op_f32(ceil(-1192f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-575f)) * 1371f))));
    var var_2 = abs(~select(vec4<u32>(u_input.b.x, arg_3.b, arg_2, arg_2), u_input.b, false) ^ max(vec4<u32>(arg_2, 60890u, ~17549u, arg_1.c), ~vec4<u32>(arg_3.c, arg_0.x, 37765u, 25719u)));
    let var_3 = Struct_1(vec4<bool>(select(!(arg_2 <= 32334u), false, _wgslsmith_f_op_f32(select(312f, var_1.x, true)) > _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), arg_1.a.x, !any(!vec3<bool>(arg_3.a.x, true, false)), arg_3.a.x), ~1u, u_input.b.x);
    return _wgslsmith_div_u32(7961u, ~func_4(arg_3, func_4(func_1(Struct_1(vec4<bool>(var_3.a.x, false, true, true), 1096u, arg_2), vec2<f32>(var_1.x, var_1.x), Struct_1(arg_3.a, var_3.b, 4294967295u), vec2<i32>(u_input.a, -2147483647i)), arg_3, false, var_2.yy ^ vec2<u32>(var_2.x, var_2.x)), true | !var_3.a.x, ~(~arg_0)).b);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(408f, 453f, 244f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(75485u, !vec2<bool>(arg_1, arg_1), Struct_1(arg_3.a, 1013u, 1u), all(vec2<bool>(false, true)))).yxz)))));
    let var_1 = ~u_input.b.wyy >> ((u_input.b.xyx & max(vec3<u32>(~arg_2, arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.b), u_input.b.xz)), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 3360u), ~arg_2, ~0u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 458f)), -694f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), -107f, -1658f), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -398f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -607f), 599f, -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(393f, var_0.x, var_0.x) - vec3<f32>(-132f, -226f, -132f)))))));
    var var_2 = true;
    var var_3 = Struct_1(arg_3.a, ~(~5561u >> (~arg_3.b % 32u)) >> (~(firstLeadingBit(arg_0.b) ^ ~arg_0.c) % 32u), min(_wgslsmith_mod_u32(func_5(~var_1.zz, arg_3, ~4294967295u, func_1(Struct_1(vec4<bool>(true, arg_1, false, true), 27137u, 0u), vec2<f32>(var_0.x, -169f), arg_0, vec2<i32>(-4747i, u_input.a))), select(4294967295u, var_1.x, arg_1 & false)), var_1.x));
    return func_4(arg_3, func_4(func_4(Struct_1(vec4<bool>(arg_1, arg_1, arg_1, true), func_4(Struct_1(vec4<bool>(true, false, true, false), var_3.c, arg_3.c), arg_0, true, u_input.b.ww).b, _wgslsmith_div_u32(u_input.b.x, 75534u)), func_4(Struct_1(vec4<bool>(true, true, true, true), 0u, 43187u), func_4(Struct_1(arg_0.a, 4294967295u, 1u), arg_3, true, var_1.zy), arg_0.a.x, var_1.yz), select(!arg_1, arg_1 & false, arg_1), u_input.b.xw), func_4(func_1(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * var_0.yx), arg_0, -vec2<i32>(u_input.a, u_input.a)), arg_0, true, ~(~var_1.xx)), func_4(func_1(arg_0, var_0.xy, arg_0, vec2<i32>(-39331i, 0i)), func_1(Struct_1(var_3.a, arg_0.c, arg_0.b), var_0.zz, arg_3, ~vec2<i32>(-2147483647i, 7212i)), 2147483647i <= u_input.a, ~vec2<u32>(u_input.b.x, 4294967295u)).a.x, vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, var_3.c, u_input.b.x, 1u), u_input.b)), abs(_wgslsmith_clamp_u32(arg_3.c, u_input.b.x, u_input.b.x)))), false, _wgslsmith_sub_vec2_u32((vec2<u32>(u_input.b.x, 47822u) | firstTrailingBit(vec2<u32>(arg_0.b, arg_2))) >> (~(~vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)), abs(u_input.b.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 161f;
    let var_1 = func_6(Struct_1(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), ~96621u, 14851u), all(vec2<bool>(true, true)), u_input.b.x, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~0u, 87132u, 4294967295u ^ u_input.b.x), u_input.b.x), func_5(u_input.b.zy, func_4(func_1(Struct_1(vec4<bool>(true, false, false, true), u_input.b.x, u_input.b.x), vec2<f32>(350f, 556f), Struct_1(vec4<bool>(false, true, true, true), 7304u, u_input.b.x), vec2<i32>(u_input.a, u_input.a)), Struct_1(vec4<bool>(true, true, false, false), u_input.b.x, 45234u), false, min(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 2003u))), u_input.b.x, func_1(func_1(Struct_1(vec4<bool>(true, false, true, true), u_input.b.x, 5396u), vec2<f32>(var_0, -217f), Struct_1(vec4<bool>(true, false, false, true), u_input.b.x, u_input.b.x), vec2<i32>(-4236i, u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -938f), vec2<f32>(-499f, 1766f), vec2<bool>(false, true))), Struct_1(vec4<bool>(true, true, true, false), u_input.b.x, 1u), _wgslsmith_div_vec2_i32(vec2<i32>(5559i, -52158i), vec2<i32>(-42518i, 1i))))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1614f, 1143f), vec2<f32>(1000f, -577f))), vec2<f32>(1106f, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * -464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -685f))));
    var var_3 = abs(_wgslsmith_sub_i32(-31860i, -(~u_input.a))) << (u_input.b.x % 32u);
    let var_4 = var_1.a.x;
    let var_5 = true;
    let var_6 = Struct_1(func_4(Struct_1(var_1.a, u_input.b.x, firstTrailingBit(var_1.b)), func_6(func_4(var_1, var_1, true, u_input.b.yx >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), var_1.a.x, var_1.c, func_6(func_1(Struct_1(vec4<bool>(true, var_1.a.x, false, false), 385u, u_input.b.x), vec2<f32>(1653f, 1191f), var_1, vec2<i32>(u_input.a, u_input.a)), true, _wgslsmith_div_u32(var_1.c, 0u), Struct_1(var_1.a, 1u, 67647u))), !(u_input.b.x >= 11922u), vec2<u32>(_wgslsmith_div_u32(~var_1.c, reverseBits(59842u)), func_3(var_1, countOneBits(-2147483647i), 1u, abs(var_1.c)))).a, _wgslsmith_mod_u32(var_1.b, func_3(Struct_1(vec4<bool>(var_1.a.x, false, false, var_1.a.x), firstTrailingBit(4294967295u), 22757u | u_input.b.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-12410i, u_input.a), var_1.a.yw), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -63279i), vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, -2147483647i))), u_input.b.x, 35952u)), ~func_6(Struct_1(select(vec4<bool>(false, var_5, var_5, var_4), vec4<bool>(true, var_1.a.x, true, false), var_5), 1u, 1u), any(select(vec4<bool>(var_4, false, false, true), vec4<bool>(true, true, var_4, false), false)), 1u, Struct_1(select(vec4<bool>(false, var_1.a.x, false, true), var_1.a, vec4<bool>(true, false, var_1.a.x, var_4)), _wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(u_input.b.x, u_input.b.x)), ~12369u)).c);
    var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1802f, 524f), vec2<f32>(var_0, var_0))) + vec2<f32>(-826f, 644f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-218f, var_0) + vec2<f32>(var_2.x, var_2.x))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(156f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1331f * 273f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1806f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

