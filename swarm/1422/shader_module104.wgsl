struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4133i;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1i), Struct_1(1i), Struct_1(6585i), Struct_1(-15076i), Struct_1(0i), Struct_1(-11858i), Struct_1(-25864i), Struct_1(46268i), Struct_1(-17956i), Struct_1(0i), Struct_1(-23148i), Struct_1(17475i), Struct_1(-1i), Struct_1(-79075i), Struct_1(2147483647i), Struct_1(1i), Struct_1(-1i), Struct_1(15417i), Struct_1(-28766i), Struct_1(92736i), Struct_1(23131i), Struct_1(27358i));

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<vec4<i32>, 32>;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-7182i), Struct_1(6083i), Struct_1(58299i), Struct_1(2147483647i), Struct_1(-6145i), Struct_1(1i), Struct_1(-1i), Struct_1(-33702i), Struct_1(i32(-2147483648)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> bool {
    global4 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, arg_0, false)), -1000f, _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -146f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-336f, arg_0, -619f), vec3<f32>(arg_0, -1000f, arg_0))))));
    var var_1 = global1[_wgslsmith_index_u32(~reverseBits(88138u & u_input.a), 22u)];
    var var_2 = vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, ~40827u, ~u_input.a, u_input.a << (7133u % 32u)), select(select(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), vec4<u32>(2069u, 1625u, u_input.a, u_input.a), arg_1), reverseBits(vec4<u32>(u_input.a, 66737u, 51452u, u_input.a)), any(arg_1)), true), reverseBits(~vec4<u32>(4294967295u, u_input.a, u_input.a, 42944u))), 29303u);
    let var_3 = u_input.a;
    return -_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, var_1.a), 1i), ~1i) <= u_input.b.x;
}

fn func_4(arg_0: bool) -> u32 {
    global4 = array<Struct_1, 9>();
    let var_0 = 25325u;
    var var_1 = ~(-2147483647i);
    global1 = array<Struct_1, 22>();
    let var_2 = global4[_wgslsmith_index_u32(~((6772u >> (0u % 32u)) >> ((4222u & var_0) % 32u)), 9u)];
    return _wgslsmith_sub_u32(u_input.a, firstTrailingBit(13180u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global3 = array<vec4<i32>, 32>();
    var var_0 = vec4<u32>(u_input.a << (abs(u_input.a) % 32u), func_4(func_3(-174f, vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 42903u), ~u_input.a);
    var var_1 = abs(vec3<u32>(min(reverseBits(firstLeadingBit(17003u)), u_input.a), min(~1u & var_0.x, _wgslsmith_clamp_u32(u_input.a, func_4(true), ~var_0.x)), 1u));
    var var_2 = vec2<u32>(var_0.x, ~abs(var_1.x ^ 4294967295u) ^ (reverseBits(~var_1.x) | u_input.a));
    var var_3 = all(!vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), false));
    return var_1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global2 = array<Struct_1, 22>();
    var var_0 = true;
    let var_1 = abs(-354i);
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~func_2(Struct_1(-85192i), -global3[_wgslsmith_index_u32(u_input.a, 32u)]), firstLeadingBit(~select(0u, 0u, true)), select(~4294967295u, u_input.a, true)), ~reverseBits(abs(vec3<u32>(u_input.a, 9762u, u_input.a)) | firstTrailingBit(vec3<u32>(42991u, u_input.a, 12100u))));
    var var_3 = select(vec3<bool>(true, !arg_1.x, func_3(-571f, vec4<bool>(true, select(arg_1.x, arg_1.x, true), arg_1.x, true))), select(select(vec3<bool>(true, false, !arg_1.x), !(!vec3<bool>(arg_1.x, arg_2, arg_1.x)), select(!vec3<bool>(arg_2, false, true), vec3<bool>(arg_1.x, arg_2, arg_2), true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.x, false), true), !vec3<bool>(true, arg_2, arg_2), true), vec3<bool>(true, true, true), !(!arg_1.x)), arg_2), false);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 22>();
    let var_0 = ~_wgslsmith_div_vec2_u32(min(_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), firstTrailingBit(vec2<u32>(4294967295u, 0u))), select(firstTrailingBit(vec2<u32>(u_input.a, 17114u)), countOneBits(vec2<u32>(1u, u_input.a)), any(vec2<bool>(false, true)))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(4294967295u, u_input.a)) << (vec2<u32>(max(29155u, u_input.a), u_input.a) % vec2<u32>(32u)));
    global3 = array<vec4<i32>, 32>();
    let var_1 = ~(-u_input.b.x);
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~reverseBits(global3[_wgslsmith_index_u32(u_input.a, 32u)]), ~global3[_wgslsmith_index_u32(func_1(vec2<i32>(2147483647i, -1i), vec2<bool>(false, true), true), 32u)]), global3[_wgslsmith_index_u32(func_4(all(vec2<bool>(false, true))), 32u)]) | ~var_1;
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u) | ~(~func_2(Struct_1(-2147483647i), global3[_wgslsmith_index_u32(var_0.x, 32u)])), -_wgslsmith_mult_vec4_i32(~global3[_wgslsmith_index_u32(var_0.x, 32u)] & (global3[_wgslsmith_index_u32(u_input.a, 32u)] | global3[_wgslsmith_index_u32(var_0.x, 32u)]), ~vec4<i32>(u_input.b.x, 62555i, 0i, u_input.b.x) & abs(vec4<i32>(var_1, var_1, u_input.b.x, var_1))), ~_wgslsmith_dot_vec4_i32(firstLeadingBit(global3[_wgslsmith_index_u32(13253u, 32u)]), vec4<i32>(var_1, u_input.b.x, u_input.b.x, var_1)) | u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1558f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * _wgslsmith_f_op_f32(f32(-1f) * -1151f)))), _wgslsmith_sub_vec2_i32(u_input.b | countOneBits(~u_input.b), min(vec2<i32>(-1i) * -vec2<i32>(-1i, -1i), u_input.b)));
}

