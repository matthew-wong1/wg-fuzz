struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32 = 1i;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    global0 = arg_1.a;
    let var_0 = -1000f;
    return -vec2<i32>(-firstLeadingBit(u_input.c) << (_wgslsmith_div_u32(select(38983u, u_input.d, true), 65229u) % 32u), _wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(2147483647i, 2147483647i)) ^ 1i);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.d, u_input.a.x & 11483u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 11855u), vec3<u32>(u_input.a.x, 32759u, u_input.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(13073u, u_input.a.x, 112723u) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 9452u, u_input.a.x))));
    global1 = 40101i;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(-global2.yy))))), vec2<f32>(-1000f, global2.x));
    let var_2 = vec4<bool>((true && ((u_input.b >> (0u % 32u)) >= 2147483647i)) & any(vec4<bool>(false, all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true)), !(_wgslsmith_dot_vec2_u32(u_input.a << (vec2<u32>(u_input.a.x, var_0.a.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(2485u, 56387u), var_0.a.zy)) > var_0.a.x), _wgslsmith_mod_u32(~countOneBits(var_0.a.x), u_input.d | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(0u, var_0.a.x))) <= ((_wgslsmith_mod_u32(u_input.d, var_0.a.x) & ~0u) << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 1u, var_0.a.x), vec4<u32>(4294967295u, 22729u, var_0.a.x, 1u))) % 32u)), !(_wgslsmith_div_f32(-1259f, global2.x) == _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = vec2<i32>(u_input.b, u_input.b);
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = -(~u_input.b);
    var var_0 = false;
    global2 = vec3<f32>(-819f, _wgslsmith_f_op_f32(max(1000f, -1205f)), _wgslsmith_f_op_f32(func_3()));
    var var_1 = !select(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !(arg_0.a.x <= u_input.a.x)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global0 = !any(vec2<bool>(var_1.x, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-968f + global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u, Struct_2(false));
    var var_1 = (_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 107771u, 27166u), vec3<u32>(u_input.a.x, u_input.d, u_input.d))))) > _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(788f * _wgslsmith_f_op_f32(max(global2.x, 1000f))))) || ((!all(vec4<bool>(true, true, false, false)) & true) == !(true || all(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1010f, global2.x, false)))), 2147483647i != u_input.b)));
    var var_3 = vec3<u32>(reverseBits(~(~_wgslsmith_add_u32(u_input.a.x, 15792u))), u_input.a.x, ~u_input.a.x);
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1478f), var_0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~u_input.a.x, ~7201u, ~u_input.d)), abs(firstLeadingBit(abs(vec3<u32>(23764u, u_input.a.x, var_3.x))))));
}

