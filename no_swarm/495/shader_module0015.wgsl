struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(727f, 1031f, -373f, 933f, 913f, 967f, -752f, -177f, 333f, 575f, -986f, 257f, -1166f, -1115f, 1507f, -1391f, 1355f, -1938f, -411f, -655f, 340f, -1199f, -1995f, 592f, 1233f, -1859f, 1000f);

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, true, false, true, true, false, false, true, true, false, true, false, true, false, true, true, false, false, true, false, false, false, false, false);

var<private> global2: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(i32(-2147483648), -36180i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), -77742i, 1i, 29965i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 46834i), vec4<i32>(-55233i, 38863i, -20161i, -1i), vec4<i32>(i32(-2147483648), 33505i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -31872i, -18529i, 1i), vec4<i32>(54001i, 0i, -3609i, -21687i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -3857i), vec4<i32>(-9835i, -45936i, 38459i, -8582i), vec4<i32>(i32(-2147483648), 7083i, -2903i, -77081i), vec4<i32>(-1i, -1i, -26209i, 46152i), vec4<i32>(12102i, -10219i, 0i, 3737i), vec4<i32>(i32(-2147483648), -24043i, -15249i, 12157i), vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -59270i, 1i, 8075i), vec4<i32>(15759i, 109i, i32(-2147483648), -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = Struct_4(Struct_2(vec3<bool>(arg_2, arg_2, global1[_wgslsmith_index_u32(u_input.b, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 27u)]))), ~0u, true), true);
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_mod_u32(arg_0, arg_0) & _wgslsmith_div_u32(1u, 28636u), abs(_wgslsmith_add_u32(arg_0, arg_0)), abs(arg_0))), vec3<u32>(1u, u_input.b, ~var_0.a.c));
    var var_2 = all(!select(!var_0.a.a, select(select(var_0.a.a, var_0.a.a, true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 25u)], true, true), 1i < u_input.a), !(!var_0.a.a)));
    var var_3 = abs(-u_input.a);
    global2 = array<vec4<i32>, 16>();
    return 71699i;
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = -1868f;
    var var_1 = vec4<i32>(8224i, ~_wgslsmith_div_i32(u_input.a, func_3(~arg_1, arg_0, global1[_wgslsmith_index_u32(abs(u_input.b), 25u)])), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(arg_1, 16u)], firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), global2[_wgslsmith_index_u32(3415u, 16u)] >> (vec4<u32>(u_input.b, 124943u, arg_1, arg_1) % vec4<u32>(32u))), firstLeadingBit(~countOneBits(-1i))), _wgslsmith_sub_i32(u_input.a, -(u_input.a ^ -2147483647i) << (u_input.b % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 27u)])), 368f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 27u)] - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(163f - _wgslsmith_f_op_f32(f32(-1f) * -675f)), -712f)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(8214u, 27u)], var_0))) - vec2<f32>(var_2.x, _wgslsmith_f_op_f32(1179f - 1841f))), !any(!vec2<bool>(arg_0, true)), max(0i, _wgslsmith_div_i32(-u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-486f, global0[_wgslsmith_index_u32(2617u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(arg_1, 27u)]), vec4<f32>(-2453f, 586f, -186f, global0[_wgslsmith_index_u32(arg_1, 27u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0, 823f, -1090f) * vec4<f32>(-500f, 273f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, var_2.x, 407f, -322f))), arg_0)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), global0[_wgslsmith_index_u32(abs(u_input.b), 27u)], -1982f, -1000f)));
    var_2 = _wgslsmith_f_op_vec4_f32(var_3.b - var_3.b);
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(~(~u_input.b & u_input.b), 25u)], 20709u <= _wgslsmith_mod_u32(_wgslsmith_mult_u32(19297u, u_input.b), 4294967295u), global1[_wgslsmith_index_u32(18614u, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2015u, 27u)]))) - _wgslsmith_f_op_f32(-1402f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] * global0[_wgslsmith_index_u32(49300u, 27u)]))))), 4294967295u, any(!(!vec2<bool>(global1[_wgslsmith_index_u32(112225u, 25u)], global1[_wgslsmith_index_u32(41224u, 25u)]))) | func_2(true, abs(1u)));
    let var_1 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_0.c, 27u)]))) - _wgslsmith_f_op_f32(656f + _wgslsmith_f_op_f32(f32(-1f) * -681f))) * _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b - -635f))))));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, arg_0.x), 2102i);
    let var_3 = Struct_4(var_0, true);
    global2 = array<vec4<i32>, 16>();
    return ~max(var_3.a.c, abs(firstLeadingBit(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_1(vec2<i32>(u_input.a, abs(-10887i))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]) + _wgslsmith_f_op_f32(f32(-1f) * -639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(var_0, 0u)), 27u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12919u, 27u)])) + _wgslsmith_f_op_f32(984f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 27u)]))) - 810f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~u_input.b), 27u)])), global0[_wgslsmith_index_u32(~(~(~u_input.b)), 27u)])), -2078f);
    global1 = array<bool, 25>();
    var var_2 = global1[_wgslsmith_index_u32(~0u, 25u)];
    var var_3 = _wgslsmith_mult_u32(max(reverseBits(select(~0u, ~64662u, true)), 0u), _wgslsmith_add_u32(~u_input.b, var_0));
    let var_4 = var_1.x;
    global1 = array<bool, 25>();
    var var_5 = Struct_4(Struct_2(vec3<bool>(true, true & all(vec4<bool>(false, global1[_wgslsmith_index_u32(61909u, 25u)], true, global1[_wgslsmith_index_u32(u_input.b, 25u)])), !global1[_wgslsmith_index_u32(var_0, 25u)]), -629f, var_0, global1[_wgslsmith_index_u32(4294967295u & u_input.b, 25u)]), !any(!vec2<bool>(global1[_wgslsmith_index_u32(23197u, 25u)], true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a | _wgslsmith_mod_i32(1i, -2147483647i)));
}

