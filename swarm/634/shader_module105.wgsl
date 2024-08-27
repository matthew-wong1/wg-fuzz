struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(394f, 1328f, -760f, 109f), i32(-2147483648));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(global0.a, 9260i);
    var_0 = Struct_1(vec4<f32>(arg_1.a.x, arg_0.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x)), -899f), arg_1.b);
    let var_1 = -149f;
    let var_2 = var_0.a.x;
    let var_3 = arg_0;
    return ~1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec4<f32> {
    var var_0 = reverseBits(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 0u, 4294967295u), vec3<u32>(35442u, arg_3, 69926u)), max(arg_3, arg_3), true)) ^ 65186u;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(38913u), arg_3), arg_3);
    let var_1 = select((true || all(vec3<bool>(false, false, false))) != all(vec4<bool>(true, true, true, true)), true, true) || !(false & select(true, true, all(vec4<bool>(false, true, true, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, global0.a)), arg_0.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.a.x), -2061f, _wgslsmith_f_op_f32(-751f - 1065f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(2079f, 326f, arg_0.a.x, -580f), vec4<f32>(var_2.a.x, -313f, 1902f, 1850f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(var_2.a.x, 652f, arg_2.x, 1714f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, arg_2.x, 186f, -1000f)), 1897f > arg_1.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, arg_1.a)))), -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), -vec4<i32>(1i, u_input.a, var_2.b, 38703i)), u_input.b));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_3.a, _wgslsmith_div_vec4_f32(arg_1.a, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(429f - arg_0.a.x), var_2.a.x, -680f, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec4_f32(trunc(var_2.a))) + _wgslsmith_f_op_vec4_f32(-arg_1.a)));
}

fn func_1(arg_0: f32) -> i32 {
    global0 = Struct_1(global0.a, u_input.b.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(829f, arg_0, arg_0, 948f)))), firstTrailingBit(global0.b));
    var var_1 = vec2<f32>(1f, 1f);
    let var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 0u, func_2(var_0, var_0, var_0) & 1u), ~((~1u << (_wgslsmith_clamp_u32(2983u, 18235u, 4294967295u) % 32u)) ^ ~_wgslsmith_mod_u32(4294967295u, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), firstLeadingBit(_wgslsmith_div_i32(51046i, -1i))), var_0, vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * 1032f) + _wgslsmith_f_op_f32(1240f * 361f)), global0.a.x), var_2)), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(global0.b), -20196i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), u_input.b.xwz)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)), 679f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1867f + global0.a.x) * _wgslsmith_f_op_f32(round(global0.a.x))) * _wgslsmith_f_op_f32(-global0.a.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 210f)));
    let var_1 = max(vec4<i32>(-func_1(global0.a.x), max(abs(0i), u_input.a), _wgslsmith_mult_i32(-2147483647i, 0i), u_input.a), u_input.b) & (vec4<i32>(countOneBits(4063i), u_input.a, global0.b, ~2147483647i) | abs(vec4<i32>(-1i, 40467i, u_input.b.x, global0.b) ^ ~u_input.b));
    let var_2 = global0.b;
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-global0.a))))), (global0.b & 1i) << (~12591u % 32u));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.a)) - global0.a)) + _wgslsmith_f_op_vec4_f32(exp2(global0.a))), global0.b);
    var var_3 = ~_wgslsmith_div_u32(40467u, _wgslsmith_clamp_u32(1u, min(4593u, 2933u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 47388u), vec2<u32>(4294967295u, 0u)))));
    let var_4 = true && any(vec4<bool>(false, true | select(false, true, true), true, !all(vec2<bool>(true, false))));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 970f, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true))))), 1776f));
}

