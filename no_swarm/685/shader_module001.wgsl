struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = !vec3<bool>(false, all(vec3<bool>(false, true, true)), true);
    let var_1 = Struct_2(true, vec3<bool>(!var_0.x, true, true), ~_wgslsmith_add_vec4_i32(vec4<i32>(~(-4431i), _wgslsmith_mod_i32(19066i, 590i), i32(-1i) * -9604i, firstLeadingBit(-29543i)), firstTrailingBit(~vec4<i32>(-47262i, -3093i, 17937i, 13886i))));
    var_0 = var_1.b;
    var var_2 = var_1.c.x;
    let var_3 = Struct_3(false, vec4<bool>(!(false && var_0.x), !(!(u_input.a == u_input.a)), false, !all(var_1.b.zy)), _wgslsmith_sub_vec3_i32(var_1.c.yzw, -select(-vec3<i32>(69270i, var_1.c.x, var_1.c.x), -vec3<i32>(var_1.c.x, 1056i, var_1.c.x), true)), -455i, var_1.c.x ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i >> (u_input.a % 32u), 2147483647i, ~var_1.c.x), var_1.c.x));
    return !var_1.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = 49153u;
    let var_1 = vec4<bool>(!func_3(), select(1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -2147483647i), ~(-2147483647i)), true) == ~firstTrailingBit(_wgslsmith_clamp_i32(-18413i, -34133i, 38806i)), arg_2.x, arg_2.x);
    let var_2 = Struct_1(u_input.a, var_1.x);
    return -341f;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-561f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1823f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-317f + -485f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a, vec2<f32>(1226f, 771f), vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(round(610f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1736f)), 1421f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-886f * _wgslsmith_div_f32(var_0, -410f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2690f, -718f, _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(var_0 + var_0))))));
    var var_2 = true;
    let var_3 = Struct_3(!any(vec2<bool>(true, true)), select(vec4<bool>(false, true, !select(true, arg_0, false), arg_0), select(vec4<bool>(true, any(vec2<bool>(arg_0, arg_0)), arg_0 || arg_0, arg_0), !vec4<bool>(arg_0, arg_0, false, true), select(!vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, true, arg_0, false), vec4<bool>(false, true, arg_0, arg_0))), true), -(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -2147483647i, 0i) >> (vec3<u32>(0u, u_input.a, 32823u) % vec3<u32>(32u)), !vec3<bool>(arg_0, false, arg_0)) | vec3<i32>(1i, 1i, 1i)), -17975i, ~(-1i));
    var_2 = arg_0 | (reverseBits(_wgslsmith_add_u32(max(u_input.a, 4294967295u), ~0u)) >= firstTrailingBit(95649u));
    return any(!(!(!select(var_3.b.wyy, var_3.b.yzy, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-(vec2<i32>(-1i) * -vec2<i32>(-1i, -68062i)));
    let var_1 = u_input.a;
    let var_2 = vec4<i32>(1i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 2147483647i, 81479i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, -2147483647i, -1i)), abs(vec3<i32>(7557i, var_0.x, var_0.x))) >> (vec3<u32>(var_1, u_input.a, ~68771u) % vec3<u32>(32u))), -abs(_wgslsmith_mod_i32(36099i, var_0.x) & 45533i));
    let var_3 = func_1(all(select(vec3<bool>(false, var_0.x < var_0.x, true), vec3<bool>(true, true, var_2.x <= 2147483647i), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), true))));
    var var_4 = -1i;
    var_4 = var_0.x | var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -var_0.x, ~var_0.x), var_2.wzz), reverseBits(~34086i)), _wgslsmith_div_i32(reverseBits(-firstLeadingBit(var_0.x)), _wgslsmith_dot_vec4_i32(reverseBits(firstLeadingBit(var_2)), -var_2)), _wgslsmith_mod_u32(var_1, abs(1u)));
}

