struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec3<i32>(85623i, 0i, -25403i), vec3<bool>(true, false, false), Struct_1(true, vec4<i32>(-21231i, 8256i, 24552i, -73740i)), Struct_1(false, vec4<i32>(-37962i, i32(-2147483648), 85989i, -1i)), false), Struct_4(vec3<i32>(-75933i, 2147483647i, -2988i), vec3<bool>(true, true, true), Struct_1(false, vec4<i32>(-10410i, 1i, -39675i, 8581i)), Struct_1(true, vec4<i32>(0i, -28264i, 0i, 2147483647i)), false), Struct_4(vec3<i32>(-12470i, 2147483647i, 8951i), vec3<bool>(false, false, true), Struct_1(true, vec4<i32>(56046i, -13096i, 1i, 17424i)), Struct_1(true, vec4<i32>(-43676i, -25599i, -12677i, -21837i)), false), Struct_4(vec3<i32>(-13917i, -1i, 2147483647i), vec3<bool>(true, true, false), Struct_1(true, vec4<i32>(3351i, 15172i, -1i, i32(-2147483648))), Struct_1(false, vec4<i32>(14418i, -12921i, 0i, -25776i)), false), Struct_4(vec3<i32>(i32(-2147483648), 7580i, -4481i), vec3<bool>(false, true, false), Struct_1(true, vec4<i32>(0i, 2147483647i, -1i, 0i)), Struct_1(true, vec4<i32>(-27917i, -23943i, -1i, 0i)), true), Struct_4(vec3<i32>(41058i, 2147483647i, -1i), vec3<bool>(true, false, false), Struct_1(true, vec4<i32>(1204i, 0i, 0i, 0i)), Struct_1(false, vec4<i32>(-26020i, 1i, i32(-2147483648), -12236i)), true), Struct_4(vec3<i32>(i32(-2147483648), -54818i, 21283i), vec3<bool>(false, true, false), Struct_1(true, vec4<i32>(33731i, -1i, 0i, 1i)), Struct_1(false, vec4<i32>(2147483647i, -1i, -1i, -24939i)), true), Struct_4(vec3<i32>(-702i, -24551i, 4365i), vec3<bool>(false, false, true), Struct_1(false, vec4<i32>(-14364i, -14559i, 1i, 32829i)), Struct_1(false, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648))), true), Struct_4(vec3<i32>(1i, 64994i, 0i), vec3<bool>(true, false, false), Struct_1(false, vec4<i32>(-1i, -50970i, 29082i, 0i)), Struct_1(false, vec4<i32>(38462i, -3201i, i32(-2147483648), 34646i)), true), Struct_4(vec3<i32>(2147483647i, 1i, -1i), vec3<bool>(false, true, true), Struct_1(false, vec4<i32>(-11375i, 27606i, 9394i, 2147483647i)), Struct_1(true, vec4<i32>(1i, 2147483647i, 1i, -22610i)), false), Struct_4(vec3<i32>(-5366i, 1772i, 1i), vec3<bool>(true, false, true), Struct_1(true, vec4<i32>(-13704i, -11433i, 1i, -38325i)), Struct_1(false, vec4<i32>(0i, 2147483647i, -10479i, -13708i)), false), Struct_4(vec3<i32>(-4643i, 46367i, -1i), vec3<bool>(true, true, false), Struct_1(false, vec4<i32>(2147483647i, -15583i, 1i, 2147483647i)), Struct_1(true, vec4<i32>(2147483647i, 1i, 1i, -47804i)), true), Struct_4(vec3<i32>(1i, 32455i, -1i), vec3<bool>(false, false, true), Struct_1(false, vec4<i32>(i32(-2147483648), 0i, 1i, -30592i)), Struct_1(true, vec4<i32>(53629i, 12899i, 0i, 0i)), false), Struct_4(vec3<i32>(2147483647i, -12948i, 0i), vec3<bool>(true, false, false), Struct_1(true, vec4<i32>(-9383i, i32(-2147483648), 61692i, 63395i)), Struct_1(false, vec4<i32>(-31598i, -36139i, -38962i, 1i)), false), Struct_4(vec3<i32>(19113i, 0i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(false, vec4<i32>(-29520i, -1i, -9478i, 0i)), Struct_1(true, vec4<i32>(1i, 1i, -18463i, 9190i)), false), Struct_4(vec3<i32>(0i, -13071i, 1i), vec3<bool>(true, false, true), Struct_1(true, vec4<i32>(2147483647i, -1i, 10552i, 0i)), Struct_1(true, vec4<i32>(1i, -14078i, -17180i, 19038i)), false), Struct_4(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<bool>(true, true, false), Struct_1(false, vec4<i32>(1i, -1i, 42668i, 0i)), Struct_1(true, vec4<i32>(64992i, 2147483647i, -22892i, -5314i)), false), Struct_4(vec3<i32>(2147483647i, 0i, 0i), vec3<bool>(false, true, true), Struct_1(false, vec4<i32>(-22114i, 21110i, -15030i, 0i)), Struct_1(true, vec4<i32>(2660i, -1i, i32(-2147483648), -54858i)), true), Struct_4(vec3<i32>(2330i, -1i, 1i), vec3<bool>(true, false, false), Struct_1(false, vec4<i32>(25604i, 35638i, 58539i, -1i)), Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -18802i, 2147483647i)), true), Struct_4(vec3<i32>(46459i, 33767i, 1i), vec3<bool>(false, true, false), Struct_1(false, vec4<i32>(1i, 0i, -1i, 0i)), Struct_1(false, vec4<i32>(-58211i, -2081i, 27218i, 11044i)), true), Struct_4(vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<bool>(false, false, true), Struct_1(true, vec4<i32>(0i, -1i, i32(-2147483648), -1i)), Struct_1(true, vec4<i32>(-76979i, -5701i, 27928i, 22931i)), true), Struct_4(vec3<i32>(-4192i, 45866i, 10410i), vec3<bool>(false, false, true), Struct_1(false, vec4<i32>(-6733i, 65402i, 5575i, 2147483647i)), Struct_1(false, vec4<i32>(0i, -27630i, 27774i, -24214i)), false), Struct_4(vec3<i32>(18966i, 0i, -36674i), vec3<bool>(true, false, true), Struct_1(false, vec4<i32>(i32(-2147483648), 18261i, -7853i, -35721i)), Struct_1(false, vec4<i32>(63727i, i32(-2147483648), 2147483647i, i32(-2147483648))), false));

var<private> global1: i32 = -62558i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_5 {
    var var_0 = !(!vec3<bool>(all(vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, false)), false));
    global1 = 2147483647i;
    var var_1 = Struct_2(var_0.x);
    var_1 = Struct_2(true);
    let var_2 = abs(firstLeadingBit(11687u));
    return Struct_5(!(var_2 != max(~0u, ~var_2)), max((arg_1 & -11169i) ^ arg_0, firstLeadingBit(arg_1)) << (~18768u % 32u));
}

fn func_3(arg_0: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(f32(-1f) * -3188f));
    let var_1 = !select(vec4<bool>(!arg_0.a | arg_0.a, any(!vec2<bool>(arg_0.a, false)), !any(vec4<bool>(false, arg_0.a, false, arg_0.a)), !all(vec3<bool>(true, arg_0.a, false))), vec4<bool>(any(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), true, -17352i < select(u_input.a, 0i, arg_0.a), true), vec4<bool>(true, arg_0.a, arg_0.a, !select(true, false, false)));
    global0 = array<Struct_4, 23>();
    global1 = _wgslsmith_mult_i32(arg_0.b, countOneBits(_wgslsmith_mult_i32(u_input.a, arg_0.b)));
    let var_2 = 37061u;
    return Struct_5(true, -75862i);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    global1 = max(arg_0.b, ~1i);
    let var_0 = vec2<f32>(1f, 1f);
    let var_1 = arg_1.a;
    global0 = array<Struct_4, 23>();
    let var_2 = arg_0;
    return Struct_1(~min(_wgslsmith_div_i32(0i, u_input.a), reverseBits(arg_0.b)) >= u_input.a, vec4<i32>(var_2.b, ~1i, select(-13844i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-15517i, u_input.a)), -vec2<i32>(var_2.b, arg_0.b)), any(select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_0.a, false), vec2<bool>(var_1, arg_1.a)))), abs(2147483647i)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(func_3(func_2(reverseBits(u_input.a), -77291i)), Struct_2(false), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9097u, 4294967295u, 1u, 3331u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_u32(1u, reverseBits(6993u)), _wgslsmith_mult_u32(~4294967295u, 0u), 1u), vec4<u32>(21259u, ~(~4294967295u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 498u))), 1u)));
    let var_1 = select(vec4<bool>(true, true, true | func_4(Struct_5(var_0.a, 2147483647i), Struct_2(true), vec4<u32>(67363u, 19271u, 26362u, 0u)).a, true), select(!select(!vec4<bool>(false, var_0.a, var_0.a, true), select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), true), !vec4<bool>(false, true, true, var_0.a)), vec4<bool>(var_0.a || true, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true))), _wgslsmith_f_op_f32(step(arg_0, -1066f)) <= 2107f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, !var_0.a, var_0.b.x > u_input.a), vec4<bool>(var_0.a, !var_0.a, false, func_3(Struct_5(false, var_0.b.x)).a))), vec4<bool>(!func_4(Struct_5(var_0.a, var_0.b.x), Struct_2(false), vec4<u32>(0u, 0u, 95595u, 41735u)).a, !var_0.a, var_0.a, var_0.a));
    global1 = var_0.b.x;
    let var_2 = ~(~(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = Struct_2(any(!select(select(vec4<bool>(var_1.x, var_1.x, true, var_0.a), vec4<bool>(var_0.a, false, var_1.x, false), false), var_1, vec4<bool>(var_0.a, false, var_1.x, false))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(150f - -930f), _wgslsmith_f_op_f32(step(-288f, -951f))))), ~_wgslsmith_clamp_u32(79117u, ~47515u, 1u), 24854u), abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9248u, 42616u, 114473u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(abs(12876u), 1u), select(66834u, ~38168u, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(21021u, 1u, 87680u), vec3<u32>(1u, 1u, 1u))))), 23u)];
    let var_1 = var_0.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(283f, _wgslsmith_div_f32(-428f, -800f), true)), -1231f)))));
}

