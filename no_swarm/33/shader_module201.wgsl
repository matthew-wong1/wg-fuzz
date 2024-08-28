struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<vec2<i32>, 32>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 24>;

var<private> global4: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-101317i, i32(-2147483648), 2147483647i), vec3<i32>(-186i, -8574i, 2147483647i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = vec4<bool>(all(select(vec3<bool>(true, true, global2.c), vec3<bool>(!arg_1, true, true || arg_1), (u_input.b & 1u) < u_input.b)), true, true, any(select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, global2.a), true)) || any(vec3<bool>(select(global2.c, arg_1, true), global2.a, all(vec4<bool>(false, true, true, true)))));
    var var_1 = Struct_4(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(-(u_input.a.x ^ 2147483647i), -global2.b.x | u_input.a.x)), Struct_1(1i, _wgslsmith_div_f32(-1798f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(170f + -658f), _wgslsmith_f_op_f32(-1285f - 184f))), 0u), vec2<bool>(global2.c, !any(!vec4<bool>(var_0.x, false, var_0.x, true))));
    let var_2 = vec2<u32>(~reverseBits(select(u_input.b << (arg_0 % 32u), 41941u, var_1.c.x)), ~var_1.b.c >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(5945u, u_input.b)) << (vec2<u32>(u_input.b, var_1.b.c) % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.b.c), vec2<u32>(1u, 1u)), vec2<u32>(var_1.b.c, 17839u), var_1.c)) % 32u));
    global4 = array<vec3<i32>, 2>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-902f, var_1.b.b)))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.b, -437f), _wgslsmith_f_op_f32(-var_1.b.b)), -523f))));
    return 58905u;
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = -1132f;
    global4 = array<vec3<i32>, 2>();
    global0 = array<Struct_3, 13>();
    return Struct_4(~1i, Struct_1(~min(-60973i, global2.b.x) ^ (u_input.a.x << (2132u % 32u)), 988f, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(40436u, 1u), 0u)), vec2<bool>(!(!(global2.c != true)), !all(vec4<bool>(arg_0, true, false, global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(~(func_1(u_input.b, global2.a) ^ firstTrailingBit(31721u)) <= ~u_input.b);
    let var_1 = func_2(true);
    global1 = array<vec2<i32>, 32>();
    let var_2 = func_2(global2.c).b;
    let var_3 = var_1.b.c;
    let var_4 = Struct_4(1i, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.b, var_2.b) * var_2.b) - -250f), ~(0u >> (~var_3 % 32u))), !(!(!(!vec2<bool>(global2.c, global2.a)))));
    let var_5 = Struct_2(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.b)) + _wgslsmith_f_op_f32(max(2073f, 271f))), _wgslsmith_f_op_f32(abs(var_2.b)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1595f) >= _wgslsmith_f_op_f32(step(var_2.b, -809f))).b, func_2(989f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(389f + var_4.b.b) - var_4.b.b)).b);
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(-615f - 2020f), _wgslsmith_div_f32(var_1.b.b, var_4.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, 1928f, -128f) * vec3<f32>(var_4.b.b, -175f, -1397f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, var_1.b.b, -1370f) * vec3<f32>(var_2.b, 2009f, 864f)))))), 45427i);
}

