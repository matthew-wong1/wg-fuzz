struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(u_input.d, _wgslsmith_div_u32(49648u, u_input.c) | 4294967295u)), arg_1.x);
    return _wgslsmith_div_f32(2544f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(592f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) * _wgslsmith_div_f32(1000f, 1382f))))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(486f)) - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!arg_1.x, u_input.a.yzz ^ vec3<u32>(94083u, u_input.d, 1u), u_input.b))), -959f), u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(304f, 1327f, 1000f, 445f) + vec4<f32>(1000f, -194f, 1213f, -1277f))))), arg_3), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -608f, -1124f, 1000f))), vec4<bool>(!arg_3.x, arg_2 >= u_input.d, true, false || arg_1.x)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-924f, 807f, -1067f, -254f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1157f, -976f, 861f, -433f)))), vec4<bool>(arg_3.x, arg_3.x == false, !arg_1.x, !arg_3.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), 286f))), arg_0, u_input.b), arg_0);
    var var_1 = u_input.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.d.b.a.x)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(336f, var_0.c.a.x)));
    let var_3 = ~var_1.x;
    let var_4 = ~1u;
    return -12496i;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1575f, arg_0.b.a.x, 1421f, arg_0.b.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -473f, arg_0.b.a.x, 910f))) + vec4<f32>(_wgslsmith_f_op_f32(-494f * 716f), _wgslsmith_div_f32(203f, arg_0.a.a.x), arg_0.c.x, _wgslsmith_f_op_f32(func_2(arg_0.b.b.x, u_input.a.wyz, arg_0.d))))), arg_0.b.b);
    let var_1 = arg_0.b;
    var var_2 = var_0.a.x;
    var_2 = _wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.b.a.x)), -1000f)));
    let var_3 = func_3(arg_0.e, !vec3<bool>(arg_0.b.b.x, all(!var_1.b), false), u_input.d, select(var_1.b, var_0.b, var_0.b));
    return Struct_1(var_1.a, vec4<bool>(true, true, any(select(arg_0.a.b, arg_0.a.b, true)), any(arg_0.a.b)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(1000f - 1847f);
    let var_1 = func_1(arg_1.d);
    let var_2 = 119590u;
    var var_3 = func_1(arg_1.d).b;
    var var_4 = !(!(_wgslsmith_f_op_f32(func_2(var_1.b.x, u_input.a.zyy | vec3<u32>(42719u, arg_3.x, u_input.a.x), 2147483647i)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    return firstLeadingBit(u_input.a) | vec4<u32>(~abs(reverseBits(arg_3.x)), ~206u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 8223u, var_2, arg_2.x), vec4<u32>(77633u, var_2, u_input.d, 101121u)) & 21653u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, 228f)))))) + vec2<f32>(-990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * 192f))));
    var var_2 = _wgslsmith_sub_vec4_u32(~func_4(var_1.x, Struct_3(vec4<f32>(159f, var_1.x, -2461f, 800f), select(636u, 2142u, false), func_1(Struct_2(Struct_1(vec4<f32>(1434f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(-754f, -991f, var_1.x, -331f), vec4<bool>(false, true, true, true)), var_1, u_input.b, -3409i)), Struct_2(Struct_1(vec4<f32>(-252f, var_1.x, 2655f, var_1.x), vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(668f, var_1.x, -129f, var_1.x), vec4<bool>(true, false, false, false)), var_1, u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, -6518i, u_input.b, u_input.b))), ~(vec2<u32>(39979u, 4294967295u) >> (u_input.a.xw % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37235u, u_input.c), u_input.a.yx), ~1487u)), u_input.a);
    var var_3 = abs(abs(~(~vec4<i32>(u_input.b, -47337i, u_input.b, 20413i))));
    var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-(u_input.b << (4294967295u % 32u)) << (func_4(_wgslsmith_f_op_f32(-var_1.x), Struct_3(vec4<f32>(-808f, 1713f, 312f, var_1.x), u_input.d, Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, -132f), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, true)), vec2<f32>(var_1.x, var_1.x), var_3.x, 0i), -39273i), vec2<u32>(1u, 73079u), vec2<u32>(var_2.x, var_2.x)).x % 32u), ~1i, 23332i, var_3.x), ~vec4<i32>(u_input.b, ~(-11141i) | _wgslsmith_mult_i32(1i, u_input.b), var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_3.x, -4929i), var_3.xyw) << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)));
    let var_4 = min(vec3<i32>(~firstLeadingBit(select(u_input.b, 0i, true)), 12273i, _wgslsmith_mult_i32(0i, u_input.b | _wgslsmith_clamp_i32(u_input.b, var_3.x, var_3.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(-8491i), ~u_input.b, u_input.b >> (var_2.x % 32u)) & select(select(vec3<i32>(-330i, u_input.b, var_3.x), vec3<i32>(2147483647i, -23116i, -1i), vec3<bool>(false, true, false)), ~vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(false, true, false)), -vec3<i32>(var_3.x, abs(-1i), -var_3.x)));
    let var_5 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), -1000f, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, 1f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(-var_5.x), -1235f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_1.x, var_1.x))))))), ~(-1i) << (~firstTrailingBit(_wgslsmith_mod_u32(86004u, u_input.d)) % 32u));
}

