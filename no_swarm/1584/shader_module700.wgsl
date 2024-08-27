struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(2147483647i, 1i, 1i, -2147483647i), !arg_0.a)), vec4<i32>(1i, reverseBits(0i), select(~(-1i), 0i, all(vec2<bool>(false, arg_1.x))), abs(18120i))), vec4<i32>(1i, ~_wgslsmith_mult_i32(-8620i, ~7584i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 44100i, -3510i, -31170i)), ~vec4<i32>(35896i, -1733i, 12849i, 21270i)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), vec2<u32>(36888u, 31283u)) % 32u), -56580i));
    var_0 = abs(select(max(abs(abs(2147483647i)), 68562i), _wgslsmith_div_i32(2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(-6883i, -1i, 36895i)), min(-19786i, 2147483647i)), true));
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(true, all(arg_1), all(arg_0.a), arg_1.x), select(arg_0.a, arg_0.a, arg_0.a.x), true), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 588f, global0[_wgslsmith_index_u32(u_input.a.x & ~57047u, 27u)], 541f)), arg_0, arg_0.b, arg_0.b.x, u_input.a.x);
    let var_2 = Struct_1(select(var_1.a.a, !(!arg_0.a), !(!arg_0.a)), var_1.b.b);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> bool {
    global0 = array<f32, 27>();
    var var_0 = vec3<u32>(arg_2, _wgslsmith_add_u32(11107u, 66280u), 4294967295u);
    let var_1 = global0[_wgslsmith_index_u32(arg_0.x, 27u)];
    var var_2 = select(vec2<bool>(arg_1.b.a.x, ~(~var_0.x) != 1119u), select(arg_1.a.a.zx, !(!vec2<bool>(false, arg_1.b.a.x)), any(vec4<bool>(true, any(vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, arg_1.a.a.x)), true, func_3(arg_1.a, arg_1.b.a.zxx)))), select(arg_1.b.a.yz, arg_1.a.a.xw, !(true || (true && arg_1.a.a.x))));
    global0 = array<f32, 27>();
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global0 = array<f32, 27>();
    var var_0 = !arg_2.a.x;
    let var_1 = Struct_1(arg_2.a, arg_2.b);
    let var_2 = arg_2;
    global0 = array<f32, 27>();
    return Struct_2(Struct_1(vec4<bool>(all(!arg_2.a.yyx), true, true, false), var_1.b), Struct_1(vec4<bool>(!any(var_1.a), true, true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_2.b - vec4<f32>(var_1.b.x, 1366f, 1498f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, 1456f, -397f, 507f) + var_2.b))), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-923f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1168f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(663f, 358f))))), global0[_wgslsmith_index_u32(u_input.c.x, 27u)], min(_wgslsmith_add_u32(u_input.b, firstTrailingBit(u_input.b) & 4294967295u), ~_wgslsmith_mod_u32(2471u, 55621u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = vec2<i32>(~(-31198i << (1u % 32u)), 0i);
    global0 = array<f32, 27>();
    var_0 = ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(~var_0.x, _wgslsmith_div_i32(-1i, var_0.x)), countOneBits(max(vec2<i32>(1i, var_0.x), vec2<i32>(20611i, var_0.x)))));
    var var_1 = !arg_2.b.a.zy;
    var var_2 = func_4(var_1.x, var_1.x, Struct_1(!select(vec4<bool>(arg_1, true, arg_2.b.a.x, true), arg_2.a.a, func_2(arg_0.xx, Struct_2(Struct_1(arg_2.b.a, arg_2.a.b), Struct_1(arg_2.a.a, arg_2.b.b), arg_2.a.b, 2178f, 4294967295u), u_input.b, vec3<u32>(arg_2.e, 1u, 13097u))), _wgslsmith_f_op_vec4_f32(-arg_2.c)));
    return select(vec4<bool>(true, true, true, arg_2.a.a.x), var_2.b.a, !(!select(arg_2.a.a, vec4<bool>(var_1.x, arg_1, var_1.x, var_1.x), arg_2.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(func_1(u_input.c, true, Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(-609f, 231f, 377f, -2389f)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -1000f, global0[_wgslsmith_index_u32(1u, 27u)], 623f)), vec4<f32>(global0[_wgslsmith_index_u32(19360u, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 374f, 322f), global0[_wgslsmith_index_u32(u_input.b, 27u)], u_input.c.x)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), false)), vec4<bool>(!func_4(false, false, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(822f, 1432f, global0[_wgslsmith_index_u32(1u, 27u)], 568f))).a.a.x, func_3(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(405f, -480f, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)])), vec3<bool>(true, true, true)), !all(vec4<bool>(true, false, false, true)), -884f > global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 19455u), 27u)]), vec4<bool>(select(false, false, global0[_wgslsmith_index_u32(36327u, 27u)] >= global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), !(-1000f == global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), (44030u <= u_input.b) && true, false));
    var var_1 = select(!var_0.zyx, vec3<bool>(select(true, true, !var_0.x && true), (true == func_3(Struct_1(vec4<bool>(var_0.x, false, false, true), vec4<f32>(global0[_wgslsmith_index_u32(56750u, 27u)], 780f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(7510u, 27u)])), var_0.wyy)) & true, var_0.x), !(!select(!var_0.zzx, var_0.xyw, vec3<bool>(var_0.x, false, var_0.x))));
    var_0 = vec4<bool>(~_wgslsmith_clamp_i32(1i, max(0i, 41838i), -2147483647i) < _wgslsmith_sub_i32(select(max(47797i, 50104i), _wgslsmith_mod_i32(0i, 1i), false || var_1.x), abs(firstTrailingBit(-2147483647i))), true, any(!select(func_4(false, false, Struct_1(vec4<bool>(var_0.x, var_0.x, false, false), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(11904u, 27u)], global0[_wgslsmith_index_u32(66421u, 27u)], 1729f))).b.a.zzy, vec3<bool>(false, false, var_1.x), func_4(var_0.x, true, Struct_1(vec4<bool>(false, true, var_0.x, var_0.x), vec4<f32>(-521f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], -1325f, global0[_wgslsmith_index_u32(1u, 27u)]))).a.a.xxz)), var_1.x);
    var_1 = func_1(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~(~(~65004u)), u_input.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.c.x, ~u_input.c.x, _wgslsmith_sub_u32(u_input.a.x, u_input.b)), 27u)] + global0[_wgslsmith_index_u32(min(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(43851u, 52672u), vec2<u32>(u_input.b, 14322u))), 27u)]) > global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(1092u, _wgslsmith_dot_vec2_u32(vec2<u32>(85324u, 98731u), u_input.c.yy))), 27u)], Struct_2(Struct_1(!(!vec4<bool>(var_0.x, true, var_0.x, true)), vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 27u)], -1728f), global0[_wgslsmith_index_u32(~u_input.a.x, 27u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 443f)), -1557f)), func_4(var_0.x, _wgslsmith_div_f32(-1484f, 636f) <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31689u, 27u)] + -211f), func_4(u_input.a.x != u_input.c.x, false, func_4(var_1.x, var_1.x, Struct_1(vec4<bool>(var_1.x, true, var_0.x, var_0.x), vec4<f32>(1245f, 1174f, -1000f, 697f))).a).b).b, _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(abs(u_input.a.x), 27u)], 249f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(40751u, 27u)] * global0[_wgslsmith_index_u32(5625u, 27u)]), _wgslsmith_f_op_f32(-1151f - global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 758f, 1993f, global0[_wgslsmith_index_u32(1u, 27u)]))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(443f, -1000f, 1406f, 2871f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_sub_u32(min(u_input.b, 1664u), u_input.c.x))).wxx;
    var var_2 = func_4(((1i & (-1i >> (u_input.b % 32u))) > firstTrailingBit(-14656i)) != var_0.x, !func_2(vec2<u32>(1u, 1u << (u_input.c.x % 32u)), func_4(func_2(vec2<u32>(u_input.b, u_input.a.x), Struct_2(Struct_1(vec4<bool>(false, var_0.x, var_1.x, var_0.x), vec4<f32>(188f, -339f, -812f, 2139f)), Struct_1(vec4<bool>(var_0.x, var_1.x, false, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)], -444f, -1000f)), vec4<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -2367f, -1577f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), global0[_wgslsmith_index_u32(18778u, 27u)], 38422u), u_input.a.x, vec3<u32>(u_input.a.x, u_input.b, 1u)), func_1(u_input.c, var_0.x, Struct_2(Struct_1(vec4<bool>(false, var_1.x, true, var_1.x), vec4<f32>(-1334f, 1000f, global0[_wgslsmith_index_u32(21447u, 27u)], global0[_wgslsmith_index_u32(16669u, 27u)])), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], 524f)), vec4<f32>(-1098f, 1000f, -363f, -1659f), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b)).x, func_4(var_0.x, true, Struct_1(vec4<bool>(true, false, false, var_1.x), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(22887u, 27u)], -149f))).b), 0u >> ((u_input.b >> (u_input.a.x % 32u)) % 32u), firstTrailingBit(u_input.c)), func_4(any(vec3<bool>(true, true, var_1.x & true)), !func_4(false, false, Struct_1(vec4<bool>(true, var_1.x, var_1.x, true), vec4<f32>(289f, global0[_wgslsmith_index_u32(71731u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -387f))).a.a.x, func_4(true, var_0.x, func_4(!var_1.x, false, Struct_1(vec4<bool>(var_1.x, false, true, false), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], 1212f, global0[_wgslsmith_index_u32(4294967295u, 27u)]))).b).a).b).b;
    var var_3 = Struct_2(Struct_1(!func_4(false && var_2.a.x, !var_0.x, func_4(true, var_2.a.x, Struct_1(var_2.a, var_2.b)).b).a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(473f * global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), 775f, _wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x))), Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-344f, 1014f)), _wgslsmith_f_op_f32(1000f * var_2.b.x), var_2.b.x, var_2.b.x) - _wgslsmith_f_op_vec4_f32(-var_2.b))), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * global0[_wgslsmith_index_u32(4294967295u, 27u)])) + 1f)), 546u);
    var var_4 = !(true || var_2.a.x);
    var_3 = Struct_2(Struct_1(vec4<bool>(true, var_3.b.a.x, any(!var_2.a.zw), var_1.x && var_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-447f, 1723f, global0[_wgslsmith_index_u32(0u, 27u)], -1125f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_2.b, var_3.b.b))))), func_4(true, var_3.b.a.x && false, Struct_1(!var_3.a.a, var_2.b)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, -967f, -1303f, -506f) - var_2.b)))), _wgslsmith_f_op_f32(min(func_4(var_2.a.x, var_3.a.a.x, func_4(select(var_3.b.a.x, true, var_0.x), var_1.x, func_4(var_2.a.x, false, var_3.a).b).b).d, global0[_wgslsmith_index_u32(min(15714u, _wgslsmith_dot_vec2_u32(u_input.c.zy, countOneBits(u_input.a))), 27u)])), select(4294967295u, ~(~u_input.b >> (~4294967295u % 32u)), true | var_1.x));
    var var_5 = Struct_2(var_3.b, func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(101f + 427f))) <= -2032f, !var_2.a.x, var_3.a).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(360f, _wgslsmith_f_op_f32(-1084f + 107f), 299f, -252f), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(814f + global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_div_f32(-523f, global0[_wgslsmith_index_u32(var_3.e, 27u)]))) * var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x + 539f), _wgslsmith_div_f32(-1957f, var_2.b.x)), select(41412u, ~0u, select(var_1.x, !select(false, var_1.x, false), var_2.a.x && false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~2147483647i) >> (firstTrailingBit(5871u) % 32u)), firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(_wgslsmith_div_vec3_u32(reverseBits(~u_input.c), ~vec3<u32>(var_3.e, 1u, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1513f - 106f)))) + 1554f));
}

