struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(-1i, arg_3.a.x, u_input.a, -15374i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 3666i, arg_3.a.x, 867i), firstLeadingBit(vec4<i32>(u_input.a, arg_3.a.x, 21175i, -28401i)), vec4<i32>(u_input.a, arg_3.a.x, -89846i, 7476i) >> (vec4<u32>(arg_1, arg_1, 0u, 39981u) % vec4<u32>(32u))))), firstTrailingBit(arg_3.a ^ _wgslsmith_div_vec4_i32(arg_3.a, firstLeadingBit(arg_3.a))));
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), !select(false, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), arg_0.x == arg_2), 2326f > arg_0.x, !(all(vec4<bool>(false, true, false, false)) | (true && select(false, false, true))));
    let var_1 = arg_3;
    var var_2 = select(u_input.a, -86559i, any(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, true, true, var_0.x), var_0.x & var_0.x), vec4<bool>(true, any(vec2<bool>(true, var_0.x)), false, var_0.x | var_0.x), var_0.x)));
    var var_3 = ~var_1.a.x;
    return _wgslsmith_mod_u32(98806u, _wgslsmith_add_u32(arg_1, arg_1));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = reverseBits(~vec3<u32>(~max(1u, 1u), ~1u, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1101f, 455f, -1283f) - vec3<f32>(-1381f, 1036f, 233f)), ~1u, -282f, Struct_1(vec4<i32>(arg_1.a.x, arg_2, 2147483647i, arg_1.a.x)))));
    let var_1 = Struct_1(-vec4<i32>(u_input.a, _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 2147483647i), -2147483647i, -(~28995i)));
    global0 = -_wgslsmith_mult_i32(~(-min(0i, 29956i)), arg_2 >> (0u % 32u));
    let var_2 = Struct_1(arg_1.a);
    global0 = _wgslsmith_sub_i32(-8542i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-25310i, var_1.a.x, -2147483647i) | var_2.a.zxw), max(~vec3<i32>(u_input.a, 2147483647i, -30540i), -arg_0.a.yzw))) & (_wgslsmith_mod_i32(1i >> (_wgslsmith_mod_u32(0u, var_0.x) % 32u), arg_2) | -(~(-27934i)));
    return 0i ^ _wgslsmith_mult_i32(-44782i, _wgslsmith_sub_i32(var_1.a.x, 0i));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec4<i32>(-_wgslsmith_mod_i32(~(-8534i), func_2(Struct_1(vec4<i32>(2147483647i, 2544i, u_input.a, 2147483647i)), Struct_1(vec4<i32>(u_input.a, 30696i, u_input.a, u_input.a)), -30716i)), ~(-36377i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(6244i, 1i), vec2<i32>(u_input.a, 2147483647i))), 39696i ^ _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(1i, 22978i))), u_input.a));
    var_0 = Struct_1(vec4<i32>(select(-_wgslsmith_clamp_i32(4094i, 1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, u_input.a), vec2<i32>(-3420i, u_input.a)), true), var_0.a.x, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a), var_0.a | vec4<i32>(14807i, u_input.a, u_input.a, var_0.a.x)), ~var_0.a)));
    global0 = var_0.a.x;
    global0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), var_0.a.xw ^ vec2<i32>(-2147483647i, -27829i)), vec2<i32>(-30949i, u_input.a)) << (1u % 32u);
    global0 = -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, 316f, -457f, 295f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1759f, -232f, 490f, 1000f), vec4<f32>(1482f, 624f, -781f, 196f))))), vec4<f32>(1996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1651f)), -1000f, _wgslsmith_f_op_f32(func_1())))) * _wgslsmith_div_vec4_f32(vec4<f32>(-295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) + _wgslsmith_f_op_f32(round(-487f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1684f)), 579f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2365f, 170f, -1228f, 182f), vec4<f32>(487f, 357f, 273f, -609f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-248f, 1718f, 1000f, -1017f), vec4<f32>(687f, 725f, 192f, -366f))) - vec4<f32>(_wgslsmith_f_op_f32(round(1247f)), _wgslsmith_f_op_f32(-1493f + -808f), _wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(-1810f + -212f)))));
    global0 = 0i;
    var var_1 = false;
    let var_2 = min(~(~abs(-u_input.a)), abs(-_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, -24976i), firstLeadingBit(-19500i))));
    var_1 = all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), 0i < var_2), vec2<bool>(false, var_2 < u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(861f, -608f), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), all(vec3<bool>(true, true, true))))), vec2<f32>(var_0.x, -331f));
}

