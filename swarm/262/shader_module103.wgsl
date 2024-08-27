struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(56442u, 23209u, 4294967295u, 17872u));

var<private> global4: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(457f)))) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(abs(1000f))));
    global2 = false;
    var var_1 = min(arg_0.a.x ^ (global3.a.x >> (~36463u % 32u)), countOneBits(_wgslsmith_add_u32(u_input.c.x, u_input.c.x)) ^ abs(global3.a.x)) > (abs(~arg_0.a.x) << (firstTrailingBit(~_wgslsmith_mult_u32(arg_0.a.x, 0u)) % 32u));
    var var_2 = arg_0;
    var var_3 = vec2<bool>(true, arg_2.x);
    return Struct_1(var_2.a ^ abs(max(global3.a, global3.a)));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = !vec3<bool>(true, true, false & any(vec3<bool>(false, false, false)));
    let var_2 = ~(~var_0.a.yy);
    global2 = true;
    global3 = func_2(arg_0, 607f, !(!vec4<bool>(!var_1.x, var_1.x, u_input.a > 11186u, var_1.x)));
    return Struct_1(vec4<u32>(min(firstTrailingBit(38387u << (var_2.x % 32u)), ~u_input.a), ~2247u, _wgslsmith_sub_u32(u_input.c.x, max(1u, ~arg_0.a.x)), var_0.a.x));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = vec3<bool>(all(vec2<bool>(all(vec3<bool>(true, true, false)), false)), !((max(arg_0, arg_0) <= (arg_0 | u_input.d)) || false), true);
    var var_1 = func_3(func_2(Struct_1(global3.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(517f))), 577f), !(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, false)))));
    let var_2 = ~vec3<i32>(2147483647i, ~abs(1i), -5995i << (~global3.a.x % 32u));
    var var_3 = ~vec3<u32>(u_input.c.x ^ ~4294967295u, ~(~u_input.a), ~4294967295u);
    global3 = func_2(func_3(Struct_1(vec4<u32>(~global3.a.x, 4294967295u, 4294967295u, ~var_3.x))), _wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))), vec4<bool>(any(vec2<bool>(all(vec4<bool>(true, false, false, var_0.x)), u_input.c.x <= global3.a.x)), _wgslsmith_mod_i32(-11079i, global0[_wgslsmith_index_u32(u_input.a, 13u)]) != 1i, !var_0.x, true));
    return _wgslsmith_f_op_f32(min(1f, -333f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = func_3(arg_1);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(451f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-266f, -492f))))))), _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_0), 854f))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(vec3<bool>(true, true, true)) && false, 1i == min(_wgslsmith_mult_i32(u_input.d, 20881i), global0[_wgslsmith_index_u32(48323u, 13u)]), any(select(select(global4[_wgslsmith_index_u32(4486u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)], vec2<bool>(true, false)), select(!global4[_wgslsmith_index_u32(u_input.c.x, 22u)], !global4[_wgslsmith_index_u32(46589u, 22u)], true), vec2<bool>(true, any(vec3<bool>(false, false, false))))), true);
    global0 = array<i32, 13>();
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b ^ global0[_wgslsmith_index_u32(global3.a.x, 13u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) * _wgslsmith_f_op_f32(select(820f, -530f, var_0.x))))), func_2(func_3(func_2(func_2(Struct_1(vec4<u32>(global3.a.x, 1u, u_input.c.x, global3.a.x)), -618f, vec4<bool>(var_0.x, true, true, false)), _wgslsmith_f_op_f32(685f - 485f), !var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1954f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<bool>(var_0.x, all(!var_0), !var_0.x, true)), true & var_0.x);
    global4 = array<vec2<bool>, 22>();
    var var_2 = var_0.x;
    var var_3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1779i, _wgslsmith_add_i32(41377i, global0[_wgslsmith_index_u32(4294967295u, 13u)]), ~u_input.d), vec4<i32>(72609i, u_input.d, firstLeadingBit(-12194i), 0i)) ^ vec4<i32>(u_input.b, -2147483647i, ~(-12001i), u_input.d);
    let var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec3<u32>(4294967295u, var_4, abs(_wgslsmith_add_u32(reverseBits(var_1.a.x), ~u_input.c.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(53819i, global0[_wgslsmith_index_u32(global3.a.x, 13u)])), -_wgslsmith_div_i32(-1i, 1763i)), 1018i));
}

