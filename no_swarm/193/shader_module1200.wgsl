struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: vec2<f32>;

var<private> global2: Struct_5 = Struct_5(vec3<f32>(-171f, 1416f, 642f), 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    global0 = array<vec3<bool>, 4>();
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.xz * vec2<f32>(global1.x, -526f)))));
    global0 = array<vec3<bool>, 4>();
    let var_0 = any(vec3<bool>(!arg_2.x, true, !all(arg_0)));
    let var_1 = global2.b;
    return 689f;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<vec3<bool>, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
}

fn func_2() -> vec3<u32> {
    global0 = array<vec3<bool>, 4>();
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, !select(true, false, true), any(global0[_wgslsmith_index_u32(~global2.b, 4u)]), !any(vec2<bool>(true, false))), !any(vec2<bool>(true, false)));
    var_0 = !select(!vec4<bool>(true, !var_0.x, true, var_0.x), vec4<bool>(!var_0.x, !any(vec2<bool>(false, var_0.x)), var_0.x, !all(vec4<bool>(var_0.x, var_0.x, true, true))), (!var_0.x && (var_0.x | true)) || all(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, true, false), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(global2.a.x + -670f), vec3<u32>(global2.b, ~0u, ~1u), var_0.x))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-min(vec2<i32>(u_input.e, u_input.d.x), vec2<i32>(6844i, u_input.d.x)), vec2<i32>(~0i, _wgslsmith_clamp_i32(-4269i, 20894i, -47587i))), ~max(u_input.d.wx, u_input.d.xx)), -u_input.d.yy);
    return select(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global2.b, global2.b, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(2938u, 1u, u_input.c.x), vec3<u32>(u_input.a.x, global2.b, u_input.a.x)))), vec3<u32>(_wgslsmith_div_u32(~u_input.c.x, 0u & global2.b) | ~(1u ^ global2.b), 18855u, 0u), !(!select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, true, false), var_0.wwy, var_0.x), select(var_0.zzy, vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 4>();
    global1 = global2.a.yz;
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global2.a.x, _wgslsmith_f_op_f32(-global1.x)), vec3<f32>(_wgslsmith_div_f32(393f, global1.x), _wgslsmith_f_op_f32(global2.a.x - -633f), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), global2.b, vec3<bool>(false, true, true))))))), u_input.a.x);
    var var_1 = _wgslsmith_div_vec3_u32(~func_2(), vec3<u32>(0u, 0u, ~(~(~global2.b))));
    global0 = array<vec3<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xz, _wgslsmith_mult_u32(~global2.b, 37200u) & ~(~abs(133825u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global2.a.x)) - _wgslsmith_f_op_f32(592f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * 1532f)))), vec3<u32>(75951u, 4294967295u, ~(~u_input.c.x)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.a.x, 4294967295u), ~(~vec3<u32>(114652u, 0u, var_0.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, 74769u, var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(global2.b, var_0.b, global2.b), vec3<u32>(0u, var_1.x, 69713u)))));
}

