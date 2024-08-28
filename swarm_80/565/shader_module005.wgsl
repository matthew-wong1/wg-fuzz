struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> vec4<f32> {
    return arg_1.a;
}

fn func_3() -> vec2<u32> {
    global1 = array<vec3<bool>, 25>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1613f)) * -199f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(192f, -368f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.a)), var_0.a, true)), -187f));
    let var_2 = vec2<bool>(global2.x, false);
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-24976i, _wgslsmith_mod_i32(22218i, min(-26798i, -14476i))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -2147483647i, 10283i), ~_wgslsmith_add_i32(min(1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-34085i, 5448i, 38867i), vec3<i32>(-7789i, -2773i, -2147483647i)))), _wgslsmith_dot_vec4_i32(~select(-vec4<i32>(-1i, 2147483647i, 1i, 34867i), abs(vec4<i32>(-15405i, 0i, 1i, -13389i)), true || global2.x), max(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(1i, 1i, 1i, 1i)))));
    return ~min(vec2<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u) >> (53654u % 32u), firstTrailingBit(u_input.b.x & 4294967295u)), min(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~(~vec2<u32>(4294967295u, 1u))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec2<u32> {
    global1 = array<vec3<bool>, 25>();
    let var_0 = select(select(global2.xz, !vec2<bool>(arg_0, !global2.x), arg_0), vec2<bool>(false, true), !global2.xx);
    global0 = array<Struct_3, 12>();
    let var_1 = Struct_2(1672f);
    global1 = array<vec3<bool>, 25>();
    return min(vec2<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(4294967295u, u_input.b.x)), u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.zy), 4294967295u), u_input.a | 0u), ~((u_input.b.xz | vec2<u32>(u_input.b.x, 1u)) & func_3()), u_input.b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 25>();
    let var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~func_2(global2.x, vec2<i32>(2147483647i, -1i), _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, global2.x, true, false), Struct_4(vec4<f32>(1037f, 1000f, 687f, -1510f), vec4<i32>(-49131i, 97i, 806i, -30872i))))), min(vec2<u32>(1u, 1u), u_input.b.wz | vec2<u32>(u_input.b.x, u_input.a)) >> (~u_input.b.zw % vec2<u32>(32u))), 12u)];
    var var_2 = !(!vec2<bool>(var_0, var_0));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    global2 = !(!select(!select(vec4<bool>(var_2.x, false, global2.x, true), vec4<bool>(true, var_0, var_0, true), global2.x), vec4<bool>(true, true || var_0, !global2.x, true), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.b))), _wgslsmith_f_op_f32(-var_1.d.b))))), 1u, var_3.d.a);
}

