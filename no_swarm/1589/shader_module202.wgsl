struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<i32, 26>;

var<private> global3: array<vec2<u32>, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    global3 = array<vec2<u32>, 14>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(179f, 423f) + vec2<f32>(1753f, 449f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-723f, -1747f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1550f, 724f, false)) * -507f), _wgslsmith_f_op_f32(ceil(-876f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(max(select(select(arg_1.x, select(52720u, arg_1.x, all(vec4<bool>(true, arg_0.d.x, arg_0.d.x, false))), false), arg_1.x, any(vec2<bool>(true, false))), arg_1.x), 27u)];
    let var_1 = ~abs(abs(var_0.b.x));
    global2 = array<i32, 26>();
    let var_2 = ~arg_1.x;
    let var_3 = select(!vec3<bool>(true, any(select(arg_0.d, vec3<bool>(false, true, arg_0.d.x), vec3<bool>(true, true, true))), all(!vec2<bool>(arg_0.d.x, false))), select(!arg_0.d, select(vec3<bool>(true, true, true), select(!vec3<bool>(arg_0.d.x, false, true), !var_0.d, vec3<bool>(arg_0.d.x, false, true)), true), vec3<bool>(!any(var_0.d.yy), all(arg_0.d.xz), all(vec4<bool>(false, false, true, var_0.d.x)))), arg_0.d);
    return false;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> u32 {
    global0 = array<vec4<f32>, 32>();
    global3 = array<vec2<u32>, 14>();
    var var_0 = !select(any(vec3<bool>(true, arg_0, u_input.a < -9648i)), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(248f, 2130f, -2300f))), ~vec2<i32>(u_input.a, 1i), _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(arg_0, false, arg_2, arg_2))), !vec3<bool>(arg_2, arg_0, true)), global3[_wgslsmith_index_u32(7480u, 14u)]), -max(20572i, u_input.a) < 1i);
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 27u)];
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(true, abs(44274u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), all(vec2<bool>(!(u_input.a < global2[_wgslsmith_index_u32(40118u, 26u)]), select(true, select(true, true, true), any(vec2<bool>(false, true))))), true);
    var var_1 = _wgslsmith_div_u32(~firstTrailingBit(var_0.a), var_0.a);
    let var_2 = 0u;
    var var_3 = ~firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-19940i, 20882i, 2147483647i)), -vec3<i32>(global2[_wgslsmith_index_u32(var_0.a, 26u)], -15924i, u_input.a)), abs(22977i) << (1u % 32u)));
    var_3 = -2147483647i;
    var_0 = Struct_2((_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_2), vec3<u32>(var_2, 7387u, var_0.a)), ~var_2) | var_0.a) & ~(~countOneBits(var_2)), _wgslsmith_add_i32(-35428i, _wgslsmith_sub_i32(5691i, 1i)) > _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(var_0.a, 26u)], -30185i), vec3<i32>(10833i, 1i, u_input.a))), countOneBits(vec3<i32>(u_input.a, 0i, u_input.a))), var_0.b);
    global3 = array<vec2<u32>, 14>();
    var_0 = Struct_2(var_0.a, all(!select(vec3<bool>(var_0.c, var_0.b, var_0.c), !vec3<bool>(var_0.c, var_0.b, var_0.b), select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(var_0.b, var_0.c, false), vec3<bool>(var_0.c, false, var_0.c)))), !(!var_0.c));
    var_3 = _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.a, 0u, var_0.a)), ~vec3<u32>(var_2, 108121u, 103986u)), _wgslsmith_div_u32(var_0.a, var_2)), 26u)], -(i32(-1i) * -1i) & global2[_wgslsmith_index_u32(var_2, 26u)], ~global2[_wgslsmith_index_u32(1u, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(7052i, global2[_wgslsmith_index_u32(4294967295u, 26u)], -11682i), abs(vec3<i32>(-13099i, -58734i, 1i)) | ~(-vec3<i32>(global2[_wgslsmith_index_u32(1u, 26u)], u_input.a, u_input.a)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2253f)) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(389f)) - -122f), 426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) - _wgslsmith_f_op_f32(round(354f))))));
}

