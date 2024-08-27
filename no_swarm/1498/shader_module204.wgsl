struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<i32, 10>;

var<private> global2: Struct_4;

var<private> global3: array<vec3<bool>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.a, global2.a, vec3<bool>(true, false, global0.x)))), vec3<f32>(global2.a.x, global2.a.x, -855f), false))))));
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.x) - arg_0.a.c.x), 936f, 691f), _wgslsmith_dot_vec3_i32(~select(-vec3<i32>(0i, global2.b, 1i), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.a.a.x, 10u)], -2147483647i, global1[_wgslsmith_index_u32(21831u, 10u)])), !global0.x), vec3<i32>(10430i >> (~arg_0.a.a.x % 32u), arg_1, countOneBits(~global2.b))));
    let var_2 = global0.x;
    var var_3 = 38779i << ((_wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, 34564u, 18167u, arg_0.a.b.x)), vec4<u32>(0u, u_input.a, arg_0.a.a.x, 0u), false == global0.x), arg_0.a.b) | arg_0.a.b.x) % 32u);
    var var_4 = !all(vec2<bool>(true, true));
    return select(1u, 28041u, select(true, global0.x, any(global0.xx)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(4816i, -3458i, -2147483647i, -27690i), vec4<i32>(global2.b, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(87242u, 10u)])), vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], global2.b, -20536i, 65450i) << (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), countOneBits(-vec4<i32>(-1i, -11166i, global1[_wgslsmith_index_u32(u_input.a, 10u)], global2.b))) ^ vec4<i32>(global1[_wgslsmith_index_u32(~(~u_input.a), 10u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(66377u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 59818u)), 10u)], min(~(-4222i), global2.b | -34524i), i32(-1i) * -2147483647i), vec4<i32>(max(global2.b, -55561i), -countOneBits(1i & global2.b), abs(global1[_wgslsmith_index_u32(~func_3(Struct_5(Struct_1(vec3<u32>(15995u, 521u, u_input.a), vec4<u32>(45674u, 0u, u_input.a, 17231u), vec4<f32>(global2.a.x, global2.a.x, 1138f, global2.a.x))), global1[_wgslsmith_index_u32(51738u, 10u)]), 10u)]), -46256i));
    var var_1 = Struct_1(~countOneBits(vec3<u32>(countOneBits(u_input.a), u_input.a, u_input.a)), ~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a) ^ select(52650u, 65244u, true), u_input.a, 18708u, _wgslsmith_sub_u32(~0u, firstLeadingBit(1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.x, 281f, global2.a.x, 933f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(732f, global2.a.x, 2000f, 141f) + vec4<f32>(global2.a.x, 1588f, global2.a.x, -517f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, 396f) + vec4<f32>(global2.a.x, 978f, 124f, global2.a.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(942f, global2.a.x, global2.a.x, -1000f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.x, 1000f, 2062f, 901f))), true)))));
    global3 = array<vec3<bool>, 29>();
    global0 = !(!global3[_wgslsmith_index_u32(~var_1.b.x, 29u)]);
    global1 = array<i32, 10>();
    return Struct_3(-14743i);
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(~(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, 4294967295u)))), ~vec4<u32>(abs(u_input.a), u_input.a, u_input.a ^ u_input.a, 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1954f, 1433f, global2.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x) + vec4<f32>(global2.a.x, global2.a.x, 560f, 360f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -481f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 680f, global2.a.x, global2.a.x) + vec4<f32>(426f, 1712f, -1917f, -552f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1027f, 408f, -329f, global2.a.x)))))));
    let var_1 = arg_0;
    return _wgslsmith_div_vec3_i32(firstTrailingBit(firstLeadingBit(abs(vec3<i32>(global2.b, global1[_wgslsmith_index_u32(0u, 10u)], arg_0.a)))), -min(vec3<i32>(-1i) * -vec3<i32>(arg_0.a, 2147483647i, 53188i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, arg_0.a, -34334i) ^ vec3<i32>(global1[_wgslsmith_index_u32(37957u, 10u)], global1[_wgslsmith_index_u32(var_0.b.x, 10u)], -35216i), firstTrailingBit(vec3<i32>(34759i, -1i, -8588i)))));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(select(global1[_wgslsmith_index_u32(u_input.a, 10u)] & -114853i, global2.b, false)), countOneBits(~(-28327i)), 57114i), _wgslsmith_add_vec3_i32(func_4(func_2()), ~vec3<i32>(firstTrailingBit(-2905i), ~1i, -global1[_wgslsmith_index_u32(arg_0, 10u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global2.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global2.a))));
    let var_3 = Struct_5(Struct_1(abs(~(~vec3<u32>(1u, 38626u, 0u))), ~(~(~vec4<u32>(u_input.a, 59010u, u_input.a, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), -613f, 1f, _wgslsmith_f_op_f32(-var_1.x))));
    let var_4 = -22236i;
    return vec4<bool>(true, true, 34715i == (~1i >> (~arg_0 % 32u)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, true, ~23034u != abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), vec3<bool>(global0.x && all(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, true, global0.x))), any(global3[_wgslsmith_index_u32(15064u, 29u)]), true), vec3<bool>(global0.x & (_wgslsmith_f_op_f32(-global2.a.x) == global2.a.x), select(!global0.x, true, false), true));
    var var_0 = func_1(~(~u_input.a));
    var var_1 = select(vec4<bool>(!var_0.x, select(true, true, !any(vec3<bool>(false, global0.x, true))), !(!select(var_0.x, var_0.x, var_0.x)), all(var_0.yz)), vec4<bool>(true, func_1(u_input.a).x, !global0.x, false), true);
    global1 = array<i32, 10>();
    global3 = array<vec3<bool>, 29>();
    var var_2 = Struct_3(~1i);
    global3 = array<vec3<bool>, 29>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + global2.a.x) + 793f)) * 610f));
    var var_4 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.a), 19045u, u_input.a), ~(~vec3<u32>(1u, 0u, 18951u))), vec4<u32>(0u | ~u_input.a, _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 13780u, u_input.a), vec3<u32>(u_input.a, 24799u, u_input.a))), ~u_input.a, _wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), ~u_input.a)), vec4<f32>(1228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * -1902f)), global2.a.x, _wgslsmith_f_op_f32(-global2.a.x))), any(vec4<bool>(global0.x, global0.x, false, !global0.x)), Struct_1(vec3<u32>(~1u, ~(15558u << (0u % 32u)), firstLeadingBit(firstTrailingBit(56240u))), firstTrailingBit(~vec4<u32>(8775u, 28957u, 0u, 0u)) & ~select(vec4<u32>(42377u, u_input.a, 122459u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<bool>(true, var_0.x, true, global0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a.x, 1132f, -629f, global2.a.x), vec4<f32>(1526f, 505f, global2.a.x, global2.a.x)))))), 1u, all(func_1(54517u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(var_4.a.b.x, 4294967295u)), ~u_input.a, ~(~_wgslsmith_mod_i32(~var_2.a, 1i)));
}

