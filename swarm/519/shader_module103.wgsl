struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec4<bool>(false, true, true, true), 22545u, true), Struct_1(true, vec4<bool>(true, false, true, false), 31178u, true), Struct_1(true, vec4<bool>(false, true, true, false), 0u, false), Struct_1(true, vec4<bool>(false, false, true, false), 3795u, true), Struct_1(false, vec4<bool>(false, false, true, true), 4294967295u, false), Struct_1(false, vec4<bool>(true, false, true, true), 4294967295u, true), Struct_1(false, vec4<bool>(false, false, false, true), 30678u, false), Struct_1(false, vec4<bool>(true, true, true, false), 4294967295u, false), Struct_1(false, vec4<bool>(true, false, false, false), 34152u, false), Struct_1(true, vec4<bool>(false, true, false, false), 1u, true), Struct_1(false, vec4<bool>(false, true, false, true), 1u, true), Struct_1(false, vec4<bool>(true, true, true, false), 1u, true), Struct_1(true, vec4<bool>(false, false, true, true), 1u, false), Struct_1(false, vec4<bool>(true, false, false, true), 10736u, false), Struct_1(true, vec4<bool>(true, false, true, false), 0u, false), Struct_1(false, vec4<bool>(false, true, false, false), 1u, true), Struct_1(false, vec4<bool>(true, true, false, false), 50496u, true), Struct_1(true, vec4<bool>(false, false, true, true), 1u, false), Struct_1(false, vec4<bool>(true, false, true, true), 2465u, true), Struct_1(false, vec4<bool>(false, false, true, false), 11334u, false), Struct_1(true, vec4<bool>(false, false, false, false), 0u, true), Struct_1(false, vec4<bool>(false, true, true, false), 1u, true), Struct_1(true, vec4<bool>(false, false, true, false), 15568u, true), Struct_1(true, vec4<bool>(true, false, false, false), 1u, true), Struct_1(false, vec4<bool>(true, false, true, true), 9511u, true), Struct_1(false, vec4<bool>(false, true, true, false), 61675u, true));

var<private> global1: array<f32, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 194f)), vec3<f32>(arg_1.x, global1[_wgslsmith_index_u32(97509u, 27u)], 1277f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1))))))));
    var var_1 = Struct_4(reverseBits(vec3<u32>(arg_2.x, ~(~34338u), 0u)), arg_1.x, any(select(vec2<bool>(true, true), vec2<bool>(false || arg_3.x, true), select(vec2<bool>(true, arg_3.x), select(arg_3.wz, arg_3.zw, vec2<bool>(arg_3.x, arg_3.x)), true))), abs(u_input.c.x ^ u_input.c.x));
    var var_2 = global0[_wgslsmith_index_u32(var_1.a.x, 26u)];
    var var_3 = 597f;
    var_3 = var_1.b;
    return all(select(!(!vec2<bool>(var_2.a, arg_3.x)), !var_2.b.xx, arg_3.xy));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = true;
    let var_1 = countOneBits(47894i);
    var var_2 = _wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, u_input.b.x, 86464u, arg_0.d), vec4<u32>(u_input.c.x, u_input.b.x, 4294967295u, u_input.c.x)), 57174u), abs(arg_0.a | vec3<u32>(1u, 0u, u_input.c.x))));
    var_0 = func_3(Struct_3(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.d, 2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(min(-485f, 1115f)), arg_0.b, 1000f), vec4<u32>(~u_input.c.x, select(0u >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 21092u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 17792u)), arg_0.c), 0u, 1u), vec4<bool>(any(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), !arg_0.c, 0u >= u_input.b.x, false)) & false;
    var var_3 = 307u;
    return Struct_4(_wgslsmith_sub_vec3_u32(arg_0.a, _wgslsmith_mult_vec3_u32(arg_0.a & vec3<u32>(131972u, 73950u, arg_0.a.x), ~vec3<u32>(arg_0.d, u_input.b.x, 25606u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(180f, -1214f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(33537u, 27u)])) + -374f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(307f))))))), arg_0.c, abs(firstLeadingBit(_wgslsmith_div_u32(countOneBits(arg_0.a.x), arg_0.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = u_input.a.zy;
    global1 = array<f32, 27>();
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 486f) - vec2<f32>(1806f, global1[_wgslsmith_index_u32(arg_1, 27u)]))) - vec2<f32>(-671f, 233f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-501f, _wgslsmith_f_op_f32(sign(1121f)))))));
    var var_2 = ~(-1070i);
    return reverseBits(_wgslsmith_mult_vec3_u32(arg_2.a, vec3<u32>(arg_1, 48618u, u_input.c.x)) | abs(max(vec3<u32>(arg_2.d, arg_1, arg_2.d), vec3<u32>(67516u, 10804u, 0u)))) ^ abs(arg_2.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    let var_0 = 2147483647i;
    global0 = array<Struct_1, 26>();
    global1 = array<f32, 27>();
    let var_1 = _wgslsmith_div_vec3_u32(countOneBits(func_4(min(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, arg_0)), ~u_input.b.x, func_2(Struct_4(vec3<u32>(u_input.b.x, 0u, u_input.c.x), -235f, true, u_input.c.x)))), vec3<u32>(1u, u_input.c.x, _wgslsmith_mult_u32(~113899u, min(_wgslsmith_sub_u32(u_input.b.x, 71810u), 31032u))));
    let var_2 = Struct_2(arg_1);
    return -985f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 27>();
    let var_0 = u_input.a;
    global0 = array<Struct_1, 26>();
    var var_1 = Struct_1(true | (1u <= _wgslsmith_clamp_u32(1u ^ u_input.c.x, u_input.c.x, ~u_input.b.x)), !vec4<bool>(false != (global1[_wgslsmith_index_u32(24738u, 27u)] > 415f), false, any(vec4<bool>(true, true, true, true)), true), 50626u, true);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.c & var_1.c, abs(~(1u ^ u_input.b.x))), 26u)];
    var var_2 = vec3<u32>(firstTrailingBit(7871u) & 4294967295u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(22280u, var_1.c, 0u, 0u), vec4<u32>(u_input.b.x, 1u, 36832u, 2924u)), vec4<u32>(1u, 4294967295u, 44138u, u_input.c.x)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(19655u, u_input.b.x & 25631u), select(vec2<u32>(u_input.b.x, var_1.c), ~vec2<u32>(var_1.c, 34094u), !vec2<bool>(var_1.b.x, var_1.b.x))), u_input.b.x);
    global0 = array<Struct_1, 26>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.c, 27u)] - 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.c, 27u)]))))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.c << (var_1.c % 32u), 27u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(-12184i, u_input.a.x, 29248i, var_0.x), global1[_wgslsmith_index_u32(1u, 27u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_1.c, 27u)]);
}

