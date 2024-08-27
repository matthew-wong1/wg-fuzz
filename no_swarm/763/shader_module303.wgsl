struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: i32;

var<private> global2: array<bool, 31> = array<bool, 31>(false, false, true, true, false, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, false, false, false, false, false, false, false, true, true, false);

var<private> global3: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.x, 653f, arg_0.e.b) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-376f, -1257f, global4.c.x))) * vec3<f32>(-127f, arg_0.a.x, arg_0.a.x)), vec3<f32>(-972f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.e.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.e.c, false), arg_0.d.c)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_2(select(vec4<i32>(reverseBits(-32537i), global4.a.x, -5333i, _wgslsmith_clamp_i32(67513i, 0i, -2147483647i)), vec4<i32>(~global4.a.x, -global4.a.x, arg_0.x, abs(u_input.a)), true) | global4.a, global4.b, global4.c);
    let var_1 = ~(~(u_input.b >> (abs(u_input.b) % 32u)));
    var var_2 = var_0;
    global2 = array<bool, 31>();
    let var_3 = vec4<u32>(~(~_wgslsmith_sub_u32(1u, var_1)), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 0u, 4294967295u), vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_sub_u32(var_1, 4294967295u), 4275u, 0u), vec4<u32>(var_1, u_input.b >> (1u % 32u), u_input.b, ~1u)), var_1, 1u);
    return _wgslsmith_f_op_f32(step(var_0.b.b, var_0.b.b));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> vec2<f32> {
    global2 = array<bool, 31>();
    global3 = array<vec4<bool>, 14>();
    var var_0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) - arg_0.x)))));
    var var_1 = global4.b.b;
    global2 = array<bool, 31>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(897f, var_0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, -232f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(765f + _wgslsmith_f_op_f32(func_3(global4.a.zyw, global3[_wgslsmith_index_u32(37006u, 14u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(-global4.b.b), global4.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(select(global4.b.b, -444f, false)), _wgslsmith_div_f32(-1253f, -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.b.b, 105f)) * -1547f), global4.b.b, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(global4.c.x, global4.b.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec2<f32>(664f, global4.b.b), vec3<u32>(0u, u_input.b, u_input.b), u_input.b, Struct_1(vec3<bool>(false, global4.b.a.x, global2[_wgslsmith_index_u32(u_input.b, 31u)]), 243f, global4.b.c), global4.b), -u_input.a)) - vec3<f32>(704f, global4.c.x, global4.b.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-535f, 248f, false))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.b, -810f));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(-var_2))) - var_0.yz) * _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_1)), var_2, -1848f), u_input.b, global4.a.x, vec2<bool>(false, global4.b.a.x))));
    global3 = array<vec4<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-477f, 2147483647i, _wgslsmith_add_i32(-(32782i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 72654u)) % 32u)), -u_input.a), countOneBits(~(~1u)), ~select(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 20650u, u_input.b), vec4<u32>(4294967295u, 72723u, 0u, 0u)), vec4<u32>(u_input.b, ~45041u, reverseBits(37502u), select(u_input.b, 4294967295u, false)), true));
}

