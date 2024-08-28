struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(true, vec4<i32>(-8035i, 0i, 38492i, 1i));

var<private> global2: vec3<u32> = vec3<u32>(25016u, 0u, 4294967295u);

var<private> global3: i32;

var<private> global4: u32 = 0u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    return 9051u;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(global1.b.yyw, vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global0.b.x, global0.b.x, ~2147483647i)), arg_1.b.x, -global0.b.x));
    let var_1 = arg_1.c;
    global4 = 1u;
    let var_2 = true;
    let var_3 = arg_1;
    return Struct_2(!(!(global0.b.x >= -23949i)), global1.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_3(~func_2(), arg_1);
    var var_1 = vec4<bool>(false, any(select(!vec4<bool>(var_0.a, global0.a, false, global1.a), vec4<bool>(false, arg_0.x, global0.a, select(var_0.a, true, arg_0.x)), !vec4<bool>(global0.a, true, true, var_0.a))), all(select(arg_0.yx, select(vec2<bool>(false, arg_0.x), arg_0.xz, arg_1.d), global0.a)) & any(vec4<bool>(global0.a & var_0.a, true, false, arg_0.x)), true);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(_wgslsmith_add_u32(u_input.a, global2.x), u_input.a, select(global2.x, global2.x, global1.a))), ~countOneBits(~select(vec3<u32>(42724u, arg_2, 12279u), vec3<u32>(u_input.a, global2.x, u_input.a), false)));
    var var_3 = arg_1;
    var_2 = 1u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(!global1.a, all(!vec2<bool>(true, global0.a)) || global1.a, true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1167f)), vec3<i32>(_wgslsmith_dot_vec3_i32(global0.b.wzx, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.b.x, -6024i, global1.b.x), global0.b.xzz)), -global1.b.x, _wgslsmith_mult_i32(-46546i, ~global1.b.x)), global1.a, false), ~global2.x);
    var var_1 = Struct_1(1f, global0.b.wzx, true, true);
    let var_2 = (firstLeadingBit(~_wgslsmith_div_i32(1i, -3929i)) | global1.b.x) ^ 2147483647i;
    var var_3 = ~(~vec3<u32>(reverseBits(4294967295u), min(global2.x, 48120u), u_input.a));
    global3 = (abs(-6381i) & (global1.b.x & -1i)) & 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~51745u | (u_input.a & 39294u), 0u | ~global2.x), _wgslsmith_f_op_f32(sign(212f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(136f, var_1.a) * -674f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -338f, var_1.a, var_1.a), vec4<f32>(-367f, -1555f, 380f, var_0.a)))))), vec2<f32>(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -1716f) * vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-var_0.a))));
}

