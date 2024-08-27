struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, false));

var<private> global2: array<u32, 11> = array<u32, 11>(1u, 2046u, 99452u, 4294967295u, 0u, 1u, 83451u, 1u, 1u, 44083u, 23678u);

var<private> global3: Struct_2 = Struct_2(Struct_1(false, true, vec3<i32>(-16415i, 22284i, 6616i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(global3.a.b, !global3.a.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, global3.a.c.x), vec4<i32>(2147483647i, global3.a.c.x, 68449i, 32306i)), 1i, global3.a.b), u_input.c.x), vec3<i32>(1i, 28024i, arg_0.x)));
    var var_1 = abs(-_wgslsmith_mult_i32(~var_0.c.x, _wgslsmith_sub_i32(2147483647i, 25579i))) & global3.a.c.x;
    let var_2 = !(!any(vec3<bool>(false, all(vec3<bool>(true, var_0.a, var_0.b)), global3.a.a || global3.a.b)));
    let var_3 = Struct_2(Struct_1(false, any(vec2<bool>(true, global3.a.a)) & (var_0.c.x == 0i), vec3<i32>(_wgslsmith_mod_i32(1i, var_0.c.x >> (u_input.b.x % 32u)), global3.a.c.x, 1i)));
    var var_4 = var_3;
    return var_4.a.b & any(!vec2<bool>(!var_2, any(vec3<bool>(var_4.a.b, var_2, true))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global3 = Struct_2(arg_1);
    global0 = global3.a.a;
    global0 = global3.a.a | arg_1.b;
    var var_0 = global1[_wgslsmith_index_u32(min(1u, 1u), 1u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1876f, -1313f))));
    return u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = all(vec4<bool>(func_2(-min(vec2<i32>(-2147483647i, 21004i), vec2<i32>(1i, global3.a.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, global2[_wgslsmith_index_u32(1u, 11u)], u_input.b.x) << (vec4<u32>(12915u, arg_1.x, 20131u, arg_1.x) % vec4<u32>(32u)), arg_1)), arg_2.x, func_2(global3.a.c.zy, _wgslsmith_add_u32(u_input.b.x, 0u)), global3.a.a));
    var var_1 = Struct_2(global3.a);
    var_0 = func_2(~vec2<i32>(func_3(~14388u, Struct_1(true, false, vec3<i32>(11101i, var_1.a.c.x, 4278i))), 1i), global2[_wgslsmith_index_u32(~11634u, 11u)]);
    var var_2 = u_input.b.wy;
    var_2 = u_input.b.wz;
    return Struct_2(Struct_1(!(1i > (1348i << (var_2.x % 32u))), all(select(!arg_2.zx, !vec2<bool>(false, arg_2.x), select(arg_2.zx, vec2<bool>(global3.a.b, true), vec2<bool>(var_1.a.a, false)))), var_1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1994f, 886f) - vec2<f32>(-164f, 1663f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(681f, 572f))))) - vec2<f32>(_wgslsmith_f_op_f32(1047f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-114f, 179f))), -695f));
    let var_1 = global3.a;
    global3 = func_1(2147483647i, ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 42810u, u_input.b.x, u_input.a), max(u_input.b, vec4<u32>(38241u, global2[_wgslsmith_index_u32(0u, 11u)], 57565u, 0u)))), !vec3<bool>(!var_1.b | true, _wgslsmith_div_u32(3719u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)]) <= min(u_input.b.x, global2[_wgslsmith_index_u32(17954u, 11u)]), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(947f, var_0.x, var_0.x, var_0.x), vec4<f32>(1131f, 1461f, -705f, 1000f)))))));
}

