struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> i32 {
    global1 = arg_0;
    var var_0 = -arg_1.zzw;
    global1 = select(vec3<bool>(any(!select(vec4<bool>(true, global1.x, true, false), vec4<bool>(false, true, false, arg_0.x), arg_0.x)), global1.x, any(vec3<bool>(!global1.x, arg_0.x, select(global1.x, true, true)))), vec3<bool>(!all(vec4<bool>(arg_0.x, true, global1.x, arg_0.x)), true | !(!global1.x), any(!(!vec3<bool>(false, true, arg_0.x)))), !arg_0.x);
    global1 = !(!(!(!vec3<bool>(global1.x, false, false))));
    let var_1 = abs(min(19923u, 60374u));
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-4687i, u_input.a) << (min(_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(7699u, 12u)])), vec2<u32>(0u, 4294967295u)), vec2<u32>(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(58537u, 12u)]), ~arg_1)) % vec2<u32>(32u)), ~vec2<i32>(func_3(vec3<bool>(false, arg_0.b, false), _wgslsmith_sub_vec4_i32(vec4<i32>(-48542i, 0i, -1i, 2147483647i), vec4<i32>(u_input.a, 13948i, -1i, 1i)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, global0[_wgslsmith_index_u32(arg_1, 12u)], arg_1, global0[_wgslsmith_index_u32(arg_1, 12u)]), vec4<u32>(arg_1, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(arg_1, 12u)], 0u))), firstLeadingBit(firstLeadingBit(u_input.a))));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1208f - -753f) * -1415f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1460f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-219f)))), false, any(arg_0.a), any(select(vec4<bool>(false, !arg_0.a.x, arg_0.a.x & global1.x, false), select(select(vec4<bool>(global1.x, global1.x, global1.x, arg_0.b), vec4<bool>(global1.x, true, arg_0.b, false), vec4<bool>(true, arg_0.b, arg_0.a.x, global1.x)), !vec4<bool>(arg_0.a.x, true, true, false), !vec4<bool>(true, arg_0.b, arg_0.b, false)), vec4<bool>(true, true, true, 1i <= u_input.a))));
    let var_2 = Struct_1(var_1.wxw, any(vec3<bool>(true | any(vec2<bool>(global1.x, arg_0.b)), arg_0.b, false)));
    let var_3 = !vec2<bool>(arg_0.b, !any(select(vec3<bool>(false, var_1.x, var_1.x), arg_0.a, var_1.yyz)));
    return select(vec3<u32>(~61315u ^ ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_1, 12u)], 19778u), 4294967295u, firstTrailingBit(arg_1)), ~firstLeadingBit(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 12u)], 12u)], 12u)]) ^ vec3<u32>(arg_1, 4294967295u, 1u)) << (~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 55960u, global0[_wgslsmith_index_u32(arg_1, 12u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6391u, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(1u, 12u)], arg_1)) % vec3<u32>(32u)), true);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    var var_0 = vec3<i32>(10995i, arg_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, arg_2, u_input.a, -6876i) ^ vec4<i32>(0i, arg_2, 0i, u_input.a)), vec4<i32>(countOneBits(15825i), -2147483647i, _wgslsmith_clamp_i32(arg_0, 14657i, u_input.a), firstTrailingBit(1i)))) << (vec3<u32>(global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(max(0u, 11033u))), 12u)], 1u, global0[_wgslsmith_index_u32(~(~abs(arg_1.b.x)), 12u)]) % vec3<u32>(32u));
    global1 = vec3<bool>(!(true || arg_1.d.b) && true, arg_1.e.a.a.x, !any(vec2<bool>(true, arg_1.a.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(-534f + 1000f)))));
    let var_2 = max(~global0[_wgslsmith_index_u32(~22548u, 12u)], _wgslsmith_mult_u32(min(_wgslsmith_div_u32(arg_1.b.x, arg_1.b.x) | arg_1.b.x, 1u | arg_1.b.x), 37311u));
    global0 = array<u32, 12>();
    return !vec3<bool>(false || !(!arg_1.e.a.b), true, true);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> bool {
    global1 = select(!vec3<bool>(!arg_1 | !global1.x, all(vec3<bool>(true, true, true)), !all(vec4<bool>(true, global1.x, false, arg_1))), !func_4(_wgslsmith_sub_i32(~0i, select(-29455i, u_input.a, global1.x)), Struct_3(Struct_1(vec3<bool>(global1.x, true, true), global1.x), func_2(Struct_1(vec3<bool>(false, true, true), global1.x), 30329u), select(global1.zy, global1.xy, false), Struct_1(vec3<bool>(global1.x, true, false), arg_1), Struct_2(Struct_1(vec3<bool>(arg_1, arg_1, true), false))), 22344i), func_4(~arg_0, Struct_3(Struct_1(vec3<bool>(false, false, true), arg_1), ~_wgslsmith_mod_vec3_u32(vec3<u32>(56976u, 1u, 30034u), vec3<u32>(7634u, arg_3, 34665u)), global1.zy, Struct_1(!vec3<bool>(global1.x, false, global1.x), true), Struct_2(Struct_1(vec3<bool>(global1.x, false, true), arg_1))), _wgslsmith_add_i32(u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, arg_0), vec3<i32>(arg_0, u_input.a, -27622i)))));
    global1 = vec3<bool>(true, select(true, arg_1, global1.x), !global1.x);
    let var_0 = false;
    global0 = array<u32, 12>();
    global1 = !vec3<bool>(all(global1.zz), true, 206i < (abs(-1i) | _wgslsmith_mult_i32(arg_0, u_input.a)));
    return !(!(!var_0));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-arg_1.a));
    global1 = arg_0.d.a;
    var var_1 = arg_0;
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a) + -1570f) + _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-arg_1.a))), arg_1.a), 309f);
    global0 = array<u32, 12>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~22443u, 4294967295u, ~global0[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 12u)], ~12785u, 30466u, global0[_wgslsmith_index_u32(26063u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24719u, 12u)], 12u)], 12u)] % 32u), 12u)]))));
    var var_1 = max(firstTrailingBit(~u_input.a), u_input.a);
    let var_2 = !(!select(select(vec4<bool>(false, true, global1.x, global1.x), select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), false), !vec4<bool>(true, true, global1.x, global1.x)), vec4<bool>(true, true, global1.x, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, global1.x, true), vec4<bool>(false, global1.x, global1.x, true))));
    let var_3 = func_5(Struct_3(Struct_1(select(vec3<bool>(global1.x, true, var_2.x), !vec3<bool>(true, global1.x, global1.x), var_2.x), var_2.x), vec3<u32>(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(54748u, 12u)], 49457u), abs(~0u), abs(~0u)), vec2<bool>(global1.x || func_1(-2147483647i, var_2.x, Struct_4(-1000f), var_0.x), any(!vec2<bool>(global1.x, var_2.x))), Struct_1(!select(vec3<bool>(var_2.x, global1.x, var_2.x), vec3<bool>(true, true, false), var_2.x), func_1(34088i, true, Struct_4(2491f), 1u)), Struct_2(Struct_1(!var_2.xyz, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51430u, 12u)], 12u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19971u, 12u)], 12u)]))), Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-901f - -1870f)))));
    var var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0[_wgslsmith_index_u32(max(var_0.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1651u, 12u)], 12u)]), var_0.wz), reverseBits(var_0.x), false)), 12u)], global0[_wgslsmith_index_u32(min(~19638u, 39146u), 12u)], min(~1u, ~0u << (abs(global0[_wgslsmith_index_u32(var_0.x, 12u)]) % 32u))), ~global0[_wgslsmith_index_u32(~1u, 12u)]);
}

