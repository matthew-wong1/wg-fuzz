struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(839f, 722f), vec2<f32>(-2006f, -1119f), vec2<f32>(517f, 1736f), vec2<f32>(437f, 240f), vec2<f32>(-584f, 1000f), vec2<f32>(-1431f, -1360f), vec2<f32>(-1363f, 907f), vec2<f32>(-345f, -1390f), vec2<f32>(-487f, 1223f), vec2<f32>(-160f, -1305f), vec2<f32>(1000f, 510f), vec2<f32>(216f, -1666f), vec2<f32>(597f, 934f), vec2<f32>(122f, 403f), vec2<f32>(-812f, -403f), vec2<f32>(-915f, 1456f), vec2<f32>(-436f, 1233f), vec2<f32>(-502f, 575f), vec2<f32>(-441f, -1000f), vec2<f32>(-1331f, 1651f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(21037u, 20u)], _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.x, arg_1.x), arg_2.a), select(vec2<bool>(true, arg_2.b), vec2<bool>(arg_2.b, true), vec2<bool>(arg_2.b, true))))) + global0[_wgslsmith_index_u32(43535u, 20u)]), arg_2.b);
    global0 = array<vec2<f32>, 20>();
    var var_2 = abs(arg_0);
    var var_3 = var_1.b;
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, 1206f)), -567f), _wgslsmith_f_op_f32(arg_0.a.x + 828f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, -1376f, arg_1.x), vec3<f32>(-441f, 1632f, arg_0.a.x))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(383f, -814f, arg_1.x), vec3<f32>(227f, arg_1.x, -1000f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))));
    var var_1 = abs(max(abs(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, arg_2, arg_2)), ~vec3<i32>(-49632i, u_input.a.x, -2147483647i))), ~reverseBits(abs(vec3<i32>(29089i, 6503i, arg_2)))));
    let var_2 = func_1(vec2<i32>(-9608i & (var_1.x & min(var_1.x, u_input.a.x)), _wgslsmith_div_i32(-1i, -(-2147483647i ^ u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), arg_0, firstLeadingBit(-firstTrailingBit(vec4<i32>(var_1.x, var_1.x, arg_2, u_input.d))) ^ _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(20138i, var_1.x, -1i, 22639i)), abs(abs(vec4<i32>(arg_2, 2147483647i, var_1.x, var_1.x))), vec4<i32>(i32(-1i) * -1i, var_1.x & var_1.x, -arg_2, _wgslsmith_sub_i32(var_1.x, 2147483647i))));
    let var_3 = 1i;
    var var_4 = func_1(-u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(-var_0))))), arg_0, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(arg_2, var_1.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-30930i, 2147483647i), vec2<i32>(arg_2, arg_2)), abs(-1i), -2147483647i)), _wgslsmith_div_vec4_i32(~(vec4<i32>(-1i, var_1.x, -2147483647i, var_3) | vec4<i32>(-29949i, -2147483647i, u_input.d, arg_2)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3, -2147483647i, u_input.a.x, var_3), countOneBits(vec4<i32>(var_3, 32856i, 2147483647i, u_input.a.x))))));
    return arg_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(319f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.x - -185f), arg_1.a.x)))))), arg_1.a.x);
    var var_1 = func_3(func_1(_wgslsmith_mult_vec2_i32(~u_input.a, select(~vec2<i32>(arg_2.x, 12580i), arg_2, !vec2<bool>(false, arg_1.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-994f, -290f, -1108f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2041f, -1152f, -603f) * vec3<f32>(-1156f, 1006f, arg_1.a.x)) - vec3<f32>(423f, arg_1.a.x, arg_1.a.x))), arg_1, min(abs(max(vec4<i32>(40963i, u_input.a.x, u_input.d, 13373i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), firstTrailingBit(~vec4<i32>(-14249i, -75538i, 2295i, -30683i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(718f, 304f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, arg_1.a.x), global0[_wgslsmith_index_u32(0u, 20u)], vec2<bool>(arg_1.b, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))) * arg_1.a), arg_2.x);
    let var_2 = u_input.d;
    global0 = array<vec2<f32>, 20>();
    let var_3 = func_3(func_1(firstLeadingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), arg_2)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-431f, _wgslsmith_f_op_f32(-arg_1.a.x), var_1.a.x))), func_3(arg_1, arg_1.a, firstTrailingBit(-1i >> (arg_0.x % 32u))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_2.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-1i, 44622i, 63874i, u_input.d), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b)), select(vec4<i32>(arg_2.x, u_input.d, -7688i, -1i), vec4<i32>(u_input.d, arg_2.x, var_2, var_2), var_1.b)) ^ vec4<i32>(abs(5826i), _wgslsmith_add_i32(-1i, -1i), -1i ^ u_input.a.x, var_2 | arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1181f, arg_1.a.x)))))), _wgslsmith_div_i32(-28169i, 1i));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(1u <= _wgslsmith_dot_vec2_u32(func_2(~vec3<u32>(u_input.c.x, 0u, u_input.b.x), func_1(vec2<i32>(u_input.a.x, -2147483647i), vec3<f32>(377f, -1055f, 605f), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false), vec4<i32>(-87098i, -3186i, u_input.d, u_input.a.x)), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-1i, u_input.d))), u_input.c));
    global0 = array<vec2<f32>, 20>();
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true & select(var_0, var_0, any(vec2<bool>(true, true))), all(!select(vec3<bool>(false, var_0, false), vec3<bool>(false, false, true), vec3<bool>(false, var_0, false))), var_0), vec3<bool>(abs(7256i | u_input.d) != (u_input.a.x & max(2147483647i, u_input.d)), true, false == (abs(60277u) != select(0u, 102137u, false))));
    global0 = array<vec2<f32>, 20>();
    var var_2 = !(!(!(!var_1.x))) || !(!(2147483647i != u_input.a.x) | any(vec2<bool>(var_1.x, var_1.x)));
    var_2 = _wgslsmith_f_op_f32(select(-2407f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x || true)) == 1000f;
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], true);
    var var_4 = func_1(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(var_3.a.x - 2358f)), 1161f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.x)))))), func_1(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-24353i, u_input.d), min(u_input.a, vec2<i32>(-21189i, u_input.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x), vec3<f32>(332f, 1845f, 208f), vec3<bool>(true, var_3.b, var_0))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a.x, -760f, var_3.a.x))))), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, -2164f) - vec2<f32>(1532f, 1407f)), all(vec2<bool>(var_1.x, false))), var_3.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d, 0i, 58597i, -5235i), vec4<i32>(u_input.a.x, u_input.d, u_input.d, -36037i), vec4<bool>(true, var_1.x, true, var_3.b)), min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, u_input.a.x), vec4<i32>(u_input.d, u_input.a.x, -3446i, 24800i)))), countOneBits(-vec4<i32>(-2147483647i, -42814i, -29112i, u_input.a.x)) ^ (countOneBits(vec4<i32>(-25948i, 19076i, -1i, 2147483647i)) | -vec4<i32>(-7248i, u_input.d, 17597i, u_input.d))), reverseBits(countOneBits(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 30770i), 2147483647i, abs(u_input.a.x), abs(-12342i)))));
    var var_5 = vec4<i32>(24398i | -u_input.d, firstTrailingBit(22748i), u_input.a.x, ~(-34700i));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(4294967295u) & 13806u), firstTrailingBit(_wgslsmith_mod_u32(select(reverseBits(u_input.b.x), 74125u, !var_3.b), _wgslsmith_dot_vec2_u32(u_input.b & vec2<u32>(4294967295u, 1u), max(vec2<u32>(4294967295u, 4294967295u), u_input.c)))), vec4<i32>(54651i << (~u_input.c.x % 32u), var_5.x, ~(2147483647i << (u_input.b.x % 32u)), reverseBits(~u_input.d)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(51870u, 1u, 12235u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(78972u, u_input.c.x, u_input.b.x, 72388u), vec4<u32>(u_input.b.x, 19374u, 60045u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x))) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(var_5.x, -2147483647i), _wgslsmith_add_i32(-10067i, -18255i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.d, -2147483647i), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(1i, var_5.x))), vec2<i32>(firstTrailingBit(u_input.a.x), 0i)), -u_input.d, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-8587i, u_input.d, var_5.x, 1i), -vec4<i32>(14409i, u_input.d, var_5.x, -25761i)))), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(~abs(u_input.b.x), ~(~u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(4294967295u >> (u_input.c.x % 32u), min(u_input.c.x, u_input.b.x)))));
}

