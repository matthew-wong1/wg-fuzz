struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, u_input.d, -205f, abs(arg_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-646f, arg_0.c) - _wgslsmith_f_op_f32(-449f + global1.x)), arg_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-548f - -196f), arg_0.a.x)), 470f)));
    global0 = any(vec2<bool>(false, true));
    return arg_0.a.x;
}

fn func_3(arg_0: i32) -> vec3<f32> {
    global1 = vec2<f32>(-956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-448f))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + -369f), _wgslsmith_f_op_f32(abs(global1.x)))) * vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-287f, 915f, global1.x, 100f), u_input.d, global1.x, 22335u, vec4<f32>(399f, global1.x, global1.x, global1.x))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, 201f) * vec2<f32>(-660f, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))), any(vec3<bool>(any(vec3<bool>(false, true, false)), true, false)))));
    global0 = any(!vec3<bool>(!any(vec4<bool>(true, true, true, false)), false, u_input.a.x < ~u_input.b));
    var var_0 = vec2<i32>(u_input.d.x, _wgslsmith_mod_i32(0i, -43118i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -980f, 324f, global1.x))))), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, var_0.x), u_input.d, u_input.d) >> (_wgslsmith_div_vec2_u32(u_input.a.wy & u_input.a.yx, ~vec2<u32>(u_input.a.x, u_input.b)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(1i, 1i))), -807f, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(1572f + global1.x), global1.x, _wgslsmith_f_op_f32(sign(323f)), _wgslsmith_f_op_f32(-global1.x)));
    return _wgslsmith_f_op_vec3_f32(step(var_1.e.zyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.e.wyx)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = -1146f;
    var var_2 = _wgslsmith_sub_vec2_i32(var_0.b, min(reverseBits(~select(arg_0.b, arg_1.b, vec2<bool>(true, true))), ~vec2<i32>(0i, 1i)));
    var var_3 = ~select(firstTrailingBit(~firstLeadingBit(vec4<i32>(arg_0.b.x, 1i, var_2.x, 40124i))), abs(firstTrailingBit(max(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, arg_1.b.x), vec4<i32>(5093i, arg_0.b.x, -33723i, -2147483647i)))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_1 < -797f, true)));
    return _wgslsmith_f_op_vec2_f32(arg_1.e.yz - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, -1039f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yz)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_2.a.x - global1.x);
    var var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_2.d, 21064u, arg_1, 42113u), vec4<u32>(arg_0.x, u_input.a.x, arg_2.d, u_input.b)), vec4<u32>(arg_2.d, arg_1, arg_2.d, 0u) << (vec4<u32>(1u, arg_2.d, arg_1, arg_1) % vec4<u32>(32u))), select(~u_input.a, ~u_input.a, true)), u_input.a);
    global1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.e + _wgslsmith_f_op_vec4_f32(vec4<f32>(983f, 526f, var_0, arg_2.c) * vec4<f32>(1352f, -1000f, arg_2.e.x, arg_2.e.x))), -(~(vec2<i32>(arg_3.b.x, arg_2.b.x) >> (vec2<u32>(23432u, arg_0.x) % vec2<u32>(32u)))), _wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(1000f, -688f, 1406f, var_0), vec2<i32>(-3718i, 31763i), 711f, arg_1, vec4<f32>(1088f, -332f, 1377f, 1413f))))), ~(arg_1 << (~arg_0.x % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(729f, _wgslsmith_f_op_f32(270f - global1.x), -987f, _wgslsmith_f_op_f32(func_2(Struct_1(arg_3.e, arg_2.b, var_0, 0u, vec4<f32>(arg_3.e.x, -249f, -1425f, -1542f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.a * vec4<f32>(825f, global1.x, arg_2.a.x, global1.x))))), arg_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), -178f, 2703f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_2.a.x, 261f) * vec3<f32>(-1000f, arg_2.c, var_0)) - arg_3.a.xxy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_i32(1i, 2147483647i))), vec3<f32>(global1.x, -853f, _wgslsmith_f_op_f32(sign(arg_2.a.x)))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-arg_3.c))))), -1711f);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e.xx)) * vec2<f32>(var_0, 1f));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8128u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1u, u_input.a.x, ~u_input.a.x), u_input.a) % 32u);
    let var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, global1.x)));
    global0 = true;
    var var_2 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))) && true;
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, -79562i, 0i), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c)), _wgslsmith_add_i32(u_input.c, 11219i)), -51149i, u_input.d.x), vec4<i32>(u_input.c, -(~u_input.c), ~(~min(u_input.e, -2147483647i)), min(u_input.e >> ((u_input.a.x ^ u_input.a.x) % 32u), -2147483647i)));
    var var_4 = u_input.a.xy;
    let var_5 = u_input.c >> (~max(~func_1(vec3<u32>(32476u, var_4.x, 25361u), var_4.x, Struct_1(vec4<f32>(var_1, 517f, global1.x, var_1), u_input.d, global1.x, 71476u, vec4<f32>(var_1, 612f, var_1, global1.x)), Struct_1(vec4<f32>(1468f, var_1, global1.x, global1.x), vec2<i32>(-69977i, 1i), var_1, 1u, vec4<f32>(-1384f, global1.x, -586f, global1.x))), var_0) % 32u);
    var var_6 = -u_input.c >> (24598u % 32u);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_5, _wgslsmith_mult_i32(select(var_5, ~var_3.x, any(vec3<bool>(true, false, false))), -(i32(-1i) * -46787i)), -u_input.c), vec2<i32>(1i, var_5), vec3<i32>(var_5 | -var_5, var_3.x, firstTrailingBit(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(9892i, u_input.d.x)))), 0i);
}

