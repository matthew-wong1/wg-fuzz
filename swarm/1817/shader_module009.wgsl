struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-4703i, 8686i, 35674i, -8354i), vec4<i32>(-1i, 1i, 1226i, -1i))) >> (u_input.a % 32u)), ~_wgslsmith_div_i32(12128i, i32(-1i) * -2147483647i), -24828i, max(-2147483647i, -2147483647i));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.b - 761f), _wgslsmith_f_op_f32(sign(-364f)), -637f), vec3<f32>(_wgslsmith_f_op_f32(step(-375f, _wgslsmith_f_op_f32(min(global0.b, -1298f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-761f + 490f), true)))), _wgslsmith_f_op_f32(min(-297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * 1006f) + -822f))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(399f, var_1.x) * vec2<f32>(-1149f, var_1.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1543f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) + _wgslsmith_f_op_f32(max(-716f, _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))) * _wgslsmith_f_op_f32(1198f + _wgslsmith_f_op_f32(global0.a.x * -236f))));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(select(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15387i, 0i, var_0.x, 19640i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, 12545i, var_0.x, 1i))), false), -2147483647i), vec2<i32>(~(-14496i), var_0.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.xy + _wgslsmith_f_op_vec2_f32(sign(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    return global0.a;
}

fn func_2() -> f32 {
    let var_0 = 5105u;
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)) + global0.a), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))), global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(func_3())) + global0.a), global0.b);
    global0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - -638f) + 969f), _wgslsmith_f_op_f32(f32(-1f) * -622f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a))))), global0.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1837f, 1028f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f))));
    return _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f + _wgslsmith_f_op_f32(var_1.x * -631f))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))));
}

fn func_1() -> vec3<i32> {
    let var_0 = -8941i;
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(-1i, 13550i, _wgslsmith_mod_i32(-2147483647i, reverseBits(var_0))), 1i, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-30027i, var_0) & vec2<i32>(40272i, var_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -16592i), vec2<i32>(var_0, var_0), vec2<i32>(-1i, var_0)))));
    var_2 = -vec3<i32>(var_2.x, -1i, ~_wgslsmith_div_i32(-2147483647i, var_2.x));
    let var_3 = vec2<bool>(var_0 >= ~var_2.x, false);
    return vec3<i32>(min(_wgslsmith_mod_i32(_wgslsmith_div_i32(~(-10611i), var_0), 1i), var_0 ^ (i32(-1i) * -20556i)), ~firstLeadingBit(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(77445u, 19777u, 0u, 16391u), vec4<u32>(10259u, u_input.a, 26488u, u_input.a)) % 32u)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_sub_i32(18729i >> (u_input.a % 32u), 1i), 1i, -3606i >> (u_input.a % 32u))), _wgslsmith_mult_vec3_i32(-func_1(), select(min(vec3<i32>(0i, -30742i, -417i), vec3<i32>(-63060i, -3503i, -25642i)), -vec3<i32>(20612i, 0i, 22651i), true) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), -vec3<i32>(-1i, -22320i, -2147483647i))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-global0.a.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(ceil(global0.a))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, 1516f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)) * global0.a))), 501f);
    let var_1 = vec2<i32>(~0i, ~var_0.x);
    let var_2 = 66721u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(-global0.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), 1171f)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(303f, -397f, 1u < var_2)), global0.b))), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_0.x);
}

