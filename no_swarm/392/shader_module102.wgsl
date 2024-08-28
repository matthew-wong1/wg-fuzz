struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32 = 36973u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1577f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(967f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-arg_0.a.d.x)), 963f))));
    global1 = arg_2.a.b & (_wgslsmith_mod_u32(~(arg_2.a.a.x >> (u_input.b.x % 32u)), 1u) << (39379u % 32u));
    let var_1 = arg_2;
    global1 = firstTrailingBit(~(~min(max(var_1.a.b, 67576u), _wgslsmith_mult_u32(arg_0.b.b, arg_2.a.a.x))));
    let var_2 = u_input.a.x;
    return ~(~(-17837i));
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1571f, global0.x, global0.x) + vec3<f32>(global0.x, 1488f, 1317f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 130f, 1914f), vec3<f32>(global0.x, 986f, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 299f, 425f) + vec3<f32>(global0.x, global0.x, global0.x)), true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 858f, _wgslsmith_div_f32(-1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(-global0.x), -508f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1816f, global0.x) - vec3<f32>(global0.x, 1367f, global0.x)))), true)), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), (689f != _wgslsmith_f_op_f32(max(global0.x, global0.x))) & (u_input.b.x == u_input.b.x), any(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -479f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), global0.x));
    var var_1 = true;
    let var_2 = !select(vec4<bool>(false, true & all(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), all(vec3<bool>(global0.x == var_0.x, false, false)));
    var var_3 = var_2.x;
    return var_2.x;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = !vec4<bool>(func_4(func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(82776u, 7535u, 38142u), u_input.b.x), Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.x), true, global0.xy), Struct_1(vec3<u32>(u_input.b.x, 10318u, 4294967295u), u_input.b.x)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 36294u, u_input.b.x), u_input.b.x), Struct_1(u_input.b, u_input.b.x), true, global0.yy), Struct_1(u_input.b, 0u)), Struct_3(Struct_2(Struct_1(u_input.b, 14819u), Struct_1(vec3<u32>(u_input.b.x, 0u, 0u), u_input.b.x), true, arg_0), Struct_1(u_input.b, u_input.b.x))), Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 52570u), u_input.b.x), Struct_1(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), u_input.b.x), false, arg_0))), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, any(vec4<bool>(false, all(vec4<bool>(true, false, false, false)), u_input.b.x == 112198u, true)));
    global1 = u_input.b.x;
    let var_1 = Struct_3(Struct_2(Struct_1(vec3<u32>(abs(986u), ~11281u, ~u_input.b.x), reverseBits(u_input.b.x) & select(0u, u_input.b.x, true)), Struct_1(u_input.b, ~u_input.b.x | (37459u | u_input.b.x)), u_input.b.x >= 14780u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0.x)))))), Struct_1(~u_input.b, 0u));
    global1 = u_input.b.x;
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(~var_1.b.b, max(~u_input.b.x, u_input.b.x >> (u_input.b.x % 32u))), 40642u, u_input.b.x), max(~1u, u_input.b.x));
    return 386f;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(1250f, _wgslsmith_f_op_f32(min(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(380f))), -954f), vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(sign(global0.zy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(729f - 591f) - -1005f))))));
    var var_1 = vec3<f32>(global0.x, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x)) * -331f))));
    var var_2 = ~firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, u_input.b.x), ~vec4<u32>(arg_1, 1u, var_0, 1u)), ~(~1u), firstLeadingBit(~1u)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, arg_1), select(vec3<u32>(0u, 1u, 66087u), vec3<u32>(10121u, 0u, arg_1), !vec3<bool>(false, arg_0.x, true))), var_0), Struct_1(u_input.b, u_input.b.x), arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2407f, var_1.x)));
    return StorageBuffer(vec4<f32>(_wgslsmith_div_f32(-1421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), var_3.d.x, -1077f, var_3.d.x), -32269i, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!(!vec2<bool>(all(vec2<bool>(false, true)), true)), ~(~1u), -vec3<i32>(_wgslsmith_add_i32(~(-60655i), u_input.a.x), u_input.a.x, 2147483647i));
}

