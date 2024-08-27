struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(1u, 1u, 35056u), vec3<u32>(52038u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 16822u), vec3<u32>(76242u, 4294967295u, 20686u), vec3<u32>(0u, 43335u, 14066u), vec3<u32>(4294967295u, 71785u, 50595u), vec3<u32>(0u, 4294967295u, 18897u), vec3<u32>(38865u, 6741u, 0u), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global2 = array<vec3<u32>, 9>();
    global2 = array<vec3<u32>, 9>();
    global2 = array<vec3<u32>, 9>();
    global0 = select(!(!(!vec2<bool>(global0.x, global0.x))), !vec2<bool>(global0.x, true), all(!vec3<bool>(global0.x, all(vec4<bool>(false, global0.x, global0.x, global0.x)), false)));
    let var_0 = min(13310i, firstTrailingBit(u_input.c));
    return !vec4<bool>(!(true | any(vec4<bool>(true, false, global0.x, false))), global0.x, false, !(!global0.x));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = select(select(!vec4<bool>(false != global0.x, !global0.x, all(vec2<bool>(false, true)), true), !(!vec4<bool>(global0.x, true, global0.x, global0.x)), !select(vec4<bool>(true, global0.x, true, true), func_3(arg_0), true)), func_3(abs(1278u) << (arg_3 % 32u)), global0.x);
    let var_1 = Struct_3(~(~(~(~vec4<u32>(u_input.b.x, 60761u, u_input.b.x, 0u)))), vec2<bool>(!global0.x, !global0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + 1440f), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.a + -225f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, arg_1.a, arg_1.a)))) - vec3<f32>(-219f, _wgslsmith_f_op_f32(step(1532f, 599f)), 295f)), true))));
    return ~32446u;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = max(vec4<u32>(u_input.b.x, 1u, u_input.b.x, abs(4294967295u)), vec4<u32>(0u, u_input.b.x, _wgslsmith_clamp_u32(27190u, ~(u_input.b.x & u_input.b.x), min(reverseBits(56782u), func_2(u_input.b.x, Struct_4(arg_0.x), vec3<i32>(u_input.c, 41339i, u_input.c), 30231u))), u_input.b.x));
    global2 = array<vec3<u32>, 9>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.x)), -405f))))) - 975f);
    global0 = vec2<bool>(true, true);
    global0 = func_3(u_input.b.x).yw;
    return vec2<bool>(!(!global0.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(any(select(select(func_1(vec2<f32>(-216f, 1214f)), vec2<bool>(global0.x, global0.x), !global0.x), vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1349f, 640f)))).x)), true);
    let var_0 = Struct_4(-1054f);
    let var_1 = Struct_5(Struct_1(true, u_input.c & u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) < _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 8322u), abs(vec4<u32>(4294967295u, 1u, 36725u, u_input.b.x)))), Struct_4(-597f), -vec2<i32>(_wgslsmith_add_i32(-26131i, 32805i), _wgslsmith_add_i32(u_input.a.x, ~2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)), _wgslsmith_f_op_f32(-2059f * 167f), _wgslsmith_f_op_f32(901f * var_0.a), _wgslsmith_f_op_f32(ceil(var_0.a)))))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1061f)));
    global2 = array<vec3<u32>, 9>();
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(all(!(!vec4<bool>(true, var_3, var_1.a.a, global0.x))), u_input.c, all(func_3(36362u))), u_input.b.x, Struct_1(select(true, any(vec4<bool>(false, false, global0.x, global0.x)), func_3(116076u).x) && (_wgslsmith_f_op_f32(-var_1.b.a) != var_1.d.x), u_input.a.x ^ reverseBits(76922i << (u_input.b.x % 32u)), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(-30263i, _wgslsmith_sub_u32(u_input.b.x, ~23634u));
}

