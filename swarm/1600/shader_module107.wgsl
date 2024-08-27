struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(6757i, -9448i), vec2<i32>(i32(-2147483648), 7842i), vec2<i32>(-28169i, 46534i), vec2<i32>(i32(-2147483648), 11813i), vec2<i32>(2147483647i, -1i), vec2<i32>(29205i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(25237i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(21693i, 14695i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(34921i, -64537i), vec2<i32>(42744i, 18282i), vec2<i32>(-5066i, -76293i), vec2<i32>(38505i, -33592i), vec2<i32>(31457i, -30166i), vec2<i32>(-4457i, 1i), vec2<i32>(20159i, 0i), vec2<i32>(35183i, 1i), vec2<i32>(-50310i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1550i, -56812i));

var<private> global3: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    global2 = array<vec2<i32>, 25>();
    var var_0 = ~u_input.a;
    global3 = true || !any(!vec2<bool>(global1.x, true));
    global2 = array<vec2<i32>, 25>();
    var_0 = _wgslsmith_sub_i32(-75079i, ~_wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -24202i, arg_1 ^ u_input.c) | ~1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-703f + 163f), _wgslsmith_div_f32(630f, -749f)))))) + _wgslsmith_f_op_f32(trunc(-864f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    global0 = array<Struct_2, 4>();
    let var_0 = vec2<f32>(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -723f)))));
    let var_1 = _wgslsmith_f_op_f32(round(var_0.x));
    global0 = array<Struct_2, 4>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1174f, _wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(arg_0.a.x * 1289f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(170f))), 652f)));
    return max(firstLeadingBit(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(u_input.b.x, 7516i)), countOneBits(u_input.d.xy))), global2[_wgslsmith_index_u32(1u, 25u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> vec2<u32> {
    let var_0 = ~(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.b.e, 4294967295u, 1u), ~select(vec3<u32>(4294967295u, arg_0.b.e, 76995u), vec3<u32>(arg_1.b.e, arg_0.b.e, arg_1.b.e), true)) ^ vec3<u32>(4294967295u, 20155u, abs(_wgslsmith_add_u32(arg_0.b.e, arg_1.b.e))));
    global1 = vec2<bool>(arg_3, !(reverseBits(12226u) <= _wgslsmith_mod_u32(arg_0.b.e, 49349u)) && !arg_3);
    var var_1 = select(!(-80064i == (arg_1.b.c.x | 1i)), arg_2 > _wgslsmith_f_op_f32(floor(2199f)), arg_0.d) || (any(select(select(vec2<bool>(true, global1.x), vec2<bool>(false, arg_1.d), vec2<bool>(false, false)), select(vec2<bool>(true, arg_1.d), vec2<bool>(arg_3, arg_0.d), true), vec2<bool>(true, true))) || true);
    var var_2 = global0[_wgslsmith_index_u32(arg_0.b.e, 4u)];
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(~5608u, ~var_0.x), ~select(countOneBits(firstTrailingBit(vec2<u32>(var_0.x, arg_0.b.e))), abs(~var_0.xz), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    global1 = !vec2<bool>(true, !(!global1.x));
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.zx, vec2<i32>(11227i, u_input.c)) ^ abs(u_input.d.zz), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(72608u, arg_0.x), ~arg_0.xx), 25u)]), -96233i), ~vec2<i32>(u_input.a, i32(-1i) * -25501i));
    let var_1 = func_4(Struct_3(global0[_wgslsmith_index_u32(7397u, 4u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 442f), vec3<f32>(-951f, -1000f, arg_1), vec2<i32>(~u_input.a, countOneBits(38260i)), vec2<f32>(-913f, arg_1), 15519u), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-574f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f - -435f) * _wgslsmith_f_op_f32(func_2(global1.x, -5330i)))), !select(true, global1.x, global1.x)), Struct_3(global0[_wgslsmith_index_u32(arg_0.x, 4u)], Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, arg_1, 1453f) - vec3<f32>(arg_1, arg_1, arg_1)) - vec3<f32>(arg_1, arg_1, -499f)), firstTrailingBit(vec2<i32>(u_input.c, 1i) & vec2<i32>(u_input.d.x, u_input.d.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -222f)), vec2<f32>(-828f, -712f)), 1u), abs(vec2<i32>(u_input.a, ~(-2147483647i))), ~arg_0.x != arg_0.x), -159f, any(vec2<bool>(all(vec4<bool>(global1.x, false, false, global1.x)), false)));
    var_0 = 1i;
    global3 = true;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + -1468f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + -1961f))) - _wgslsmith_f_op_f32(-arg_1))), vec3<f32>(_wgslsmith_f_op_f32(-135f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(f32(-1f) * -2069f)), _wgslsmith_sub_vec2_i32(reverseBits(global2[_wgslsmith_index_u32(var_1.x, 25u)]), -abs(vec2<i32>(49881i, u_input.d.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -196f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(341f, _wgslsmith_f_op_f32(arg_1 - arg_1)), vec2<f32>(1114f, arg_1)))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_0.yy << (var_1 % vec2<u32>(32u)), firstLeadingBit(var_1)), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(24942u, 1u), 4u)], func_1(vec3<u32>(96865u, _wgslsmith_sub_u32(~30924u, 4245u), _wgslsmith_mult_u32(0u, ~4294967295u)), -506f), (vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.c, -1i)) ^ vec2<i32>(-u_input.b.x, -18650i)) ^ ~vec2<i32>(i32(-1i) * -2147483647i, 32455i), !global1.x);
    let var_1 = ~abs(min(func_4(var_0, var_0, -611f, var_0.d).x, countOneBits(_wgslsmith_add_u32(var_0.b.e, 4294967295u))));
    var var_2 = global0[_wgslsmith_index_u32(~(~29811u), 4u)];
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a.x, 600f) * vec2<f32>(var_2.a.x, var_2.a.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.d.x, var_0.a.a.x), vec2<f32>(var_3.b.d.x, -122f), !vec2<bool>(var_0.d, global1.x))))), var_3.c.x);
}

