struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(0u, 16582u, 0u, 4294967295u), vec4<u32>(9793u, 1u, 4294967295u, 1u));

var<private> global3: array<Struct_5, 8>;

var<private> global4: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    return Struct_1(false);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~(abs(~(~u_input.b.x)) << (~_wgslsmith_add_u32(abs(14429u), u_input.b.x) % 32u)), 8u)];
    var var_1 = Struct_4(-reverseBits(~u_input.c.x), 4294967295u, ~vec3<u32>(~_wgslsmith_sub_u32(0u, var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0.a), u_input.b.x), Struct_1(false));
    let var_2 = 1u;
    global1 = countOneBits(min(-reverseBits(-1i), _wgslsmith_mod_i32(~u_input.a, min(9018i, var_1.a)) << (var_2 % 32u)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, 123f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, global4.x)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(442f, global4.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, global4.x), vec2<f32>(global4.x, -1766f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, -1341f))) * vec2<f32>(1000f, _wgslsmith_div_f32(1227f, -1955f)))));
    return vec4<bool>(true, var_1.d.a, any(vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.d.a, arg_0.a, true, false), false)), false)), func_2(Struct_4(-2147483647i, ~(23157u >> (1u % 32u)), u_input.b.zwy, Struct_1(!var_1.d.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, 1641f)) * -1397f), _wgslsmith_f_op_f32(floor(1000f)))).a);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = true;
    let var_1 = Struct_2(func_2(Struct_4(0i, ~(15943u >> (u_input.b.x % 32u)), select(vec3<u32>(18862u, u_input.b.x, 4294967295u), reverseBits(vec3<u32>(54714u, u_input.b.x, 1u)), true), func_2(Struct_4(u_input.a, 0u, vec3<u32>(u_input.b.x, 45643u, u_input.b.x), Struct_1(false)), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(714f)) + _wgslsmith_f_op_f32(-1000f + global4.x)))), Struct_1(all(select(global0.xzz, global0.zwx, arg_0.x)) & arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1404f))))), global4.x, arg_0.x)), u_input.b.x, ~(~_wgslsmith_mult_u32(4294967295u, max(4294967295u, u_input.b.x))));
    global0 = !select(select(vec4<bool>(true, func_3(Struct_1(true)).x, true, true), arg_0, global0.x), select(arg_0, arg_1, arg_0), var_1.a.a);
    return vec4<bool>(true, true, true, !any(vec2<bool>(true, func_3(Struct_1(arg_0.x)).x)));
}

fn func_1() -> Struct_1 {
    global1 = u_input.c.x;
    var var_0 = Struct_1(~abs(u_input.c.x) <= _wgslsmith_sub_i32(~(-19634i), _wgslsmith_dot_vec3_i32(vec3<i32>(28324i, 13715i, 782i), u_input.c)));
    var var_1 = any(func_4(func_3(func_2(Struct_4(u_input.a, 0u, vec3<u32>(u_input.b.x, 4294967295u, 18153u), Struct_1(global0.x)), -1144f)), vec4<bool>(false, select(false, global0.x && var_0.a, -2422f != global4.x), var_0.a, true), 1168f));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-902f, global4.x)))), _wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + global4.x)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(568f)) - _wgslsmith_f_op_f32(step(global4.x, global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-284f, global4.x)) + 835f), global4.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1356f, -101f, 336f)))))))));
    global3 = array<Struct_5, 8>();
    return Struct_1(127f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(false), func_1(), -695f, 1u, _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), u_input.b.x) & 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-198f - 1132f)))))));
    global0 = func_3(var_0.a);
    let var_2 = u_input.c;
    global3 = array<Struct_5, 8>();
    global2 = array<vec4<u32>, 2>();
    let var_3 = Struct_4(-1i, ~min(100317u, u_input.b.x), firstLeadingBit(~(~select(u_input.b.xxw, u_input.b.xww, global0.x))), var_0.a);
    let var_4 = -32374i >> (u_input.b.x % 32u);
    var var_5 = vec4<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))))), _wgslsmith_f_op_f32(abs(937f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5.x), select(-2147483647i, i32(-1i) * -var_2.x, true) & 46426i, abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-13280i, -5878i, u_input.c.x, var_3.a), vec4<i32>(38410i, var_4, var_4, u_input.a), global0.x), max(vec4<i32>(var_4, var_4, 0i, -1i), vec4<i32>(u_input.c.x, -1i, -2147483647i, 2147483647i))))));
}

