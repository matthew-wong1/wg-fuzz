struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-253f, -379f, -587f, 991f), vec4<i32>(2147483647i, -3106i, 2147483647i, 2147483647i), 11498i);

var<private> global1: array<bool, 8>;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(1i, 1i, 1260i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -28248i, 927i), vec4<i32>(6707i, -1i, i32(-2147483648), 0i), vec4<i32>(-10755i, -37420i, i32(-2147483648), -37250i), vec4<i32>(2147483647i, -28007i, -33705i, i32(-2147483648)), vec4<i32>(-4808i, 19569i, 1i, -31372i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global2 = array<vec4<i32>, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(577f)), _wgslsmith_f_op_f32(floor(444f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(515f * global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_div_f32(-991f, global0.a.x)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~1u), 6u)], -25754i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(1i, (38009i ^ u_input.a.x) | 26148i), global0.b.x >> (~26802u % 32u), ~(~var_0.c)), u_input.a.x & ~_wgslsmith_mod_i32(-2147483647i, 51969i));
    var_1 = var_0;
    let var_2 = var_0.a.ywx;
    return -var_0.b.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec4<i32> {
    let var_0 = -u_input.b.x;
    global2 = array<vec4<i32>, 6>();
    global1 = array<bool, 8>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -690f, global0.a.x, -208f)), _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, arg_1.x, 628f, 518f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0.a.x, -607f, arg_1.x))))), _wgslsmith_div_vec4_i32(vec4<i32>(3038i, 1i, _wgslsmith_add_i32(u_input.a.x, -2210i), var_0), u_input.b) ^ _wgslsmith_add_vec4_i32(-(u_input.b & vec4<i32>(1i, var_0, global0.c, -1i)), u_input.b), _wgslsmith_mod_i32(max(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), 21121i), firstLeadingBit(~global0.c)));
    global2 = array<vec4<i32>, 6>();
    return vec4<i32>(func_3(), -3704i, u_input.a.x, ~(-28558i | -_wgslsmith_mod_i32(var_1.b.x, global0.c)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + global0.a)))), global0.a)), func_2(arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-402f, 238f), _wgslsmith_f_op_vec2_f32(-global0.a.wz))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_1.a.xw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, global0.a.x)), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], true), vec2<bool>(arg_2, false)))))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.b.xwx, arg_1.b.zxx) >> (~vec3<u32>(1815u, 4294967295u, 10943u) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(u_input.b.wyx, u_input.b.yyx)), global0.b.x));
    let var_1 = any(vec3<bool>(global1[_wgslsmith_index_u32(80893u, 8u)], any(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(3602u, 8u)], true)), false));
    let var_2 = arg_1;
    var var_3 = max(_wgslsmith_mod_vec3_u32(~firstTrailingBit(max(vec3<u32>(1u, 48207u, 35578u), vec3<u32>(33366u, 15052u, 4294967295u))), vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 491u, 69413u, 165480u), vec4<u32>(1u, 1u, 52638u, 100826u)))), vec3<u32>(1u, select(34941u, abs(1u), true), 0u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48657u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 49915u, 1u))));
    let var_4 = arg_1;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a.x, Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-682f, 822f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)), global0.a.x), vec4<i32>(0i, _wgslsmith_sub_i32(11276i, u_input.b.x), global0.b.x, -10847i) >> (vec4<u32>(1u, select(1u, 4294967295u, global1[_wgslsmith_index_u32(53052u, 8u)]), ~1u, 28682u) % vec4<u32>(32u)), global0.c), true, -_wgslsmith_sub_i32(u_input.a.x, global0.b.x));
    let var_0 = func_1(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), Struct_1(global0.a, _wgslsmith_add_vec4_i32(-vec4<i32>(global0.b.x, 36661i, 0i, u_input.b.x), global2[_wgslsmith_index_u32(1u, 6u)]), -select(-1i, 2147483647i, global1[_wgslsmith_index_u32(0u, 8u)] || true)), true, -51244i);
    var var_1 = !vec4<bool>(any(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(30615u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), global1[_wgslsmith_index_u32(15819u, 8u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -735f))) == -1840f, !global1[_wgslsmith_index_u32(~84080u, 8u)] | true, all(select(vec2<bool>(false, true), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true))));
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    var var_2 = var_0;
    global2 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f + 186f)) + func_1(-735f, func_1(var_0.a.x, Struct_1(vec4<f32>(var_0.a.x, -724f, var_2.a.x, global0.a.x), u_input.b, 64150i), true, global0.c), u_input.b.x <= global0.b.x, ~var_0.c).a.x)));
}

