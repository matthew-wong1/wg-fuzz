struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<i32, 30> = array<i32, 30>(28870i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -17721i, i32(-2147483648), 50514i, -1i, 2147483647i, 2147483647i, 0i, 1i, i32(-2147483648), 2147483647i, -58524i, -1i, 20163i, i32(-2147483648), 6636i, -50126i, 2147483647i, -12622i, 34882i, 2147483647i, 0i, -1i, 0i, -1i, 55805i);

var<private> global2: vec2<f32> = vec2<f32>(-589f, 1044f);

var<private> global3: vec3<f32>;

var<private> global4: array<vec4<bool>, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, global2.x, arg_0.b.x, 500f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, arg_0.b.x, -1175f, -1000f)))))), arg_0.c, select(arg_0.a, true, arg_0.d));
    var var_1 = 63675u;
    global1 = array<i32, 30>();
    var var_2 = !vec3<bool>(false, arg_0.d, false);
    var var_3 = -arg_1;
    return _wgslsmith_f_op_f32(-global3.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(65406u, select(u_input.b.x, 37874u, true), arg_0.a.x), arg_0.e.x << (u_input.a % 32u)) & ~(~(~vec2<u32>(u_input.a, 70976u))));
    global4 = array<vec4<bool>, 10>();
    var var_1 = arg_0.c.c.x;
    let var_2 = ~u_input.b.x;
    global1 = array<i32, 30>();
    return !arg_0.c.d;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(select(global3.xy, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 22u)], vec3<i32>(32714i, u_input.c, u_input.c), vec3<u32>(arg_0.x, 1u, 55159u))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)))), select(vec2<bool>(select(arg_1.x, true, func_3(Struct_2(u_input.b.xy, -1i, Struct_1(arg_1.x, vec4<f32>(arg_2, global3.x, global3.x, -1000f), vec4<f32>(global2.x, 986f, -1323f, -1947f), false), -71348i, vec3<u32>(arg_0.x, 1u, 4294967295u)), 761f, arg_1.x)), true), !arg_1.yy, !(!arg_1.x))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, _wgslsmith_f_op_f32(-1651f + _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(7337u, 22u)], vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 1i, 0i), u_input.b))), _wgslsmith_f_op_f32(abs(global3.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(535f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 1452f), _wgslsmith_div_f32(-462f, -1129f), !(global3.x <= global3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2144f), global3.x))))));
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    global4 = array<vec4<bool>, 10>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(48307u), 30u)] << (func_1(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xx) << (abs(u_input.b.yz) % vec2<u32>(32u)), ~(u_input.b.xz | vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.b.x, 0u), ~1u)), select(vec3<bool>(false, true, all(vec3<bool>(false, true, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), 214f) % 32u);
    let var_1 = Struct_3(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false)), true), vec2<i32>(firstLeadingBit(2147483647i), u_input.d.x), Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 48821u, u_input.b.x), vec4<u32>(1u, 6899u, 58109u, 68039u)), ~vec4<u32>(38326u, u_input.a, 11221u, u_input.a)), 7511u), abs(-13518i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~83081u), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.yy), u_input.b.x)), 22u)], u_input.d.x, u_input.b), ~(~(vec3<u32>(1u, 1u, 103u) << (vec3<u32>(1u, u_input.b.x, u_input.a) % vec3<u32>(32u))) ^ u_input.b));
    let var_2 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(34815u, 53012u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, var_1.c.e.x, 0u, u_input.b.x))), firstTrailingBit(abs(~var_1.d.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.c.c.b.yww, vec3<f32>(100f, 268f, -426f))) - var_1.c.c.b.yzx)) + vec3<f32>(-776f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global2.x) * _wgslsmith_f_op_f32(abs(1541f))))), vec2<i32>(countOneBits(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-34989i, -2147483647i, u_input.d.x), vec3<i32>(u_input.d.x, 19272i, 2147483647i)), _wgslsmith_add_i32(var_1.c.d, 36637i), var_1.a.x)), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2076f, global3.x, global2.x, global2.x)) * _wgslsmith_f_op_vec4_f32(min(var_1.c.c.b, var_1.c.c.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.c.c)))), ~(~(~_wgslsmith_clamp_vec2_u32(var_1.c.a, var_1.c.a, vec2<u32>(var_2.x, u_input.b.x)))));
}

