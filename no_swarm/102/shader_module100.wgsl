struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, false, true, false, true, true, false, true, false, false, false, true, false, false, false);

var<private> global1: vec2<i32> = vec2<i32>(-51551i, 65955i);

var<private> global2: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(22726u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 64148u, 26052u, 46248u), vec4<u32>(0u, 21493u, 93979u, 48147u), vec4<u32>(10102u, 1u, 17243u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 18094u), vec4<u32>(0u, 0u, 13424u, 39999u), vec4<u32>(4949u, 4294967295u, 27542u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 12404u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 57873u, 34427u), vec4<u32>(1u, 1u, 1u, 9605u), vec4<u32>(4294967295u, 78818u, 84064u, 37083u), vec4<u32>(1u, 71938u, 15946u, 0u), vec4<u32>(65541u, 1u, 1u, 0u), vec4<u32>(6939u, 38575u, 31178u, 0u), vec4<u32>(4294967295u, 81460u, 63886u, 5483u), vec4<u32>(96036u, 4294967295u, 16697u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(arg_1.c.x * -378f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) + arg_1.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, -696f)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x), arg_1.c)) + _wgslsmith_f_op_vec2_f32(-arg_1.c)), arg_1.c, !arg_1.b.xx)));
    var_0 = all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], (u_input.a < arg_0.x) != false, true, arg_1.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-966f, -1255f))))));
    global0 = array<bool, 17>();
    return !vec3<bool>(false, true & any(select(arg_1.b, arg_1.b, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)], false))), global0[_wgslsmith_index_u32(u_input.a, 17u)]);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = select(vec3<bool>(arg_2, any(select(select(vec2<bool>(arg_0, global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)]), global0[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec2<bool>(arg_0, false), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(9894u, 17u)], true))), !(!all(vec2<bool>(arg_2, true)))), func_3(~vec4<u32>(~1u, 1u, countOneBits(u_input.a), _wgslsmith_sub_u32(30841u, 0u)), Struct_4(countOneBits(2147483647i | global1.x), select(!vec3<bool>(arg_0, arg_2, global0[_wgslsmith_index_u32(62177u, 17u)]), !vec3<bool>(true, arg_2, arg_0), arg_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(273f, 2116f), vec2<f32>(1f, 1f), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_0, false), true))))), vec3<bool>(!(!select(arg_0, true, arg_2)), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, abs(85412u)), 17u)], false));
    return -2147483647i;
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    global2 = array<vec4<u32>, 17>();
    global2 = array<vec4<u32>, 17>();
    var var_0 = true;
    let var_1 = func_2(arg_0.x, -(~(0i >> (firstLeadingBit(u_input.a) % 32u))), true);
    let var_2 = Struct_1(vec4<i32>(-1i) * -vec4<i32>(-11651i, var_1, 0i ^ var_1, -var_1), ~vec4<i32>(-(i32(-1i) * -28198i), _wgslsmith_add_i32(max(30989i, -45375i), var_1), abs(_wgslsmith_sub_i32(8647i, var_1)), 5447i), u_input.a, 517f, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(reverseBits(0u), 55769u, 103757u, u_input.a)) & _wgslsmith_sub_u32(17510u, u_input.a));
    return ~firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(var_2.c, 17u)], vec4<u32>(u_input.a, var_2.e, 16018u, 26524u)), firstLeadingBit(global2[_wgslsmith_index_u32(var_2.c, 17u)])) << (vec4<u32>(var_2.e >> (u_input.a % 32u), ~var_2.c, 30924u, _wgslsmith_add_u32(1u, u_input.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = ~(arg_1.x | _wgslsmith_mult_u32(countOneBits(u_input.a), arg_1.x));
    global0 = array<bool, 17>();
    global2 = array<vec4<u32>, 17>();
    global1 = vec2<i32>(global1.x, 5769i);
    let var_1 = Struct_5(vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.a), ~4294967295u), 17u)], !(arg_0 | (false || arg_0))));
    return vec4<u32>(arg_1.x, _wgslsmith_clamp_u32(firstTrailingBit(~4294967295u), ~u_input.a, 1u), arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(62831u, 17u)] | firstTrailingBit(vec4<u32>(11053u, reverseBits(109048u), 9215u, u_input.a));
    global0 = array<bool, 17>();
    var_0 = func_4(1u < firstTrailingBit(u_input.a), ~(~(~vec4<u32>(var_0.x, u_input.a, 1u, u_input.a) ^ func_1(vec4<bool>(true, true, false, true)))));
    let var_1 = select(u_input.a, ~var_0.x, global0[_wgslsmith_index_u32(abs((var_0.x << (71263u % 32u)) | var_0.x), 17u)]) <= u_input.a;
    var var_2 = abs(-firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(-1i, global1.x, global1.x), -global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-22657i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, -1i, var_2.x, 1i) << (vec4<u32>(63642u, 14021u, u_input.a, var_0.x) % vec4<u32>(32u)), ~(~vec4<i32>(0i, -30681i, 0i, var_2.x))), -18851i), ~firstLeadingBit(~(~4294967295u)), func_1(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], var_1, global0[_wgslsmith_index_u32(0u, 17u)], var_1), select(vec4<bool>(false, false, false, false), vec4<bool>(var_1, true, false, true), vec4<bool>(var_1, global0[_wgslsmith_index_u32(u_input.a, 17u)], var_1, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 17u)], true, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(3237u, 17u)], false), true))).x, -(((vec3<i32>(1i, 20089i, 2147483647i) | vec3<i32>(390i, 1i, var_2.x)) & (vec3<i32>(var_2.x, var_2.x, var_2.x) ^ vec3<i32>(-64187i, global1.x, 1i))) >> (vec3<u32>(1u, ~var_0.x, u_input.a) % vec3<u32>(32u))));
}

