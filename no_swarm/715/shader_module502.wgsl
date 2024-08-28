struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(Struct_2(32576u, 39460u, 4294967295u, Struct_1(140f, 35783i, vec3<u32>(1u, 17346u, 7904u)), vec3<u32>(4294967295u, 4294967295u, 10363u)), Struct_1(288f, -3669i, vec3<u32>(42847u, 9085u, 0u)), false, Struct_2(34006u, 0u, 1u, Struct_1(529f, 0i, vec3<u32>(48362u, 1u, 1u)), vec3<u32>(0u, 0u, 0u)), Struct_2(0u, 4294967295u, 26340u, Struct_1(-1678f, 23169i, vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(90923u, 2471u, 35841u)));

var<private> global3: array<bool, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_2(1u | u_input.a.x, ~1u ^ global2.d.a, ~1u, Struct_1(-1010f, ~global1.d.b ^ global2.b.b, _wgslsmith_clamp_vec3_u32(select(vec3<u32>(27780u, 17150u, global2.d.e.x), global1.d.c, false), firstTrailingBit(u_input.a), vec3<u32>(u_input.a.x, u_input.a.x, 42446u) ^ u_input.a)), select(~vec3<u32>(u_input.a.x, 111964u, global1.c), u_input.a, vec3<bool>(false, global2.e.d.b != global1.d.b, false))), Struct_1(global2.a.d.a, min(u_input.b, ~u_input.b), _wgslsmith_mult_vec3_u32(~(global1.d.c << (global1.e % vec3<u32>(32u))), vec3<u32>(global1.a, 47075u, global2.e.b) >> ((global2.b.c >> (global1.e % vec3<u32>(32u))) % vec3<u32>(32u)))), all(vec2<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global2.c, global2.c, true)), all(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(27043u, 20u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(0u, 20u)]), true)))), Struct_2(_wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(548u, global1.e.x)) ^ ~(~global1.c), 13168u, _wgslsmith_dot_vec3_u32(global1.e, ~vec3<u32>(36073u, global2.e.d.c.x, 4294967295u)) | _wgslsmith_sub_u32(u_input.a.x, 1u), global2.b, global2.a.d.c), Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(select(global2.b.c.x, u_input.a.x, global3[_wgslsmith_index_u32(13713u, 20u)]), _wgslsmith_clamp_u32(4294967295u, u_input.a.x, global1.c)), ~22022u), 61180u, global1.e.x, Struct_1(_wgslsmith_f_op_f32(round(-829f)), 1i, select(~vec3<u32>(global1.e.x, 1u, 1u), reverseBits(vec3<u32>(6364u, 1u, global1.c)), select(global2.c, global2.c, true))), countOneBits(~global2.a.d.c)));
    var var_1 = Struct_3(Struct_2(~_wgslsmith_add_u32(~global2.e.c, _wgslsmith_sub_u32(14756u, u_input.a.x)), 1u, ~_wgslsmith_add_u32(var_0.b.c.x, firstLeadingBit(global1.d.c.x)), global2.e.d, ~(vec3<u32>(u_input.a.x, var_0.e.d.c.x, u_input.a.x) | vec3<u32>(u_input.a.x, global2.b.c.x, 3529u))), global1.d, var_0.c, var_0.e, Struct_2(_wgslsmith_clamp_u32(global1.b, u_input.a.x, 1u) ^ abs(1u), abs(33913u), u_input.a.x, Struct_1(1090f, ~select(u_input.c.x, 1i, true), ~u_input.a), global1.e));
    var var_2 = vec3<u32>(firstLeadingBit(global2.e.a), ~(~global1.c), _wgslsmith_add_u32(56783u, ~4294967295u));
    var_0 = Struct_3(global2.a, var_0.d.d, var_1.c, Struct_2(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.d.b, ~52067u), 0u), global1.d.c.x, Struct_1(473f, -22150i, ~(~vec3<u32>(4294967295u, u_input.a.x, var_1.a.b))), ~_wgslsmith_mod_vec3_u32(global1.d.c, select(vec3<u32>(global2.b.c.x, 53845u, 13290u), var_0.d.d.c, false))), global2.e);
    let var_3 = max(-(i32(-1i) * -1i), ~_wgslsmith_div_i32(~(var_1.d.d.b >> (global2.e.a % 32u)), firstLeadingBit(~var_0.d.d.b)));
    return all(!select(vec4<bool>(!global2.c, all(vec2<bool>(false, true)), global1.b != 50444u, true), !(!vec4<bool>(true, false, true, var_0.c)), global2.c));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    global1 = Struct_2(83399u, ~_wgslsmith_mod_u32(1u, ~(arg_0.a & global2.e.d.c.x)), arg_0.d.c.x, arg_2.d, countOneBits(countOneBits(global2.d.e)));
    global2 = Struct_3(global2.d, global2.d.d, !func_3(), arg_0, arg_2);
    let var_0 = global1.e;
    return _wgslsmith_sub_u32(~(~_wgslsmith_add_u32(arg_0.b, arg_2.e.x) >> (0u % 32u)), _wgslsmith_add_u32(20723u ^ (1396u >> (global2.b.c.x % 32u)), arg_1.c.x) << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.x, var_0.x, 2114u), arg_2.e), arg_0.d.c) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    global2 = Struct_3(Struct_2(global1.a, 0u, abs(~_wgslsmith_mod_u32(global1.c, 0u)), global2.b, ~global1.e), global1.d, !(!select(global3[_wgslsmith_index_u32(~4294967295u, 20u)], false, global3[_wgslsmith_index_u32(~global1.e.x, 20u)])), Struct_2(~(~func_2(Struct_2(u_input.a.x, global1.c, 53466u, Struct_1(arg_1.a, 2147483647i, vec3<u32>(global1.c, u_input.a.x, global1.a)), global2.d.e), global1.d, Struct_2(0u, 1u, global2.e.a, Struct_1(global2.b.a, 8873i, global1.e), arg_1.c), global2.e.d.a)), 4294967295u, func_2(global2.d, Struct_1(-345f, arg_1.b, arg_1.c), Struct_2(global1.a, 36899u, 38562u, global1.d, vec3<u32>(global2.a.c, 1u, global1.a)), _wgslsmith_f_op_f32(-1938f + 502f)) & _wgslsmith_add_u32(~arg_0, ~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(min(-1977f, 614f)), max(~2147483647i, -2147483647i), ~vec3<u32>(0u, 1762u, arg_1.c.x)), vec3<u32>(~max(64595u, 1u), global1.d.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(62582u, 1u, global1.e.x)), select(vec3<u32>(28096u, arg_1.c.x, 39199u), arg_1.c, true)))), global2.d);
    global0 = ~(~(~global1.d.c.x << (_wgslsmith_sub_u32(14028u, global2.e.e.x) % 32u)));
    let var_0 = Struct_3(global2.a, arg_1, false, global2.a, Struct_2(firstLeadingBit(arg_0 ^ 3497u) ^ ~0u, u_input.a.x, 1u ^ _wgslsmith_sub_u32(8833u, ~global1.b), Struct_1(global2.a.d.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.b, -2147483647i, arg_1.b, -63097i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, -2147483647i, global1.d.b, -2147483647i), vec4<i32>(2147483647i, u_input.b, global2.a.d.b, u_input.c.x))), ~(vec3<u32>(40966u, global1.c, 21863u) << (global2.b.c % vec3<u32>(32u)))), ~vec3<u32>(17072u, 61745u, firstLeadingBit(global1.b))));
    var var_1 = Struct_3(var_0.e, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f * -427f))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -1i), vec3<i32>(0i, arg_1.b, 0i))), ~u_input.c.x), countOneBits(~max(vec3<u32>(23276u, global2.e.c, u_input.a.x), vec3<u32>(arg_0, 4294967295u, 4294967295u)))), arg_0 > 32245u, Struct_2(_wgslsmith_mod_u32(~69677u, 0u >> (global1.b % 32u)) << (~_wgslsmith_div_u32(global1.a, global1.c) % 32u), global1.d.c.x, _wgslsmith_add_u32(1u, 17455u), var_0.a.d, _wgslsmith_mod_vec3_u32(select(global1.d.c, var_0.d.e, true) >> (_wgslsmith_mod_vec3_u32(var_0.d.d.c, vec3<u32>(global2.e.a, global1.e.x, 4294967295u)) % vec3<u32>(32u)), global1.d.c)), var_0.a);
    let var_2 = vec4<bool>(func_3(), all(!vec2<bool>(global1.d.b >= var_1.e.d.b, true)), global2.c, any(vec3<bool>(select(all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 20u)], var_1.c)), true, arg_1.b > global2.b.b), !any(vec4<bool>(true, global2.c, var_1.c, true)), var_0.c)));
    return !select(!var_2, vec4<bool>(select(!global2.c, true, true), var_0.c, func_3(), !global2.c == func_3()), var_2);
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~global1.b);
    let var_1 = select(select(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(23055u, 20u)], false, global2.c, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(global2.e.b, 20u)], true, false, true), true), select(vec4<bool>(global2.c, global2.c, true, true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global2.c, true, global2.c), vec4<bool>(false, global3[_wgslsmith_index_u32(var_0, 20u)], false, true)), global2.c), !vec4<bool>(global2.c, global2.c, global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), select(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 20u)], false), vec4<bool>(global2.c, true, global2.c, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 20u)], true, true)), !vec4<bool>(global2.c, global2.c, false, global2.c), select(vec4<bool>(false, global3[_wgslsmith_index_u32(global1.c, 20u)], false, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false), true))), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(global2.d.a, 20u)], global2.c, true), vec4<bool>(global2.c, global3[_wgslsmith_index_u32(global1.c, 20u)], global3[_wgslsmith_index_u32(9862u, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)]), true), !vec4<bool>(true, false, global2.c, false), !vec4<bool>(global3[_wgslsmith_index_u32(global2.e.c, 20u)], false, false, global2.c)), !func_4(func_2(Struct_2(15045u, global2.d.b, var_0, global2.a.d, global1.d.c), Struct_1(-1000f, u_input.b, global1.d.c), Struct_2(30117u, 1u, var_0, Struct_1(global1.d.a, -1i, global2.d.d.c), global2.a.e), global2.b.a), global2.e.d)), func_4(~u_input.a.x, global2.d.d), !select(select(!vec4<bool>(false, true, global2.c, global3[_wgslsmith_index_u32(global2.d.d.c.x, 20u)]), vec4<bool>(false, global2.c, global2.c, global2.c), false), vec4<bool>(func_3(), func_3(), global3[_wgslsmith_index_u32(24119u, 20u)], all(vec3<bool>(global2.c, global2.c, true))), !select(vec4<bool>(global2.c, true, false, true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(global1.c, 20u)]), false)));
    let var_2 = Struct_3(Struct_2(firstLeadingBit(_wgslsmith_mult_u32(global2.a.e.x, 23967u)), global1.a, _wgslsmith_add_u32(1u, 26508u), Struct_1(_wgslsmith_f_op_f32(-global1.d.a), global2.b.b, ~firstTrailingBit(global1.d.c)), vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(global1.d.c.zy, vec2<u32>(0u, var_0)), _wgslsmith_div_u32(6064u, select(global1.a, 25763u, false)))), global2.a.d, all(var_1) & (all(!var_1.zw) == !any(vec4<bool>(global2.c, global3[_wgslsmith_index_u32(global1.d.c.x, 20u)], true, false))), Struct_2(firstTrailingBit(_wgslsmith_add_u32(min(15506u, var_0), _wgslsmith_mod_u32(46976u, global1.a))), _wgslsmith_mult_u32(~(~global1.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 26030u, 1u), vec4<u32>(global1.d.c.x, 4294967295u, global1.b, var_0))), ~func_2(Struct_2(var_0, 24927u, 51359u, Struct_1(global1.d.a, -2147483647i, global2.a.e), vec3<u32>(global2.e.b, global2.e.c, 49230u)), Struct_1(-374f, global2.d.d.b, u_input.a), Struct_2(global1.d.c.x, 52589u, global1.d.c.x, global1.d, vec3<u32>(4294967295u, 13933u, u_input.a.x)), -1605f) | var_0, global1.d, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 11426u), 1u, ~global2.e.a), vec3<u32>(_wgslsmith_mult_u32(81360u, 1u), 24999u, countOneBits(var_0)))), Struct_2(~(~(~1u)), 1u, global1.d.c.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d.a - global1.d.a))), 1i, u_input.a), _wgslsmith_add_vec3_u32(global2.a.e, firstTrailingBit(global2.d.d.c) >> (~global2.e.d.c % vec3<u32>(32u)))));
    global3 = array<bool, 20>();
    var var_3 = !func_3();
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), func_1().d, global2.c, func_1(), func_1());
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, max(func_1().d.c.x, ~var_0.a.e.x) << (~(global2.d.e.x << (global2.a.a % 32u)) % 32u), 30770u, _wgslsmith_sub_u32(4294967295u, 67899u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(80547u, var_0.a.b, 4294967295u, 1u), vec4<u32>(global2.a.e.x, 34866u, 4294967295u, 16600u)), ~vec4<u32>(1857u, global2.e.a, 4294967295u, 0u)), firstLeadingBit(global1.c), global1.a, _wgslsmith_mod_u32(global1.e.x, 0u) << (~4294967295u % 32u)) & vec4<u32>(global1.b, ~10544u, var_0.b.c.x, ~7710u));
    global2 = Struct_3(func_1(), func_1().d, true, Struct_2(~_wgslsmith_clamp_u32(38452u, _wgslsmith_dot_vec3_u32(global1.e, global2.b.c), _wgslsmith_add_u32(global2.e.b, 90414u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1, var_0.a.a, global1.e.x, 7499u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.e.b, 48737u, u_input.a.x, var_0.a.a), vec4<u32>(4294967295u, u_input.a.x, 1u, 0u)) >> (min(vec4<u32>(81333u, 50568u, 4294967295u, 4294967295u), vec4<u32>(0u, 6812u, 61234u, 4294967295u)) % vec4<u32>(32u))), 0u, func_1().d, vec3<u32>(19062u, abs(func_2(var_0.e, global2.b, global2.e, var_0.e.d.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a, global1.e.x, 94254u, var_1), vec4<u32>(4701u, global1.b, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(26335u, global1.c, var_1, var_0.e.d.c.x), vec4<u32>(var_1, 62026u, 4294967295u, u_input.a.x))))), Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, global1.d.c.x, 57943u, var_0.b.c.x)), firstLeadingBit(vec4<u32>(1u, 11137u, 1u, global2.e.e.x))), select(reverseBits(vec4<u32>(var_1, u_input.a.x, 1u, var_1)), vec4<u32>(39697u, var_0.d.d.c.x, global1.a, 33517u), !vec4<bool>(var_0.c, global2.c, var_0.c, global3[_wgslsmith_index_u32(6981u, 20u)]))), reverseBits(abs(1u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), u_input.a.x ^ u_input.a.x), 33244u), var_0.b, vec3<u32>(1u, ~1u, max(_wgslsmith_mult_u32(global1.a, 0u), 1u << (var_0.d.a % 32u)))));
    let var_2 = func_1().d;
    global2 = Struct_3(Struct_2(0u ^ max(u_input.a.x, _wgslsmith_mod_u32(global2.b.c.x, var_0.d.e.x)), var_0.a.c, var_2.c.x, Struct_1(global2.b.a, abs(~global2.e.d.b), _wgslsmith_mult_vec3_u32(~var_2.c, vec3<u32>(4294967295u, var_1, 50834u))), global1.e), global1.d, global2.c, var_0.e, Struct_2(max(var_1, 75352u), 4396u, global2.a.b, func_1().d, global2.d.d.c));
    let var_3 = _wgslsmith_mod_vec4_i32(~(-(~vec4<i32>(1i, var_2.b, var_0.e.d.b, var_2.b))) | vec4<i32>(var_0.b.b, u_input.b | (var_2.b & global1.d.b), _wgslsmith_add_i32(var_0.d.d.b, _wgslsmith_div_i32(-2147483647i, global1.d.b)), -firstLeadingBit(var_2.b)), vec4<i32>(-1i, 0i, global2.b.b, countOneBits(-47100i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(36103u << (_wgslsmith_clamp_u32(var_1, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 33595u), var_2.c.x) % 32u)), countOneBits(var_3.yy), ~min(global1.e, global1.e), 11832u);
}

