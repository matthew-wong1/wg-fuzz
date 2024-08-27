struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(-1231f, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0.x, 24167u), 1u, 0u), ~u_input.a.xyw << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, global0.x), vec3<u32>(global0.x, 10720u, 0u)) % vec3<u32>(32u))), ~u_input.a.yyx), true);
    var var_1 = var_0.c;
    let var_2 = abs(~_wgslsmith_div_i32(_wgslsmith_mult_i32(30276i, 1i), 1i));
    let var_3 = vec3<bool>(all(vec4<bool>(_wgslsmith_f_op_f32(min(var_0.a, -790f)) >= var_0.a, select(true, true, !var_0.c), select(var_2, -8767i, var_0.c) >= abs(var_2), select(true, var_0.c || var_0.c, false))), !var_0.c, 2147483647i <= abs(var_2));
    var var_4 = Struct_1(var_0.a, ~var_0.b ^ var_0.b, true);
    return var_2;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> u32 {
    global0 = u_input.a.wx;
    var var_0 = !(!(!(true & select(false, false, false))));
    global0 = arg_3;
    global0 = ~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(min(4294967295u, u_input.b), 32105u), firstTrailingBit(~vec2<u32>(4294967295u, 6608u))));
    var var_1 = Struct_1(360f, abs(abs(vec3<u32>(~25501u, global0.x, 3451u))), any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(false, any(vec4<bool>(true, false, false, false)), true), true)));
    return u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_f_op_f32(min(arg_1.x, arg_2))))))), ~u_input.a.zzx & _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a.zyy, ~vec3<u32>(u_input.a.x, 0u, 13692u), u_input.a.wxx), (vec3<u32>(global0.x, u_input.b, global0.x) << (vec3<u32>(u_input.b, 15271u, 0u) % vec3<u32>(32u))) << (~u_input.a.ywx % vec3<u32>(32u))), true);
    var var_1 = reverseBits(~(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, 7230i, -37501i, arg_3), vec4<i32>(arg_3, arg_3, -1i, -23171i)) << (~u_input.a % vec4<u32>(32u)))) ^ _wgslsmith_clamp_vec4_i32(-((vec4<i32>(arg_3, 45438i, arg_3, 2147483647i) << (u_input.a % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u))), min(vec4<i32>(arg_3, -13006i, 22470i, -6105i >> (var_0.b.x % 32u)), ~firstTrailingBit(vec4<i32>(-48712i, arg_3, arg_3, -1i))), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, 0i, -47665i, 1i), vec4<i32>(-29656i, arg_3, arg_3, arg_3))));
    return StorageBuffer(~(~5016u), var_1.yzw, vec3<i32>(-28976i, var_1.x, firstLeadingBit(func_2())), abs(func_3(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(1281f * arg_2), var_0.a), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -403f, arg_2, 1047f), vec4<f32>(var_0.a, arg_2, arg_2, arg_2)))), min(select(vec2<u32>(arg_0, 1u), var_0.b.zy, var_0.c), ~vec2<u32>(34347u, 82172u)))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, -628f, var_0.c)) + -172f) - -2374f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, -217f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(870f, 692f) - vec2<f32>(2142f, 1000f))), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1113f, 569f)), -487f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) + _wgslsmith_f_op_f32(-441f + -457f)))), -69350i);
}

