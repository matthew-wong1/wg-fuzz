struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(265f, 1014f), vec2<u32>(29461u, 3138u));

var<private> global1: u32 = 44544u;

var<private> global2: array<vec3<u32>, 24>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), ~arg_0.yx);
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(76520u, 36713u, 0u))), var_0.b.x), ~_wgslsmith_add_u32(~global0.b.x, var_0.b.x));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> vec4<bool> {
    global0 = Struct_1(global0.a, select(select(~(~global0.b), ~(vec2<u32>(1u, 2066u) >> (vec2<u32>(arg_0, u_input.b.x) % vec2<u32>(32u))), global3.x), vec2<u32>(4294967295u, abs(1u)) | global0.b, select(global3.zz, !global3.yy, global3.yx)));
    var var_0 = vec2<u32>(1u & global0.b.x, global0.b.x);
    global2 = array<vec3<u32>, 24>();
    var var_1 = ~(-2147483647i);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))), 1427f));
    return !select(!vec4<bool>(global3.x | global3.x, true, global3.x, !global3.x), vec4<bool>(any(vec2<bool>(global3.x, true)), all(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, true, global3.x))), global3.x, false), vec4<bool>(!all(vec4<bool>(global3.x, false, global3.x, true)), true, global3.x, all(vec2<bool>(false, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(59868u, 0i, global0.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - global0.a)))), vec2<u32>(~(~35302u), u_input.b.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - global0.a)))), ~(~var_1.b << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) << (var_1.b % vec2<u32>(32u)));
    global3 = select(!var_0.yww, var_0.yzx, any(vec4<bool>(true, !(true || global3.x), global3.x, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.a))), ~(vec2<u32>(~var_1.b.x, 29102u) | var_1.b));
    return Struct_1(vec2<f32>(-1580f, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -2187f))), ~(~vec2<u32>(~u_input.b.x, max(4294967295u, var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, 4294967295u)), global0.b | u_input.b.xz) << (vec2<u32>(~1u, 16299u & func_1(vec3<u32>(26611u, u_input.b.x, 1u), vec4<i32>(u_input.a.x, 1i, -9928i, 2147483647i), vec3<bool>(global3.x, global3.x, false))) % vec2<u32>(32u)));
    var var_1 = var_0.a.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * 1050f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a + global0.a), u_input.b.xy);
    var var_3 = global3.x;
    global2 = array<vec3<u32>, 24>();
    global2 = array<vec3<u32>, 24>();
    var var_4 = func_2();
    var var_5 = vec4<i32>(~countOneBits(-select(u_input.a.x, u_input.a.x, false)), u_input.a.x, -1818i, -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(u_input.a.x, 59807i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, var_5.x, u_input.a.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 1i, var_5.x)))), -40628i, vec3<u32>(var_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, ~59307u, global0.b.x, ~1u), vec4<u32>(~1u, u_input.b.x ^ 53566u, _wgslsmith_mult_u32(var_4.b.x, var_4.b.x), abs(3155u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 1969u), min(global0.b.x, u_input.b.x)), ~68242u)), 33769i);
}

