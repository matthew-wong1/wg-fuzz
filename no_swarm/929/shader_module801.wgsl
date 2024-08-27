struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec2<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

var<private> global0: Struct_3 = Struct_3(vec2<u32>(4294967295u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1586f, -729f));

var<private> global2: Struct_3 = Struct_3(vec2<u32>(42653u, 0u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> i32 {
    return ~_wgslsmith_dot_vec2_i32(~u_input.a, u_input.a);
}

fn func_2(arg_0: i32) -> Struct_5 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + global1.a.x), 1283f))))));
    let var_0 = ~_wgslsmith_mod_vec2_i32(~u_input.a, select(vec2<i32>(1i, 1i), vec2<i32>(22279i, arg_0), true));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(global1.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.a.x + global1.a.x), global1.a.x, _wgslsmith_f_op_f32(297f - global1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -687f, global1.a.x, global1.a.x)))))));
    var var_2 = !vec3<bool>(all(vec4<bool>(true, false, select(false, true, true), true)), all(vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), true);
    return Struct_5(Struct_3(_wgslsmith_mult_vec2_u32(global0.a & (vec2<u32>(global2.a.x, global2.a.x) & u_input.b), ~global2.a)), 12021u, u_input.b, Struct_4(!vec3<bool>(var_2.x && var_2.x, !var_2.x, var_2.x || var_2.x)));
}

fn func_3(arg_0: Struct_5) -> Struct_3 {
    global0 = func_2(abs(-10323i) & -abs(_wgslsmith_sub_i32(u_input.a.x, 2147483647i))).a;
    var var_0 = arg_0.d.a.x;
    var var_1 = global1.a.x;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(-2147483647i, i32(-1i) * -1i), -u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, ~min(0i, 11872i), 1i)), -abs((vec4<i32>(u_input.a.x, 7660i, 0i, 2147483647i) | vec4<i32>(6137i, u_input.a.x, -12317i, u_input.a.x)) << (vec4<u32>(global2.a.x, u_input.b.x, 0u, 15203u) % vec4<u32>(32u))));
    global2 = func_2(~4240i).a;
    return func_2(var_2.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~(~abs(u_input.b)));
    let var_0 = Struct_5(func_3(func_2(func_1(true, global2.a.x, ~global2.a.x))), _wgslsmith_mod_u32(abs(1u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.a.x, 18893u), ~global2.a.x), ~(global0.a.x | 17604u))), abs(~vec2<u32>(~1u, func_2(u_input.a.x).b)), Struct_4(!vec3<bool>(false, any(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(903f, -1131f, 767f, global1.a.x), vec4<f32>(global1.a.x, global1.a.x, -412f, -467f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -232f))))), abs(u_input.b.x) & _wgslsmith_sub_u32(4850u, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), ~var_0.a.a.x)));
}

