struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_2 = Struct_2(true, true, Struct_1(-868f, vec2<bool>(false, false), vec2<u32>(8568u, 1u)));

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = array<Struct_2, 8>();
    let var_0 = !select(vec4<bool>(any(select(vec4<bool>(global1.b, arg_1, global1.a, false), vec4<bool>(false, true, global1.c.b.x, false), arg_0.b.x)), true, !(!arg_0.b.x), any(select(arg_0.b, arg_0.b, false))), select(vec4<bool>(all(vec3<bool>(global1.a, false, arg_1)), !global1.a, select(arg_0.b.x, arg_1, arg_0.b.x), true), !select(vec4<bool>(arg_1, arg_1, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_1, true, arg_0.b.x), global1.c.b.x), !vec4<bool>(arg_0.b.x, true, arg_1, arg_1)), any(select(global1.c.b, select(arg_0.b, global1.c.b, false), true)));
    var var_1 = select(var_0, var_0, false);
    var_1 = select(var_0, var_0, arg_0.c.x > _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(17078u, 111628u, global1.c.c.x), vec3<u32>(1u, 45506u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 30200u, global1.c.c.x), vec3<u32>(arg_0.c.x, 1u, global1.c.c.x))), global1.c.c.x));
    global1 = Struct_2(!any(!select(var_1.xz, vec2<bool>(false, var_0.x), true)), !global1.c.b.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -678f), -1547f)))), vec2<bool>(true, true), countOneBits(~(~arg_0.c))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global2 = array<vec3<bool>, 21>();
    let var_0 = func_3(global1.c, !any(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x))) | (true | !(_wgslsmith_f_op_f32(step(global1.c.a, arg_1.x)) != _wgslsmith_f_op_f32(f32(-1f) * -359f)));
    return arg_0.c.x;
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(281f)), _wgslsmith_f_op_f32(ceil(global1.c.a))))), _wgslsmith_f_op_f32(select(global1.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(-global1.c.a)), true))), vec2<bool>(!(!arg_0.x), global1.c.b.x), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.c.x, 0u, 1u, global1.c.c.x), firstLeadingBit(vec4<u32>(71948u, global1.c.c.x, 1u, 1u)))), global1.c.c.x));
    let var_1 = ~_wgslsmith_add_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, global1.c.c.x, var_0.c.x, global1.c.c.x), vec4<u32>(1u, 0u, var_0.c.x, global1.c.c.x)) << (var_0.c.x % 32u), global1.c.c.x, global1.c.b.x), ~func_2(Struct_1(var_0.a, var_0.b, global1.c.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1972f, var_0.a, 2092f) + vec4<f32>(global1.c.a, -788f, -1022f, global1.c.a))));
    let var_2 = ~(~_wgslsmith_clamp_i32(u_input.a.x, ~(-1i), select(u_input.c, -u_input.c, arg_0.x)));
    var_0 = global1.c;
    global1 = Struct_2(!(1u >= ~global1.c.c.x), var_0.b.x, Struct_1(746f, select(select(!vec2<bool>(arg_0.x, arg_0.x), !global1.c.b, vec2<bool>(false, false)), select(arg_0.yz, !vec2<bool>(arg_0.x, global1.a), arg_0.yx), !arg_0.xx), firstLeadingBit(_wgslsmith_add_vec2_u32(~var_0.c, ~vec2<u32>(79481u, 0u)))));
    return select(global1.c.c, ~abs(_wgslsmith_mod_vec2_u32(var_0.c, vec2<u32>(global1.c.c.x, 0u))), select(select(var_0.b, select(vec2<bool>(global1.c.b.x, true), vec2<bool>(false, false), var_0.b), !vec2<bool>(var_0.b.x, var_0.b.x)), select(!global1.c.b, !arg_0.zy, true), var_0.b)) & global1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~u_input.a, max(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.d, 25841i), -u_input.a), u_input.a) << (min(global1.c.c, func_1(select(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], true))) % vec2<u32>(32u)), global1.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global1.c.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(13184u, global1.c.c.x, 0u), vec3<u32>(global1.c.c.x, global1.c.c.x, global1.c.c.x)))), -1000f, ~4294967295u, select(1u, global1.c.c.x, global1.a));
}

