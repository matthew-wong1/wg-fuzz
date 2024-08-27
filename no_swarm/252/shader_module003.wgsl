struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: bool = false;

var<private> global2: array<f32, 22>;

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    let var_0 = arg_0.b.zx;
    var var_1 = arg_1;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f - _wgslsmith_f_op_f32(var_1.x - -1309f)) - arg_2.x), arg_2.x);
    var var_3 = Struct_1(~countOneBits(u_input.d), select(all(vec3<bool>(arg_0.a, true, true)), false, false));
    let var_4 = 0u;
    return true || var_3.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    let var_0 = firstLeadingBit(-1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10805u, 22u)]))), arg_1.x));
    global2 = array<f32, 22>();
    let var_2 = u_input.c;
    global1 = !(!func_3(Struct_2(true, vec3<u32>(74834u, 58769u, 20060u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -289f, arg_1.x, -831f) * vec4<f32>(-2281f, arg_1.x, -876f, arg_1.x)), vec3<f32>(1408f, arg_1.x, -1065f)) & all(!select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), arg_0.b)));
    return ~abs(1i) << (~var_2 % 32u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec2<f32>, 21>();
    var var_0 = ~vec3<i32>(_wgslsmith_div_i32(arg_1.x, -54328i), _wgslsmith_mod_i32(-min(29707i, 1i), -func_2(Struct_1(arg_1.x, true), global0[_wgslsmith_index_u32(4294967295u, 21u)])), -arg_1.x);
    global0 = array<vec2<f32>, 21>();
    let var_1 = Struct_2(!(!any(vec2<bool>(true, true)) && true), select(vec3<u32>(~(u_input.c ^ 0u), _wgslsmith_mod_u32(~u_input.c, countOneBits(u_input.c)), 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_0.x, select(arg_0.x, u_input.c, false), ~4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, arg_0.x, u_input.c), vec3<u32>(arg_0.x, u_input.c, 0u), vec3<u32>(arg_0.x, 22866u, 62537u))), !vec3<bool>(-15528i <= var_0.x, true, all(vec3<bool>(true, true, false)))));
    var_0 = arg_1;
    return 32474u & ~var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, vec3<u32>(51444u, ~_wgslsmith_mult_u32(2734u, ~u_input.c), u_input.c));
    global1 = var_0.a;
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(20238u, ~u_input.c)), _wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.b.x, var_0.b.x), u_input.c), 1u));
    global0 = array<vec2<f32>, 21>();
    global2 = array<f32, 22>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(func_1(vec2<u32>(~4294967295u, var_0.b.x), vec3<i32>(-1i) * -u_input.a.wwz), 22u)])) - global2[_wgslsmith_index_u32(var_0.b.x, 22u)]);
    var var_3 = u_input.a.x;
    global2 = array<f32, 22>();
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_4.b.yx, ~(~(~vec2<u32>(var_1.x, var_4.b.x)))));
}

