struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    global1 = Struct_3(-54330i);
    let var_0 = vec3<bool>(false, all(vec3<bool>(true & any(vec3<bool>(false, false, false)), !all(vec4<bool>(false, true, true, true)), true)), true);
    global0 = !var_0.x;
    global1 = Struct_3((min(~arg_0.x, -15781i) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)) >> (u_input.a % 32u));
    var var_1 = firstTrailingBit(~(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) | (vec4<u32>(15488u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 31094u, 1u, 4294967295u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a ^ u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 46391u, 42021u, 0u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), abs(vec4<u32>(u_input.a, 55020u, 0u, u_input.a)))) % vec4<u32>(32u)));
    return vec4<u32>(_wgslsmith_clamp_u32(~1u, select(u_input.a, _wgslsmith_dot_vec2_u32(var_1.yw, var_1.zx), var_0.x), ~abs(u_input.a) & _wgslsmith_sub_u32(u_input.a, 1u)), ~u_input.a, select(var_1.x, ~u_input.a, var_0.x), select(~_wgslsmith_dot_vec3_u32(var_1.zxw << (var_1.yww % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(26520u, u_input.a, 42811u))), max(~max(var_1.x, 47931u), var_1.x), var_0.x));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), 28042u, 1u, u_input.a << (u_input.a % 32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(754u, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, 14984u, u_input.a)), func_3(vec2<i32>(global1.a, global1.a)))), u_input.a), u_input.a, u_input.a & u_input.a);
    global0 = true;
    let var_1 = Struct_4(955f);
    global0 = !(!(select(true, true, true) & (abs(-39303i) < global1.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1979f)));
    return Struct_1(274f, 296f, var_0, firstTrailingBit(~select(~vec4<u32>(var_0.x, 51671u, 1u, var_0.x), vec4<u32>(4294967295u, 12358u, var_0.x, u_input.a), vec4<bool>(true, true, false, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    var var_0 = func_2();
    global1 = Struct_3(~(~global1.a >> (u_input.a % 32u)));
    var_0 = arg_0;
    global1 = Struct_3(0i);
    let var_1 = Struct_5(true, var_0.c.x, arg_0);
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(select(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 39521u, u_input.a)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), abs(vec3<u32>(46598u, u_input.a, u_input.a))), all(vec4<bool>(false, false, false, false))), vec3<u32>(u_input.a, func_1(Struct_1(-192f, 386f, vec3<u32>(4294967295u, u_input.a, 50019u), vec4<u32>(0u, 81349u, 9478u, u_input.a)), _wgslsmith_div_vec3_f32(vec3<f32>(239f, 432f, -1364f), vec3<f32>(1000f, 1163f, -1142f))), u_input.a), vec3<bool>(true, true, false)), vec3<u32>(4294967295u, 22717u, ~u_input.a));
    var var_1 = -firstLeadingBit(1i);
    var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(func_2().d.wxx, ~vec3<u32>(u_input.a, var_0.x, 1u)) | ~(~vec3<u32>(u_input.a, 40074u, 52726u)), max(~vec3<u32>(0u, var_0.x, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(13594u, u_input.a, var_0.x), vec3<u32>(u_input.a, 10171u, var_0.x)), ~vec3<u32>(94771u, var_0.x, var_0.x)));
    var var_2 = vec2<u32>(u_input.a, firstLeadingBit(1u));
    var_1 = min(global1.a, -global1.a);
    var var_3 = select(vec4<i32>(global1.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(692i, -13930i, 1i), ~vec3<i32>(global1.a, global1.a, global1.a)), _wgslsmith_add_i32(firstTrailingBit(16049i), abs(11594i)), select(select(-25550i, 20698i, false), -1i, true)), -(~select(vec4<i32>(global1.a, 2147483647i, -2147483647i, global1.a), vec4<i32>(global1.a, global1.a, 36438i, global1.a), vec4<bool>(false, false, false, true))), true) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(global1.a, global1.a, global1.a), 2147483647i, global1.a, -9168i), ~vec4<i32>(_wgslsmith_mod_i32(3828i, global1.a), ~global1.a, 2147483647i, global1.a));
    var var_4 = vec4<bool>(select(true | any(vec2<bool>(true, true)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1632i, var_3.x, -3264i, var_3.x), vec4<i32>(-11922i, 9956i, global1.a, -31081i))) >= var_3.x, !all(vec2<bool>(true, true))), all(!vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec2<bool>(true, false)), true)), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))), true);
    var var_5 = Struct_2(func_2(), ~(~35610u), func_2(), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -445f), 1f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2307f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(993f, _wgslsmith_div_f32(626f, 413f), _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(floor(1691f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 223f, -1000f, -220f))))))));
    var var_6 = !var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_5.d.x * _wgslsmith_f_op_f32(-var_5.d.x)), ~(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(var_5.a.d, vec4<u32>(u_input.a, 1u, u_input.a, var_0.x)), ~var_0.x) | vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(70822u, u_input.a, 5595u, u_input.a), vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x)), ~23343u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.b, var_5.d.x, var_5.d.x, var_5.a.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-179f, var_5.a.b, var_5.c.a, var_5.c.a))))))), ~_wgslsmith_clamp_i32(2147483647i, global1.a, ~_wgslsmith_add_i32(1i, global1.a)));
}

