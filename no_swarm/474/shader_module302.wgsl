struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: u32;

var<private> global2: array<f32, 7>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global0 = array<vec2<bool>, 30>();
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_div_f32(-1425f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~4294967295u), 7u)]))));
    var var_2 = true;
    var var_3 = var_0.xz;
    return !(!select(vec3<bool>(false, any(vec2<bool>(false, true)), true), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), true));
}

fn func_2() -> Struct_1 {
    let var_0 = -u_input.a.x;
    global0 = array<vec2<bool>, 30>();
    global2 = array<f32, 7>();
    let var_1 = (_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 34866i, -1i, var_0), -vec4<i32>(18989i, var_0, 26419i, var_0))) >> (~(~(~u_input.b.x)) % 32u)) >= ~11860i;
    var var_2 = !select(vec3<bool>(abs(u_input.b.x) >= u_input.b.x, !any(vec4<bool>(var_1, var_1, false, false)), false), select(func_3(u_input.b.x), !(!vec3<bool>(false, var_1, var_1)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)] != -1363f, var_1, true)), var_1);
    return Struct_1(!(!func_3(u_input.b.x ^ u_input.b.x).zy), vec2<u32>(firstTrailingBit(~(~21108u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 29531u, 10936u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) & 49112u, firstTrailingBit(~u_input.b.x))), (any(vec4<bool>(var_2.x, var_1, false, var_1)) | (countOneBits(u_input.b.x) <= 1u)) || var_2.x, vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(~4294967295u, countOneBits(u_input.b.x | u_input.b.x)), u_input.b.x, abs(countOneBits(u_input.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(select(func_3(arg_0.d.x), select(select(vec3<bool>(arg_0.c, arg_0.c, arg_1.x), vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.c, arg_1.x)), vec3<bool>(all(vec4<bool>(false, arg_1.x, false, arg_2.b)), true, arg_0.c), vec3<bool>(u_input.b.x < u_input.b.x, false, any(vec2<bool>(arg_1.x, false)))), !arg_1.x), !(!vec3<bool>(all(vec4<bool>(true, true, false, arg_0.c)), true, arg_1.x || arg_1.x)), select(vec3<bool>(false, any(!vec4<bool>(arg_1.x, arg_2.b, arg_1.x, true)), true), vec3<bool>(false, arg_0.c && !arg_0.c, any(!vec4<bool>(arg_0.a.x, arg_1.x, true, arg_1.x))), select(false, all(!vec4<bool>(true, false, true, arg_0.c)), arg_1.x | (u_input.a.x < -20849i))));
    let var_1 = true;
    global0 = array<vec2<bool>, 30>();
    let var_2 = vec3<u32>(arg_0.b.x, countOneBits(arg_2.a.x), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, u_input.b.x, arg_2.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(22046u, 19462u, u_input.b.x, u_input.b.x), vec4<u32>(arg_2.a.x, 15277u, 111613u, arg_0.d.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(24658u, 0u), vec2<u32>(24834u, 0u))));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(21520u, ~(~1005u), _wgslsmith_dot_vec2_u32(~arg_0.d.zw, vec2<u32>(arg_0.b.x, 28143u)), arg_2.a.x), arg_0.d, _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, u_input.b.x, 0u, 4294967295u), vec4<u32>(u_input.b.x, arg_2.a.x, 38483u, 4294967295u)), ~vec4<u32>(var_2.x, 12802u, 0u, 0u)));
    return func_2();
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(func_2(), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))), 30u)], Struct_2(firstTrailingBit(~select(vec3<u32>(4294967295u, u_input.b.x, 6431u), vec3<u32>(4294967295u, u_input.b.x, 23676u), vec3<bool>(false, false, true))), func_2().c));
    global0 = array<vec2<bool>, 30>();
    var var_1 = Struct_3(vec2<i32>(u_input.a.x, 6912i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(592f, global2[_wgslsmith_index_u32(var_0.d.x, 7u)])), global2[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)] + -1618f), global2[_wgslsmith_index_u32(~67568u, 7u)])))), -1345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.d.x, 7u)]) * -256f), Struct_2(vec3<u32>(firstTrailingBit(var_0.b.x >> (751u % 32u)), ~55323u, u_input.b.x), false));
    var var_2 = var_1.e;
    var var_3 = u_input.a.yx;
    return StorageBuffer(~((var_2.a.x | 4294967295u) | func_4(Struct_1(vec2<bool>(var_2.b, false), var_2.a.xy, false, vec4<u32>(1u, 4294967295u, 4294967295u, 59627u)), select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_2.b, var_0.c), true), var_1.e).d.x), _wgslsmith_f_op_vec2_f32(-var_1.b.zy), var_1.b.zx, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    var var_0 = 53123u;
    let x = u_input.a;
    s_output = func_1();
}

