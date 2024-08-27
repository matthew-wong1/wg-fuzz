struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-413f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(firstLeadingBit(~17930u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))));
    let var_2 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2580i), firstLeadingBit(vec2<i32>(0i, 1i)))), 978f, any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(4347i, -1i, -1i), vec3<i32>(2147483647i, 36060i, 1i))));
    let var_3 = ~(-var_2.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-268f, 566f, 2336f), vec3<f32>(global0.a, -695f, var_1.a))) - vec3<f32>(766f, var_2.b, -1242f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(-1943f, var_2.b, var_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1030f, -1720f, global0.a)), var_2.c))))));
    return var_1;
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(true, true, true, true);
    var var_1 = ~select(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(~vec4<i32>(-32194i, 35223i, -2147483647i, -51366i)) ^ vec4<i32>(23618i >> (u_input.a % 32u), 25089i, _wgslsmith_mod_i32(4962i, 1i), ~(-61824i)), !(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x))));
    let var_2 = func_1();
    let var_3 = -select(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(18028i, 0i, var_1.x, var_1.x), vec4<i32>(1i, var_1.x, -1i, 9695i)), max(vec4<i32>(var_1.x, -33965i, 0i, var_1.x), vec4<i32>(6280i, var_1.x, -1i, 24969i))), 9041i, -7156i, var_1.x), ~(reverseBits(vec4<i32>(var_1.x, -48044i, 1i, var_1.x)) | firstTrailingBit(vec4<i32>(-43133i, var_1.x, -31695i, 0i))), false);
    var_1 = select(vec4<i32>(var_3.x, _wgslsmith_mod_i32(~var_1.x, ~(-10025i)), countOneBits(0i), -29391i) | (vec4<i32>(-1i) * -vec4<i32>(2876i, var_3.x, var_1.x, var_1.x)), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(max(-47648i, var_1.x)), 1i), 30903i, -1i, var_1.x), vec4<bool>(all(vec4<bool>(false, false, any(var_0.wz), var_0.x)), var_0.x, global0.a == 473f, var_0.x));
    return global0.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_1;
    let var_1 = u_input.a;
    var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    let var_2 = 1i;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(func_3())))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(200f, -1368f, -1000f, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -722f, 344f, -750f)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-333f, global0.a, global0.a, global0.a), vec4<f32>(global0.a, global0.a, global0.a, 789f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.a, 1000f, -647f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, global0.a, global0.a, global0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, global0.a, global0.a, global0.a), vec4<f32>(global0.a, -101f, global0.a, global0.a), false)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-149f, global0.a, 140f, 1224f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1308f, 1469f, global0.a, 728f) * vec4<f32>(global0.a, global0.a, -256f, global0.a))))));
    var var_1 = select(!vec4<bool>(select(true, true, false), false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true), vec4<bool>(false, !any(vec4<bool>(true, true, false, true)) && true, true, true), !any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) * _wgslsmith_f_op_vec2_f32(func_2(true, func_1(), func_1())));
    global0 = func_1();
    let var_3 = vec3<i32>(-53180i, -abs(2147483647i), -1i);
    let var_4 = vec4<u32>(abs(~min(countOneBits(u_input.a), _wgslsmith_mult_u32(u_input.a, 1u))), abs(firstTrailingBit((u_input.a ^ 0u) | countOneBits(u_input.a))), u_input.a & ((_wgslsmith_clamp_u32(17829u, 1u, u_input.a) << (~u_input.a % 32u)) | firstLeadingBit(85715u)), u_input.a);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1585f, 1184f) * _wgslsmith_f_op_f32(-func_1().a)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(353f, 1259f, var_2.x, global0.a), vec4<f32>(var_0.x, var_5.a, global0.a, var_0.x), var_1.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-650f, global0.a, var_0.x, -785f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (~var_4.x % 32u));
}

