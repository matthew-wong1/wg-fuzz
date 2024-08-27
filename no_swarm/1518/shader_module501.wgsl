struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: f32 = -2299f;

var<private> global2: array<i32, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    let var_0 = vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 77943u), 6u)], i32(-1i) * -21177i, ~(-2147483647i ^ _wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(arg_1.x, 6u)], -global2[_wgslsmith_index_u32(u_input.b, 6u)])), ~_wgslsmith_clamp_i32(-reverseBits(36590i), _wgslsmith_clamp_i32(-2147483647i, 1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(arg_1.x, 6u)])), -_wgslsmith_add_i32(9831i, 19098i)));
    global2 = array<i32, 6>();
    let var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(~(~(~5181u)), 31u)];
    global0 = array<Struct_3, 31>();
    return countOneBits(-16422i) & _wgslsmith_mult_i32(~reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.d.b, 19355u), 6u)]), abs(79774i));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(506f, 152f, -1050f, -265f) - vec4<f32>(209f, 111f, -1392f, 2456f)) - vec4<f32>(-788f, 167f, 1057f, -1399f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, -943f, -204f, 1195f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1279f, 926f, -767f, 1971f), vec4<f32>(-1371f, 1332f, 1910f, -520f)) * vec4<f32>(-100f, -1710f, 2849f, 689f))))));
    global2 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_f32(630f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a, 6u)] ^ -10502i, global2[_wgslsmith_index_u32(0u << (u_input.a % 32u), 6u)]), _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(u_input.b, 6u)], abs(-1i)), _wgslsmith_mod_i32(-37617i, global2[_wgslsmith_index_u32(u_input.b, 6u)]) << (~57724u % 32u)), -vec4<i32>(global2[_wgslsmith_index_u32(8224u, 6u)] | 2147483647i, global2[_wgslsmith_index_u32(~u_input.a, 6u)], func_3(var_0.x, vec3<u32>(u_input.a, 4294967295u, 4294967295u)), ~4456i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x)))), 595f), firstTrailingBit(~4294967295u) != countOneBits(31603u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, 117f), _wgslsmith_f_op_f32(f32(-1f) * -320f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-522f - 1000f), -429f) + _wgslsmith_f_op_f32(var_0.x + 1f)))));
}

fn func_1() -> Struct_3 {
    global2 = array<i32, 6>();
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(450f * -855f)) * -1056f), _wgslsmith_f_op_f32(440f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f))), _wgslsmith_f_op_f32(sign(1143f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -482f, -1260f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(305f, 179f, 107f) * vec3<f32>(-860f, -1000f, -1550f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2120f, -1356f, -1225f), vec3<f32>(1896f, 1124f, -2222f), vec3<bool>(true, false, false))))))));
    var var_2 = Struct_2(-1863f, var_0, Struct_1(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(var_0, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], -80508i, -9025i), vec4<i32>(11318i, global2[_wgslsmith_index_u32(var_0, 6u)], 19697i, -53165i), false), ~vec4<i32>(0i, 0i, 2147483647i, -1i)), global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(103930u, var_0, u_input.a, u_input.a)), ~vec4<u32>(var_0, 60529u, 4294967295u, u_input.b)), 0u), 6u)]), Struct_1(~(-abs(vec4<i32>(global2[_wgslsmith_index_u32(var_0, 6u)], 55661i, 39241i, -2147483647i))), -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(86720u, 6u)]) & 56935i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1109f, 1012f)))) * _wgslsmith_f_op_f32(step(1714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f))))));
    return Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(4294967295u, 1u), _wgslsmith_sub_u32(4294967295u, u_input.a), 42511u), ~max(vec3<u32>(var_2.b, var_0, u_input.b), vec3<u32>(u_input.a, var_2.b, var_2.b))), var_0, reverseBits(var_0)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(487f, -1168f)), _wgslsmith_f_op_f32(-var_2.a), true)), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1273f + var_1.x)))))), vec4<i32>(var_2.d.a.x, 40434i, 0i, -2147483647i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1185f, 1000f)))), 4294967295u, var_2.d, var_2.c));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = countOneBits(-30768i);
    let var_1 = arg_1;
    var var_2 = 367f;
    var var_3 = arg_1.d.d;
    let var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-var_1.c.x, 1i, arg_1.c.x, ~(-44238i)), var_1.d.c.a), vec4<i32>(-_wgslsmith_add_i32(var_1.d.d.b, global2[_wgslsmith_index_u32(0u, 6u)]), select(39499i, global2[_wgslsmith_index_u32(arg_1.a, 6u)], false) << (48558u % 32u), (arg_1.c.x | global2[_wgslsmith_index_u32(arg_2, 6u)]) | _wgslsmith_sub_i32(var_1.d.d.b, 19907i), select(~global2[_wgslsmith_index_u32(4294967295u, 6u)], -var_3.b, true)), var_3.a), var_1.c);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 31>();
    let var_0 = ~max(func_4(_wgslsmith_f_op_f32(f32(-1f) * -249f), func_1(), 1u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, 26503i, 2147483647i), _wgslsmith_clamp_u32(~reverseBits(func_1().d.b), u_input.a, ~select(1u, _wgslsmith_mod_u32(28785u, 6026u), true)), u_input.a, -(~vec4<i32>(-global2[_wgslsmith_index_u32(u_input.a, 6u)], ~global2[_wgslsmith_index_u32(u_input.a, 6u)], min(-15270i, global2[_wgslsmith_index_u32(4294967295u, 6u)]), -64620i)));
}

