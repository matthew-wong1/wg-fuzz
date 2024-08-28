struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<vec3<f32>, 25>;

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_2, 22>;

var<private> global4: array<vec3<f32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~(0u | _wgslsmith_add_u32(1u << (u_input.a.x % 32u), (u_input.a.x >> (4294967295u % 32u)) & ~u_input.a.x)), 25u)];
    global3 = array<Struct_2, 22>();
    var var_1 = true;
    global0 = array<i32, 5>();
    global1 = array<vec3<f32>, 25>();
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = vec3<f32>(-346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f + _wgslsmith_div_f32(arg_2.b.x, arg_2.b.x)))), _wgslsmith_f_op_f32(1968f - _wgslsmith_f_op_f32(round(arg_1))));
    var var_1 = Struct_1(true);
    let var_2 = vec2<i32>(-2147483647i >> (_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(20638u, 21834u), vec2<u32>(u_input.a.x, 4294967295u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 39652u), 35714u)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(23945u >> (u_input.a.x % 32u), _wgslsmith_mod_u32(u_input.a.x, 63330u)), 5u)], abs(u_input.b.x), min(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)], func_3(arg_2.a, arg_2.c, -951f))), ~u_input.b.yzy));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    var var_4 = true;
    return firstLeadingBit(~(vec3<i32>(-1i) * -u_input.b.xyy) << (~vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)));
}

fn func_1() -> StorageBuffer {
    global4 = array<vec3<f32>, 12>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), u_input.a.x), u_input.a.x), 22u)];
    global1 = array<vec3<f32>, 25>();
    let var_1 = Struct_2(var_0.a, var_0.b, func_2(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(abs(1995f))) + _wgslsmith_f_op_f32(f32(-1f) * -261f)), global3[_wgslsmith_index_u32(abs(max(~1u, ~0u)), 22u)]), var_0.d);
    var var_2 = Struct_1(any(var_1.d.xx));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(977f, var_0.b.x) - vec2<f32>(var_0.b.x, 2168f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1924f, 982f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f - 1765f) - 1737f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1257f, 763f))), 843f)) * -128f));
    global0 = array<i32, 5>();
    let var_1 = vec4<u32>(u_input.a.x, u_input.a.x, 1u, ~1u);
    let var_2 = -260f;
    global0 = array<i32, 5>();
    let var_3 = true;
    global0 = array<i32, 5>();
    global4 = array<vec3<f32>, 12>();
    let var_4 = vec4<f32>(var_2, var_0.x, var_2, -434f);
    let x = u_input.a;
    s_output = func_1();
}

