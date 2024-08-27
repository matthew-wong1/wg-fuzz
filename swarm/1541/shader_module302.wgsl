struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-777f, 443f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1484f, -1000f) - vec2<f32>(-354f, -447f))) * vec2<f32>(_wgslsmith_f_op_f32(411f * _wgslsmith_div_f32(1073f, 1772f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(920f)), _wgslsmith_f_op_f32(1365f - 526f)))), ~_wgslsmith_mult_vec4_i32(max(vec4<i32>(23231i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(57700i, -1i, u_input.a.x, u_input.a.x)) | -vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), -abs(vec4<i32>(-26699i, u_input.a.x, u_input.a.x, -2147483647i))), true, all(vec4<bool>(!any(vec3<bool>(false, false, true)), u_input.b < u_input.b, true, false)));
    let var_1 = !vec3<bool>(!var_0.d, all(select(vec3<bool>(true, true, var_0.c), !vec3<bool>(var_0.d, var_0.d, false), true)), var_0.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - -173f))), _wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(trunc(-1904f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))))));
    var var_3 = ~(~(_wgslsmith_sub_vec2_i32(var_0.b.wy, var_0.b.zy ^ vec2<i32>(1i, var_0.b.x)) >> (firstLeadingBit(firstTrailingBit(u_input.e.yz)) % vec2<u32>(32u))));
    var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 506f, 1000f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, var_2.x, -206f, var_2.x)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -1000f, !(var_0.a.x <= 191f))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x)), 1037f)));
    return 1000f;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = ~vec3<i32>(u_input.a.x, _wgslsmith_add_i32(~firstTrailingBit(-1i), max(~(-423i), 37818i)), _wgslsmith_div_i32(~arg_2.x, u_input.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -arg_2, vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(var_0.x, -10732i, arg_2.x), arg_2.x)) << (~max(vec4<u32>(arg_0, 0u, 21814u, arg_0), vec4<u32>(arg_0, 0u, 41041u, 4294967295u)) % vec4<u32>(32u)), true, all(arg_1));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1629f, -286f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 226f, var_1.a.x) - vec3<f32>(1294f, var_1.a.x, -1813f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, 539f, 1242f) * vec3<f32>(793f, 263f, var_1.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * 448f), var_1.a.x)), true)));
    let var_3 = vec3<bool>(select(true, var_1.d, all(vec4<bool>(true, all(vec3<bool>(arg_1.x, var_1.d, true)), false, false))), !(_wgslsmith_div_f32(var_1.a.x, var_1.a.x) == var_1.a.x) || any(!select(vec4<bool>(true, var_1.d, var_1.c, true), vec4<bool>(false, true, var_1.c, var_1.c), vec4<bool>(false, arg_1.x, var_1.c, false))), _wgslsmith_clamp_u32(4294967295u, arg_0, arg_0) < ~(~1u));
    let var_4 = abs(arg_2.x);
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-532f * var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), arg_1.b, arg_1.c, true);
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(180f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d, vec2<bool>(true, true), arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.b, 0u), ~u_input.e), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, -1438f)), vec4<i32>(-8308i, 20163i, 0i, 19985i) ^ vec4<i32>(u_input.a.x, u_input.a.x, -27961i, u_input.a.x), var_0.x, var_0.x || false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, 520f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(583f - -1722f), -1000f, true))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, 1473f) + vec2<f32>(-1356f, 677f)))))), vec4<i32>(-(~u_input.a.x), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -2147483647i)), ~(-26781i), u_input.a.x) & -(vec4<i32>(-1i, -9212i, u_input.a.x, 2147483647i) & (vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, 77067i) & vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), !var_0.x, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(min(-1018f, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) + _wgslsmith_f_op_f32(func_2(~95931u, vec2<bool>(var_0.x, var_2.c), var_2.b))), 1084f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(100f + var_2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(select(-1674f, -337f, true)))), var_2.a.x, var_2.a.x))));
    var var_4 = abs(vec3<i32>(-1i) * -var_2.b.xyy);
    var var_5 = var_2.d;
    let var_6 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.e, _wgslsmith_add_vec3_u32(~vec3<u32>(31544u, u_input.b, 55272u), ~u_input.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_6, firstLeadingBit(u_input.e.x), ~u_input.b), u_input.e | ~vec3<u32>(0u, 4294967295u, var_6))), max(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.xy, vec2<u32>(253u, 4294967295u))), min(u_input.e.xz, abs(select(u_input.e.yz, u_input.e.xy, var_2.d)))));
}

