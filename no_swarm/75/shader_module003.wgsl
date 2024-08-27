struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), 1047f))) + arg_1);
    let var_1 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-779f, -1000f) * _wgslsmith_div_f32(arg_1, 603f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) + arg_1))));
    var var_2 = u_input.c;
    global0 = array<i32, 4>();
    var var_3 = true;
    return 286f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = min(31782i, -36114i);
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_1 = vec3<bool>(arg_0, 1328f <= _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(u_input.d.x, ~0i), 453f, vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), max(u_input.c, 4294967295u), u_input.c), ~vec3<u32>(u_input.c, 1u, 4294967295u))), any(vec4<bool>(true, 0i < u_input.d.x, true, select(true, all(vec3<bool>(arg_0, arg_0, arg_0)), true))));
    return Struct_1(true, select(vec3<i32>(-36779i, _wgslsmith_mod_i32(u_input.a.x, 13405i), ~(-u_input.a.x)), u_input.a, !(!select(vec3<bool>(false, false, arg_0), vec3<bool>(true, true, true), var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))))), select(var_1.xz, !var_1.yx, !select(select(vec2<bool>(arg_0, var_1.x), var_1.xz, vec2<bool>(arg_0, true)), vec2<bool>(false, false), vec2<bool>(arg_0, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-581f, 1429f, 1736f), vec3<f32>(-1000f, 446f, 551f)), vec3<f32>(1f, 1f, 1f))));
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = func_2(arg_0);
    let var_1 = select(u_input.d.wzx, var_0.b << (~vec3<u32>(firstLeadingBit(33457u), _wgslsmith_mult_u32(25319u, u_input.c), abs(0u)) % vec3<u32>(32u)), false);
    global0 = array<i32, 4>();
    var var_2 = func_2(arg_0);
    let var_3 = func_2(var_2.d.x);
    return _wgslsmith_mult_i32(u_input.d.x, ~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_0 = Struct_1(true, vec3<i32>(abs(firstLeadingBit(u_input.a.x)) & func_1(-1i <= global0[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_mod_u32(64339u, u_input.c)), global0[_wgslsmith_index_u32(u_input.c, 4u)] >> (1u % 32u), min(abs(~0i), _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(true).c)))), select(vec2<bool>(true, select(any(vec4<bool>(true, false, false, false)), true, true)), !vec2<bool>(all(vec2<bool>(true, false)), true), all(vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(189f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-590f, 1065f)))), -596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = func_2(false & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f * 1302f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - 356f) - var_0.e.x)));
    var_0 = func_2(!var_0.d.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.e.x), 845f, -974f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(987f, 865f, 887f, -463f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, -574f, -463f, 788f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.e.x, var_0.c.x, true)), 244f, var_0.c.x, -661f))));
    global0 = array<i32, 4>();
    let var_2 = -5428i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(587f, -764f, var_1.x))))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(62991u, 1u) | vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(u_input.c, u_input.c))), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)))));
}

