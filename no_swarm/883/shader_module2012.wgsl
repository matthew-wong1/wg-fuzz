struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<f32, 2> = array<f32, 2>(884f, 464f);

var<private> global2: f32 = -741f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    global2 = -540f;
    var var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 2u)]);
    global1 = array<f32, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1499f, arg_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1061f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_2.x) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(16923u, 2u)], arg_2.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, 346f, arg_2.x)), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 775f, arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1154f, var_1.x, 1707f) * vec3<f32>(-1740f, global1[_wgslsmith_index_u32(53733u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1587f, -932f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))))));
    return global0[_wgslsmith_index_u32(~14306u, 20u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    var var_0 = (u_input.a.x | 4206u) & u_input.a.x;
    let var_1 = ~vec2<i32>(abs(~arg_2.c.a), 1i);
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)]);
    var var_3 = func_2(arg_1, arg_2.c, _wgslsmith_f_op_vec2_f32(trunc(arg_2.d.xy)));
    var var_4 = arg_2.c;
    return max(arg_2.b.x, arg_3.a);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))) * _wgslsmith_f_op_f32(f32(-1f) * -477f)), global1[_wgslsmith_index_u32(4294967295u, 2u)]));
    var var_0 = Struct_1(-(_wgslsmith_clamp_i32(-49273i, ~2147483647i, func_1(u_input.a.x, global0[_wgslsmith_index_u32(68623u, 20u)], Struct_4(Struct_3(2147483647i, vec2<i32>(2147483647i, 55168i)), vec4<i32>(-1i, 2147483647i, 0i, 1i), Struct_3(7716i, vec2<i32>(0i, 69879i)), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], 1000f)), Struct_1(0i))) & ~_wgslsmith_sub_i32(39021i, -7918i)));
    var var_1 = vec2<bool>(all(select(arg_0, vec4<bool>(arg_0.x, true, any(arg_0), any(arg_0)), !(true | arg_0.x))), !(min(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, var_0.a), vec3<i32>(-33586i, 0i, 1i))) <= ~(-2147483647i)));
    let var_2 = 67383i;
    var var_3 = vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2, _wgslsmith_mult_i32(10118i, 1i)), i32(-1i) * -2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, var_2), i32(-1i) * -2147483647i)), -1i, ~var_0.a);
    return any(!select(arg_0.xwx, vec3<bool>(arg_0.x, true, arg_0.x), false));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_4 {
    global0 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(arg_0.a, -1i, arg_0.a, arg_0.b.x)), vec4<i32>(-12809i, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-5535i, arg_0.b.x)), firstTrailingBit(_wgslsmith_sub_i32(arg_0.a, 0i)), arg_0.a), ~(vec4<i32>(29124i, -1i, -42302i, arg_0.b.x) ^ vec4<i32>(1i, -33548i, -1i, arg_0.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-16539i, arg_0.b.x, arg_0.b.x, 10387i)), -vec4<i32>(arg_0.b.x, 11019i, 2147483647i, arg_0.a)), max(firstLeadingBit(vec4<i32>(arg_0.a, 2905i, arg_0.b.x, arg_0.b.x)) & countOneBits(vec4<i32>(arg_0.b.x, arg_0.a, arg_0.b.x, arg_0.a)), ~vec4<i32>(21576i, 1i, arg_0.b.x, arg_0.a))));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_sub_i32(arg_0.a, i32(-1i) * -31012i));
    var var_3 = Struct_4(Struct_3(-1i, vec2<i32>(_wgslsmith_sub_i32(~var_2.a, var_0.x), _wgslsmith_div_i32(27381i, var_2.a) & -29245i)), ~(-select(var_0, vec4<i32>(-45421i, 26867i, -1i, arg_0.b.x), false)) & firstTrailingBit(var_0), Struct_3(1i, _wgslsmith_add_vec2_i32(min(vec2<i32>(1i, 34142i), arg_0.b), ~vec2<i32>(-11020i, var_2.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(38402u, 2u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], -959f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(110019u, 2u)], global1[_wgslsmith_index_u32(77265u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), vec3<f32>(global1[_wgslsmith_index_u32(91116u, 2u)], -372f, 145f)))))));
    return Struct_4(Struct_3(-arg_0.a & -(~var_2.a), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.a, -2147483647i, var_3.c.b.x, arg_0.b.x), var_0), max(0i, -20821i))), var_0, var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-461f - -1337f), -569f, -269f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(reverseBits(func_1(118078u, global0[_wgslsmith_index_u32(42290u, 20u)], Struct_4(Struct_3(29875i, vec2<i32>(1i, -2430i)), vec4<i32>(-2147483647i, -1i, -2724i, 20622i), Struct_3(0i, vec2<i32>(-65991i, -2147483647i)), vec3<f32>(1105f, 2031f, 689f)), Struct_1(12220i)) << (~7025u % 32u)), -(~_wgslsmith_div_vec2_i32(vec2<i32>(19768i, 0i), vec2<i32>(29061i, 9292i)))), vec4<bool>(any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), true, func_3(vec4<bool>(false, false, true, true)), !select(true, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(-576f));
    let var_2 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(select(true, any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false))), select(true, false, false)));
    let var_3 = 4294967295u;
    global2 = func_4(var_0.c, select(!(!vec4<bool>(var_2.x, false, false, var_2.x)), vec4<bool>(all(!vec4<bool>(true, var_2.x, true, var_2.x)), true, var_2.x, !select(var_2.x, var_2.x, true)), true)).d.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_i32(abs(-2147483647i), -1i), _wgslsmith_f_op_f32(-func_4(var_0.a, !vec4<bool>(true, true, var_2.x, var_2.x)).d.x));
}

