struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(i32(-2147483648), 7098i, -15010i, 2147483647i), vec4<i32>(2147483647i, -50692i, 0i, 22222i), vec4<i32>(7399i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(-40326i, 19665i, 1i, 2147483647i), vec4<i32>(-33765i, -22847i, 1i, -18727i), vec4<i32>(2147483647i, 28898i, -9487i, 38038i), vec4<i32>(2147483647i, 2147483647i, 12287i, 0i), vec4<i32>(2147483647i, 9636i, -1i, 2147483647i), vec4<i32>(-11136i, 1i, 46083i, i32(-2147483648)), vec4<i32>(1i, -11080i, 0i, 0i), vec4<i32>(i32(-2147483648), 42032i, -42138i, 37225i), vec4<i32>(i32(-2147483648), 1i, -42130i, i32(-2147483648)), vec4<i32>(18709i, 19529i, -1i, 1i), vec4<i32>(-1i, -46228i, 2147483647i, 60309i), vec4<i32>(-17177i, 18586i, 0i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 18069i, 1i), vec4<i32>(0i, -10825i, -39420i, 9184i), vec4<i32>(-5301i, -95186i, -50748i, -1i), vec4<i32>(37596i, 0i, -1i, -7241i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -12754i), vec4<i32>(-4425i, 1i, -30280i, -1i), vec4<i32>(1i, -1i, 2732i, -1i), vec4<i32>(27784i, i32(-2147483648), -1i, 40984i));

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<bool, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = any(vec3<bool>(arg_1, false, global2[_wgslsmith_index_u32(arg_3, 16u)])) | arg_2;
    var var_1 = arg_0.x;
    let var_2 = Struct_2(!select(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 16u)], true, all(vec2<bool>(false, arg_1))), !vec3<bool>(true, arg_1, arg_2), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], true, false)), arg_0.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1297f, -1093f, 945f, -1277f) * vec4<f32>(-446f, -1000f, 426f, 1014f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-854f, -1577f, 1604f, -955f), vec4<f32>(-634f, -163f, -318f, 1493f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-924f, 270f, 540f, -737f), vec4<f32>(-829f, 1571f, -321f, -847f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1151f + -883f), -839f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 593f))), -1321f, _wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, -1017f, 1767f) - vec3<f32>(759f, 456f, -753f))))))));
    var var_3 = select(-1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 1i), ~(-vec2<i32>(-6172i, 3795i)), vec2<bool>(true, true)), vec2<i32>(-605i, select(14883i, -18279i, !arg_2))), arg_0.x);
    var var_4 = Struct_1(0i);
    return vec4<bool>(arg_2, _wgslsmith_div_i32(max(reverseBits(var_4.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a, 66635i, var_4.a), vec3<i32>(var_4.a, var_4.a, -2147483647i))), 2147483647i) < var_4.a, global2[_wgslsmith_index_u32(arg_3 | ~_wgslsmith_mult_u32(~0u, 1u), 16u)], all(var_2.a));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = select(func_3(vec2<bool>(true, global2[_wgslsmith_index_u32(~0u, 16u)]), any(!select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(63225u, 16u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], false, global2[_wgslsmith_index_u32(1u, 16u)], false))), global2[_wgslsmith_index_u32(0u, 16u)], 25662u), vec4<bool>(true, all(!vec3<bool>(global2[_wgslsmith_index_u32(3062u, 16u)], true, global2[_wgslsmith_index_u32(4294967295u, 16u)])) && !global2[_wgslsmith_index_u32(~1u, 16u)], any(vec2<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], true, false, global2[_wgslsmith_index_u32(0u, 16u)])))), any(select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(23632u, 16u)]), vec2<bool>(false, false), true), vec2<bool>(global2[_wgslsmith_index_u32(2741u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]), func_3(vec2<bool>(true, false), true, true, arg_0).yw))), false);
    global1 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_clamp_u32(97264u, ~arg_0, u_input.a))), abs(vec2<u32>(35515u, ~u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 54444u), vec2<u32>(1u, u_input.a)))));
    let var_2 = !select(select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(u_input.a >> (33191u % 32u), 16u)], false, any(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 16u)], true))), func_3(var_0.zy, true, true, 66975u), select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(var_1.x, 16u)], false, true), vec4<bool>(true, var_0.x, true, false), any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 16u)], var_0.x)))), !(!func_3(var_0.wx, true, var_0.x, u_input.a)), any(vec3<bool>(true, !global2[_wgslsmith_index_u32(arg_0, 16u)], all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], var_0.x, var_0.x)))));
    global0 = array<vec4<i32>, 23>();
    return _wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 49861u, 72540u) ^ vec3<u32>(u_input.a, 1u, 4982u)), vec3<u32>(1u, firstTrailingBit(var_1.x), 12721u)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    global2 = array<bool, 16>();
    let var_0 = Struct_1(0i);
    let var_1 = u_input.a;
    var var_2 = vec4<u32>(1u, 1u, 8019u, ~func_2(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_1, -12088i, arg_0), global0[_wgslsmith_index_u32(var_1, 23u)]), arg_0, -_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(56003u, 23u)], global0[_wgslsmith_index_u32(21318u, 23u)])));
    let var_3 = Struct_3(0i, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-170f))))))), var_2.www, vec4<bool>(var_1 != _wgslsmith_dot_vec3_u32(var_2.xwy | var_2.xzz, reverseBits(vec3<u32>(var_2.x, 30834u, var_2.x))), false, true, false));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    var var_0 = func_1(-22299i, ~(~abs(2147483647i)) >> (_wgslsmith_div_u32(~u_input.a, 1u) % 32u));
    let var_1 = Struct_4(!(min(var_0.a, var_0.a ^ var_0.a) != -1i), ~1u, global1[_wgslsmith_index_u32((u_input.a | _wgslsmith_mult_u32(select(19205u, 0u, global2[_wgslsmith_index_u32(u_input.a, 16u)]), ~0u)) ^ _wgslsmith_div_u32(1u, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), 20u)]);
    let var_2 = func_1(~(-1i), var_0.a);
    var_0 = var_2;
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -42269i, var_0.a), var_2.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(~var_2.a, -14220i), ~vec2<i32>(-46303i, -9410i) | -vec2<i32>(7953i, var_0.a)));
}

