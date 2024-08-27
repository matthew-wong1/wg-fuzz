struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = -30597i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = -u_input.d << (4294967295u % 32u);
    var_0 = select(-arg_1.d, u_input.c, true);
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(firstTrailingBit(arg_1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-11574i, -2147483647i, arg_1.d, 2147483647i), vec4<i32>(u_input.c, u_input.d, arg_1.c.x, u_input.c)) ^ -arg_1.d, -18352i, arg_1.c.x);
    var_0 = var_1.x;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-17840i), firstLeadingBit(i32(-1i) * -7187i)) | ~_wgslsmith_sub_i32(max(-1i, arg_1.c.x), ~2147483647i), 0i);
    return -arg_1.c;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1549f * arg_1.a), _wgslsmith_f_op_f32(arg_1.a * -845f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, arg_1.a)))))), arg_1);
    var var_1 = ~(~_wgslsmith_mult_u32(u_input.b.x, ~(~u_input.b.x)));
    global1 = 33638i;
    let var_2 = arg_1.a;
    let var_3 = arg_1;
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, ~(-var_0.x), min(~var_3.c.x >> (u_input.b.x % 32u), i32(-1i) * -2649i)), countOneBits(min(firstTrailingBit(arg_1.d), u_input.d) << (reverseBits(4294967295u) % 32u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = reverseBits(vec4<i32>(countOneBits(firstTrailingBit(arg_3.c.x)), -29953i, _wgslsmith_div_i32(abs(-979i), 1i) >> (arg_2.x % 32u), -2147483647i));
    global0 = -69299i | func_2((u_input.a ^ (u_input.b.x | 17341u)) ^ max(~u_input.b.x, countOneBits(arg_2.x)), Struct_1(arg_3.a, true, arg_1.c, _wgslsmith_mult_i32(var_0.x, u_input.d) << (~arg_2.x % 32u), !arg_3.e));
    let var_1 = vec3<i32>(var_0.x, arg_1.c.x << (arg_0 % 32u), var_0.x ^ _wgslsmith_sub_i32(abs(var_0.x), var_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) - arg_1.a))), !arg_1.e, _wgslsmith_sub_vec3_i32(vec3<i32>(54653i, 0i, arg_3.d), -vec3<i32>(firstLeadingBit(18184i), -u_input.d, _wgslsmith_add_i32(u_input.c, var_0.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.c.yy, arg_3.c.xy), -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.d, -9304i), arg_3.c.xz), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.c.x, arg_1.c.x), vec2<i32>(-2147483647i, arg_3.d)))), true);
    let var_3 = vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(1000f + -1635f), 1121f);
    return select(select(vec4<bool>(false, 891f > _wgslsmith_f_op_f32(sign(721f)), true, false), vec4<bool>(all(select(vec3<bool>(arg_1.e, false, var_2.e), vec3<bool>(false, false, arg_3.b), vec3<bool>(var_2.e, arg_3.b, true))), true, !(!var_2.b), true), true), vec4<bool>(!any(vec3<bool>(false, arg_3.e, arg_3.b)) & true, true, 4294967295u < _wgslsmith_sub_u32(firstLeadingBit(u_input.a), ~arg_0), var_2.e), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + var_3.x) * -428f) == 463f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, true)), select(func_1(0u, Struct_1(-480f, false, vec3<i32>(0i, 1i, u_input.c), u_input.c, true), u_input.b.ywy, Struct_1(-934f, false, vec3<i32>(1i, -16101i, -2147483647i), u_input.d, false)), vec4<bool>(true, true, false, false), false), true || (2147483647i < u_input.d)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1421f * -887f)))), false, abs(vec3<i32>(func_2(u_input.a, Struct_1(-675f, false, vec3<i32>(u_input.c, 12516i, -1i), -2147483647i, true)), 19526i, u_input.d)), ~(~((u_input.d << (u_input.a % 32u)) >> (~27154u % 32u))), false);
    var var_2 = vec4<bool>(var_0.x, !var_0.x, false, ~(~1u) <= u_input.a);
    var_1 = Struct_1(var_1.a, func_1(firstLeadingBit(min(firstTrailingBit(6923u), u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_1.b, firstLeadingBit(abs(vec3<i32>(var_1.c.x, var_1.d, 18327i))), -8916i, var_0.x), u_input.b.yzw, Struct_1(-322f, all(!vec2<bool>(false, var_1.b)), vec3<i32>(-9795i, u_input.c, ~var_1.d), var_1.d, false)).x, vec3<i32>(-9759i, ~var_1.d, ~abs(1i)), var_1.c.x << ((abs(_wgslsmith_div_u32(43247u, 46031u)) ^ (u_input.a & 0u)) % 32u), true);
    var var_3 = true;
    var var_4 = Struct_1(1000f, true, ~var_1.c, _wgslsmith_dot_vec2_i32(var_1.c.xz, vec2<i32>(firstLeadingBit(~(-2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, -14805i, var_1.c.x, var_1.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.d, -2147483647i, 50035i, u_input.d), vec4<i32>(var_1.d, u_input.d, u_input.d, -1i))))), any(select(!var_2.zww, var_2.zyw, !vec3<bool>(false, var_0.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<i32>(1i, -33745i, ~(i32(-1i) * -1i)) ^ vec3<i32>(abs(u_input.c), var_4.d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d, 15305i), ~63350i)), vec3<f32>(_wgslsmith_f_op_f32(abs(var_4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.a)))), abs(abs(vec4<u32>(u_input.b.x, 1u, 0u, abs(0u)))));
}

