struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 20476u, 1u), vec2<bool>(true, false), vec4<u32>(1u, 0u, 18894u, 11454u), vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(9397u, 24894u, 32587u), vec2<bool>(true, true), vec4<u32>(26777u, 4294967295u, 0u, 0u), vec4<bool>(false, false, true, false)), vec3<i32>(0i, -8827i, 1i));

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<bool, 5> = array<bool, 5>(false, true, true, false, true);

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: array<i32, 24> = array<i32, 24>(6575i, 2147483647i, 0i, -5844i, -1742i, 0i, 0i, -7200i, 11385i, 0i, -1i, 11294i, -1i, 1i, -17147i, 1i, -1i, -30646i, -1i, i32(-2147483648), 1i, -1i, 1392i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: bool) -> i32 {
    global1 = array<vec4<f32>, 2>();
    let var_0 = -1000f;
    let var_1 = u_input.a;
    global1 = array<vec4<f32>, 2>();
    global2 = array<bool, 5>();
    return -max(abs(~global0.c.x), -abs(global4[_wgslsmith_index_u32(global0.b.c.x, 24u)]) << (_wgslsmith_mult_u32(~u_input.b, u_input.b) % 32u));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    global2 = array<bool, 5>();
    global2 = array<bool, 5>();
    var var_0 = 2147483647i;
    global2 = array<bool, 5>();
    let var_1 = vec4<i32>(countOneBits(global0.c.x), func_2(51829u > arg_0.a.a.c.x), abs(_wgslsmith_div_i32(arg_1.x, 2147483647i)), max(2147483647i, ~(i32(-1i) * -2147483647i)));
    return vec2<bool>((arg_2.a.a.x ^ 1u) < abs(~select(arg_2.a.c.x, 17781u, global3.x)), arg_0.a.b.d.x);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    return _wgslsmith_dot_vec4_u32(global0.b.c >> (u_input.a % vec4<u32>(32u)), ~(~u_input.a)) ^ ~(u_input.b | 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_3(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0.b.c.x), 24u)], select(global3.xy, func_1(Struct_4(Struct_2(global0.a, global0.a, global0.c)), vec4<i32>(22980i, 1i, global0.c.x, global4[_wgslsmith_index_u32(global0.a.c.x, 24u)]), Struct_2(global0.a, global0.a, vec3<i32>(global0.c.x, 1i, global4[_wgslsmith_index_u32(u_input.c, 24u)])), global0.b.c.x), all(global3.ywx))) >= _wgslsmith_add_u32(u_input.a.x & 1u, ~_wgslsmith_mod_u32(92791u, u_input.b)), any(func_1(Struct_4(Struct_2(global0.b, global0.a, global0.c)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x, -28014i, -1i, -47669i), vec4<i32>(14056i, global4[_wgslsmith_index_u32(0u, 24u)], -13504i, global4[_wgslsmith_index_u32(u_input.c, 24u)])), Struct_2(global0.a, Struct_1(vec3<u32>(29619u, u_input.b, u_input.c), vec2<bool>(true, global0.a.b.x), vec4<u32>(1u, u_input.a.x, u_input.c, 55848u), global0.b.d), vec3<i32>(-52955i, global4[_wgslsmith_index_u32(4294967295u, 24u)], -2147483647i) | global0.c), ~(u_input.a.x | global0.b.c.x))));
    var var_1 = global0.a;
    var var_2 = 1f;
    var_1 = global0.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(546f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-280f, 998f, false)))), any(global0.a.d.xx)))) * 650f);
    let var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3)), 469f, all(!(!var_1.b)))), 1f, _wgslsmith_f_op_f32(max(-145f, var_3)));
}

