struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

var<private> global1: u32;

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> f32 {
    global0 = array<Struct_5, 4>();
    global2 = array<vec2<bool>, 16>();
    let var_0 = ~abs(~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(91206u, arg_0.b, u_input.a), vec3<u32>(4294967295u, 4294967295u, 44585u), vec3<u32>(u_input.a, arg_0.b, u_input.a)), vec3<u32>(u_input.a, arg_0.b, 4294967295u)));
    global2 = array<vec2<bool>, 16>();
    global2 = array<vec2<bool>, 16>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), arg_1);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(~(-2147483647i), true, vec3<u32>(~(_wgslsmith_sub_u32(9041u, u_input.a) | (16633u ^ u_input.a)), u_input.a, ~(~1u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(arg_0.e, arg_0.e))) + _wgslsmith_f_op_f32(func_3(arg_0, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-36360i, 1i, 1i), vec3<i32>(4407i, 1289i, 1i))))), ~abs(arg_0.b), arg_0.c, vec2<bool>(any(select(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, false), vec4<bool>(arg_0.d.x, true, arg_0.d.x, true), vec4<bool>(arg_0.d.x, false, arg_0.d.x, false))), arg_0.d.x), arg_0.c.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-2057f, 9506u, vec3<f32>(-117f, -443f, arg_0.e), vec2<bool>(arg_0.d.x, arg_0.d.x), -909f), arg_0.a, var_0.a)) + _wgslsmith_f_op_f32(arg_0.c.x + var_0.d.a))))));
    var var_2 = Struct_1(var_1.x, reverseBits(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_0.c.xy), var_0.d.b | 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(select(-789f, -1260f, var_0.b)), _wgslsmith_f_op_f32(floor(-1123f)), _wgslsmith_f_op_f32(ceil(var_0.d.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.d.c)))), !select(!select(vec2<bool>(false, arg_0.d.x), var_0.d.d, arg_0.d.x), select(select(arg_0.d, var_0.d.d, arg_0.d.x), arg_0.d, !vec2<bool>(var_0.d.d.x, true)), all(!global2[_wgslsmith_index_u32(53807u, 16u)])), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(trunc(-598f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a * -449f))), 248f), arg_0.d.x)));
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-381f, -959f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(1823f)))))), u_input.a, !(!any(select(vec3<bool>(var_2.d.x, arg_0.d.x, true), vec3<bool>(false, true, var_2.d.x), false))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(var_0.d.b & 49658u, arg_0.b, true), 28678u), 2u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1752f, var_0.d.a)) - _wgslsmith_f_op_f32(-var_1.x)), ~(~u_input.a >> (26462u % 32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c.x, -2001f, 1444f)) * arg_0.c))), select(global2[_wgslsmith_index_u32(~(~arg_0.b), 16u)], !vec2<bool>(var_0.b, var_0.d.d.x), select(var_0.b, true, var_2.d.x)), 550f));
    let var_4 = vec4<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2171f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + _wgslsmith_f_op_f32(abs(var_3.e.a))))), var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + var_1.x)));
    return 212u;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(arg_2.a >> (~(~select(vec3<u32>(arg_2.c.b, 1u, arg_2.c.b), vec3<u32>(arg_2.c.b, 4294967295u, 4294967295u), arg_2.c.d.x)) % vec3<u32>(32u)), 1i, arg_2.c);
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(firstLeadingBit(func_2(arg_2.c)), 0u), firstLeadingBit(firstTrailingBit(firstLeadingBit(3613u)) & arg_2.c.b), (_wgslsmith_div_u32(~u_input.a, 51821u) & _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.b, 1u), vec2<u32>(1u, var_0.c.b), vec2<u32>(arg_2.c.b, 1349u)), _wgslsmith_add_vec2_u32(vec2<u32>(104498u, arg_2.c.b), vec2<u32>(var_0.c.b, 0u)))) ^ _wgslsmith_mod_u32(~arg_2.c.b, 1u));
    global3 = array<Struct_2, 2>();
    var var_2 = vec2<u32>(~arg_2.c.b, 0u);
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    return !select(vec2<bool>(true, true), arg_2.c.d, select(!var_3.d.c.d, arg_2.c.d, select(vec2<bool>(var_3.d.c.d.x, false), !vec2<bool>(false, var_0.c.d.x), select(var_0.c.d, global2[_wgslsmith_index_u32(var_3.b, 16u)], false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~64536u;
    global2 = array<vec2<bool>, 16>();
    global1 = var_0;
    var var_1 = select(!(!vec2<bool>(any(vec3<bool>(true, true, true)), true)), select(!global2[_wgslsmith_index_u32(~1u, 16u)], select(select(select(global2[_wgslsmith_index_u32(u_input.a, 16u)], vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(false, false), true), !select(global2[_wgslsmith_index_u32(var_0, 16u)], vec2<bool>(true, false), false), func_1(-2147483647i, _wgslsmith_div_f32(1190f, 943f), global3[_wgslsmith_index_u32(1u, 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, ~38871u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(26622u, 1u, 1u, 71049u), vec4<u32>(113600u, u_input.a, 1u, u_input.a)))), 16u)]), !(!global2[_wgslsmith_index_u32(~var_0, 16u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(select(vec3<i32>(-1i, -3294i, -2147483647i), vec3<i32>(64272i, -2147483647i, 33432i), vec3<bool>(false, var_1.x, false))), vec3<i32>(_wgslsmith_mod_i32(1i, 6510i), max(0i, -1i), max(-2147483647i, 1i)), !select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1409f, 1618f, -201f, 243f) + vec4<f32>(-834f, 630f, -1000f, 1000f)) + vec4<f32>(500f, 1208f, -562f, 181f))))));
}

