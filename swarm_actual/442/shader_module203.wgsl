struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 52540u, 13937u);

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

var<private> global2: u32;

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_u32(~1u, ~1u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.b, 24648u, u_input.b))) | ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 9512u, 1u), vec3<u32>(u_input.b, global0.x, 33039u)), ~(reverseBits(vec3<u32>(1u, 0u, global0.x)) & firstLeadingBit(vec3<u32>(global0.x, u_input.b, global0.x)))), 3u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(~global0.x, _wgslsmith_div_u32(u_input.b, u_input.b)), 44721u), 3u)], global3[_wgslsmith_index_u32(abs(0u), 3u)]);
    var var_1 = ~(min(vec3<u32>(global0.x, 1u, _wgslsmith_mult_u32(18995u, 3059u)), vec3<u32>(4294967295u, var_0.c.a, var_0.b.a) | abs(vec3<u32>(global0.x, var_0.b.a, var_0.b.a))) | vec3<u32>(1u, (14556u ^ var_0.b.a) | max(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 3299u, u_input.b), vec4<u32>(global0.x, global0.x, 0u, u_input.b) | vec4<u32>(13148u, global0.x, 40590u, 17781u))));
    let var_2 = global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(global0.x, (20009u | u_input.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_0.a.a), vec2<u32>(43347u, var_0.b.a)) % 32u))), 3u)];
    global2 = _wgslsmith_mult_u32(0u, var_2.a);
    let var_3 = vec2<u32>(var_0.c.a ^ countOneBits(~var_1.x), var_1.x);
    return true;
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -929f);
    var var_1 = Struct_4(!all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), Struct_2(vec3<i32>(u_input.a, _wgslsmith_div_i32(arg_0, -17516i), arg_0) | (vec3<i32>(u_input.a, -31830i, arg_0) ^ (vec3<i32>(arg_0, 3296i, -23819i) ^ vec3<i32>(u_input.a, 1i, arg_0))), countOneBits(u_input.b | 0u), !(!(u_input.b < 36513u))));
    var var_2 = var_1.b;
    let var_3 = -1052f;
    var var_4 = -1598f;
    return Struct_5(vec2<bool>(true, true), !(!global1[_wgslsmith_index_u32(0u, 24u)]), all(vec3<bool>(any(vec3<bool>(false, var_1.a, false)), !var_2.c, func_3(vec3<bool>(false, false, false)))) | var_2.c, !select(!select(vec2<bool>(false, var_1.b.c), vec2<bool>(false, true), var_1.a), vec2<bool>(select(true, true, var_1.a), var_2.c), !select(vec2<bool>(true, false), vec2<bool>(true, var_2.c), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f * -894f)));
}

fn func_1() -> vec4<bool> {
    var var_0 = global0.zz;
    let var_1 = 0u;
    global2 = 0u;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2878f)), _wgslsmith_f_op_f32(f32(-1f) * -672f), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -754f))))) + 780f)));
    var var_3 = func_2(u_input.a);
    return global1[_wgslsmith_index_u32(69168u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 24>();
    let var_0 = func_1();
    var var_1 = Struct_4(func_2(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), max(u_input.a & -10183i, _wgslsmith_sub_i32(u_input.a, u_input.a)))).a.x, Struct_2(vec3<i32>(u_input.a, _wgslsmith_div_i32(~u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -1i, 1i), -vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), global0.x, true));
    let var_2 = var_1.b.a.x;
    var var_3 = var_1.b;
    var var_4 = vec3<bool>(_wgslsmith_add_u32(u_input.b >> (88337u % 32u), ~_wgslsmith_mod_u32(12493u, 4294967295u)) < min(_wgslsmith_clamp_u32(~0u, 1u, 0u), _wgslsmith_add_u32(11597u, max(64305u, 60396u))), any(vec2<bool>(false, any(!vec2<bool>(var_1.b.c, var_1.a)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1040f, 1581f))) - vec3<f32>(_wgslsmith_f_op_f32(step(405f, -973f)), -158f, _wgslsmith_f_op_f32(1438f - -835f))))));
}

