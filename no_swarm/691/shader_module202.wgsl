struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, false, vec2<f32>(418f, 989f));

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<i32, 27>;

var<private> global3: f32;

var<private> global4: array<bool, 15> = array<bool, 15>(false, false, true, false, true, true, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = select(u_input.e.xz, ~(~(vec2<i32>(-1i) * -u_input.e.zx)), global0.a || global0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, 400f)) + _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_div_f32(422f, arg_0.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(global0.c.x))) + _wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(max(-476f, 670f)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> StorageBuffer {
    global2 = array<i32, 27>();
    var var_0 = select(!arg_1.b.xx, vec2<bool>(true, true), select(!(!(!arg_1.b.yx)), vec2<bool>(all(!vec2<bool>(arg_1.b.x, false)), true), vec2<bool>(!arg_1.b.x, global4[_wgslsmith_index_u32(arg_1.a, 15u)])));
    return StorageBuffer(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(func_1(vec4<f32>(-609f, -1886f, global0.c.x, global0.c.x))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(global0.c.x, 1159f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, arg_1.d, global0.c.x, arg_0))))), 11735u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var_0 = vec3<i32>(_wgslsmith_mult_i32(9303i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, var_0.x), var_0.yy), u_input.e.xx | ~var_0.xz)), 0i, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.d, u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.a.wyx, u_input.a.wzy)), 27u)]);
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(440f, 282f)), Struct_3(~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), 1u), vec3<bool>(global0.a, any(vec3<bool>(true, true, false)), true), i32(-1i) * -(i32(-1i) * -12041i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -1000f, 220f, global0.c.x) - vec4<f32>(376f, global0.c.x, global0.c.x, -440f)))))), ~u_input.c.x);
}

