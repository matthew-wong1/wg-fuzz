struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 406f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = min(select(u_input.a, ~_wgslsmith_add_i32(~2147483647i, 1i), any(vec4<bool>(false, false, true, select(false, true, true)))), -23545i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -1371f, 412f, 1000f))))))));
    var_0 = ~u_input.a >> ((1u << (1u % 32u)) % 32u);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-25595i, u_input.a, -2147483647i, u_input.a) & reverseBits(vec4<i32>(15606i, 0i, -1i, 0i)), abs(select(vec4<i32>(-1i, u_input.a, -40360i, 16976i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), true))), abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 3398i)))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_0)) * 565f) + 1633f), vec4<bool>(any(vec3<bool>(all(vec2<bool>(false, true)), select(true, true, false), true)), any(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, true)), true, u_input.a == -1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 * var_1)) + var_1)));
    let var_3 = var_2.b;
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(select(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, arg_0.x, 9757i, -2147483647i), min(vec4<i32>(1i, arg_0.x, 0i, -68274i), vec4<i32>(1i, arg_0.x, 7951i, -3178i))), ~select(vec4<i32>(arg_0.x, 2147483647i, u_input.a, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a), false), !(arg_0.x <= 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, ~u_input.a, -2147483647i, 2403i), select(vec4<i32>(arg_0.x, arg_0.x, u_input.a, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.x, 0i, arg_0.x), vec4<i32>(1i, arg_0.x, -23239i, arg_0.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))), !(!any(vec4<bool>(true, true, false, false)))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(14003i != arg_0.x, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -416f) < _wgslsmith_f_op_f32(select(1009f, -346f, true)))), _wgslsmith_f_op_f32(-1f), select(select(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, false), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, false, false, true)), func_3(2088f)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, select(true, true, true), true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(176f, 834f, -779f, -664f)))))));
    let var_1 = firstLeadingBit(var_0.a.x ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0), ~(-vec3<i32>(var_0.a.x, u_input.a, arg_0.x))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.c))))));
    var var_2 = Struct_2(Struct_1(-var_0.a, all(vec4<bool>(true, false, !var_0.d.x, true)), var_0.c, var_0.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x * var_0.c), _wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(round(var_0.c))), vec4<f32>(var_0.c, 1131f, 849f, var_0.e.x), select(!vec4<bool>(var_0.d.x, false, true, false), !var_0.d, var_0.b)))), arg_0.x, _wgslsmith_div_i32(-(var_0.a.x << (1u % 32u)), -var_0.a.x));
    var_0 = Struct_1(vec4<i32>(~_wgslsmith_clamp_i32(var_2.c, var_2.c, var_1), abs(-17996i), ~(-_wgslsmith_dot_vec3_i32(var_2.a.a.wzy, arg_0)), -u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(171f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_f_op_f32(round(-2229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - var_0.c)), vec4<bool>(true, var_0.b, true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(900f, _wgslsmith_f_op_f32(max(var_2.a.c, var_2.a.c)), _wgslsmith_div_f32(-776f, var_0.c), _wgslsmith_f_op_f32(-var_2.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.e)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(475f, 1649f, var_0.c, var_2.a.e.x)))))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -359f)))));
    return Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(var_2.a.a, vec4<i32>(21685i, 1i, 0i, _wgslsmith_mod_i32(var_1, var_2.c)), var_2.a.a), !var_2.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), var_2.a.d, var_2.a.e), max(countOneBits(-2147483647i), 2147483647i), -(~var_0.a.x ^ -4825i) ^ (firstTrailingBit(_wgslsmith_mult_i32(var_1, -1i)) << (~119030u % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<i32> {
    global0 = arg_0.a.e.x;
    let var_0 = i32(-1i) * -abs(firstLeadingBit(arg_2));
    global0 = arg_0.a.e.x;
    global0 = _wgslsmith_div_f32(arg_0.a.e.x, _wgslsmith_f_op_f32(-arg_0.a.e.x));
    global0 = arg_0.a.e.x;
    return vec4<i32>(_wgslsmith_clamp_i32(arg_2, min(-2147483647i, arg_0.a.a.x), arg_2), -arg_2, ~(u_input.a << (41063u % 32u)), countOneBits(var_0 << (~arg_1 % 32u)));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = func_2(abs(max(vec3<i32>(arg_1.x, u_input.a, 1010i) | vec3<i32>(arg_1.x, u_input.a, 0i), arg_1.zww << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 29259u, 4294967295u)), ~vec3<u32>(10889u, 13990u, 1u)) % vec3<u32>(32u))));
    var var_2 = vec3<i32>(arg_1.x, -5772i, -2147483647i);
    var_0 = false;
    var var_3 = -u_input.a <= var_2.x;
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(max(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-12351i, -2147483647i, u_input.a, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -3331i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, -10748i, -1i))), _wgslsmith_add_i32(-26698i, -u_input.a))), u_input.a);
    var var_1 = false;
    var var_2 = func_5(-1325f, select(func_4(func_2(vec3<i32>(u_input.a, 7197i, u_input.a)), 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(-18262i, -24617i, u_input.a) << (vec3<u32>(4294967295u, 68356u, 44645u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 34393i, 0i) ^ vec3<i32>(-24529i, 2147483647i, -28532i))), -(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) & vec4<i32>(2147483647i, 1i, -16166i, -2147483647i)) & ~select(vec4<i32>(4116i, 23926i, -36845i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), false), firstTrailingBit(~4294967295u) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(17933u, 24541u, 73753u), vec3<u32>(4294967295u, 4294967295u, 0u))));
    var var_3 = Struct_1(var_2.a.a | -(~var_2.a.a), any(var_2.a.d.zxz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.e.x), 1000f), var_2.a.d, vec4<f32>(var_2.a.e.x, _wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.e.x)), _wgslsmith_f_op_f32(min(482f, _wgslsmith_f_op_f32(-var_2.a.c))))), -1151f));
    let var_4 = 1i;
    return var_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = func_2(-arg_0.a.wyx).a.d.xwy;
    global0 = _wgslsmith_f_op_f32(abs(-782f));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) + _wgslsmith_f_op_f32(-func_1().e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x - _wgslsmith_div_f32(-560f, 628f)) - _wgslsmith_f_op_f32(-810f + arg_0.c)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.c)), arg_0.e.x)))));
    let var_1 = arg_0.d.x;
    var var_2 = ~vec4<u32>(1u, 1u, 1u, 1u);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)))));
    let var_0 = all(vec2<bool>(true, false | all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
    var var_1 = ~0u;
    var var_2 = var_0;
    var var_3 = Struct_1(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a))), (false | var_0) && (_wgslsmith_f_op_f32(func_6(Struct_1(vec4<i32>(u_input.a, u_input.a, -27070i, u_input.a), var_0, -1065f, vec4<bool>(var_0, var_0, true, false), vec4<f32>(-726f, -133f, 1164f, -761f)), func_1())) < _wgslsmith_f_op_f32(func_1().c - 3161f)), _wgslsmith_f_op_f32(1470f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(488f * -713f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-1081f + func_1().e.x))), vec4<bool>(-41782i <= -_wgslsmith_mod_i32(1i, u_input.a), true, any(!vec4<bool>(true, var_0, var_0, false)), var_0 | !func_3(727f)), vec4<f32>(_wgslsmith_f_op_f32(-func_2(-vec3<i32>(u_input.a, -23038i, u_input.a)).a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f))), _wgslsmith_f_op_f32(abs(2964f)), -332f));
    global0 = 212f;
    global0 = 1113f;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.c * var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(768f)) * _wgslsmith_div_f32(var_3.c, var_3.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.c), var_3.e.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(25217u), abs(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 9866u, 45861u), select(vec4<u32>(8724u, 4294967295u, 0u, 2470u), vec4<u32>(1u, 10983u, 1u, 0u), var_3.d)), max(_wgslsmith_mod_u32(0u, 46563u), ~29241u)), vec4<u32>(4294967295u, 0u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 76u, 0u), vec3<u32>(1u, 52931u, 61678u))) & vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(max(0u, 25781u), ~29306u), countOneBits(1u)), 0u), _wgslsmith_mod_i32(-((u_input.a >> (1055u % 32u)) << (1u % 32u)), -_wgslsmith_clamp_i32(var_3.a.x, _wgslsmith_mod_i32(u_input.a, 3196i), -67487i)));
}

