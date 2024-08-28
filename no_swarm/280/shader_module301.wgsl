struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(6187u, 4294967295u, 17916u, 72280u, 0u, 71220u, 28942u, 1u, 1u, 17857u, 0u, 1u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    var var_0 = -500f;
    var var_1 = vec3<f32>(arg_0, 934f, arg_1.c.a);
    var var_2 = vec2<u32>(_wgslsmith_add_u32(1u, ~firstLeadingBit(abs(0u))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], ~firstTrailingBit(0u)));
    return var_2.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1294f));
    global0 = array<u32, 13>();
    let var_1 = vec3<bool>(arg_2.x, true, arg_2.x);
    global0 = array<u32, 13>();
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(112285u, 13u)] | global0[_wgslsmith_index_u32(1u, 13u)]) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(30020u, 4294967295u)), ~vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 13u)])) % 32u), 13u)], 13u)], ~vec4<u32>(4294967295u, _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] | 1u, 13u)], 1u) ^ ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(5487u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(64985u, 13u)], 2768u), vec4<u32>(59641u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66504u, 13u)], 13u)], 4294967295u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a), arg_0.a), ~firstLeadingBit(~13601u), select(vec4<bool>(true, arg_0.a < arg_0.a, true, false), !select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(arg_2.x, var_1.x, false, true), vec4<bool>(false, false, false, false)), false), !any(vec4<bool>(arg_2.x, var_1.x, false, arg_2.x)) || true), -358f, Struct_1(arg_0.a, countOneBits(firstLeadingBit(4294967295u) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(18316u), 13u)], 13u)], 13u)] % 32u)), vec4<bool>(!(!var_1.x), var_1.x, arg_2.x, any(vec3<bool>(false, false, true))), any(!vec4<bool>(false, var_1.x, true, false))));
    return -271f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.c.c;
    let var_1 = arg_2.e.zz;
    var var_2 = Struct_5(-1646f);
    var var_3 = Struct_2(~arg_2.c.c.b, arg_2.c.b, arg_3.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2097f) * _wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(f32(-1f) * -929f))))), arg_3.c);
    var var_4 = all(vec2<bool>(arg_3.e.c.x & !(!arg_0), true));
    return arg_3.e.b;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-425f)), ~select(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 13u)]) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23657u, 13u)], 13u)], 20696u, global0[_wgslsmith_index_u32(101002u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(32449u, 13u)], 1u, global0[_wgslsmith_index_u32(17486u, 13u)])) % 32u), _wgslsmith_mod_u32(countOneBits(16283u), ~65533u), true), !(!vec4<bool>(true, true, select(true, true, true), true)), (true && any(vec3<bool>(false, false, false))) || all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)));
    var var_1 = Struct_4(!select(select(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.c.x, var_0.c.x), false), !vec2<bool>(var_0.d, false), true), !var_0.c.xy, true), _wgslsmith_f_op_f32(f32(-1f) * -362f), Struct_2(global0[_wgslsmith_index_u32(func_4(any(!var_0.c.wwz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)), -1158f), Struct_4(var_0.c.xw, _wgslsmith_f_op_f32(func_3(Struct_3(-789f), vec4<i32>(u_input.c, 28351i, -2147483647i, u_input.c), vec2<bool>(var_0.c.x, true))), Struct_2(var_0.b, vec4<u32>(global0[_wgslsmith_index_u32(44595u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 4294967295u, global0[_wgslsmith_index_u32(var_0.b, 13u)]), var_0, var_0.a, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, -502f, -682f, var_0.a)), min(vec3<i32>(u_input.a, -2147483647i, 2147483647i), vec3<i32>(u_input.c, u_input.a, -8818i))), Struct_2(1u, vec4<u32>(var_0.b, global0[_wgslsmith_index_u32(0u, 13u)], 1u, var_0.b), var_0, var_0.a, Struct_1(var_0.a, 13009u, vec4<bool>(true, false, var_0.c.x, false), false))), 13u)], ~abs(vec4<u32>(global0[_wgslsmith_index_u32(var_0.b, 13u)], var_0.b, var_0.b, global0[_wgslsmith_index_u32(0u, 13u)])), Struct_1(_wgslsmith_f_op_f32(-1988f + -711f), 12020u, vec4<bool>(true, true, u_input.b < u_input.a, !var_0.c.x), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1685f, var_0.a)), var_0.a), Struct_1(var_0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(3510u, 13u)], 4294967295u, var_0.b, 1u), vec4<u32>(68905u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 13u)], 13u)], 13u)], var_0.b, 7818u)), var_0.c, var_0.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(func_3(Struct_3(var_0.a), vec4<i32>(-1i, u_input.b, u_input.c, -2147483647i), vec2<bool>(var_0.c.x, var_0.c.x))), var_0.a) * vec4<f32>(_wgslsmith_f_op_f32(-1065f + var_0.a), var_0.a, _wgslsmith_f_op_f32(-var_0.a), -852f)))), -select(vec3<i32>(28514i, u_input.b, _wgslsmith_sub_i32(42754i, u_input.c)), ~firstTrailingBit(vec3<i32>(u_input.c, u_input.a, -33659i)), select(!var_0.c.www, !vec3<bool>(var_0.c.x, false, true), false)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), -1095f, var_0.a, var_0.a);
    global0 = array<u32, 13>();
    var_1 = Struct_4(select(var_0.c.wx, !select(!var_0.c.xz, vec2<bool>(var_1.c.e.c.x, var_0.d), false), true), _wgslsmith_f_op_f32(select(-958f, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -361f)), ~vec4<i32>(u_input.b, -9413i, -3244i, 15248i) << (var_1.c.b % vec4<u32>(32u)), select(!var_1.a, vec2<bool>(var_1.c.e.d, false), vec2<bool>(var_0.c.x, false)))), all(!var_0.c))), var_1.c, var_1.d, countOneBits(abs(vec3<i32>(-11750i, u_input.b | var_1.e.x, ~u_input.c))));
    return Struct_5(1076f);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(0u, 13u)]), 13u)], 4294967295u, 84761u), 38915u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(33413u, 13u)], 11099u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)]) >> (vec4<u32>(1u, 2192u, 1u, 25700u) % vec4<u32>(32u)), ~abs(vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(70440u, 13u)], 21678u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76572u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 70862u, 48167u, 2203u)), Struct_1(_wgslsmith_f_op_f32(ceil(-1811f)), 25540u, select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, false, true, arg_0.x)), select(select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, false), arg_0.x), vec4<bool>(true, false, false, arg_0.x), arg_0.x)), u_input.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 41773i, u_input.b), -vec3<i32>(1i, 26622i, 1319i))), 1659f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(select(arg_2.x, -2165f, arg_0.x)))) * 578f), ~global0[_wgslsmith_index_u32(4294967295u, 13u)], vec4<bool>(true, 0i >= -u_input.a, true, arg_0.x), !arg_0.x));
    global0 = array<u32, 13>();
    var var_1 = var_0.b.wwy;
    var_0 = Struct_2(4294967295u, reverseBits(vec4<u32>(14251u, var_0.e.b, _wgslsmith_mod_u32(var_0.a, var_0.b.x) >> (var_0.e.b % 32u), _wgslsmith_mod_u32(firstLeadingBit(var_0.b.x), firstLeadingBit(var_1.x)))), var_0.e, _wgslsmith_f_op_f32(min(320f, -1372f)), var_0.c);
    let var_2 = Struct_1(var_0.e.a, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_1.x), ~select(abs(16068u), 4294967295u ^ global0[_wgslsmith_index_u32(var_1.x, 13u)], true)), select(select(select(vec4<bool>(true, true, false, var_0.e.d), var_0.e.c, var_0.c.c), !vec4<bool>(var_0.e.d, true, true, true), !var_0.c.c), select(var_0.c.c, vec4<bool>(true, !arg_0.x, all(vec3<bool>(arg_0.x, true, arg_0.x)), true), vec4<bool>(true, arg_1.a == -2279f, !var_0.e.d, !arg_0.x)), var_0.c.c.x), false);
    return Struct_1(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x)), 78831u, !var_2.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(max(~(~0u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)] | global0[_wgslsmith_index_u32(130944u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)] >> (1u % 32u), 13u)], global0[_wgslsmith_index_u32(func_1(-1000f, Struct_2(global0[_wgslsmith_index_u32(1u, 13u)], vec4<u32>(7869u, global0[_wgslsmith_index_u32(21573u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)]), Struct_1(-524f, 1u, vec4<bool>(false, true, true, false), false), 536f, Struct_1(346f, 14910u, vec4<bool>(true, false, true, true), true)), vec2<bool>(true, false)), 13u)])) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(18532u, 13u)], 9215u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86083u, 13u)], 13u)], 13u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(107191u, 13u)], 4294967295u, 14221u))), 13u)], 13u)] % 32u), vec4<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 13u)], 13u)]) | 0u, ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(min(4294967295u, 36910u), 13u)], select(17408u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], false)), _wgslsmith_div_u32(_wgslsmith_mult_u32(30725u, 0u), 77152u), global0[_wgslsmith_index_u32(20654u, 13u)]), func_5(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1635f, _wgslsmith_f_op_f32(step(-618f, -1169f))) * vec2<f32>(_wgslsmith_f_op_f32(-369f - -1000f), -853f))), 1f, Struct_1(-364f, 1u, vec4<bool>(countOneBits(28425u) <= _wgslsmith_clamp_u32(16672u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 3800u), _wgslsmith_f_op_f32(trunc(680f)) <= _wgslsmith_f_op_f32(abs(-1280f)), true, any(vec4<bool>(true, true, true, true))), any(vec4<bool>(false, true, false, true))));
    var var_1 = _wgslsmith_div_f32(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) - _wgslsmith_f_op_f32(-826f * -1000f))))));
    var var_2 = abs(35381u) << ((~(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_0.e.b, 13u)], 0u)) << (~_wgslsmith_div_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36471u, 13u)], 13u)]), firstTrailingBit(1638u)) % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -233f)))) * -1377f));
    var var_4 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1319i, u_input.c)) << ((select(var_0.b.zx, vec2<u32>(70566u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5026u, 13u)], 13u)]), var_0.e.d) & ~vec2<u32>(var_0.e.b, 0u)) % vec2<u32>(32u)), min(-vec2<i32>(2475i, u_input.c), ~(-vec2<i32>(-17264i, u_input.a)))) != -_wgslsmith_div_i32(-(~u_input.c), -u_input.c);
    var_4 = any(func_5(select(select(func_5(var_0.c.c.wx, Struct_5(var_3), vec2<f32>(var_3, var_3)).c.wy, vec2<bool>(var_0.e.d, var_0.e.d), !var_0.e.c.x), !(!var_0.e.c.xz), select(vec2<bool>(false, true), select(vec2<bool>(var_0.e.c.x, true), vec2<bool>(false, true), var_0.c.d), var_0.c.c.x | true)), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, var_0.c.a) - vec2<f32>(-1000f, 132f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_0.c.a))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.a, -436f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.a, -602f))))))).c);
    var var_5 = _wgslsmith_add_i32(-1i, select(2147483647i & _wgslsmith_div_i32(min(u_input.c, u_input.c), u_input.b), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(42290i, 61790i)), abs(vec2<i32>(u_input.a, 69982i) | vec2<i32>(26016i, u_input.b))), all(vec2<bool>(true, var_0.c.c.x | true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(var_0.b.yxx & var_0.b.zyz) | countOneBits(var_0.b.zxw), vec3<u32>(24939u, _wgslsmith_dot_vec4_u32(abs(var_0.b), var_0.b | vec4<u32>(0u, 4294967295u, 4294967295u, var_0.c.b)), ~select(global0[_wgslsmith_index_u32(6260u, 13u)], 96711u, var_0.c.c.x)), select(var_0.c.c.wwx, select(func_5(var_0.e.c.xx, Struct_5(var_3), vec2<f32>(var_0.d, 189f)).c.wyy, vec3<bool>(true, true, var_0.c.d), 0i != u_input.a), vec3<bool>(true, var_0.c.c.x, false))), _wgslsmith_div_i32(-28043i, 11415i));
}

