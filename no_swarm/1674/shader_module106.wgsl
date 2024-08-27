struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 41398u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> vec4<f32> {
    var var_0 = -_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(6974i, -1i, 1i))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -16225i, 10923i), vec4<i32>(-58995i, 9282i, -51504i, -1i)), _wgslsmith_clamp_i32(2147483647i, 1i, 0i), 2147483647i << (u_input.a % 32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-1i, 1i, 57157i)), vec3<i32>(-2809i, -2147483647i, 28000i))));
    var var_1 = !vec3<bool>(arg_1, all(select(select(arg_2.yy, vec2<bool>(arg_1, arg_2.x), false), arg_2.zy, true)), !select(all(arg_2.yy), false, arg_1 | arg_2.x));
    var var_2 = 117f;
    var_0 = -(~49496i);
    global0 = u_input.b.xw;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1f, 461f, _wgslsmith_f_op_f32(select(-387f, -1849f, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, -2427f, -1000f, 1519f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(419f, -157f, 1000f, -898f), vec4<f32>(851f, -240f, 159f, -421f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1516f, -341f, 659f, 455f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, 451f, 462f, -113f)))))), vec4<bool>(true, any(!select(vec2<bool>(true, var_1.x), vec2<bool>(arg_1, arg_1), var_1.x)), true, !var_1.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = ~(vec4<i32>(109789i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, arg_0.a.x, -2147483647i, 18417i), vec4<i32>(17407i, 0i, arg_0.a.x, -1i)), select(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_0.a.x, 1i), vec4<i32>(arg_0.a.x, -13426i, arg_0.a.x, -24870i), vec4<bool>(false, false, false, true))), arg_0.a.x, arg_1.a.x) | ~vec4<i32>(max(arg_1.a.x, arg_1.a.x), _wgslsmith_div_i32(1i, -35320i), 2147483647i >> (global0.x % 32u), -65427i));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(var_0.wwz, arg_0.a), min(vec4<u32>(_wgslsmith_mult_u32(global0.x, arg_0.b.x), ~arg_1.b.x, 10744u, ~52452u) ^ countOneBits(u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_1.b.x, global0.x, global0.x, 4294967295u)), _wgslsmith_sub_vec4_u32(u_input.b, arg_0.b), arg_0.b), min(vec4<u32>(u_input.b.x, 4294967295u, 32935u, arg_1.b.x), vec4<u32>(u_input.b.x, 1u, 1u, 1u)))));
    var var_2 = Struct_1(vec3<i32>(firstLeadingBit(var_1.a.x) ^ ~(~arg_1.a.x), _wgslsmith_add_i32(-var_1.a.x, arg_1.a.x), ~(~(~arg_0.a.x))), vec4<u32>(~var_1.b.x & 72428u, u_input.a, ~global0.x, arg_1.b.x));
    global0 = _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.b.x, ~u_input.b.x), vec2<u32>(select(3442u, arg_0.b.x, true), ~var_2.b.x));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(~min(4294967295u >> (var_1.b.x % 32u), ~u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, var_1.b.x, 45798u), arg_0.b.yyz, vec3<u32>(60083u, u_input.a, arg_1.b.x)), abs(vec3<u32>(var_1.b.x, arg_0.b.x, 8879u))), vec3<u32>(~u_input.b.x, _wgslsmith_sub_u32(35256u, global0.x), 4294967295u & var_2.b.x))), u_input.b.xx);
    return 2147483647i;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~u_input.b.yx, !(!any(vec3<bool>(arg_2, arg_2, arg_2))), !vec3<bool>(true, arg_2 || arg_2, arg_2), u_input.b.x)));
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a, 4294967295u, global0.x))), vec3<u32>(global0.x, u_input.a, _wgslsmith_add_u32(~124279u, countOneBits(u_input.a)))), 1u);
    global0 = u_input.b.xz;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-33935i, func_3(Struct_1(vec3<i32>(arg_0.x, -1i, arg_0.x), u_input.b), Struct_1(vec3<i32>(1i, -43132i, -35095i), u_input.b), -572f), ~_wgslsmith_clamp_i32(arg_0.x, 0i, arg_0.x)), arg_0.xww), u_input.b);
    let var_2 = Struct_1(vec3<i32>(var_1.a.x, -2147483647i, var_1.a.x) ^ vec3<i32>(var_1.a.x, -(~1i), -var_1.a.x & _wgslsmith_mult_i32(-1i, -2147483647i)), var_1.b);
    return ~4294967295u & _wgslsmith_sub_u32(12405u, reverseBits((var_2.b.x << (4294967295u % 32u)) << (~u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec2<u32>(4294967295u, func_1(-firstLeadingBit(vec4<i32>(1i, 56571i, 77920i, 1i)), 1u, ~1u >= u_input.b.x)));
    var var_0 = select(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(true || any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), false, !(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 15792i, -21679i, 0i), vec4<i32>(2147483647i, -20246i, 1i, -1i)) >= -2147483647i)), 104716u < _wgslsmith_add_u32(abs(4294967295u >> (global0.x % 32u)), ~_wgslsmith_add_u32(6027u, u_input.b.x)));
    global0 = u_input.b.xy;
    global0 = u_input.b.zw;
    global0 = ~(~select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(global0.x, 4294967295u)), firstLeadingBit(vec2<u32>(0u, 41743u))), ~(~u_input.b.yz), var_0.yy));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, global0.x), 10103u, ~3392u), abs(global0.x), true), 2262f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, 364f, -710f, 761f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(973f, -118f, 1490f, 525f), vec4<f32>(-1572f, -135f, 855f, 866f)))))))), _wgslsmith_f_op_f32(f32(-1f) * -1032f));
}

