struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_div_i32(2147483647i, u_input.b), ~global0.a) ^ -(~abs(global0.a)), global0.b);
    return vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-507f + global0.b.x), global0.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_div_i32(abs(abs(arg_0)), countOneBits(arg_0)), arg_1.b.zw);
    global0 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(u_input.b), global0.a), global0.b);
    var_1 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2)));
    return ~u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<u32>) -> i32 {
    var var_0 = ~func_4(-1i, Struct_2(arg_0, vec4<f32>(1285f, global0.b.x, 1000f, -1095f)), _wgslsmith_f_op_vec3_f32(func_3())) << (20317u % 32u);
    global1 = !(arg_2.x <= 4294967295u) & all(!select(vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, true, arg_1), false));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(585f, 1216f)) * -1019f) + arg_0), vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 1026f), 578f, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(max(-2274f, 1593f)))) - -160f)));
    let var_2 = Struct_1(-18499i, vec2<f32>(_wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x)))), var_1.b.x));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(trunc(arg_0)))))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)));
    return _wgslsmith_add_i32(-2147483647i, ~(-(1i << (u_input.a.x % 32u)))) & max(global0.a & var_2.a, _wgslsmith_clamp_i32(var_2.a, ~global0.a & -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(27773i, global0.a, -8070i), vec3<i32>(global0.a, u_input.b, var_2.a) >> (vec3<u32>(arg_2.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_2 {
    global0 = Struct_1(~(~global0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1437f, _wgslsmith_f_op_f32(f32(-1f) * -577f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.b - global0.b)))) * global0.b));
    let var_0 = arg_1.wwz;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 125f, 582f, 1000f) * vec4<f32>(global0.b.x, 1011f, global0.b.x, global0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(274f, global0.b.x, global0.b.x, global0.b.x) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, 463f, -708f, -421f), vec4<f32>(241f, global0.b.x, -948f, -426f))))))));
    let var_2 = Struct_3(Struct_2(-587f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1 * var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1516f, 1660f, -133f, global0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(593f, var_1.x, global0.b.x, var_1.x), vec4<f32>(global0.b.x, global0.b.x, 723f, global0.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 2026f, var_1.x, global0.b.x) - vec4<f32>(global0.b.x, -651f, 553f, var_1.x))), false))));
    let var_3 = var_2;
    return var_3.a;
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(firstTrailingBit(global0.a << (1u % 32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, arg_1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, global0.b.x), arg_1.b.xx))), global0.b)))));
    global1 = _wgslsmith_mod_u32(4294967295u, arg_0) >= 3939u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = 1039f;
    let var_3 = vec3<u32>(~countOneBits(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, 1u)), _wgslsmith_mult_u32(u_input.a.x, arg_0), 23632u);
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    global1 = true;
    global1 = ~u_input.a.x < 43086u;
    global1 = func_6(_wgslsmith_mod_u32(arg_0.x, arg_0.x), func_5(~func_2(_wgslsmith_f_op_f32(arg_1 + 1012f), 2147483647i < global0.a, vec3<u32>(arg_0.x, u_input.a.x, 34461u)), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, global0.a == global0.a, all(vec2<bool>(false, false))), vec4<bool>(global0.b.x < -170f, true, true, any(vec3<bool>(true, false, true))), any(vec4<bool>(true, false, false, false)) | true), vec3<i32>(~reverseBits(u_input.b), 18004i, 1i)));
    var var_0 = all(vec3<bool>(func_6(arg_0.x, Struct_2(global0.b.x, vec4<f32>(global0.b.x, arg_1, -590f, global0.b.x))) | all(vec3<bool>(false, false, false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true)) | false));
    return vec3<bool>(any(!vec3<bool>(any(vec2<bool>(true, false)), true, true)), !(u_input.a.x < (select(33106u, 0u, false) >> (_wgslsmith_clamp_u32(1u, u_input.a.x, arg_0.x) % 32u))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) || (true && any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(func_1(vec4<u32>(u_input.a.x, u_input.a.x | firstTrailingBit(0u), u_input.a.x, 4294967295u), global0.b.x));
    var var_0 = vec4<u32>(u_input.a.x, ~u_input.a.x, 0u, u_input.a.x) ^ min(select(vec4<u32>(~0u, 4294967295u, _wgslsmith_mult_u32(0u, u_input.a.x), u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 81622u, u_input.a.x)), true), vec4<u32>(0u, abs(6102u), 1u, select(0u, ~u_input.a.x, true)));
    let var_1 = (~u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, countOneBits(63054u), firstLeadingBit(var_0.x), 4294967295u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(63555u, u_input.a.x, var_0.x, u_input.a.x)), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x), vec4<u32>(4294967295u, u_input.a.x, var_0.x, var_0.x))) % 32u)) == u_input.a.x;
    var var_2 = vec2<i32>(2147483647i, u_input.b);
    let var_3 = ~(~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_0.x, 22517u, var_0.x, u_input.a.x)), vec4<u32>(var_0.x >> (1u % 32u), 1u, ~42868u, 4294967295u << (0u % 32u))));
    var_0 = firstTrailingBit(~(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(var_0.x, 42565u, 0u), var_3.x ^ 4294967295u, u_input.a.x) << (vec4<u32>(98491u, u_input.a.x, abs(var_3.x), 51075u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-min((50960i ^ global0.a) & (-2147483647i >> (var_0.x % 32u)), var_2.x), _wgslsmith_clamp_u32(var_0.x, var_3.x, firstLeadingBit(42357u) ^ ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~_wgslsmith_sub_u32(u_input.a.x, countOneBits(0u)), _wgslsmith_f_op_f32(trunc(194f)));
}

