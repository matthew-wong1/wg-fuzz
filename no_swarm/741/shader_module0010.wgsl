struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    return select(1i, -reverseBits(global0.c), all(!select(select(vec2<bool>(false, global0.a), vec2<bool>(arg_2, arg_0.x), global0.e), vec2<bool>(true, true), global0.e)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(any(vec3<bool>(true, true, !any(global0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)), global0.c, ~_wgslsmith_div_u32(~(~u_input.a), u_input.d), vec2<bool>(global0.a, !(!global0.a)));
    let var_0 = global0.b.x > global0.b.x;
    global0 = Struct_1(464f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-741f, -1124f))), 991f)), countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(func_3(global0.e, vec4<f32>(-1000f, -1694f, -874f, -550f), global0.a), _wgslsmith_div_i32(1i, -4961i)), 0i)), _wgslsmith_mod_u32(~(4294967295u << (u_input.d % 32u)), 1u) << ((2175u | min(~u_input.a, abs(48741u))) % 32u), vec2<bool>(false, select(true && global0.e.x, true, global0.e.x)));
    let var_1 = ~_wgslsmith_mod_vec2_i32(u_input.e.yx, _wgslsmith_div_vec2_i32(abs(u_input.e.xw), ~select(vec2<i32>(11041i, 3259i), u_input.e.wz, vec2<bool>(global0.a, var_0))));
    let var_2 = 60146i;
    return Struct_1(!var_0, global0.b, _wgslsmith_div_i32(var_1.x, var_1.x | 1i), reverseBits(~select(max(global0.d, global0.d), 1u, any(vec4<bool>(var_0, true, false, global0.e.x)))), vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    return ~abs(select(~17282i, -u_input.e.x, select(true, !global0.a, true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<f32>(arg_1.x, arg_1.x, 475f, _wgslsmith_f_op_f32(arg_1.x + global0.b.x));
    let var_1 = func_2();
    var var_2 = Struct_2(arg_0);
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a ^ 4294967295u), ~(~vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.d, u_input.a, 0u, ~89465u), ~(~vec4<u32>(var_1.d, 58156u, 22957u, 18183u))), global0.d, max(0u, 0u));
    let var_4 = ~_wgslsmith_mod_vec2_u32(~min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.d, 1u)) | (var_3.xx & (var_3.wy << (vec2<u32>(43022u, 4294967295u) % vec2<u32>(32u)))), var_3.yz);
    return func_2();
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(1u <= (global0.d | (~7951u | global0.d)), _wgslsmith_f_op_vec2_f32(round(global0.b)), -1i, ~51090u, !select(global0.e, !global0.e, true));
    let var_0 = global0.d;
    global0 = func_5(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(-2982f - global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.c, global0.c), vec2<i32>(global0.c, 1i)), func_4(func_2(), Struct_1(global0.a, global0.b, global0.c, u_input.a, vec2<bool>(true, true))), _wgslsmith_sub_i32(max(-1i, u_input.e.x), u_input.e.x)), global0.d, !global0.e), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + -154f), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -222f)), global0.b.x, global0.b.x))), -global0.c & u_input.e.x);
    global0 = Struct_1(global0.e.x & (~1i == ((2147483647i << (global0.d % 32u)) & -u_input.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.b * global0.b))))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 23629i, u_input.e.x, ~(-global0.c)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(23696i, 1i, 0i, global0.c), max(u_input.e, vec4<i32>(u_input.e.x, -17404i, u_input.b, -15078i))))), 1u, vec2<bool>(!any(!vec4<bool>(false, global0.a, false, global0.e.x)), !(any(vec3<bool>(global0.a, global0.e.x, global0.a)) | global0.e.x)));
    var var_1 = Struct_2(Struct_1(global0.a, global0.b, global0.c, u_input.a, !(!(!global0.e))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1088f * 1460f))), global0.b.x) * 911f));
    global0 = Struct_1(!(global0.d <= ~countOneBits(global0.d)), vec2<f32>(-956f, -1118f), u_input.e.x, _wgslsmith_div_u32(~1u, ~(~(~0u))), func_2().e);
    let x = u_input.a;
    s_output = StorageBuffer(1496f, countOneBits(vec3<u32>(21759u, _wgslsmith_div_u32(15738u, 35489u), abs(~u_input.d))), 13975u, ~(global0.d | 19239u));
}

