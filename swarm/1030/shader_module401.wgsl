struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, false, false));

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    let var_0 = arg_1.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(962f, -369f, arg_1.a.x, _wgslsmith_f_op_f32(1201f + 751f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + vec4<f32>(var_0, -171f, global1.b, var_0))), global1.d.x));
    var var_2 = vec4<i32>(2147483647i, -1i, select(1i, u_input.b, true), -39887i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2349f - _wgslsmith_f_op_f32(-var_0))), var_0));
    global0 = array<vec2<i32>, 6>();
    return arg_1.c.x;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = select(vec4<bool>(!global4.a.x, true, !global4.a.x, global4.a.x), global3.a, global4.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * global1.b);
    global2 = all(vec3<bool>(!global4.a.x, false, 45950u >= func_3(global3.a.x, Struct_3(global1.a, 1227f, vec3<u32>(arg_0, 18801u, u_input.c.x), vec2<bool>(global4.a.x, global4.a.x)))));
    var var_2 = global4.a.x & true;
    var var_3 = !vec2<bool>(all(vec2<bool>(select(global4.a.x, true, false), true)), !any(vec3<bool>(global3.a.x, global3.a.x, true)));
    return global1.b;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_4(arg_1, arg_0, vec2<f32>(153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c.x)) - global1.a.x)));
    let var_1 = reverseBits(vec3<u32>(u_input.a, 4294967295u, 73049u));
    global4 = var_0.b;
    var_0 = Struct_4(0i, arg_0, _wgslsmith_f_op_vec2_f32(global1.a.yz - _wgslsmith_div_vec2_f32(vec2<f32>(449f, global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, var_0.c.x)))));
    var var_2 = vec4<u32>(25991u, 0u, 72353u, _wgslsmith_mod_u32(4294967295u, u_input.c.x) & 1u);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_f32(max(541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-global1.b))))), ~abs(vec3<u32>(1109u, var_1.x, var_2.x)) | ((_wgslsmith_sub_vec3_u32(var_2.xxw, vec3<u32>(0u, var_1.x, var_1.x)) | select(vec3<u32>(1u, var_1.x, u_input.a), vec3<u32>(u_input.c.x, u_input.a, var_2.x), vec3<bool>(false, false, global3.a.x))) << (vec3<u32>(~u_input.c.x, 1u, ~78909u) % vec3<u32>(32u))), vec2<bool>((i32(-1i) * -arg_1) >= ~max(arg_1, -24698i), _wgslsmith_mult_u32(~var_1.x, 1u) < 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(select(true, !global4.a.x, false), all(select(vec4<bool>(true, false, false, global4.a.x), vec4<bool>(global3.a.x, global3.a.x, true, false), vec4<bool>(global4.a.x, false, true, true))), !(!global4.a.x), true), !global3.a, true));
    var var_1 = vec2<u32>(u_input.c.x, countOneBits(60904u));
    global2 = true;
    let var_2 = func_1(Struct_1(vec4<bool>(!(true != global1.d.x), false, !(!global1.d.x), any(vec3<bool>(global3.a.x, false, true)))), 36995i);
    var var_3 = Struct_1(!vec4<bool>(true, false, any(vec2<bool>(var_2.d.x, true)) | any(vec3<bool>(var_0.a.x, global3.a.x, false)), false));
    var var_4 = select(var_3.a.zxw, select(!(!select(global3.a.zzz, vec3<bool>(false, true, var_3.a.x), global3.a.xxx)), select(select(var_3.a.xzw, vec3<bool>(var_0.a.x, false, global4.a.x), true), vec3<bool>(var_0.a.x, false, false), vec3<bool>(all(vec4<bool>(false, global4.a.x, global3.a.x, true)), true, !var_3.a.x)), 1f <= var_2.b), select(!(!select(vec3<bool>(global4.a.x, true, global3.a.x), vec3<bool>(true, var_0.a.x, var_2.d.x), global4.a.x)), select(select(var_0.a.zyz, var_0.a.xzz, global4.a.yzz), global4.a.xxx, global4.a.wyx), vec3<bool>(false, global3.a.x, false)));
    var var_5 = vec3<i32>(u_input.b, -65491i, u_input.b << (var_1.x % 32u));
    var var_6 = !vec2<bool>(false, all(select(select(global3.a.yx, global1.d, vec2<bool>(global3.a.x, false)), !vec2<bool>(global1.d.x, false), vec2<bool>(var_3.a.x, var_3.a.x))));
    var var_7 = u_input.d & ~(~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b);
}

