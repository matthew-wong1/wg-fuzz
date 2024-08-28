struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_0.c.wyw;
    var var_1 = arg_0.e.x == abs(u_input.a);
    var_1 = true;
    let var_2 = arg_0;
    let var_3 = arg_0.a;
    return vec3<bool>(true, arg_1.x, -(_wgslsmith_dot_vec2_i32(var_2.e, var_2.e) | 19987i) >= _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.b, var_2.d.b), var_2.e), -49034i), -var_3.b));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(select(~vec2<i32>(-2147483647i, arg_1), vec2<i32>(1i, 1i), arg_2.x), firstTrailingBit(select(vec2<i32>(1i, var_0.b), vec2<i32>(19301i, 1i), vec2<bool>(arg_2.x, false))), var_0.a | true), vec2<i32>(arg_3.b, ~(-2147483647i)) & _wgslsmith_mult_vec2_i32(max(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, var_0.b)), min(vec2<i32>(arg_1, var_0.b), vec2<i32>(2147483647i, -31512i)))), ~var_0.b);
    var var_2 = -firstLeadingBit(arg_1 & arg_3.b);
    var var_3 = Struct_2(Struct_1(!(all(vec3<bool>(true, var_0.c.x, false)) || !arg_3.c.x), 1i, func_3(Struct_2(var_0, select(var_0.c, var_0.c, false), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 409f, arg_0, arg_0), vec4<f32>(514f, arg_0, arg_0, arg_0)), var_0, vec2<i32>(u_input.a, var_0.b) >> (vec2<u32>(28081u, 4294967295u) % vec2<u32>(32u))), select(select(vec4<bool>(true, true, arg_3.c.x, arg_2.x), vec4<bool>(false, arg_2.x, var_0.c.x, true), true), !vec4<bool>(false, var_0.c.x, false, false), !vec4<bool>(arg_3.a, false, true, false))).yy), select(arg_2.yy, vec2<bool>(func_3(Struct_2(Struct_1(false, 21831i, vec2<bool>(var_0.c.x, var_0.c.x)), var_0.c, vec4<f32>(-964f, -1165f, -1321f, -175f), arg_3, vec2<i32>(arg_3.b, arg_1)), !vec4<bool>(arg_2.x, false, arg_2.x, true)).x, false), vec2<bool>(!all(vec3<bool>(arg_3.c.x, arg_3.a, arg_3.a)), true)), vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -528f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)))), var_0, min(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.b, arg_1), countOneBits(~vec2<i32>(var_0.b, -2147483647i))), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_3.b), vec2<i32>(2147483647i, arg_3.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-50520i, 56663i), vec2<i32>(arg_1, 12200i)), vec2<i32>(arg_1, u_input.a))));
    var_3 = Struct_2(Struct_1(true, min(-38826i, ~(-var_0.b)), var_0.c), arg_2.xy, _wgslsmith_f_op_vec4_f32(floor(var_3.c)), Struct_1(!(_wgslsmith_sub_i32(arg_3.b, -2147483647i) < arg_3.b), -1i, var_0.c), countOneBits(select(max(vec2<i32>(var_0.b, -41096i), vec2<i32>(-19727i, arg_1)), ~vec2<i32>(1i, var_3.a.b), true)) << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 42065u)), abs(3984u)), ~abs(4294967295u)) % vec2<u32>(32u)));
    return countOneBits(1i);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = ~vec3<u32>(~(~3294u), ~_wgslsmith_mod_u32(~13061u, ~24595u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(70707u, 0u), _wgslsmith_div_u32(37143u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 78453u, 1u), vec3<u32>(4294967295u, 0u, 916u)))));
    var_0 = countOneBits(vec3<u32>(~(~0u), var_0.x, _wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(~0u, select(91321u, 1u, true)))));
    let var_1 = Struct_2(Struct_1(!(_wgslsmith_f_op_f32(sign(-1350f)) < _wgslsmith_f_op_f32(-1687f * 773f)), 16654i, !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), !(!vec2<bool>(any(vec4<bool>(false, false, true, false)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(f32(-1f) * -725f), -1000f, 541f)), Struct_1(any(vec4<bool>(true, true, true, true)), func_4(1306f, 9824i, select(func_3(Struct_2(Struct_1(true, 4089i, vec2<bool>(true, true)), vec2<bool>(true, false), vec4<f32>(818f, 1000f, -432f, -1814f), Struct_1(true, arg_0, vec2<bool>(true, false)), vec2<i32>(u_input.a, 24906i)), vec4<bool>(false, false, false, true)), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), Struct_1(func_3(Struct_2(Struct_1(false, u_input.a, vec2<bool>(true, false)), vec2<bool>(false, false), vec4<f32>(-1007f, 1000f, 1009f, 745f), Struct_1(true, -56357i, vec2<bool>(true, true)), vec2<i32>(36836i, u_input.a)), vec4<bool>(true, true, false, false)).x, 18046i, vec2<bool>(true, true))), select(vec2<bool>(true, all(vec2<bool>(true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), (34119i ^ u_input.a) > arg_0)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0, -1i), vec2<i32>(-53502i, u_input.a), vec2<bool>(true, false)), vec2<i32>(1i, arg_0)), -14705i));
    var_0 = firstLeadingBit(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 44230u, var_0.x), vec3<u32>(9489u, var_0.x, 14171u)), vec3<u32>(var_0.x, _wgslsmith_mult_u32(4584u, 8708u), 36782u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.x, firstLeadingBit(20127u)), abs(vec3<u32>(var_0.x, var_0.x, var_0.x) | vec3<u32>(var_0.x, 1u, 33098u))));
    var var_2 = true;
    return var_1.c.x;
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = -639f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * _wgslsmith_f_op_f32(func_2(u_input.a)))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1217f + _wgslsmith_div_f32(1000f, 1724f)), 706f, -827f, _wgslsmith_f_op_f32(f32(-1f) * -1110f)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-787f + 716f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2123f * -1940f), _wgslsmith_f_op_f32(f32(-1f) * -157f))), _wgslsmith_f_op_f32(-257f - 356f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -621f)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = firstTrailingBit(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 6900u, 34409u), vec3<u32>(0u, 4294967295u, 30751u), ~vec3<u32>(43958u, 1u, 0u))) ^ vec3<u32>(1u, 1u, 1u));
    var var_1 = arg_1.a.b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(var_0.x)).x))), _wgslsmith_f_op_f32(floor(718f)), -527f);
    let var_3 = 90852u;
    var var_4 = arg_1;
    return vec2<i32>(_wgslsmith_add_i32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), var_4.e.x, !select(vec3<bool>(false, arg_1.b.x, arg_1.d.c.x), vec3<bool>(arg_1.d.a, var_4.d.a, var_4.b.x), arg_1.d.a), Struct_1(1i > arg_1.a.b, -2147483647i, select(var_4.d.c, vec2<bool>(false, false), false))), u_input.a), _wgslsmith_div_i32(~(~func_4(488f, 39469i, vec3<bool>(false, true, false), Struct_1(true, arg_1.d.b, var_4.b))), _wgslsmith_div_i32(func_4(_wgslsmith_f_op_f32(-1709f + arg_0.x), -var_4.a.b, func_3(arg_1, vec4<bool>(true, false, true, arg_1.a.c.x)), Struct_1(var_4.d.a, 24601i, arg_1.a.c)), -13926i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(58200u, 12162u, 4294967295u), vec3<u32>(5344u, 9285u, 38373u)), abs(5404u)), ~(~73u)))), Struct_2(Struct_1(!all(vec2<bool>(false, true)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -782f), 1i, vec3<bool>(false, false, false), Struct_1(true, -6684i, vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(true, true, true)), true)), !vec2<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, true))), vec4<f32>(-364f, _wgslsmith_f_op_f32(trunc(748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(0u)).x - 399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(144f, 604f)))), Struct_1((u_input.a ^ u_input.a) > u_input.a, u_input.a, select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), min(reverseBits(vec2<i32>(-1853i, u_input.a) | vec2<i32>(-2147483647i, u_input.a)), abs(~vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_div_f32(803f, -2256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1129f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-205f, -419f))), true)), -1723f));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x)))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, var_1.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(846f, var_1.x)))) * vec2<f32>(var_1.x, var_1.x)))));
    var var_2 = _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_0, ~vec2<i32>(2147483647i, 19739i)), firstTrailingBit(vec2<i32>(u_input.a, var_0.x))), -var_0);
    let var_3 = Struct_2(Struct_1(!(var_2.x <= func_4(588f, var_0.x, vec3<bool>(true, false, false), Struct_1(false, var_0.x, vec2<bool>(true, false)))), _wgslsmith_dot_vec2_i32(-(var_0 | vec2<i32>(1i, u_input.a)), -reverseBits(vec2<i32>(var_2.x, u_input.a))), func_3(Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, true)), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 651f, 442f, 1220f) * vec4<f32>(var_1.x, -1416f, var_1.x, -1285f)), Struct_1(false, var_0.x, vec2<bool>(false, false)), var_0), vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, true)).zx), select(!vec2<bool>(-195f != var_1.x, true), !func_3(Struct_2(Struct_1(true, var_0.x, vec2<bool>(true, false)), vec2<bool>(true, true), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(false, var_0.x, vec2<bool>(false, false)), vec2<i32>(u_input.a, u_input.a)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))).zz, select(true, select(true, true, false), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(96202u, 43889u, 31737u), vec3<u32>(78688u, 42047u, 54400u)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, var_1.x, 844f) + vec4<f32>(-876f, var_1.x, -287f, -1136f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 428f, 395f, var_1.x), vec4<f32>(434f, var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 546f, var_1.x, -340f), vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x), false))))), Struct_1(false, _wgslsmith_sub_i32(-abs(var_2.x), 1i & func_4(var_1.x, var_0.x, vec3<bool>(true, true, true), Struct_1(true, u_input.a, vec2<bool>(false, false)))), vec2<bool>(all(vec3<bool>(true, true, true)), true)), -var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, var_0.x), vec3<i32>(var_2.x, var_3.a.b, var_2.x), vec3<i32>(1i, 0i, var_3.d.b) ^ vec3<i32>(var_0.x, 64571i, 0i)) | ~firstLeadingBit(vec3<i32>(2375i, var_3.d.b, var_2.x)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), reverseBits(min(vec2<u32>(1u, 377u), vec2<u32>(1u, 41109u))), var_3.b.x), reverseBits(~vec2<u32>(8578u, 0u)) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(81146u, 31089u), vec2<u32>(24973u, 27615u))), ~26129u, min(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 55713i, var_0.x), ~vec3<i32>(var_3.e.x, -1i, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(31807i, -2147483647i, var_3.e.x), vec3<i32>(-10747i, 1i, u_input.a), vec3<i32>(-16806i, 0i, u_input.a)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), select(vec3<i32>(var_2.x, 27821i & u_input.a, reverseBits(1i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, -2892i, var_3.d.b), vec3<i32>(-2147483647i, 2147483647i, var_0.x)), ~vec3<i32>(var_2.x, 0i, -1i)), var_3.b.x)));
}

