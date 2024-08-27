struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.a)))), vec2<f32>(1090f, _wgslsmith_f_op_f32(sign(-1316f))), false))));
    let var_1 = true;
    var var_2 = Struct_3(var_0.x, !vec4<bool>(false, _wgslsmith_f_op_f32(min(315f, arg_0.a)) == _wgslsmith_f_op_f32(trunc(var_0.x)), !arg_0.e.b, any(select(arg_0.e.c, arg_0.e.c, vec3<bool>(var_1, true, arg_0.b.x)))), _wgslsmith_f_op_f32(var_0.x - 1057f), vec2<i32>(i32(-1i) * -12345i, -arg_0.e.a), arg_0.e);
    let var_3 = ((min(7367i, var_2.d.x) >> (42173u % 32u)) > arg_1.x) || any(vec3<bool>(false, true || any(arg_0.e.c.xx), var_1));
    var_2 = arg_0;
    return _wgslsmith_mod_vec3_u32(reverseBits(arg_0.e.d), vec3<u32>(u_input.c, _wgslsmith_clamp_u32(arg_0.e.e, arg_3, u_input.a.x), abs(~4294967295u) | (~var_2.e.d.x & (49259u << (arg_3 % 32u)))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(arg_0, vec4<bool>(false, true, !arg_1, arg_1 | arg_1), -120f, -vec2<i32>(1i, 1i), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-12415i, 2147483647i), vec2<i32>(1i, 2147483647i)), firstTrailingBit(vec2<i32>(0i, 0i))), vec2<i32>(-20589i, ~81637i)), false, select(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, false), arg_1), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(arg_1, !arg_1, arg_1), true), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_mod_u32(u_input.b, 4294967295u), _wgslsmith_sub_u32(u_input.b, u_input.a.x)), select(func_3(Struct_3(-372f, vec4<bool>(arg_1, arg_1, true, false), -1026f, vec2<i32>(14612i, 0i), Struct_1(-9727i, false, vec3<bool>(arg_1, true, arg_1), vec3<u32>(u_input.b, 100482u, 4294967295u), u_input.c)), vec4<i32>(458i, 2147483647i, 2147483647i, -1i), vec4<bool>(false, false, true, true), 1696u), ~vec3<u32>(u_input.b, u_input.c, u_input.b), u_input.a.x <= 0u)), abs(1u)));
    let var_1 = select(vec4<bool>(!var_0.b.x, true, false, false), var_0.b, false);
    var var_2 = false;
    var var_3 = var_0.d.x;
    let var_4 = var_0.e;
    return Struct_2(var_0.c, var_4.a, ~vec4<u32>(~(~15320u), countOneBits(u_input.b), _wgslsmith_mult_u32(var_4.e, ~4294967295u), 46489u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = vec2<i32>(3064i, arg_0.b);
    var var_1 = Struct_1(~arg_0.b, true, vec3<bool>(false && !any(vec3<bool>(true, false, false)), true, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), arg_0.c.yzx, ~u_input.c);
    var_1 = Struct_1((~(arg_0.b ^ arg_0.b) & _wgslsmith_sub_i32(1i, -1i)) >> (arg_0.c.x % 32u), var_1.b, var_1.c, vec3<u32>(~1711u, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, var_1.e), vec4<u32>(34414u, 0u, u_input.b, 1u))), func_2(_wgslsmith_f_op_f32(min(883f, arg_0.a)), all(vec4<bool>(var_1.b, false, false, false))).c.x << (func_2(_wgslsmith_f_op_f32(abs(-797f)), true).c.x % 32u)), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.c.xw, var_1.d.xy), 1u)) | 20194u);
    var var_2 = arg_0;
    var var_3 = ~var_0;
    return arg_0;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(543f, 1338f))))), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-557f + 269f), 1f, _wgslsmith_div_f32(-936f, -1403f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-140f, 1207f, -680f) * vec3<f32>(1084f, 371f, -1844f))))), vec3<f32>(1f, 1f, 1f)));
    let var_1 = ~select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_0.c.x, var_0.c.x), vec3<u32>(u_input.b, 1u, arg_0), vec3<u32>(9954u, u_input.b, 0u) | var_0.c.yww), var_0.c.yxx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) & firstLeadingBit(var_0.c.zxz);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), select(vec4<bool>((1i < var_0.b) && true, false, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(!(var_0.a >= var_0.a), true, true, true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(-1145f - var_0.a)), _wgslsmith_f_op_f32(-var_0.a), any(vec3<bool>(true, true, true)))))), countOneBits(_wgslsmith_div_vec2_i32(select(vec2<i32>(var_0.b, -2147483647i), vec2<i32>(var_0.b, 1i) << (var_0.c.yx % vec2<u32>(32u)), all(vec2<bool>(false, true))), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.b, 21655i), vec2<i32>(34187i, var_0.b)))), Struct_1(0i, true, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), any(vec3<bool>(true, false, false))), all(vec3<bool>(true, false, false))), vec3<u32>(58172u, _wgslsmith_div_u32(func_2(1000f, true).c.x, firstLeadingBit(1u)), 26060u), ~(~(var_0.c.x ^ var_1.x))));
    let var_3 = -640f;
    var var_4 = var_2.d;
    return 18955u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-_wgslsmith_sub_i32(~(-1i), -select(-16579i, -2147483647i, false)), min(17894i, 0i));
    let var_1 = ~(vec3<u32>(_wgslsmith_mod_u32(~21907u, func_1(u_input.b)), ~_wgslsmith_mult_u32(u_input.c, u_input.b), u_input.c) & ~(~abs(vec3<u32>(1u, u_input.c, u_input.a.x))));
    var var_2 = var_0.x;
    var_0 = min(vec2<i32>(-func_2(-1000f, true).b, 0i), -vec2<i32>(var_0.x, 0i));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(1000f, true).a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-253f)) * _wgslsmith_f_op_f32(min(853f, 920f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), -796f)))), _wgslsmith_div_i32(21030i, var_0.x) > ~(23772i << (var_1.x % 32u)))), vec4<bool>(false, true, true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1231f, -556f, false)))))), -vec2<i32>(var_0.x, ~(-44089i | var_0.x)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(1241i), 1i), ~vec2<i32>(0i, 9468i)), any(vec2<bool>(any(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, false, true, false)))), vec3<bool>(true, _wgslsmith_add_i32(var_0.x, -2147483647i) == 1i, false), (abs(vec3<u32>(u_input.c, 1u, var_1.x)) << (~var_1 % vec3<u32>(32u))) ^ ~(~var_1), ~u_input.c));
    let var_4 = all(select(select(select(vec2<bool>(var_3.e.c.x, false), vec2<bool>(true, false), var_3.e.c.x), vec2<bool>(var_3.b.x, var_3.e.c.x), false), !select(var_3.b.yw, vec2<bool>(true, true), var_3.e.c.yx), false)) || true;
    let var_5 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, var_3.c, var_3.a) - vec3<f32>(-751f, -615f, var_3.a)), vec3<f32>(277f, 747f, 332f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.c, 162f, var_3.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(927f, var_3.a, var_3.a), vec3<f32>(var_3.a, var_3.a, var_3.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(182f, 942f), var_3.c, _wgslsmith_f_op_f32(sign(var_3.a)))))));
    var_0 = var_3.d;
    let var_6 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a, var_5.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.c), var_5.x, _wgslsmith_f_op_f32(select(var_5.x, 1457f, var_4)), func_4(Struct_2(var_5.x, 2147483647i, vec4<u32>(43112u, var_6.d.x, 0u, 0u)), vec3<f32>(-351f, -1000f, var_5.x)).a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-598f, var_5.x)))), var_5.xz);
}

