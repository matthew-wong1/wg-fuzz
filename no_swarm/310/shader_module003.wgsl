struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    return -reverseBits(u_input.d);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(u_input.d.x, _wgslsmith_div_u32(59784u, 1u), _wgslsmith_mod_vec3_i32(u_input.d, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-360f, -228f, -983f) - vec3<f32>(-252f, 1000f, -1048f)), Struct_1(35463i, 32771u, u_input.d, vec3<f32>(-553f, 1653f, -411f)), vec2<u32>(13693u, 46523u)) << (vec3<u32>(~3770u, _wgslsmith_mult_u32(u_input.c, u_input.c), 4294967295u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-904f, -966f)), _wgslsmith_f_op_f32(sign(281f))) + _wgslsmith_f_op_f32(f32(-1f) * -625f)), 164f));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.c), abs(0u), abs(var_0.b)), ~vec3<u32>(select(u_input.a, min(var_0.b, u_input.c), all(vec4<bool>(true, false, true, true))), (var_0.b >> (4294967295u % 32u)) & 1u, abs(u_input.c | 28646u)));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(22711u, var_1.x, u_input.c)), ~var_1), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_1, var_1), var_1), vec3<u32>(0u, ~u_input.c, var_1.x & u_input.a)), var_1), reverseBits(_wgslsmith_mod_vec3_u32(~var_1, var_1)));
    let var_3 = var_0;
    var var_4 = var_0;
    return -28393i;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_i32(~max(-1i, _wgslsmith_mult_i32(u_input.d.x, 0i)), firstTrailingBit(func_2())), u_input.c, countOneBits(vec3<i32>(min(_wgslsmith_sub_i32(0i, u_input.b.x), ~2352i), i32(-1i) * -2222i, ~u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(525f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1418f)), -233f)), -1239f)));
    let var_1 = vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(select(728f, var_0.d.x, true)), -1002f);
    var_0 = Struct_1(min(-2147483647i, u_input.d.x ^ ~0i) << (30372u % 32u), abs(u_input.c), ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.d.x, var_0.a), u_input.d, u_input.d)) << ((vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b), ~1u, reverseBits(1142u)) << ((select(vec3<u32>(arg_0.x, 58906u, arg_0.x), vec3<u32>(36518u, u_input.c, arg_0.x), vec3<bool>(true, true, false)) | ~vec3<u32>(var_0.b, 1u, var_0.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<f32>(var_1.x, -585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)))) - -661f)));
    var var_2 = vec2<i32>(-2147483647i, func_3(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 333f, _wgslsmith_f_op_f32(ceil(-940f))), Struct_1(u_input.d.x, select(countOneBits(15173u), u_input.a, true), -var_0.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_1, var_0.d)))), ~arg_0).x);
    var_0 = Struct_1(var_2.x, 43574u, abs(~vec3<i32>(-1i, func_2(), -16821i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.d), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -309f), var_1.x)), _wgslsmith_f_op_f32(-var_1.x), var_1.x), select(true, -607f >= _wgslsmith_f_op_f32(-1037f + var_1.x), true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~abs(-vec4<i32>(-2147483647i, -8195i, u_input.b.x, 1080i)), select(vec4<i32>(~(-14806i), u_input.b.x, u_input.b.x & u_input.d.x, ~(-2147483647i)), firstLeadingBit(max(vec4<i32>(-26569i, -674i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -8975i, u_input.b.x))), vec4<bool>(false, func_1(vec2<u32>(0u, u_input.c)), true, false))), u_input.d.x, u_input.b.x);
    let var_1 = Struct_1(-2147483647i, u_input.c, max(_wgslsmith_div_vec3_i32(~u_input.d, _wgslsmith_mod_vec3_i32(vec3<i32>(-3399i, 2147483647i, var_0.x), _wgslsmith_div_vec3_i32(u_input.d, u_input.d))), -(select(u_input.d, u_input.d, true) >> (vec3<u32>(1u, 4294967295u, 31687u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(221f, 226f, true)), _wgslsmith_f_op_f32(min(1204f, 450f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(379f + 473f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1595f - 1000f), _wgslsmith_f_op_f32(floor(-421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f - 1378f) - -1332f), -1000f))));
    var_0 = ~vec3<i32>(var_0.x, 2147483647i, _wgslsmith_mod_i32(-var_0.x, _wgslsmith_div_i32(var_1.c.x, -1i)) & select(-var_1.c.x, _wgslsmith_mult_i32(u_input.d.x, var_0.x), true));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(var_0.x, -2147483647i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(var_0.x, u_input.d.x)), firstLeadingBit(u_input.a), _wgslsmith_mult_vec3_i32((min(vec3<i32>(u_input.b.x, var_0.x, u_input.d.x), vec3<i32>(var_1.a, 8921i, 1i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(37431u, var_1.b, u_input.a), vec3<u32>(63453u, var_1.b, var_1.b)) % vec3<u32>(32u))) | vec3<i32>(func_3(vec3<f32>(-163f, var_1.d.x, 196f), var_1, vec2<u32>(var_1.b, u_input.c)).x, i32(-1i) * -17974i, 2147483647i), vec3<i32>(1i, -2147483647i, 0i)), vec3<f32>(var_1.d.x, 1000f, -470f));
    var_0 = reverseBits(select(u_input.d, firstTrailingBit(u_input.d), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + var_1.d.x) * var_2.d.x)), -1041f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1471f - 1208f), _wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x))) + 1410f), var_2.d.x));
}

