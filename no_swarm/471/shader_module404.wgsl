struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, true);

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(9356i, 0i, i32(-2147483648)), vec3<i32>(-4971i, 17966i, -11982i), vec3<i32>(-1215i, -1i, -25676i), vec3<i32>(71420i, i32(-2147483648), 0i), vec3<i32>(0i, 2147483647i, 18686i), vec3<i32>(-29119i, -1i, -1i), vec3<i32>(42143i, 1i, i32(-2147483648)), vec3<i32>(60515i, -57701i, 2147483647i), vec3<i32>(-1i, -6290i, 0i), vec3<i32>(0i, -1i, 0i), vec3<i32>(1i, -1i, 0i), vec3<i32>(i32(-2147483648), -11099i, -27556i), vec3<i32>(0i, -1407i, 32320i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-28360i, 37350i, 5456i), vec3<i32>(29265i, 27656i, 0i), vec3<i32>(-56435i, 33386i, 11770i), vec3<i32>(-12376i, 49503i, -71i), vec3<i32>(0i, 2147483647i, -34641i), vec3<i32>(34101i, -15064i, 2147483647i), vec3<i32>(1i, 11443i, 0i), vec3<i32>(-74924i, 0i, 23216i), vec3<i32>(i32(-2147483648), -46770i, -6786i), vec3<i32>(i32(-2147483648), -35611i, -31585i), vec3<i32>(-1i, -1i, -10999i), vec3<i32>(17592i, 27872i, -12514i), vec3<i32>(-69876i, i32(-2147483648), -74269i), vec3<i32>(0i, -49284i, 21297i));

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    return !select(select(vec3<bool>(true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 3u)], true, true)), global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(498u, 3u)] && true, global0[_wgslsmith_index_u32(4294967295u, 3u)] || global0[_wgslsmith_index_u32(4294967295u, 3u)], !global0[_wgslsmith_index_u32(u_input.b, 3u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(32762u, 3u)], global0[_wgslsmith_index_u32(42780u, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, global0[_wgslsmith_index_u32(10431u, 3u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], true, global0[_wgslsmith_index_u32(u_input.a, 3u)]))), vec3<bool>(select(u_input.e <= -7763i, true, false), !select(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(70295u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, global0[_wgslsmith_index_u32(u_input.b, 3u)]))), vec3<bool>(all(vec2<bool>(true, true)), true, !any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<vec3<i32>, 28>();
    let var_0 = ~(_wgslsmith_mult_vec4_i32(max(max(vec4<i32>(-1i, 44339i, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, 30334i, 36932i, u_input.c)), max(vec4<i32>(-2147483647i, u_input.d.x, arg_2.b, u_input.e), vec4<i32>(u_input.c, 1i, u_input.e, arg_2.b))), -vec4<i32>(arg_0.b, u_input.e, arg_0.b, -2147483647i)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 36584u, u_input.b, arg_2.d), ~vec4<u32>(35646u, 1u, 43175u, arg_0.d)) & (~vec4<u32>(arg_0.d, 23280u, arg_1, u_input.a) >> (min(vec4<u32>(4294967295u, u_input.b, arg_1, arg_0.d), vec4<u32>(arg_2.d, arg_1, 4294967295u, 37618u)) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global2 = array<vec4<f32>, 25>();
    var var_1 = select(vec4<bool>(true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 3u)], true, global0[_wgslsmith_index_u32(10573u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(arg_2.d, 3u)], global0[_wgslsmith_index_u32(arg_2.d, 3u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.d, 3u)], global0[_wgslsmith_index_u32(3621u, 3u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(113617u, 3u)], global0[_wgslsmith_index_u32(arg_2.d, 3u)]), global0[_wgslsmith_index_u32(arg_2.d, 3u)]))), !all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(97263u, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(arg_2.d, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(20231u, 3u)], true, true))), _wgslsmith_div_i32(abs(1i), arg_2.b) <= u_input.c), vec4<bool>((~arg_2.d != arg_0.d) | any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.d, 3u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(4232u, 3u)], global0[_wgslsmith_index_u32(arg_0.d, 3u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(21330u, 3u)], false))), !(_wgslsmith_f_op_f32(min(585f, 1000f)) <= _wgslsmith_f_op_f32(-arg_0.c)), true, false), arg_0.a <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(abs(arg_2.c))), -1737f));
    var var_2 = select(select(var_1.zxy, var_1.yyx, true), vec3<bool>(false, all(func_3()), false | (any(vec3<bool>(false, true, false)) & all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], var_1.x, var_1.x, true)))), var_1.yyy);
    return func_3().zx;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-358f))), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-726f, -192f)), arg_0.c))))));
    let var_1 = vec2<u32>(~(~(~_wgslsmith_clamp_u32(0u, u_input.b, 39571u))), u_input.a);
    var var_2 = select(!func_2(arg_0, ~arg_0.d, Struct_1(-913f, max(-27287i, 18859i), _wgslsmith_f_op_f32(-var_0), var_1.x)), vec2<bool>(!(select(u_input.d.x, -37921i, true) < (u_input.e ^ u_input.d.x)), !all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 3u)], false))), true);
    var var_3 = ~reverseBits(_wgslsmith_clamp_u32(4294967295u, var_1.x, 4294967295u) << (1u % 32u)) >= ~0u;
    var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_0.d, 1u), ~(~0u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(12482u, 86212u, 71985u, 60766u), ~vec4<u32>(73889u, 4294967295u, 1u, 1u))) > ~4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0)))))), -u_input.e, 1516f, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<bool, 3>();
    var var_0 = arg_0.d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 28>();
    let var_0 = func_4(func_1(Struct_1(-903f, 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(707f)) * -784f), ~_wgslsmith_div_u32(u_input.a, 0u))), func_1(func_1(Struct_1(_wgslsmith_f_op_f32(1109f - 427f), _wgslsmith_div_i32(1i, 5449i), -374f, 50261u | u_input.b))), 0i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.b, 25u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-589f, var_0.c, -1078f, var_0.a))))) - _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(firstTrailingBit(34039u), 25u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, 1212f, 883f, -347f) - vec4<f32>(var_0.c, 795f, -293f, var_0.a)), false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_1.zw)), var_1.xx, true));
    var var_3 = Struct_1(_wgslsmith_div_f32(func_4(var_0, Struct_1(151f, u_input.e, -3305f, 1u), ~_wgslsmith_add_i32(u_input.d.x, -2147483647i)).c, func_1(Struct_1(var_0.a, -1i, var_1.x, 21505u)).c), 3258i, func_1(func_4(func_4(func_4(Struct_1(-1103f, 2314i, 1729f, var_0.d), Struct_1(1226f, var_0.b, var_1.x, 4294967295u), 2147483647i), func_4(var_0, Struct_1(var_1.x, 13465i, var_0.c, var_0.d), u_input.c), ~(-2147483647i)), func_1(Struct_1(723f, 0i, var_0.a, 13717u)), var_0.b)).a, ~95361u);
    let var_4 = 18332i;
    var_3 = var_0;
    let var_5 = select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.d, 3u)], any(vec4<bool>(global0[_wgslsmith_index_u32(36006u, 3u)], false, true, true))), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(var_0.d, 3u)], select(true, true, global0[_wgslsmith_index_u32(1u, 3u)])), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 3u)]), func_2(Struct_1(1030f, 2147483647i, -968f, 8215u), abs(0u), Struct_1(var_3.a, var_4, var_3.c, var_0.d)).x), abs(-2147483647i ^ var_4) < var_4), !func_3(), select(u_input.d.x > min(var_4, u_input.c), true, select(true, true && global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 0u), 3u)], global0[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(u_input.b, 85340u), !global0[_wgslsmith_index_u32(var_0.d, 3u)]), 3u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(max(var_0.d, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 83762u, u_input.a, 50488u), vec4<u32>(var_0.d, u_input.b, 4294967295u, var_3.d)), countOneBits(vec4<u32>(var_3.d, u_input.a, u_input.a, var_3.d)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~830u, 1u, countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d, 1u, 0u), vec3<u32>(var_3.d, 807u, 4548u))), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d, u_input.a, var_0.d), vec3<u32>(var_0.d, 39224u, var_0.d)), 25985u, u_input.a))), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_3.d, 45646u, var_0.d), vec3<u32>(var_3.d, 47293u, 46305u)), vec3<u32>(var_3.d, ~var_0.d & u_input.a, _wgslsmith_add_u32(var_0.d, u_input.a))), ~4294967295u);
}

