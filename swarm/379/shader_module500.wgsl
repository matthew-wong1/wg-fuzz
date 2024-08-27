struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -971f;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), false, vec2<f32>(-323f, 1309f), vec2<f32>(-1093f, 587f), 66980u);

var<private> global3: array<f32, 14> = array<f32, 14>(-338f, 208f, 1566f, 934f, -114f, -1265f, -2152f, 424f, 853f, -1000f, 453f, 104f, -1981f, -603f);

var<private> global4: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(global2.e), 0u), vec2<u32>(~global2.e, 35429u));
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    let var_1 = vec4<f32>(901f, _wgslsmith_f_op_f32(-arg_0.x), global3[_wgslsmith_index_u32(4294967295u, 14u)], 517f);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2252i, u_input.a, 0i), -vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 20526i), ~vec3<i32>(58969i, 1i, u_input.b))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 63581i, 2147483647i), vec3<i32>(7418i, -1i, u_input.a))) << (select(~vec3<u32>(arg_1.e, 1u, 1u), min(vec3<u32>(var_0.x, 3415u, 4294967295u), vec3<u32>(arg_1.e, global2.e, 15970u)), !global2.b) % vec3<u32>(32u))), 1i, u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.a));
    return arg_3.a.x || ((~(-1i) == -min(u_input.a, 34120i)) && !arg_1.b);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(select(vec4<bool>(all(!vec3<bool>(false, true, global2.b)), any(vec3<bool>(false, global2.b, false)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27041u, 20u)]) >= global1[_wgslsmith_index_u32(~global2.e, 20u)], false), vec4<bool>(!(true || global2.a.x), all(select(global2.a, vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(global2.a.x, global2.a.x))), true, global2.b), !all(select(vec3<bool>(global2.b, false, global2.b), vec3<bool>(false, true, global2.a.x), false))));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(global2.e, ~(~firstLeadingBit(global2.e))), ~(~vec2<u32>(countOneBits(86150u), 1u)));
    let var_2 = var_0;
    global2 = Struct_1(var_2.a.zy, any(select(!(!var_0.a.xxw), vec3<bool>(u_input.b > u_input.a, true, select(true, false, true)), u_input.b != u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17794u, 20u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2.e, 20u)])))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global2.d)), global2.d, vec2<bool>(false && var_0.a.x, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(2210u, 20u)]) + vec2<f32>(global1[_wgslsmith_index_u32(297u, 20u)], global2.d.x))))), ~(~23366u));
    let var_3 = Struct_1(!var_2.a.yy, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d))), Struct_1(vec2<bool>(var_2.a.x, var_0.a.x), global2.a.x, _wgslsmith_f_op_vec2_f32(global2.c - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global3[_wgslsmith_index_u32(33643u, 14u)]) + global2.d)), _wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, 589f))), ~abs(9598u)), _wgslsmith_f_op_f32(f32(-1f) * -670f), var_2), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(30031u, global2.e << (global2.e % 32u)), 20u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.e, 14u)] - global3[_wgslsmith_index_u32(var_1.x, 14u)]))), _wgslsmith_div_f32(2448f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f), 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, -2184f)), global2.e);
    return firstTrailingBit(vec4<i32>(u_input.a, 1i, -(~u_input.b) & -u_input.a, u_input.b));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(9688u, 14u)], global2.c.x, global2.d.x, global1[_wgslsmith_index_u32(56573u, 20u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(681f, -616f, global2.d.x, global2.d.x) + vec4<f32>(727f, global2.d.x, global2.d.x, global1[_wgslsmith_index_u32(23602u, 20u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.x, 4294967295u), 20u)], 1f, _wgslsmith_f_op_f32(min(-434f, global3[_wgslsmith_index_u32(global2.e, 14u)])), _wgslsmith_f_op_f32(sign(1086f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1337f, global3[_wgslsmith_index_u32(0u, 14u)], -169f, global2.c.x), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], -2297f, global1[_wgslsmith_index_u32(13867u, 20u)])) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-143f, global2.c.x, global2.c.x, -488f), vec4<f32>(145f, 1000f, 1063f, -2121f), true)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-958f, global2.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 14u)] + 1887f), global3[_wgslsmith_index_u32(0u, 14u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.e, 4294967295u, 2858u), vec4<u32>(1u, arg_2.x, 0u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.e, 1u, arg_2.x, 0u), vec4<u32>(32473u, arg_2.x, 1u, arg_2.x), vec4<u32>(60341u, arg_2.x, arg_2.x, 3136u))), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -226f))));
    var var_1 = Struct_1(vec2<bool>(all(!arg_1.a) | global2.a.x, arg_1.a.x || arg_1.a.x), !arg_1.a.x, _wgslsmith_f_op_vec2_f32(-var_0.yz), var_0.zw, ~(~countOneBits(~global2.e)));
    var var_2 = arg_3.x;
    var var_3 = Struct_1(vec2<bool>(!func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global2.d.x), global2.d, arg_1.a.zx)), Struct_1(vec2<bool>(false, var_1.b), false, var_1.c, var_0.yx, 1u), -2601f, arg_1), func_3(_wgslsmith_f_op_vec2_f32(var_0.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, global1[_wgslsmith_index_u32(var_1.e, 20u)]))), Struct_1(!vec2<bool>(var_1.b, false), -7055i > arg_0.x, var_0.wy, vec2<f32>(global2.c.x, 113f), ~var_1.e), global1[_wgslsmith_index_u32(1u, 20u)], arg_1)), arg_1.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(-487f, -1000f)), global2.c))) * _wgslsmith_f_op_vec2_f32(-global2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(629f, global2.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1153f, 388f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(ceil(global2.d.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))))), arg_2.x);
    let var_4 = arg_1.a;
    return Struct_1(select(var_3.a, arg_1.a.xz, vec2<bool>(true, all(!var_4))), (firstTrailingBit(1i) << (~global2.e % 32u)) <= -2147483647i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(-433f * -572f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f), global3[_wgslsmith_index_u32(~61781u, 14u)])))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.d.x, 391f)) + var_3.d.x), _wgslsmith_f_op_f32(sign(var_1.d.x))), 0u);
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    global2 = func_4(min(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a, 0i, 0i), vec4<i32>(u_input.b, -21409i, u_input.b, u_input.a))), func_2()), Struct_2(select(vec4<bool>(global2.a.x, !arg_0.x, arg_0.x, true), !vec4<bool>(true, global2.b, true, global2.a.x), select(!vec4<bool>(false, global2.a.x, false, global2.b), !vec4<bool>(false, global2.a.x, false, false), select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(global2.a.x, false, true, false), vec4<bool>(global2.a.x, false, false, global2.a.x))))), _wgslsmith_mod_vec3_u32(firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(global2.e, global2.e, global2.e), vec3<u32>(8851u, global2.e, global2.e))), vec3<u32>(~global2.e, 91112u, _wgslsmith_sub_u32(45675u, 0u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(27611u, global2.e, global2.e), ~vec3<u32>(40428u, global2.e, 0u))), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, 2147483647i), vec2<i32>(select(-1i, u_input.b, false), u_input.b ^ _wgslsmith_add_i32(u_input.b, 1i))));
    global4 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, global2.e, 0u, global2.e), vec4<u32>(4294967295u, global2.e, global2.e, global2.e), arg_0.x), vec4<u32>(global2.e, global2.e, 0u, global2.e)), vec4<u32>(0u, min(global2.e, global2.e), global2.e, global2.e | 1u), ~vec4<u32>(global2.e, 0u, 56119u, 17844u)), ~(firstLeadingBit(~vec4<u32>(global2.e, 27544u, global2.e, 40662u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.e, 14972u, global2.e), vec4<u32>(global2.e, global2.e, 1u, global2.e)) % vec4<u32>(32u))));
    global2 = Struct_1(arg_0.yx, false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1164f, global2.d.x))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(16347u, 4294967295u), 14u)], -752f)) * _wgslsmith_f_op_vec2_f32(-global2.c)), func_4(firstTrailingBit(vec4<i32>(u_input.b, -11259i, 73808i, _wgslsmith_div_i32(1i, 2147483647i))), Struct_2(vec4<bool>(func_3(vec2<f32>(global1[_wgslsmith_index_u32(global2.e, 20u)], -1186f), Struct_1(arg_0.yy, arg_0.x, global2.c, vec2<f32>(-1720f, -1922f), 1u), 251f, Struct_2(vec4<bool>(global2.a.x, true, arg_0.x, global2.a.x))), all(arg_0.yy), false, true)), vec3<u32>(1u, _wgslsmith_mod_u32(global2.e, global2.e) | _wgslsmith_dot_vec3_u32(vec3<u32>(global2.e, global2.e, global2.e), vec3<u32>(18585u, 28067u, global2.e)), ~(global2.e >> (64092u % 32u))), vec2<i32>(max(u_input.b, -506i), ~u_input.b) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(53755i, u_input.b), vec2<i32>(998i, 20605i)), countOneBits(vec2<i32>(68254i, u_input.b)))).c, select(global2.e, 11300u, (global2.e & ~26001u) == global2.e));
    var var_0 = Struct_1(arg_0.zz, global2.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.d)), _wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d - vec2<f32>(global2.d.x, 1497f)) * _wgslsmith_f_op_vec2_f32(global2.d * global2.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.d)) + vec2<f32>(func_4(vec4<i32>(u_input.b, u_input.a, 12333i, -2147483647i) << (vec4<u32>(global2.e, 4294967295u, 4294967295u, global2.e) % vec4<u32>(32u)), Struct_2(vec4<bool>(arg_0.x, false, arg_0.x, false)), vec3<u32>(20294u, global2.e, global2.e) & vec3<u32>(global2.e, 3737u, global2.e), vec2<i32>(0i, -52421i)).d.x, global1[_wgslsmith_index_u32(~global2.e, 20u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5001u, global2.e) << (vec2<u32>(4531u, global2.e) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global2.e, global2.e))), global2.e, _wgslsmith_mult_u32(abs(global2.e), ~1u), 4294967295u), firstLeadingBit(vec4<u32>(~global2.e, 59001u >> (global2.e % 32u), reverseBits(global2.e), ~global2.e))));
    var var_1 = func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-11664i, 1i, u_input.b, u_input.b) | vec4<i32>(0i, u_input.b, -1i, -2147483647i), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -21642i, u_input.a, -1i), vec4<i32>(u_input.b, u_input.b, 23165i, 0i)), -vec4<i32>(u_input.b, 7224i, u_input.a, u_input.b))) << (abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.e, var_0.e, global2.e, 0u), vec4<u32>(0u, 1u, global2.e, 1u))) % vec4<u32>(32u)), Struct_2(select(vec4<bool>(var_0.b, func_3(vec2<f32>(var_0.d.x, -686f), Struct_1(var_0.a, false, global2.c, var_0.d, 24726u), -745f, Struct_2(vec4<bool>(true, global2.a.x, arg_0.x, false))), false, all(vec4<bool>(global2.a.x, arg_0.x, false, true))), vec4<bool>(arg_0.x, true, global2.e <= global2.e, !var_0.a.x), !select(vec4<bool>(false, false, false, global2.b), vec4<bool>(false, true, var_0.b, false), arg_0.x))), ~reverseBits(vec3<u32>(~7870u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.e, var_0.e, 4294967295u, global2.e), vec4<u32>(67582u, 43412u, 20171u, 11836u)), _wgslsmith_mod_u32(4294967295u, 73u))), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b, u_input.b))) << (_wgslsmith_add_vec2_u32(vec2<u32>(max(var_0.e, var_0.e), ~0u), abs(vec2<u32>(var_0.e, 51656u))) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(16606u, 41872u | var_0.e, _wgslsmith_add_u32(42792u, 5671u)), min(~vec3<u32>(var_1.e, var_1.e, global2.e), vec3<u32>(18960u, 4294967295u, 23660u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, global2.e, 15625u), ~vec3<u32>(4294967295u, var_0.e, var_1.e))), ~firstLeadingBit(vec3<u32>(var_0.e, 0u, 0u)) ^ abs(~vec3<u32>(16610u, var_0.e, 19721u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(997f, _wgslsmith_f_op_f32(var_0.d.x + -1194f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.d, var_1.d))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(-647f)), 1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_vec2_f32(var_0.c * var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<bool>(_wgslsmith_div_u32(~global2.e, global2.e ^ 4294967295u) < ~26745u, !all(vec2<bool>(false, true)), u_input.a <= u_input.b));
}

