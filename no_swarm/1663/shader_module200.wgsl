struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-1002f, 1000f, 927f, -1205f, 1419f, 697f, -1182f, -355f, -924f, 1592f, -547f, -609f, 354f, 457f, -1494f);

var<private> global1: vec2<f32>;

var<private> global2: i32 = -18427i;

var<private> global3: array<vec2<u32>, 10>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> bool {
    var var_0 = -30791i;
    let var_1 = ~select(u_input.c, _wgslsmith_div_vec3_u32(max(arg_2.wwz, ~vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(arg_2.x, u_input.c.x, arg_2.x)))), vec3<bool>(true, firstLeadingBit(-1i) >= -arg_1, !any(vec2<bool>(false, arg_3))));
    var var_2 = vec4<bool>(arg_3, false, true, arg_3);
    return arg_3;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = select(select(vec3<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), func_3(arg_2.a, max(2147483647i, arg_2.b.x), ~vec4<u32>(u_input.c.x, u_input.c.x, 44105u, 49013u), true)), vec3<bool>(any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, false)), select(true, true, true)), func_3(arg_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-3318i, 32474i), vec2<i32>(u_input.b, arg_1.x)), vec4<u32>(reverseBits(u_input.c.x), 1u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 45891u), 1u), any(vec3<bool>(true, true, true)))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(false, arg_2.d < global0[_wgslsmith_index_u32(abs(11420u), 15u)], select(true, true, func_3(vec4<f32>(-1000f, 193f, -2578f, global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), arg_1.x, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), true))), max(u_input.c.x, u_input.c.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.zy))), true);
    let var_1 = any(vec4<bool>(var_0.x, true, !(!(-18723i >= u_input.b)), func_3(arg_2.a, 0i, ~vec4<u32>(u_input.c.x, u_input.c.x, 52217u, 1u), all(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)] - 536f))))));
    global3 = array<vec2<u32>, 10>();
    global0 = array<f32, 15>();
    return !var_1;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global0 = array<f32, 15>();
    let var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(false, all(vec3<bool>(false, false, false)), func_2(vec3<i32>(-2147483647i, -2147483647i, 0i), vec4<i32>(-1i, u_input.b, -1i, u_input.b), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], -775f, global0[_wgslsmith_index_u32(21255u, 15u)], global1.x), vec3<i32>(0i, u_input.b, u_input.b), -1698f, global0[_wgslsmith_index_u32(4294967295u, 15u)])) || select(false, true, true)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -107f, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -1131f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, 951f, 865f, global1.x))), u_input.b, firstTrailingBit(vec4<u32>(22994u, arg_0.x, 27219u, arg_0.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)] - global0[_wgslsmith_index_u32(u_input.c.x, 15u)]) == 1393f) & false);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 1000f, 1203f, global1.x))))), vec3<i32>(_wgslsmith_add_i32(0i << (arg_0.x % 32u), u_input.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -23525i), -vec2<i32>(u_input.b, -38083i)), _wgslsmith_mult_i32(~2147483647i, u_input.b >> (u_input.c.x % 32u))), 668f, global0[_wgslsmith_index_u32(1901u, 15u)]), arg_0.x, _wgslsmith_mult_vec3_u32(u_input.c, abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, arg_0.x, 36450u), ~arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 15u)]))) + 2211f)), select(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(true, false, var_0.x, var_0.x), func_3(vec4<f32>(197f, 1088f, 238f, global0[_wgslsmith_index_u32(arg_0.x, 15u)]), -31472i, vec4<u32>(arg_0.x, arg_0.x, 25002u, arg_0.x), var_0.x)), vec4<bool>(any(vec4<bool>(var_0.x, false, var_0.x, false)), true, false, select(global0[_wgslsmith_index_u32(4215u, 15u)] != global1.x, !var_0.x, var_0.x)), vec4<bool>(!(!var_0.x), true | var_0.x, var_0.x, var_0.x)));
    global3 = array<vec2<u32>, 10>();
    var var_2 = ~(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 110751u, var_1.b), vec4<u32>(15557u, var_1.b, 0u, 100333u)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(539f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(func_1(u_input.c), _wgslsmith_div_u32(u_input.c.x, 7870u)), 55353u), 15u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -2031f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2341f, 1905f)))))));
    let var_0 = -107f;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(624f, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], var_0, -858f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(966f, global1.x, 1000f, 1046f)))), ~vec3<i32>(-1i << (0u % 32u), ~u_input.a, -22713i), 770f, 2224f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 15u)] * -432f), true)), global0[_wgslsmith_index_u32(~77693u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(var_0))), vec3<i32>(1i, -1209i, _wgslsmith_mult_i32(-7878i, u_input.a)) & vec3<i32>(0i & u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(trunc(1569f)), 848f));
    let var_2 = -(~reverseBits(vec4<i32>(var_1.a.b.x, var_1.b.b.x, 18921i, var_1.b.b.x)) >> (vec4<u32>(u_input.c.x, firstTrailingBit(u_input.c.x), 4294967295u, u_input.c.x) % vec4<u32>(32u)));
    let var_3 = !any(vec4<bool>(true, true, true, true));
    global1 = vec2<f32>(904f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 23492u, ~1u), ~vec4<u32>(38158u, 15779u, 67268u, 1u)), 15u)] + var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~abs(u_input.c) | _wgslsmith_clamp_vec3_u32(u_input.c >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), ~u_input.c, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 1u))), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(abs(1u), _wgslsmith_dot_vec2_u32(u_input.c.zz, global3[_wgslsmith_index_u32(0u, 10u)]), abs(65373u)))), var_2, -60135i);
}

