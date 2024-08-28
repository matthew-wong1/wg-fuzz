struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    let var_0 = true;
    var var_1 = -(~(-(~(~vec4<i32>(u_input.d, u_input.b, u_input.b, 9529i)))));
    var_1 = _wgslsmith_add_vec4_i32(~select(min(vec4<i32>(var_1.x, 2147483647i, -64062i, u_input.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, -1i, var_1.x), vec4<i32>(0i, -6896i, u_input.b, -1005i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -4951i, -2147483647i, u_input.b), vec4<i32>(0i, var_1.x, 2902i, 14695i)), (2147483647i > var_1.x) && (arg_0.c.x && true)), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(2147483647i, var_1.x, 3581i, 2147483647i), -vec4<i32>(var_1.x, var_1.x, -11950i, var_1.x), arg_0.c), reverseBits(countOneBits(vec4<i32>(-1i, -2147483647i, var_1.x, u_input.b))) << (select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(14008u, 0u, arg_0.a.a.x, 89034u)), ~vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, u_input.a.x, 99686u), false) % vec4<u32>(32u))));
    return _wgslsmith_add_i32(-var_1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), 0u), global0[_wgslsmith_index_u32(abs(u_input.a.x), 27u)]) % 32u), -(~u_input.c.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(~(-33158i), func_3(Struct_4(arg_0, vec3<f32>(-2334f, arg_1, -381f), vec4<bool>(false, false, true, false)))), u_input.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-283f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -132f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1392f), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-312f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2002f - -495f)), -1084f)))), 1568f);
    global0 = array<vec3<u32>, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, 477f, -116f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, 231f)) + vec4<f32>(1111f, -1811f, -330f, var_0.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1983f, -1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -226f, 845f, 593f) - vec4<f32>(358f, 313f, 112f, -327f))))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1581f, var_0.x, var_0.x) * vec4<f32>(-419f, var_0.x, -887f, -1000f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(230f, 1000f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1521f, var_0.x, -1000f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -198f))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-286f + -1383f), var_0.x, _wgslsmith_f_op_f32(-1856f + 1887f), var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1)), _wgslsmith_f_op_f32(1207f * var_0.x), -229f)))));
    return !(!select(!(!vec4<bool>(false, arg_1, arg_1, false)), vec4<bool>(false, arg_1 && false, any(vec3<bool>(false, false, arg_1)), false), arg_1));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = array<vec3<u32>, 27>();
    let var_0 = !(!func_4(-vec2<i32>(arg_1.x, 33847i) >> (vec2<u32>(130873u, u_input.a.x) % vec2<u32>(32u)), !arg_0, func_2(Struct_2(vec2<u32>(u_input.a.x, 0u)), _wgslsmith_f_op_f32(abs(arg_2.x)))));
    var var_1 = arg_0;
    var_1 = ((1u << (firstLeadingBit(min(1u, 1u)) % 32u)) & (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 28985u), vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(u_input.a.x, 217u)) | firstTrailingBit(u_input.a.x ^ 50360u))) >= u_input.a.x;
    var var_2 = true | !func_4(arg_1.yy, false, func_2(Struct_2(vec2<u32>(u_input.a.x, 37499u)), _wgslsmith_div_f32(arg_2.x, -707f))).x;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, _wgslsmith_f_op_f32(round(-1000f)), -465f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-984f, 1000f, 402f, arg_2.x), vec4<f32>(-1998f, arg_2.x, -322f, 512f)) - vec4<f32>(-378f, 652f, -1566f, arg_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) * vec4<f32>(arg_2.x, 1521f, 405f, arg_2.x)), vec4<f32>(arg_2.x, arg_2.x, -1278f, arg_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, arg_2.x, arg_2.x, -830f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -313f))), 1363f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(987f, arg_2.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(775f, arg_2.x) - _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * arg_2.x), -617f)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(arg_0.zzy, vec3<i32>(25702i, arg_0.x, arg_0.x)) & abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, 0i, -2147483647i), vec3<i32>(u_input.b, 0i, 1i)), _wgslsmith_sub_vec3_i32(arg_0.zww, vec3<i32>(-1i, arg_0.x, -41648i))), -countOneBits(arg_0.xxy)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1))))) * vec4<f32>(arg_2, -2627f, -690f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 - arg_1.x), _wgslsmith_f_op_f32(-1000f + arg_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(select(var_1.x, arg_1.x, false)), _wgslsmith_f_op_f32(888f - -1366f)), arg_1, true)), true)));
    let var_2 = vec3<f32>(arg_2, _wgslsmith_div_f32(var_1.x, arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))));
    var var_3 = countOneBits(~arg_3);
    return func_2(Struct_2(~u_input.a), -835f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_5(vec4<i32>(u_input.c.x, 1i, u_input.b, ~u_input.c.x), _wgslsmith_f_op_vec4_f32(func_1(var_0.x, -vec3<i32>(~u_input.d, ~(-1i), u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-237f, 248f, 1016f), vec3<f32>(-1863f, 714f, 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-798f, 596f, -538f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(799f, -1000f, -1049f), vec3<f32>(-1000f, 457f, 1759f)))))), _wgslsmith_f_op_f32(f32(-1f) * -2001f), 35933u);
    var_1 = Struct_1(_wgslsmith_add_i32(func_3(Struct_4(Struct_2(u_input.a), vec3<f32>(610f, -509f, 1239f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), ~countOneBits(func_3(Struct_4(Struct_2(u_input.a), vec3<f32>(-625f, 1461f, 241f), vec4<bool>(false, false, var_0.x, true))))));
    var var_2 = Struct_2(u_input.a);
    let var_3 = Struct_4(Struct_2(var_2.a ^ vec2<u32>(reverseBits(1u), _wgslsmith_mult_u32(0u, var_2.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 1570f, -1110f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1375f, -1109f, -1931f) - vec3<f32>(-723f, -2197f, -1881f))), vec3<f32>(1456f, _wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(1292f * -1832f)))), vec3<f32>(450f, _wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 1171f), _wgslsmith_f_op_f32(-1599f * -525f)))), false)), !func_4(-(vec2<i32>(15506i, -47395i) | u_input.c), all(!vec3<bool>(true, true, var_0.x)), func_5(vec4<i32>(-2147483647i, 47092i, 1i, var_1.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-657f, 831f, 709f, 732f), vec4<f32>(172f, -733f, -160f, 618f))), _wgslsmith_f_op_f32(select(591f, -587f, false)), 4294967295u)));
    var_0 = var_3.c.yx;
    var var_4 = vec4<bool>(false, !all(select(vec4<bool>(false, var_3.c.x, var_3.c.x, false), !vec4<bool>(var_3.c.x, false, true, var_3.c.x), var_3.c.x)), !(!var_3.c.x), true);
    var var_5 = !var_4.x;
    let var_6 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6) + _wgslsmith_f_op_f32(trunc(748f))), ~4294967295u, _wgslsmith_div_f32(var_6, _wgslsmith_f_op_f32(f32(-1f) * -1829f)));
}

