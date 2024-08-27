struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64807u;

var<private> global1: u32;

var<private> global2: array<bool, 6> = array<bool, 6>(true, false, false, false, true, true);

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 852u, 54807u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(74098u, 15683u, 148426u), vec3<u32>(60010u, 8865u, 1084u), vec3<u32>(37410u, 1u, 24362u), vec3<u32>(24400u, 0u, 8762u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    global2 = array<bool, 6>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, -460f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-219f, arg_2)), -2831f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, -339f, arg_0, 256f) + vec4<f32>(arg_0, arg_2, arg_0, -250f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, 366f, arg_2, -528f) - vec4<f32>(arg_3.d, 465f, arg_3.d, 743f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, arg_2, -569f, arg_0)))))));
    var var_1 = arg_3.c;
    global2 = array<bool, 6>();
    let var_2 = arg_3.c;
    return arg_2;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global3 = array<vec3<u32>, 7>();
    var var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(~(0u & arg_0), 6u)], !(!global2[_wgslsmith_index_u32(~11077u, 6u)]), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(395f)), -1818f, any(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 6u)], global2[_wgslsmith_index_u32(arg_0, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1f, true, _wgslsmith_div_f32(-435f, -522f), Struct_1(global2[_wgslsmith_index_u32(arg_0, 6u)], global2[_wgslsmith_index_u32(arg_0, 6u)], arg_0, 1945f)))) * 443f));
    global0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(1u), 1u), ~55959u), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_0.a.c, 1u, 4294967295u, 61383u), vec4<u32>(4294967295u, var_0.a.c, arg_0, 55232u) & vec4<u32>(arg_0, 10667u, arg_0, 4294967295u), !var_0.a.b), ~vec4<u32>(64808u, 0u, var_0.a.c, var_0.a.c)) & var_0.a.c);
    var var_1 = select(vec2<bool>(all(vec4<bool>(select(var_0.a.b, global2[_wgslsmith_index_u32(33621u, 6u)], var_0.a.b), false, false, any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.c, 6u)], var_0.a.b, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(var_0.a.c, 6u)])))), true), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 6u)], var_0.a.b)), select(!select(vec2<bool>(false, var_0.a.a), vec2<bool>(global2[_wgslsmith_index_u32(1u, 6u)], true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.c, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)])), select(vec2<bool>(false, true), !vec2<bool>(true, var_0.a.a), false), var_0.a.a | (var_0.a.a == true)), global2[_wgslsmith_index_u32(1u << (arg_0 % 32u), 6u)]), false);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - var_0.a.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), -1109f);
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), -1000f);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    let var_0 = vec3<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 6u)], false, true)), any(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 6u)] || global2[_wgslsmith_index_u32(6817u, 6u)], select(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(28420u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]), true)));
    let var_1 = max(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, arg_1, u_input.a), ~vec4<i32>(arg_1, arg_1, u_input.a, -42673i)), vec4<i32>(-1i, -27276i, _wgslsmith_mod_i32(-50511i, u_input.a), abs(-2147483647i))), abs(firstLeadingBit(vec4<i32>(-2147483647i, 33453i, u_input.a, 46582i))) >> (vec4<u32>(4294967295u, ~0u, ~18148u, 1u) % vec4<u32>(32u))), vec4<i32>(u_input.a, -2147483647i, u_input.a << (abs(4294967295u) % 32u), -20322i));
    let var_2 = Struct_1(!var_0.x, true, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = ~min(var_2.c, ~(~11950u) << (~var_2.c % 32u));
    var var_4 = arg_1 | (~_wgslsmith_mod_i32(select(var_1.x, 2147483647i, true), reverseBits(2147483647i)) >> (var_3 % 32u));
    return var_3;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: i32) -> u32 {
    var var_0 = Struct_1(34966u < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), u_input.a >= firstTrailingBit(1i), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(func_4(_wgslsmith_f_op_vec2_f32(func_2(78169u)), 56299i), _wgslsmith_mod_u32(0u, ~0u), 1u, ~(~18287u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1846f, _wgslsmith_f_op_f32(-523f * arg_2))) * arg_2)));
    var var_1 = Struct_2(Struct_1(true, true, ~var_0.c, _wgslsmith_f_op_f32(-arg_2)), arg_2);
    let var_2 = var_1.a;
    let var_3 = 1u;
    let var_4 = var_0.c;
    return _wgslsmith_div_u32(var_3, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(~_wgslsmith_mult_u32(reverseBits(func_1(-1i, -2147483647i, -227f, u_input.a)), ~(~4294967295u)), ~1u);
    global2 = array<bool, 6>();
    var var_0 = 1i;
    var var_1 = select(select(vec2<bool>(global2[_wgslsmith_index_u32(32173u, 6u)] || true, true), vec2<bool>(global2[_wgslsmith_index_u32(~12260u, 6u)], !select(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(7402u, 6u)], global2[_wgslsmith_index_u32(26604u, 6u)])), any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(77587u, 6u)]))))), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(31444u, 6u)], false), vec2<bool>(true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 6u)])), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(87659u, 125602u), 6u)], true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(4294967295u, 598u, global2[_wgslsmith_index_u32(65576u, 6u)]), _wgslsmith_mod_u32(11559u, 4294967295u)), 6u)]), !select(!vec2<bool>(global2[_wgslsmith_index_u32(10150u, 6u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(6918u, 6u)], false), vec2<bool>(true, true), global2[_wgslsmith_index_u32(27460u, 6u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], false)), global2[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(true, !(_wgslsmith_mult_i32(u_input.a, u_input.a) < ~u_input.a)));
    let var_2 = -25670i;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_i32(-53842i, var_2) & _wgslsmith_mult_i32(7410i, max(var_2, 8992i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.a, 0i, -35361i), min(vec4<i32>(u_input.a, 28944i, 9501i, var_2), vec4<i32>(var_2, u_input.a, var_2, -3093i))), -max(vec4<i32>(-626i, u_input.a, 29706i, var_2), vec4<i32>(u_input.a, var_2, u_input.a, var_2))), false), ~vec2<u32>(func_1(1i, -2147483647i, _wgslsmith_f_op_f32(func_3(-231f, false, 575f, Struct_1(var_1.x, var_1.x, 0u, 210f))), ~var_2), 0u), vec3<u32>(34641u, ~reverseBits(~23773u), ~63535u));
}

