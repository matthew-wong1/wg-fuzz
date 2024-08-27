struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4198u, 2623u, 0u, 4294967295u, 1u, 27678u, 4294967295u, 4294967295u, 55194u, 8043u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 1u, 0u, 24211u, 29142u, 1u, 0u, 77724u, 14582u, 42316u, 0u, 11189u, 4294967295u);

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -14902i, 2147483647i));

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: array<f32, 31> = array<f32, 31>(866f, 196f, -916f, 697f, -307f, 276f, -1000f, -197f, -941f, -403f, 1725f, 864f, 1351f, -2223f, 1576f, 1896f, 143f, 1000f, -985f, 359f, -1340f, -1508f, -196f, -829f, 1030f, 1144f, 1345f, -166f, 100f, 1219f, -734f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 31u)] + 1790f), var_0.a)), _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(-2172f - 1061f)), _wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(abs(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)])), 31u)])) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a)), -1433f, -682f));
    let var_2 = arg_3;
    var var_3 = vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f + var_2.a)), 346f)), _wgslsmith_f_op_f32(-arg_3.a)), global3[_wgslsmith_index_u32(select(_wgslsmith_add_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62686u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], var_0.c), 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), 0u), ~(~max(0u, global0[_wgslsmith_index_u32(77740u, 27u)])), !all(global2[_wgslsmith_index_u32(1u, 27u)])), 31u)], var_0.a);
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, arg_3.a, true)) + _wgslsmith_f_op_f32(abs(-703f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_sub_i32(1042i, var_0.b), select(arg_3.c, var_2.c, true), !vec4<bool>(true, true, any(vec4<bool>(true, arg_0.d.x, true, var_0.d.x)) && select(var_2.c, false, true), arg_3.d.x));
    return -280i;
}

fn func_4(arg_0: i32) -> bool {
    global1 = array<vec3<i32>, 2>();
    var var_0 = !all(vec2<bool>(any(vec4<bool>(false, true, false, false)), 0u <= global0[_wgslsmith_index_u32(107u, 27u)])) || true;
    global3 = array<f32, 31>();
    var_0 = any(vec3<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), true));
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~countOneBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39798u, 27u)], 27u)], 27u)]))), 27u)], 31u)], 0i, arg_0 > ~2147483647i, select(select(vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(49895u, 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28840u, 27u)], 27u)], 27u)])), 27u)], vec4<bool>(all(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)]), true, true, false)), select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(firstLeadingBit(0u), 27u)], false), !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)] | global0[_wgslsmith_index_u32(38211u, 27u)]), 27u)]));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 11067u)), ~(~min(vec2<u32>(global0[_wgslsmith_index_u32(65983u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(0u, 0u))));
    var var_1 = arg_0.d.zx;
    global1 = array<vec3<i32>, 2>();
    global1 = array<vec3<i32>, 2>();
    let var_2 = arg_0;
    return Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26083u >> (firstLeadingBit(var_0) % 32u), 27u)], 27u)]), 31u)], 2147483647i, func_4(func_3(Struct_1(-1564f, ~(-16332i), true, !arg_0.d), u_input.a, _wgslsmith_div_i32(u_input.a.x & 1i, 2147483647i), Struct_1(arg_0.a, arg_0.b, true, select(vec4<bool>(var_1.x, false, true, false), arg_0.d, arg_0.d)))), select(vec4<bool>(_wgslsmith_mult_u32(22838u, global0[_wgslsmith_index_u32(1u, 27u)]) >= ~global0[_wgslsmith_index_u32(57956u, 27u)], false, true, true), var_2.d, vec4<bool>(all(select(var_2.d.yx, vec2<bool>(false, arg_0.d.x), true)), all(vec4<bool>(true, true, var_1.x, false)) & (global0[_wgslsmith_index_u32(1999u, 27u)] <= 7918u), 3780u <= global0[_wgslsmith_index_u32(~67063u, 27u)], all(!vec2<bool>(arg_0.c, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_1(249f, min(-arg_0.b, ~reverseBits(2147483647i)), false, !global2[_wgslsmith_index_u32(26906u, 27u)]);
    let var_1 = abs(vec3<i32>(-1i) * -u_input.a.wyy);
    global2 = array<vec4<bool>, 27>();
    let var_2 = vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~abs(-27104i), var_0.c, vec4<bool>(-988i <= arg_1, true, true, var_0.c & false))).c, var_0.d.x, func_2(arg_2).d.x);
    let var_3 = true;
    return 0u;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26386u & (19300u >> (abs(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 27u)])) % 32u)), 27u)], 31u)]);
    global3 = array<f32, 31>();
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87u, 27u)], 31u)] + global3[_wgslsmith_index_u32(24175u, 31u)]))) - global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(50961u)), 31u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 31u)]))))))), global3[_wgslsmith_index_u32(func_5(func_2(Struct_1(1310f, _wgslsmith_sub_i32(0i, 2147483647i), -1000f == global3[_wgslsmith_index_u32(87765u, 31u)], select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), true))), i32(-1i) * -1553i, Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 31u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 31u)])), countOneBits(arg_0.x), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57777u, 27u)], 27u)] == 9043u, global2[_wgslsmith_index_u32(1u, 27u)]), global0[_wgslsmith_index_u32(~4294967295u, 27u)]), 31u)]));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(0u, 27u)] | 0u, firstTrailingBit(103237u)), 27u)], 27u)], 31u)] - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(475f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(34306u, 16884u), 27u)], 31u)])), -681f))), -609f));
    let var_2 = !all(func_2(Struct_1(1336f, 1i, !arg_1, func_2(Struct_1(-771f, -3708i, arg_1, vec4<bool>(arg_1, arg_1, arg_1, arg_1))).d)).d.zx);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1937i) >> (global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(0u, 27u)]), 27u)] % 32u);
    let var_1 = firstTrailingBit(~abs(~vec4<u32>(36318u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5324u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 17933u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5828u, 27u)], 27u)]) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(16265u, 27u)], global0[_wgslsmith_index_u32(33658u, 27u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98553u, 27u)], 27u)])));
    let var_2 = !func_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0, u_input.a.x, -23409i), _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(91508u, 2u)], u_input.a.xwz), select(vec3<i32>(0i, var_0, 3285i), vec3<i32>(var_0, u_input.a.x, var_0), true)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_1.wzy, var_1.ywx), var_1.ywy, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.x, 1u), var_1.zwx)) % vec3<u32>(32u)), true);
    let var_3 = true;
    global2 = array<vec4<bool>, 27>();
    global1 = array<vec3<i32>, 2>();
    let var_4 = select(var_1, var_1, func_2(func_2(func_2(func_2(Struct_1(-419f, var_0, var_3, vec4<bool>(var_2, true, false, true)))))).d.x);
    let var_5 = 32085u >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.xy, min(firstTrailingBit(~var_4.xxy) << (firstLeadingBit(_wgslsmith_mod_vec3_u32(var_4.xzz, vec3<u32>(var_5, var_4.x, 4294967295u))) % vec3<u32>(32u)), ~vec3<u32>(var_1.x, 54024u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(~1u, 31u)], _wgslsmith_f_op_f32(select(2274f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 27u)], 31u)], var_3))))));
}

