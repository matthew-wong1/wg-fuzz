struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(20843i, -12649i), vec2<i32>(36155i, -11240i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -82883i), vec2<i32>(-12123i, 24271i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(0i, -2703i), vec2<i32>(40657i, -11618i), vec2<i32>(2147483647i, -28727i), vec2<i32>(3947i, 56698i), vec2<i32>(-6691i, -2109i), vec2<i32>(-1i, 2147483647i), vec2<i32>(55432i, 21908i), vec2<i32>(40699i, i32(-2147483648)), vec2<i32>(-23609i, i32(-2147483648)), vec2<i32>(-1i, 2647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 40340i), vec2<i32>(1i, 21743i), vec2<i32>(-1i, -3126i), vec2<i32>(10453i, 2147483647i), vec2<i32>(-34123i, 2147483647i), vec2<i32>(-30504i, -440i), vec2<i32>(-26841i, -1i), vec2<i32>(2147483647i, -15419i), vec2<i32>(-39922i, 15277i));

var<private> global1: f32 = -1000f;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(vec2<i32>(global2.a.x, 17676i), _wgslsmith_f_op_vec3_f32(-global2.b), global2.c);
    let var_1 = vec3<bool>(all(!(!select(vec2<bool>(false, var_0.c), vec2<bool>(false, false), false))), all(!(!vec3<bool>(var_0.c, true, false))), !(any(select(vec4<bool>(var_0.c, true, global2.c, true), vec4<bool>(var_0.c, var_0.c, false, global2.c), vec4<bool>(var_0.c, true, true, var_0.c))) != true));
    let var_2 = vec3<i32>(14836i, ~0i, -_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(-3908i, 0i, var_0.a.x)) | firstLeadingBit(vec3<i32>(var_0.a.x, u_input.b, u_input.b)), (vec3<i32>(2147483647i, global2.a.x, var_0.a.x) ^ vec3<i32>(-1i, -1i, var_0.a.x)) & -vec3<i32>(u_input.b, var_0.a.x, var_0.a.x)));
    global2 = var_0;
    global1 = 203f;
    return select(var_1, vec3<bool>(false, var_0.c, !global2.c), select(select(select(var_1, vec3<bool>(false, global2.c, false), any(vec2<bool>(var_1.x, var_1.x))), vec3<bool>(false, true, false), global2.c), select(!vec3<bool>(false, global2.c, var_0.c), !vec3<bool>(false, var_0.c, global2.c), !any(var_1)), var_0.c));
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = ~(~u_input.c);
    global2 = Struct_1(-abs(vec2<i32>(-1i, global2.a.x) & abs(global2.a)), global2.b, arg_0);
    var var_1 = select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, global2.c), vec3<bool>(true, false, false)), func_3(), vec3<bool>(any(vec2<bool>(arg_0, global2.c)), !arg_0, 24398u > var_0.x)), !select(vec3<bool>(false, global2.c, false), vec3<bool>(true, false, arg_0), false), !(!(!vec3<bool>(global2.c, false, global2.c)))), vec3<bool>(true, !all(func_3().xy), (global2.c && true) | any(func_3().yz)), !func_3());
    global0 = array<vec2<i32>, 27>();
    let var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(-1767f - _wgslsmith_f_op_f32(max(1142f, global2.b.x)))))), global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * global2.b.x)));
    return _wgslsmith_f_op_f32(global2.b.x + var_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    global1 = _wgslsmith_f_op_f32(func_4(any(select(select(select(vec3<bool>(arg_0.c, arg_1, false), vec3<bool>(false, arg_0.c, arg_1), arg_0.c), !vec3<bool>(false, false, arg_1), vec3<bool>(true, true, arg_0.c)), !select(vec3<bool>(arg_0.c, arg_1, global2.c), vec3<bool>(arg_1, arg_0.c, arg_0.c), arg_1), !func_3()))));
    var var_0 = vec3<f32>(arg_0.b.x, 476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(-global2.b.x))) - global2.b.x));
    var var_1 = ~1i;
    let var_2 = arg_1;
    var var_3 = u_input.c.wxy;
    return reverseBits(-global2.a.x);
}

fn func_1() -> vec4<i32> {
    global1 = global2.b.x;
    var var_0 = !vec3<bool>(~firstTrailingBit(u_input.a.x) != (~u_input.c.x | ~u_input.c.x), _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 13499u)) == 0u, global2.c);
    var var_1 = Struct_1(vec2<i32>(~(func_2(Struct_1(vec2<i32>(global2.a.x, u_input.b), global2.b, var_0.x), global2.c, vec2<u32>(4294967295u, u_input.c.x), 0u) >> (25316u % 32u)), ~(-global2.a.x << ((109383u << (u_input.c.x % 32u)) % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-422f, global2.b.x, global2.b.x), global2.b, all(vec4<bool>(var_0.x, global2.c, true, false)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(max(global2.b.x, global2.b.x)), _wgslsmith_div_f32(global2.b.x, 1378f))) - _wgslsmith_f_op_vec3_f32(step(global2.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(510f, 458f, 711f) * vec3<f32>(global2.b.x, global2.b.x, global2.b.x))))))), false);
    var_1 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.b, var_1.a.x) >> (53719u % 32u), ~var_1.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, 1023f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-217f, var_1.b.x, 268f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.x, var_1.b.x, global2.b.x)))))))), true);
    global0 = array<vec2<i32>, 27>();
    return ~(vec4<i32>(7192i, -_wgslsmith_add_i32(3707i, 0i), -30935i, -_wgslsmith_add_i32(global2.a.x, 38599i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global2.a.x, u_input.b), ~(-34836i), max(var_1.a.x, -5664i), _wgslsmith_mult_i32(global2.a.x, var_1.a.x)), vec4<i32>(-global2.a.x, _wgslsmith_add_i32(u_input.b, -1i), -38964i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global2.b.x))))));
    var var_1 = vec4<bool>(true, any(!select(!vec2<bool>(global2.c, false), vec2<bool>(true, false), vec2<bool>(false, global2.c))), any(vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 20581i, global2.a.x), vec3<i32>(5676i, -4756i, -13948i)) < global2.a.x, global2.c)), _wgslsmith_f_op_f32(trunc(1872f)) > _wgslsmith_f_op_f32(f32(-1f) * -818f));
    global0 = array<vec2<i32>, 27>();
    global0 = array<vec2<i32>, 27>();
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.wz, u_input.c.x, -var_2.x);
}

