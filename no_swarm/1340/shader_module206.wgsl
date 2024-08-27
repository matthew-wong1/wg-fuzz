struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, true, vec3<u32>(55256u, 122071u, 4294967295u), true), Struct_1(true, true, vec3<u32>(49560u, 7358u, 1u), false), Struct_1(false, false, vec3<u32>(42400u, 0u, 1u), false), Struct_1(true, true, vec3<u32>(23967u, 4294967295u, 1u), false), Struct_1(false, true, vec3<u32>(53240u, 49390u, 0u), false), Struct_1(true, false, vec3<u32>(2371u, 0u, 1u), false), Struct_1(true, false, vec3<u32>(0u, 4294967295u, 107137u), true));

var<private> global1: array<u32, 20> = array<u32, 20>(1619u, 54089u, 0u, 41565u, 4294967295u, 1u, 0u, 1u, 1u, 0u, 0u, 1u, 54268u, 1u, 61531u, 25451u, 41869u, 21496u, 34287u, 4514u);

var<private> global2: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 7>();
    var var_0 = !vec2<bool>(!(!all(vec3<bool>(true, true, arg_1.d.x))), true);
    global0 = array<Struct_1, 7>();
    global1 = array<u32, 20>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - -1629f), 730f, 298f);
    return 1338f;
}

fn func_2() -> vec3<bool> {
    var var_0 = select(!vec4<bool>(_wgslsmith_f_op_f32(func_3(-229f, Struct_4(31469u, u_input.b, vec2<f32>(1307f, 243f), vec2<bool>(true, false), u_input.b), Struct_4(u_input.d.x, 16412i, vec2<f32>(1155f, 982f), vec2<bool>(false, true), -1i), global0[_wgslsmith_index_u32(u_input.d.x, 7u)])) == _wgslsmith_f_op_f32(f32(-1f) * -942f), true, true, all(vec4<bool>(false, false, true, true))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    let var_1 = 33896u;
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_2 = max(-_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, u_input.b), -vec3<i32>(u_input.b, u_input.a.x, -29326i)) & (vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, 2147483647i, -3283i))), _wgslsmith_sub_vec3_i32(~(~vec3<i32>(-37407i, 1i, -2147483647i)) >> (u_input.d.yxz % vec3<u32>(32u)), ~(-select(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(var_0.x, true, var_0.x)))));
    return var_0.wxx;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = arg_1 & (i32(-1i) * -2147483647i);
    var var_1 = vec2<bool>(any(arg_0), true);
    let var_2 = ~u_input.d.x ^ _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_3.d.c.x, 20u)], 33542u);
    global2 = ~var_2;
    let var_3 = -u_input.a.x;
    return any(vec2<bool>(all(func_2().zy), var_1.x));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global1 = array<u32, 20>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-610f, arg_3.x, 305f, _wgslsmith_f_op_f32(arg_3.x - arg_3.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-255f - -1757f), arg_3.x, arg_3.x, arg_3.x)));
    var var_1 = func_4(select(vec3<bool>(arg_2.a.a, false, false), !select(vec3<bool>(arg_1.e.a.d, arg_1.d.b, arg_2.a.a), vec3<bool>(arg_2.b.b, true, true), all(vec2<bool>(arg_1.d.d, arg_1.c.d))), select(select(vec3<bool>(arg_2.a.a, arg_1.e.a.a, true), select(vec3<bool>(false, arg_1.c.d, arg_1.c.b), vec3<bool>(arg_1.c.d, true, false), vec3<bool>(false, arg_1.b.b.a, arg_1.d.a)), select(vec3<bool>(arg_2.a.b, arg_2.a.a, arg_2.a.b), vec3<bool>(true, false, true), false)), func_2(), all(vec4<bool>(false, false, arg_2.b.d, false)))), -1i, Struct_2(Struct_1(!select(true, arg_2.b.d, false), false, vec3<u32>(28679u, u_input.d.x, 68416u), true), Struct_1(arg_1.d.b, false, ~(u_input.d.yxx | arg_1.c.c), arg_1.d.b)), Struct_3(-firstLeadingBit(vec4<i32>(1i, 1i, 4500i, arg_0)) & vec4<i32>(-11517i, arg_1.a.x >> (10280u % 32u), u_input.b, abs(arg_0)), arg_2, Struct_1(true, true, ~vec3<u32>(25236u, arg_2.a.c.x, 41718u) >> (~vec3<u32>(33025u, 1u, 4294967295u) % vec3<u32>(32u)), arg_1.d.a), arg_2.b, arg_1.e));
    global0 = array<Struct_1, 7>();
    global2 = ~arg_2.b.c.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1129f);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<Struct_1, 7>();
    let var_0 = Struct_2(Struct_1(false, (~u_input.c.x >> (4294967295u % 32u)) < 9486u, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 4294967295u), firstTrailingBit(vec3<u32>(0u, 4294967295u, 23019u))), ~min(49551u, u_input.d.x) == _wgslsmith_sub_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(arg_0.a, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), 1u)), global0[_wgslsmith_index_u32(abs(firstLeadingBit(4294967295u)), 7u)]);
    global2 = _wgslsmith_sub_u32(~42322u, ~global1[_wgslsmith_index_u32(~(~arg_0.a & ~global1[_wgslsmith_index_u32(4294967295u, 20u)]), 20u)]);
    let var_1 = _wgslsmith_div_u32(firstLeadingBit(~(~(~4294967295u))), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d) >> (19255u % 32u));
    global2 = _wgslsmith_dot_vec3_u32(~u_input.d.zwy, u_input.d.xwy);
    return Struct_2(Struct_1(true, ~(~1u) <= var_0.b.c.x, vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.a, 20u)]), ~select(var_0.b.c.x, u_input.c.x, var_0.b.a), ~(~u_input.d.x)), !any(vec2<bool>(arg_0.d.x, false))), var_0.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_3(vec4<i32>(select(-u_input.b & ~arg_1.x, _wgslsmith_mod_i32(1i, arg_1.x << (arg_0.b.c.x % 32u)), false), firstLeadingBit(5385i), select(reverseBits(arg_1.x), 2147483647i, true || !arg_2), firstTrailingBit(u_input.b)), func_5(Struct_4(~global1[_wgslsmith_index_u32(u_input.d.x, 20u)] << (~arg_0.b.c.x % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1247f, -1311f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2057f, -525f))))), vec2<bool>(!arg_2, !arg_0.b.d), u_input.a.x), -(~firstTrailingBit(arg_1.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(306f, 260f, 1812f, 442f)))))), func_5(Struct_4(~u_input.d.x, 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1585f, 547f))), !(!vec2<bool>(arg_0.a.a, false)), reverseBits(24216i)), reverseBits(_wgslsmith_add_i32(arg_1.x | 11310i, _wgslsmith_add_i32(u_input.b, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1787f, 1978f, 815f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(187f, -319f, -1000f, 261f) - vec4<f32>(-528f, -1085f, 262f, -1593f)), arg_2)))).b, global0[_wgslsmith_index_u32(arg_0.b.c.x, 7u)], func_5(Struct_4(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(43507u, 20u)], arg_0.b.c.x), vec3<u32>(1u, 27599u, u_input.d.x))), abs(arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(sign(637f)), _wgslsmith_f_op_f32(func_3(-495f, Struct_4(arg_0.a.c.x, 1i, vec2<f32>(1285f, 748f), vec2<bool>(arg_2, true), -19494i), Struct_4(global1[_wgslsmith_index_u32(arg_0.b.c.x, 20u)], -33505i, vec2<f32>(206f, -558f), vec2<bool>(arg_0.a.a, false), u_input.a.x), Struct_1(true, arg_2, vec3<u32>(90925u, u_input.d.x, arg_0.a.c.x), arg_0.a.d)))), vec2<bool>(true, arg_0.a.b), -1i), -2147483647i ^ arg_1.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f - 474f), _wgslsmith_f_op_f32(f32(-1f) * -174f)), -252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-931f))))));
    global1 = array<u32, 20>();
    let var_2 = 636f;
    var var_3 = select(vec4<bool>(false, func_4(select(vec3<bool>(arg_2, false, arg_0.b.a), vec3<bool>(arg_2, true, true), true), ~2651i, Struct_2(var_1.b.a, Struct_1(false, true, vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(arg_0.a.c.x, 20u)], arg_0.b.c.x), var_1.e.b.d)), var_1), arg_2, var_1.e.b.d), select(!select(!vec4<bool>(true, false, false, arg_0.a.b), select(vec4<bool>(arg_2, false, var_1.d.d, arg_0.a.a), vec4<bool>(false, arg_2, false, arg_0.b.d), true), all(vec4<bool>(true, false, var_1.c.a, var_1.d.a))), select(select(!vec4<bool>(var_1.c.b, arg_2, arg_2, arg_0.b.a), vec4<bool>(arg_0.a.b, false, arg_2, arg_2), select(vec4<bool>(arg_0.b.b, var_1.b.a.d, true, true), vec4<bool>(arg_2, false, true, false), var_1.e.b.d)), select(vec4<bool>(arg_0.a.b, var_1.e.a.b, arg_0.a.b, false), vec4<bool>(false, var_1.b.b.a, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_1.c.d, false, arg_0.a.d), true)), true & var_1.b.a.a), !(!(var_1.d.b & true))), false);
    return ~(max(u_input.c.x, 70547u) | ~_wgslsmith_div_u32(~5655u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true && all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), true, all(vec4<bool>(true, true, true, true)) && true);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(60409u), 7u)], global0[_wgslsmith_index_u32(func_6(func_5(Struct_4(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 20u)], 20u)], 29834u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -41939i, 4603i, u_input.b), vec4<i32>(1i, u_input.a.x, 8654i, 50224i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -455f)), var_0.zx, 2147483647i), _wgslsmith_sub_i32(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2809i, u_input.a.x, u_input.b), vec4<i32>(-2147483647i, -1i, -2147483647i, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(884f + 514f), _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_3(vec4<i32>(u_input.b, 28025i, u_input.b, -6158i), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(true, false, vec3<u32>(105763u, u_input.d.x, 70673u), var_0.x)), global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(26512u, 7u)], Struct_2(Struct_1(false, var_0.x, u_input.d.zxx, var_0.x), global0[_wgslsmith_index_u32(44173u, 7u)])), Struct_2(global0[_wgslsmith_index_u32(51447u, 7u)], Struct_1(var_0.x, var_0.x, vec3<u32>(3222u, u_input.d.x, 0u), var_0.x)), vec2<f32>(488f, 188f))), _wgslsmith_f_op_f32(func_3(-343f, Struct_4(24707u, 105990i, vec2<f32>(-360f, 1000f), vec2<bool>(var_0.x, var_0.x), u_input.a.x), Struct_4(4294967295u, u_input.b, vec2<f32>(1940f, -816f), vec2<bool>(var_0.x, var_0.x), u_input.b), Struct_1(true, false, u_input.d.xzw, false))), _wgslsmith_f_op_f32(f32(-1f) * -151f))), ~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.b, -8170i, u_input.b)) | firstLeadingBit(vec3<i32>(-28874i, u_input.b, -784i)), false), 7u)]);
    var var_2 = select(select(select(!(!vec4<bool>(var_0.x, false, true, true)), !vec4<bool>(true, false, true, var_1.a.d), select(select(vec4<bool>(var_1.b.a, var_0.x, true, true), vec4<bool>(var_0.x, true, false, false), var_1.a.b), select(vec4<bool>(var_1.b.a, false, var_0.x, var_1.b.a), vec4<bool>(true, var_1.b.d, var_1.a.a, false), var_0.x), !vec4<bool>(var_0.x, false, true, true))), select(!(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, any(vec3<bool>(true, true, var_1.b.a)), false), !(!vec4<bool>(true, var_0.x, var_1.a.d, false))), select(vec4<bool>(0u < var_1.b.c.x, true, 0i != u_input.a.x, !var_0.x), select(vec4<bool>(false, var_0.x, var_1.a.a, true), select(vec4<bool>(var_1.b.b, false, var_1.b.b, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true)), var_1.b.a), select(vec4<bool>(true, false, var_1.a.a, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), !var_0.x))), select(vec4<bool>(var_0.x, var_0.x, true, any(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_1.b.d, true)))), select(vec4<bool>(func_4(vec3<bool>(false, var_1.b.d, true), -1i, Struct_2(var_1.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8746u, 20u)], 7u)]), Struct_3(vec4<i32>(1i, -1i, u_input.a.x, -2147483647i), Struct_2(var_1.a, var_1.b), Struct_1(false, false, u_input.d.ywx, false), Struct_1(var_1.b.a, false, vec3<u32>(4294967295u, var_1.b.c.x, 1u), var_1.b.b), Struct_2(Struct_1(false, true, u_input.d.zwx, var_1.a.b), var_1.a))), var_0.x, var_1.b.a, all(vec4<bool>(var_0.x, false, true, var_1.a.a))), vec4<bool>(true, func_2().x, global1[_wgslsmith_index_u32(4294967295u, 20u)] > 14854u, true), !vec4<bool>(var_0.x, var_1.b.a, var_0.x, var_1.a.d)), var_0.x), !select(!select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), true, var_0.x, select(var_0.x, true, var_1.b.a)), vec4<bool>(!var_1.a.a, true, true, any(var_0.yy))));
    var_1 = Struct_2(var_1.a, var_1.b);
    var_2 = !select(!select(!vec4<bool>(var_2.x, var_1.a.d, false, var_1.a.d), !vec4<bool>(var_2.x, true, var_0.x, var_0.x), all(vec2<bool>(false, var_0.x))), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)] < 0u, var_0.x, any(vec2<bool>(true, var_1.b.d)), var_1.b.b), !vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_1.b.d), vec4<bool>(!func_2().x, var_2.x, var_0.x, !any(var_2.wwz)));
    let var_3 = vec3<i32>(6021i, 1i, u_input.a.x);
    var var_4 = func_5(Struct_4(54851u, ~max(u_input.b, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, _wgslsmith_f_op_f32(func_1(0i, Struct_3(vec4<i32>(-24373i, 1i, -1i, var_3.x), Struct_2(Struct_1(true, var_0.x, u_input.d.zzz, var_0.x), var_1.a), Struct_1(var_2.x, var_1.a.a, u_input.d.ywz, false), Struct_1(true, false, u_input.d.yxx, true), Struct_2(Struct_1(false, var_0.x, vec3<u32>(18150u, 0u, 7389u), var_2.x), var_1.b)), Struct_2(var_1.a, Struct_1(var_1.b.d, var_2.x, vec3<u32>(var_1.b.c.x, 48008u, var_1.a.c.x), true)), vec2<f32>(-195f, -1344f)))) + vec2<f32>(_wgslsmith_f_op_f32(-285f * 1041f), _wgslsmith_f_op_f32(1125f - -595f))), func_2().zz, i32(-1i) * -(~32479i)), 38936i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-697f, -2902f, -1208f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, -411f, -1166f, 130f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, 254f, 202f, 144f) * vec4<f32>(842f, 1466f, -987f, -829f))))));
    global0 = array<Struct_1, 7>();
    global2 = ~firstLeadingBit(~14670u) ^ _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(func_5(Struct_4(4294967295u, var_3.x, vec2<f32>(1749f, -1488f), var_0.zx, 1988i), -1i, vec4<f32>(1847f, 102f, -3178f, 261f)).a.c, vec3<u32>(var_1.a.c.x, 0u, u_input.c.x))), 9097u, 55989u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_3.x, var_3.x), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1225f, 260f)), _wgslsmith_f_op_f32(f32(-1f) * -249f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-638f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-353f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b, Struct_3(vec4<i32>(13342i, 66130i, u_input.a.x, var_3.x), Struct_2(var_1.a, Struct_1(var_0.x, true, var_1.a.c, var_2.x)), Struct_1(true, true, var_4.b.c, var_0.x), var_4.b, Struct_2(global0[_wgslsmith_index_u32(1u, 7u)], Struct_1(true, var_1.b.b, u_input.d.zxx, var_2.x))), Struct_2(Struct_1(var_1.a.b, true, vec3<u32>(var_4.a.c.x, u_input.c.x, var_1.a.c.x), var_4.b.a), Struct_1(var_4.b.b, true, var_1.a.c, var_1.b.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1751f, -1000f), vec2<f32>(766f, -971f), var_1.a.d)))))), vec2<i32>(_wgslsmith_clamp_i32(~var_3.x << (_wgslsmith_clamp_u32(1u, u_input.c.x, 93238u) % 32u), -1430i, -33356i), -57298i), global1[_wgslsmith_index_u32(~abs(u_input.c.x), 20u)]);
}

