struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<f32>(-581f, -1000f, 1476f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~(~(~vec2<u32>(u_input.a.x, u_input.a.x)))), u_input.a.yz);
    let var_1 = Struct_1(!select(global0.a, vec2<bool>(any(global0.a), any(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true))), global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, 1775f, global0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x, 1791f)))));
    return !vec4<bool>(var_1.a.x, global0.a.x & global0.a.x, false, global0.a.x);
}

fn func_2() -> bool {
    var var_0 = global0.a;
    let var_1 = ~_wgslsmith_mult_u32(u_input.a.x, 67598u);
    global0 = Struct_1(vec2<bool>(true, any(!vec4<bool>(true, global0.a.x, global0.a.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) - _wgslsmith_f_op_f32(trunc(392f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(686f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x))))));
    let var_2 = select(func_3(0i), vec4<bool>(((var_1 >= u_input.a.x) != true) | !global0.a.x, true, func_3(_wgslsmith_mult_i32(-1i, -8521i)).x, (var_1 << (var_1 % 32u)) >= 0u), !(!(!vec4<bool>(global0.a.x, true, true, var_0.x))));
    global0 = Struct_1(func_3(_wgslsmith_div_i32(2147483647i, 1i)).zw, _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(-global0.b))));
    return true;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<bool>(any(vec3<bool>(any(!vec4<bool>(false, true, global0.a.x, true)), func_2(), any(global0.a))), false, any(func_3(_wgslsmith_mod_i32(~1i, ~2147483647i))));
    let var_1 = arg_0;
    var var_2 = -vec2<i32>(1i, 1i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(20991u, 77101u), select(arg_0, 25691u, global0.a.x)), 26636u), abs(_wgslsmith_sub_vec2_u32(~u_input.a.xy, u_input.a.yx))) % vec2<u32>(32u));
    var_2 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 80943i), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(0i, var_2.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-7634i, var_2.x, var_2.x), vec3<i32>(76019i, 0i, 1i)), -34789i))) & (firstLeadingBit(~(vec2<i32>(var_2.x, -1i) | vec2<i32>(44855i, -2147483647i))) << ((~_wgslsmith_clamp_vec2_u32(vec2<u32>(55241u, u_input.a.x), u_input.a.xx, u_input.a.yy) | ~select(u_input.a.yz, u_input.a.zx, vec2<bool>(false, var_0.x))) % vec2<u32>(32u)));
    var var_3 = Struct_1(var_0.xy, global0.b);
    return Struct_1(select(var_3.a, vec2<bool>(var_2.x >= 10652i, any(!vec4<bool>(global0.a.x, false, var_0.x, false))), !all(vec2<bool>(true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-647f, _wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-807f - _wgslsmith_div_f32(774f, var_3.b.x)), -367f, 865f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(6353u);
    let var_0 = func_1(0u);
    var var_1 = ~u_input.a.x;
    global0 = var_0;
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(global0.b.x)), global0.b.x), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(select(global0.b.x, 648f, true)))), -230f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b.x)))))), _wgslsmith_dot_vec2_u32(min(~u_input.a.xz, u_input.a.xy | u_input.a.yx), (vec2<u32>(u_input.a.x, 45249u) ^ vec2<u32>(4294967295u, 61447u)) >> (~u_input.a.xx % vec2<u32>(32u))) ^ u_input.a.x);
}

