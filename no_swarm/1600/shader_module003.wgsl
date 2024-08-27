struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-385f, -3055f, 890f), vec3<f32>(-792f, -731f, 1980f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, 645f, 275f)), false)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-436f, 346f, -165f), vec3<f32>(-240f, 1521f, 1380f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-523f)) - _wgslsmith_div_f32(993f, 1209f)))), 1045f, 317f)));
    var var_1 = Struct_1(countOneBits(arg_1.a), 4294967295u >> (u_input.e.x % 32u));
    var var_2 = arg_1;
    let var_3 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(any(vec2<bool>(false, true)), false, var_1.a.x < -35141i)));
    let var_4 = ~(~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, -35607i, -1i, 1i), vec4<i32>(u_input.d.x, var_1.a.x, -13807i, 1i)))) << (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~36127u, ~var_1.b, 1u), ~34434u, u_input.b.x, u_input.a & arg_1.b), ~vec4<u32>(u_input.b.x, ~u_input.b.x, 0u, var_1.b)) % vec4<u32>(32u));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, i32(-1i) * -2147483647i), u_input.c);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>) -> i32 {
    let var_0 = Struct_1(countOneBits(abs(func_3(Struct_1(u_input.d.yy, 64641u), Struct_1(u_input.c, 46244u)))), _wgslsmith_mod_u32(~(u_input.b.x >> ((96106u | u_input.b.x) % 32u)), reverseBits(84863u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, _wgslsmith_div_f32(690f, arg_2.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(arg_2.yx, arg_2.yy)))) * _wgslsmith_f_op_vec2_f32(-arg_2.yy)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.yz);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_1.x) * var_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_1.x)))))));
    var var_3 = vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.d | _wgslsmith_clamp_vec3_i32(u_input.d >> (u_input.e.ywy % vec3<u32>(32u)), u_input.d, vec3<i32>(var_0.a.x, u_input.d.x, var_0.a.x)), vec3<i32>(~(-51886i) ^ u_input.c.x, ~(-2147483647i), _wgslsmith_clamp_i32(var_0.a.x, var_0.a.x << (52715u % 32u), var_0.a.x))), -65503i, ~(-18642i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.e.x), vec2<u32>(var_0.b, u_input.e.x) ^ u_input.e.wz) % 32u)));
    return _wgslsmith_clamp_i32(firstTrailingBit(6242i), firstTrailingBit(-1i) >> (4294967295u % 32u), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_div_i32(-15997i, var_0.a.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_i32(func_2(!all(vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(370f, 913f, -2244f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, 582f, -815f)), true))), firstLeadingBit(i32(-1i) * -1i) | arg_1.a.x) | arg_0;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - _wgslsmith_f_op_f32(f32(-1f) * -682f)));
    let var_3 = arg_1;
    var var_4 = Struct_1(arg_1.a, u_input.e.x);
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~firstLeadingBit(-23209i), var_1.a.x), u_input.c.x), firstLeadingBit(max(vec2<i32>(firstTrailingBit(u_input.d.x), arg_2), _wgslsmith_div_vec2_i32(~arg_1.a, vec2<i32>(-2147483647i, var_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.e.ywx;
    let var_1 = arg_0;
    let var_2 = var_1;
    let var_3 = ~(vec3<i32>(arg_0.a.x, func_1(min(u_input.d.x, 18704i), Struct_1(u_input.c, 37787u), 2147483647i).x, _wgslsmith_sub_i32(var_2.a.x, 27795i)) | vec3<i32>(_wgslsmith_div_i32(var_1.a.x, var_1.a.x), 13209i, ~var_2.a.x));
    let var_4 = _wgslsmith_sub_u32(13301u, u_input.a);
    return Struct_1(vec2<i32>(func_1(min(reverseBits(17252i), -21756i), Struct_1(vec2<i32>(var_2.a.x, -2147483647i), ~arg_0.b), ~(-2147483647i) << (firstLeadingBit(arg_0.b) % 32u)).x, _wgslsmith_mult_i32(-1i, min(func_1(18449i, Struct_1(vec2<i32>(arg_0.a.x, 2147483647i), 1u), -1i).x, ~var_1.a.x))), _wgslsmith_dot_vec3_u32(var_0, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_mult_vec2_i32(u_input.c, func_1(0i, Struct_1(vec2<i32>(1562i, -2147483647i), u_input.e.x), -2147483647i)), 4294967295u), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(reverseBits(4294967295u) > _wgslsmith_add_u32(u_input.a, 0u), !select(true, false, false), false), true));
    var var_1 = !vec3<bool>(false, true, !any(vec4<bool>(false, false, false, false)));
    var_1 = !select(select(select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, true), vec3<bool>(true, false, var_1.x)), select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, var_1.x), true), select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), vec3<bool>(true, !var_1.x, !var_1.x), select(select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, var_1.x), var_1.x), !vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))), !vec3<bool>(true, all(vec3<bool>(false, var_1.x, var_1.x)), false), !var_1.x);
    var_1 = vec3<bool>(var_1.x, true, var_1.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2100f), -112f);
    let var_3 = vec2<u32>(var_0.b, firstLeadingBit(~_wgslsmith_mult_u32(u_input.a, var_0.b) << (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(4294967295u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x)))), u_input.b, vec3<i32>(u_input.c.x, i32(-1i) * -_wgslsmith_mult_i32(var_0.a.x, 0i), -max(u_input.d.x, 1i) & reverseBits(~77514i)), vec2<u32>(u_input.e.x, 4294967295u));
}

