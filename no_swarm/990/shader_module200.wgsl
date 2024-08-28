struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(1009f, true, -1i), Struct_3(-1000f, true, 2147483647i), Struct_3(1000f, false, i32(-2147483648)), Struct_3(-2351f, true, -4307i), Struct_3(-481f, true, 0i), Struct_3(703f, false, -1i), Struct_3(1000f, false, i32(-2147483648)), Struct_3(-1257f, true, -1i), Struct_3(1067f, true, i32(-2147483648)), Struct_3(-278f, false, 0i), Struct_3(1239f, true, -4222i), Struct_3(-1376f, false, 11826i), Struct_3(-1364f, true, -3389i), Struct_3(1820f, false, -32578i), Struct_3(1062f, true, 0i), Struct_3(-212f, false, i32(-2147483648)), Struct_3(613f, true, -966i), Struct_3(-482f, false, -41043i), Struct_3(-1554f, false, -1i), Struct_3(-1430f, true, 1i), Struct_3(542f, false, -59229i), Struct_3(456f, false, 0i), Struct_3(145f, false, 0i), Struct_3(-648f, false, 2147483647i), Struct_3(-1530f, true, 21423i), Struct_3(1982f, true, 0i), Struct_3(-2517f, false, 1i), Struct_3(1636f, true, -6984i), Struct_3(-213f, false, 1i));

var<private> global1: Struct_3;

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(global1.a)), true, all(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - 1f) - -551f));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f * 491f)), var_0.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, global1.a, global1.b)))), var_0.c, var_0.b);
    global0 = array<Struct_3, 29>();
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20269u), vec2<u32>(1u, 4294967295u)) % 32u), 25044u), vec2<u32>(firstLeadingBit(16991u), 89753u));
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) + -860f), true, reverseBits(abs(-abs(2147483647i))));
    return 9287u;
}

fn func_2() -> Struct_1 {
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), vec2<u32>(0u, 1u)) >> (func_3() % 32u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(7343u, 0u), ~vec2<u32>(14048u, 1u)), abs(~5238u), 0u));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = func_2();
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(-365f * global1.a)))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -743f))) >= 757f), select(all(select(vec4<bool>(global1.b, global1.b, true, true), vec4<bool>(true, false, true, true), !global1.b)), false, any(!(!vec3<bool>(global1.b, global1.b, global1.b)))), select(238f != _wgslsmith_f_op_f32(1452f - _wgslsmith_f_op_f32(-1070f * global1.a)), global1.b, true));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1638f), global1.a))) + -708f), 32840u > abs(~arg_2.x ^ ~arg_2.x), -1i);
    var var_1 = -vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_div_i32(-57488i, 28901i), 5512i), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, countOneBits(global1.c), 1i, -41076i), min(vec4<i32>(27867i, 2147483647i, -45803i, 26815i), vec4<i32>(49225i, -28339i, -1i, 1i))));
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a + -269f), _wgslsmith_f_op_f32(-global1.a), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(-215f - 513f)))), true, var_1.x);
    let var_2 = vec2<bool>(var_0.b, var_0.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, arg_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 330f) * vec2<f32>(207f, var_0.a)))))) + vec2<f32>(arg_0.a, var_0.a))));
    return global2.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1402f))) - _wgslsmith_f_op_f32(sign(-1000f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) - _wgslsmith_f_op_f32(-636f * global1.a)));
    let var_1 = 2649f;
    global2 = vec3<i32>(7803i, -(~reverseBits(_wgslsmith_add_i32(global1.c, -2147483647i))), -(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, u_input.a, 1i), vec3<i32>(1i, -65035i, 0i)) | max(global2.x, 0i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(316f))));
    var var_3 = vec2<i32>(max(func_5(func_4(func_2(), ~1u), !all(vec2<bool>(false, global1.b)), ~(~vec4<u32>(11443u, 7465u, 13841u, 3705u))), global2.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(global2.x, _wgslsmith_mult_i32(global1.c, arg_2)) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 2734u, 6355u, 61255u), vec4<u32>(71339u, 0u, 68932u, 4294967295u), global1.b), vec4<u32>(21182u, 26707u, 0u, 28084u)) % 32u), global1.c));
    return vec3<u32>(20015u, 74911u, ~_wgslsmith_mod_u32(func_2().a.x, ~4294967295u) | min(1u, min(1u, 1u) >> (func_3() % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(~4294967295u, select(60874u, 0u, true)), 1u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~func_1(1i, countOneBits(global2.x), u_input.a & 1i))), 29u)];
    global0 = array<Struct_3, 29>();
    var var_0 = global1.a;
    global0 = array<Struct_3, 29>();
    var var_1 = vec4<i32>(1i << (func_1(global2.x, 7212i << (1u % 32u), -35299i).x % 32u), -2147483647i, ~(-1i), global2.x);
    global0 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, ~firstTrailingBit(25859u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2().a.xyy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) + global1.a)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)));
}

