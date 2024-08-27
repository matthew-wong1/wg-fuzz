struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-127f)))))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~(~35738u)), 0u), 19u)]);
    global0 = array<vec3<u32>, 19>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1230f) + _wgslsmith_f_op_f32(step(var_0.a, -316f)))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~7923u, u_input.b.x, countOneBits(35432u)), 19u)]);
    return var_0.a;
}

fn func_2() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -1000f) - -1506f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1596f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1672f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f + -875f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1776f * 215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(824f, _wgslsmith_f_op_f32(f32(-1f) * -1061f))))), _wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))))));
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -1205f), -1186f) - var_0.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    global0 = array<vec3<u32>, 19>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))) < _wgslsmith_f_op_f32(-2183f + _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(ceil(arg_3))));
    global0 = array<vec3<u32>, 19>();
    var var_1 = select(-vec2<i32>(-(arg_2 ^ arg_0.x), ~arg_2 << (arg_1.b.x % 32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2, arg_0.x, arg_0.x, arg_2)) << ((vec4<u32>(arg_1.b.x, 28188u, u_input.b.x, arg_1.b.x) >> (vec4<u32>(1u, arg_1.b.x, arg_1.b.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0), _wgslsmith_mod_i32(1i, -arg_0.x)), vec2<bool>(true, false));
    var_0 = true;
    return any(vec4<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_2), vec3<i32>(-45231i, 1i, var_1.x)), arg_0.zzz) != _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 4760i, 2147483647i, 18741i), abs(vec4<i32>(var_1.x, 0i, arg_0.x, arg_2))), true, false, (_wgslsmith_f_op_f32(floor(arg_1.a)) == _wgslsmith_f_op_f32(trunc(arg_3))) != true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 19>();
    let var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(29422i, i32(-1i) * -2147483647i, -32447i, ~27881i), ~vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true)), -(~select(-vec4<i32>(-15965i, -47093i, -1i, -35331i), countOneBits(vec4<i32>(41308i, -1i, -20030i, -2690i)), true)));
    let var_1 = func_1(countOneBits(var_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(457f, -1445f)) - _wgslsmith_f_op_f32(628f * -146f)) - _wgslsmith_f_op_f32(-442f - _wgslsmith_f_op_f32(min(-1940f, -499f)))), u_input.b), var_0.x, -610f);
    let var_2 = Struct_1(359f, u_input.b);
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    var var_3 = !(!(var_1 | !any(vec3<bool>(var_1, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.x << (0u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 442f, -1988f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, -748f) + vec3<f32>(var_2.a, -203f, var_2.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-378f, 1112f, var_2.a))), vec3<bool>(var_1, false, false))))), var_0.x);
}

