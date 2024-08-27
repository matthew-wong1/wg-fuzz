struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(781f, -617f, 541f, 1782f, -389f, -1131f, -834f, 906f, 620f, -1000f, 1198f, 121f, -1039f, -110f, 1000f);

var<private> global1: array<Struct_4, 17>;

var<private> global2: array<vec3<u32>, 29>;

var<private> global3: array<Struct_3, 23>;

var<private> global4: i32 = -14179i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    let var_0 = 32036u;
    let var_1 = !(!vec3<bool>(false, arg_0.b.a, arg_1.a));
    global3 = array<Struct_3, 23>();
    global1 = array<Struct_4, 17>();
    let var_2 = arg_0;
    return global1[_wgslsmith_index_u32(abs(~25894u), 17u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_1.b.c.xx, max(vec2<u32>(arg_2.c.x, ~4294967295u), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(global2[_wgslsmith_index_u32(arg_2.c.x, 29u)]), ~vec3<u32>(9928u, arg_0.a.c.x, 36753u)), ~4294967295u))), 23u)];
    global2 = array<vec3<u32>, 29>();
    var var_1 = arg_1.b.c.x;
    global1 = array<Struct_4, 17>();
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.c, 15u)])))));
}

fn func_1() -> i32 {
    global0 = array<f32, 15>();
    global1 = array<Struct_4, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 15u)] * -987f), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(true, u_input.c.xy, vec4<u32>(9061u, 30261u, 37114u, 6356u))), func_2(global1[_wgslsmith_index_u32(60009u, 17u)], Struct_1(true, vec2<i32>(1i, u_input.b), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(false, vec2<i32>(u_input.a.x, 32237i), vec4<u32>(12655u, 72055u, 30858u, 24640u)), 1i))))) != global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~9929u)), 81163u), 15u)];
    let var_1 = abs(1i) <= u_input.a.x;
    var var_2 = _wgslsmith_mult_u32(12646u & firstTrailingBit(~4294967295u), _wgslsmith_div_u32(~3437u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(44029u, 46082u), vec2<u32>(9520u, 2093u)), firstTrailingBit(25996u << (0u % 32u)))) >= (func_2(Struct_4(select(vec4<bool>(var_0, false, false, false), vec4<bool>(var_0, var_0, true, var_1), var_1), func_2(global1[_wgslsmith_index_u32(15603u, 17u)], Struct_1(true, vec2<i32>(24147i, u_input.c.x), vec4<u32>(0u, 1u, 29352u, 4294967295u))).b, ~45768u, Struct_1(var_1, u_input.a.wy, vec4<u32>(1u, 1u, 0u, 0u))), Struct_1(true, _wgslsmith_mult_vec2_i32(vec2<i32>(1452i, -61547i), vec2<i32>(u_input.b, 0i)), vec4<u32>(1u, 8012u, 0u, 8349u))).d.c.x | (1u >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 6519u, 4770u), vec4<u32>(24365u, 10490u, 0u, 4294967295u)) | 603u) % 32u)));
    return firstTrailingBit(~(i32(-1i) * -(~(-18489i))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.a.x;
    let var_0 = false;
    global4 = firstLeadingBit(func_1()) ^ -((u_input.a.x << (~1u % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.c.xy));
    global1 = array<Struct_4, 17>();
    global3 = array<Struct_3, 23>();
    let var_1 = _wgslsmith_f_op_f32(min(491f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(19432u), 15u)] * _wgslsmith_f_op_f32(-694f - 1490f)), -238f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f * global0[_wgslsmith_index_u32(1u, 15u)]))))));
    global3 = array<Struct_3, 23>();
    let var_2 = ~select(~firstTrailingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(abs(~4294967295u), ~firstTrailingBit(31605u)), !vec2<bool>(any(vec2<bool>(true, var_0)), global0[_wgslsmith_index_u32(72450u, 15u)] != 1168f));
    global1 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(304f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 947f, 970f, -725f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(182f, global0[_wgslsmith_index_u32(var_2.x, 15u)], -535f, global0[_wgslsmith_index_u32(69885u, 15u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 15u)], 1299f, var_1, 736f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1969f, var_1, 388f, var_1) - vec4<f32>(var_1, -720f, global0[_wgslsmith_index_u32(var_2.x, 15u)], var_1)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-195f * 596f), 559f, _wgslsmith_f_op_f32(step(1406f, -370f))))), vec3<f32>(global0[_wgslsmith_index_u32(~4294967295u, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2763f)), var_1)));
}

