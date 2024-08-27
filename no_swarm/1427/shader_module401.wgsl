struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -16513i, -41981i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    global1 = array<vec2<f32>, 11>();
    global0 = array<i32, 29>();
    var var_0 = all(vec4<bool>(true, true, arg_0 < 71324u, true));
    var var_1 = 386f;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, -1208f, _wgslsmith_f_op_f32(-597f - 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(427f, -1101f, -607f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, 1040f, -1876f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, 1040f, -285f) + vec3<f32>(-1126f, 385f, -250f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(347f, -237f, -512f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, -1000f, -645f)))), vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 716f)), 1135f, _wgslsmith_f_op_f32(f32(-1f) * -820f)), all(vec4<bool>(false, false, false, true)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-615f)) + -478f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1793f)), -1136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(493f, -941f)) + -372f))));
    return max(vec3<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(33488u, 29u)], global2.x, global0[_wgslsmith_index_u32(arg_0, 29u)], u_input.b.x)), vec4<i32>(global2.x, 14523i, 7230i, -1i) ^ vec4<i32>(u_input.b.x, 2147483647i, u_input.c, u_input.c)), _wgslsmith_mod_i32(1i, global2.x)), u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global0[_wgslsmith_index_u32(173925u, 29u)], firstTrailingBit(global2.x)), vec4<i32>(-u_input.a.x, global0[_wgslsmith_index_u32(24875u, 29u)], 13007i >> (arg_0 % 32u), 1i)), _wgslsmith_sub_i32(-33773i, -1i), countOneBits(_wgslsmith_sub_i32(~0i, _wgslsmith_add_i32(-1i, global2.x)))));
}

fn func_2() -> u32 {
    global1 = array<vec2<f32>, 11>();
    global0 = array<i32, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, -394f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(2121u, 11u)])))))), func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(79401u, 41314u, 59381u, 0u), vec4<u32>(0u, 71979u, 1u, 4294967295u))), Struct_1(-reverseBits(min(59055i, global0[_wgslsmith_index_u32(33209u, 29u)])), vec4<bool>(!any(vec3<bool>(true, true, false)), !all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(~reverseBits(min(4294967295u, 2570u)), 29u)]), true & (true && !all(vec3<bool>(false, false, false))));
    var var_1 = var_0;
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(378f)), -119f), u_input.b, Struct_1(max(~0i, var_1.c.a) >> (1u % 32u), var_0.c.b, global0[_wgslsmith_index_u32(~(~(~0u)), 29u)]), any(var_0.c.b));
    return 2933u;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i & ~global2.x, 1i, global0[_wgslsmith_index_u32(firstTrailingBit(1u) | ~23147u, 29u)], i32(-1i) * -2147483647i), vec4<i32>(global2.x >> (func_2() % 32u), global2.x, -min(-2147483647i, -10232i), 0i));
    global2 = max(vec4<i32>(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_add_i32(min(_wgslsmith_mod_i32(u_input.b.x, -33141i), firstLeadingBit(u_input.a.x)), 17846i), u_input.c, firstTrailingBit(firstLeadingBit(0i))), _wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a.x, 2147483647i) | vec4<i32>(1i, 1i, 0i, u_input.b.x)), firstLeadingBit(~abs(vec4<i32>(17204i, 6171i, global0[_wgslsmith_index_u32(arg_0, 29u)], 2147483647i)))));
    let var_0 = ~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), ~vec2<u32>(125239u, arg_0))));
    var var_1 = firstTrailingBit(~(firstTrailingBit(global2.xwy) & vec3<i32>(29658i, ~26961i, -36222i)));
    let var_2 = _wgslsmith_div_f32(470f, 170f);
    return Struct_1(-16655i, select(!vec4<bool>(arg_1.x, true, select(true, arg_1.x, false), all(arg_1)), vec4<bool>(all(!arg_1.www), arg_1.x, arg_2, all(select(vec2<bool>(arg_1.x, false), arg_1.wx, arg_1.yz))), true), -32142i ^ countOneBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 29u)], var_1.x, global0[_wgslsmith_index_u32(arg_0, 29u)], -42444i), vec4<i32>(2147483647i, u_input.b.x, 0i, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), reverseBits(~vec2<u32>(4294967295u, 44764u))), !(!vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(82990u, 29u)], 36029i), global2.x), u_input.b.x) < global0[_wgslsmith_index_u32(15009u, 29u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(27488u, 11u)]);
    global0 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(countOneBits(9492u), 1u)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-5441i, -global0[_wgslsmith_index_u32(0u, 29u)]), ~u_input.c), 1i, 12811i));
}

