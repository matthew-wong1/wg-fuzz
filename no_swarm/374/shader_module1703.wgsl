struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_3(u_input.c, _wgslsmith_div_vec2_u32(~(~arg_1.yx) << (arg_1.xx % vec2<u32>(32u)), arg_1.xx));
    let var_1 = u_input.c.x;
    global1 = array<vec2<bool>, 3>();
    global0 = array<Struct_1, 27>();
    global2 = array<Struct_2, 20>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f - 565f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f + 419f) + _wgslsmith_f_op_f32(ceil(109f))))), 203f, -1142f, 244f);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 27u)]);
    global1 = array<vec2<bool>, 3>();
    var var_1 = true;
    global2 = array<Struct_2, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -931f, 737f, -158f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, -932f, -562f, -503f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, -606f, -530f, -688f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2423f, 348f, 519f) - _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(21439u, 20u)], vec3<u32>(4294967295u, u_input.a, 38994u)))))), !select(vec4<bool>(true, true, var_0.a.b.x, var_0.a.c), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))));
    return 1200f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(11987i, arg_3.a.d ^ -1i) << ((~(~vec2<u32>(arg_2, u_input.a)) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 2187u), vec2<u32>(1u, arg_2) >> (vec2<u32>(u_input.a, 15456u) % vec2<u32>(32u)))) % vec2<u32>(32u)), u_input.c.xw);
    var var_1 = arg_3;
    let var_2 = (4294967295u != (4294967295u ^ ~_wgslsmith_sub_u32(u_input.a, arg_2))) && var_1.a.c;
    var_0 = countOneBits(~firstTrailingBit(arg_3.a.d >> (arg_2 % 32u)) ^ arg_3.a.d);
    let var_3 = u_input.c.x;
    return 1000f;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(u_input.a << (39551u % 32u), u_input.b);
    global2 = array<Struct_2, 20>();
    global0 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(-487f)), -224f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, 122f, -623f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -597f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, 184f) + vec2<f32>(-485f, -1361f))))), ~(~(~4294967295u)), global2[_wgslsmith_index_u32((1u >> (u_input.a % 32u)) ^ u_input.a, 20u)])));
    global2 = array<Struct_2, 20>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), true, u_input.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(~73637u, 20u)], ~vec3<u32>(23389u, u_input.b, u_input.b))).wy + _wgslsmith_f_op_vec2_f32(vec2<f32>(346f, -507f) - vec2<f32>(-1000f, 624f)))));
    global2 = array<Struct_2, 20>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * var_1.x);
    global0 = array<Struct_1, 27>();
    var var_3 = ~reverseBits(~vec4<u32>(0u << (0u % 32u), u_input.a, ~u_input.a, u_input.b));
    let var_4 = Struct_2(func_1(func_1(global0[_wgslsmith_index_u32(var_3.x, 27u)])));
    var_3 = min(vec4<u32>(firstLeadingBit(select(1u, 1u, var_0.b.x)), ~u_input.b, var_3.x, firstLeadingBit(~102196u)) ^ ~abs(~vec4<u32>(41790u, 4294967295u, var_3.x, var_3.x)), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_3.x, 59168u)), select(var_3.ww, var_3.zy, var_4.a.a))), 11109u, _wgslsmith_sub_u32(102543u, firstLeadingBit(u_input.b)), ~var_3.x | _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(var_3.wy, vec2<u32>(var_3.x, u_input.a)))));
    let var_5 = !(min(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c.yxz), vec3<i32>(u_input.d, 0i, 9328i)), ~u_input.d) == 17466i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.x, 1442f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1222f)))), 1903f, _wgslsmith_f_op_f32(step(var_2, 701f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(vec3<f32>(1789f, -485f, var_2), var_1, 4294967295u, global2[_wgslsmith_index_u32(var_3.x, 20u)])))), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(955f, var_1.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, var_1.x, var_2))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-420f)), _wgslsmith_f_op_f32(select(var_1.x, 1708f, true))), select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, true, var_5), select(vec3<bool>(var_5, var_0.c, var_0.a.x), vec3<bool>(false, var_5, true), vec3<bool>(true, true, true))))))), ~(~(~u_input.a)), ~vec2<i32>(-31868i, -43788i));
}

