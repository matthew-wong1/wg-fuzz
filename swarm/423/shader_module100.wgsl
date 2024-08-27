struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: array<vec4<f32>, 2>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> bool {
    global0 = !global1.x;
    global1 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(arg_1.x + arg_3.x)) >= _wgslsmith_f_op_f32(step(-1747f, -354f)), !global1.x | !global1.x, !(true && global1.x), true), select(!select(vec4<bool>(global1.x, false, false, global1.x), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x)), true | global1.x), vec4<bool>((true || global1.x) && true, global1.x, true, !all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !(!(global1.x != false))), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, any(!global1.www), _wgslsmith_f_op_f32(-arg_3.x) > arg_1.x, true), select(vec4<bool>(global1.x, true, true, false), select(select(vec4<bool>(true, true, global1.x, false), vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, true, true, global1.x)), !vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(false, false, global1.x, true), vec4<bool>(true, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x))), true)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1053f, arg_3.x, arg_3.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-183f - arg_3.x), _wgslsmith_f_op_f32(max(arg_3.x, var_0)), _wgslsmith_div_f32(arg_3.x, -155f), _wgslsmith_f_op_f32(ceil(1170f))))));
    let var_2 = ~u_input.a;
    return true;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = false;
    let var_1 = u_input.a;
    global1 = select(vec4<bool>(global1.x, global1.x, true, !any(vec2<bool>(global1.x, false))), select(!(!vec4<bool>(true, global1.x, false, global1.x)), vec4<bool>(func_3(~(-23218i), vec3<f32>(877f, -471f, 102f), _wgslsmith_div_vec4_i32(vec4<i32>(-20579i, -2147483647i, -16037i, 0i), vec4<i32>(-1i, 13824i, -2147483647i, 6903i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2466f, 734f, 121f, -1000f))), true, var_1 < 1u, all(global1.wwx)), all(vec3<bool>(!global1.x, global1.x, func_3(-10001i, vec3<f32>(-348f, -541f, 562f), vec4<i32>(0i, 0i, 1i, 11955i), vec4<f32>(-1080f, 507f, -899f, 892f))))), any(vec2<bool>(~u_input.a != (4294967295u & arg_0), global1.x || !global1.x)));
    global1 = select(select(vec4<bool>(false, true, !any(global1.yyy), global1.x), vec4<bool>(!global1.x, false, global1.x, all(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, false, global1.x), vec4<bool>(true, global1.x, false, global1.x)))), select(vec4<bool>(func_3(-1i, vec3<f32>(1216f, 920f, 121f), vec4<i32>(33415i, 25506i, -2147483647i, -14369i), global2[_wgslsmith_index_u32(u_input.a, 2u)]), false | global1.x, global1.x, false), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, global1.x, global1.x, false)), true)), !vec4<bool>(any(vec4<bool>(global1.x, global1.x, true, true)), all(global1.wz), select(true & global1.x, global1.x, global1.x), true == any(vec3<bool>(global1.x, global1.x, true))), all(vec3<bool>(false, any(select(global1.xx, global1.wz, vec2<bool>(false, true))), !(!global1.x))));
    global0 = global1.x;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(~19678u, 2u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 2u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, 3275f, -350f, 880f)))))))));
    var var_1 = 57589i ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(23671i, 34045i, -32515i, -2147483647i) >> (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u))) & _wgslsmith_div_i32(-1i, abs(2147483647i)), 2147483647i);
    let var_2 = arg_0.b.x;
    global1 = !vec4<bool>(!all(vec4<bool>(true, false, false, global1.x)), !global1.x, !(!func_2(29804u)), global1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 2u)] - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1455f)) + _wgslsmith_f_op_f32(select(1932f, 704f, true))), 1104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-501f, _wgslsmith_f_op_f32(1012f + -279f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1662f - 310f), _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, vec3<f32>(122f, -797f, -229f), vec4<u32>(12108u, u_input.a, u_input.a, 53850u), vec2<u32>(u_input.a, u_input.a), -1033f), vec2<f32>(681f, -1561f), global2[_wgslsmith_index_u32(0u, 2u)], global1.x)))), -682f));
    global2 = array<vec4<f32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, 4294967295u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (u_input.a % 32u), u_input.a, ~0u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 84311u, u_input.a), vec4<u32>(0u, 0u, 0u, 52977u)), ~u_input.a, 0u))));
}

