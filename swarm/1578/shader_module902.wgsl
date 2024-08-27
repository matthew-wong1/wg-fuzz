struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    return _wgslsmith_mult_u32(arg_0.x, _wgslsmith_mult_u32(arg_0.x, abs(~7190u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    global1 = -211f;
    var var_0 = vec3<u32>(arg_0.x, ~arg_0.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 0u), arg_0.x)) << ((~countOneBits(vec3<u32>(48861u, 61849u, arg_0.x) << (vec3<u32>(arg_0.x, 72751u, arg_0.x) % vec3<u32>(32u))) & firstTrailingBit(countOneBits(~vec3<u32>(22832u, arg_0.x, 4294967295u)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_dot_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u) | abs(vec3<u32>(var_0.x, var_0.x, 24976u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, arg_0.x), countOneBits(vec3<u32>(0u, var_0.x, 54307u)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, var_0.x), abs(var_0.x)), ~abs(arg_0.x), var_0.x)), vec3<u32>(_wgslsmith_div_u32(~(~arg_0.x), _wgslsmith_mod_u32(26847u, var_0.x)), ~var_0.x, 1u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(1554f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(200f, arg_2.x)), 668f))), arg_2.x);
    var var_3 = var_2;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> f32 {
    global0 = any(arg_2);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(742f)), func_3(~vec2<u32>(1u, 1u), !(!arg_2.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-624f, arg_0.b, arg_0.a, 750f), vec4<f32>(arg_1.b, 258f, arg_1.b, arg_1.a)))))).a);
    let var_1 = var_0;
    let var_2 = select(vec3<u32>(min(firstLeadingBit(min(39756u, 52919u)), _wgslsmith_clamp_u32(1u, ~1u, ~58860u)), 0u, 0u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(116557u, 4308u, 56438u, 4294967295u), vec4<u32>(17311u, 0u, 60417u, 7705u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), ~vec3<u32>(41354u, 56480u, 1u), vec3<u32>(1u, 1u, 1u))), true);
    let var_3 = select(!select(!vec4<bool>(false, false, arg_2.x, false), select(!vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), select(vec4<bool>(arg_2.x, true, false, true), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2)), arg_2), !vec4<bool>(!arg_2.x, true, -2147483647i < _wgslsmith_div_i32(0i, arg_3.x), true), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-280f + var_0.b), true && any(select(vec4<bool>(var_3.x, true, true, false), var_3, arg_2)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = -1213f;
    global0 = arg_2.x;
    global1 = _wgslsmith_f_op_f32(func_4(func_3(vec2<u32>(~1u, ~(~12815u)), (true || all(arg_2.yx)) | (func_2(vec4<u32>(4294967295u, 0u, 42766u, 20465u)) > 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 1634f, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b, 948f, arg_0.x, arg_0.x)))))), arg_1, !select(!select(vec4<bool>(arg_2.x, true, arg_2.x, arg_3), vec4<bool>(arg_2.x, false, false, true), vec4<bool>(arg_2.x, true, true, false)), select(vec4<bool>(false, arg_2.x, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, arg_2.x), vec4<bool>(arg_3, arg_3, arg_3, arg_3)), select(vec4<bool>(false, false, true, arg_3), vec4<bool>(arg_3, true, false, arg_3), true)), vec4<bool>(true, true, arg_3, u_input.a.x >= -1i)), vec4<i32>(-(~(-2147483647i)), -countOneBits(u_input.a.x), select(_wgslsmith_sub_i32(38040i, u_input.a.x), 72119i, true == arg_2.x), 16801i) >> (vec4<u32>(0u, select(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 92023u, 19641u, 80109u), vec4<u32>(22418u, 16016u, 4294967295u, 24771u)), true), 1u >> (0u % 32u), ~(~0u)) % vec4<u32>(32u))));
    global1 = -992f;
    return 2462u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-765f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), func_3(vec2<u32>(46238u, arg_0), true, vec4<f32>(-677f, 2042f, arg_2.x, 521f)).b))));
    return any(!(!select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, arg_3, false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f))))));
    global0 = true | !(func_5(func_1(vec2<f32>(-421f, 1339f), Struct_1(1145f, 1903f), vec3<bool>(false, true, false), true), 0u, vec2<f32>(1000f, 321f), all(vec2<bool>(false, true))) || false);
    global0 = true;
    global0 = !((true && func_5(113856u, ~32301u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-933f, -591f), vec2<f32>(-517f, 1278f), vec2<bool>(false, false))), true)) & any(vec4<bool>(true, true, true, true)));
    let var_0 = 0i;
    var var_1 = vec3<u32>(~_wgslsmith_add_u32(1u, 75720u), 1u, ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~(~var_1.x), func_2(select(vec4<u32>(var_1.x, 56807u, 37627u, var_1.x), vec4<u32>(var_1.x, 0u, 21794u, 32727u), vec4<bool>(false, true, true, true))))), firstLeadingBit(reverseBits(~(~vec4<u32>(var_1.x, var_1.x, 0u, 0u)))));
}

