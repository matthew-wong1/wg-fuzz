struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-452f);

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(17244i, 19054i, 43601i), vec3<i32>(-3052i, -3207i, -26162i), vec3<i32>(-19604i, i32(-2147483648), -17368i), vec3<i32>(11624i, -80682i, -13043i), vec3<i32>(16954i, 1i, -9564i), vec3<i32>(-15516i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(1i, 11313i, 2147483647i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), -9213i, -8782i), vec3<i32>(-46624i, i32(-2147483648), 2147483647i), vec3<i32>(17084i, -52129i, 0i), vec3<i32>(-1i, -8730i, 0i), vec3<i32>(32118i, -39858i, -36208i), vec3<i32>(73577i, 35998i, -11713i), vec3<i32>(40148i, 51522i, 0i), vec3<i32>(0i, i32(-2147483648), 3071i), vec3<i32>(-20751i, 21082i, 2147483647i), vec3<i32>(32200i, -22106i, -19710i), vec3<i32>(6077i, -14923i, 17787i), vec3<i32>(0i, -31302i, 1i), vec3<i32>(-607i, 49708i, -25735i), vec3<i32>(2147483647i, 29250i, -26938i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(28338i, 12922i, 22633i), vec3<i32>(29126i, -22613i, 2147483647i), vec3<i32>(-52333i, i32(-2147483648), -58481i));

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-58230i, -1i, 42882i, 1i), vec4<i32>(2147483647i, 1i, 2259i, 25588i), vec4<i32>(-38159i, 25007i, 38133i, 2147483647i), vec4<i32>(-29722i, 0i, 2147483647i, 1i), vec4<i32>(-23393i, 0i, i32(-2147483648), 8619i), vec4<i32>(1i, 29670i, 422i, -8706i), vec4<i32>(30766i, 2147483647i, 2147483647i, -39819i), vec4<i32>(858i, 4810i, 18051i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 0i, -30029i), vec4<i32>(2147483647i, i32(-2147483648), -49764i, 13262i), vec4<i32>(-15315i, i32(-2147483648), -3932i, 0i), vec4<i32>(-1i, 1i, -1i, -89320i), vec4<i32>(2147483647i, 10979i, 1i, 1i), vec4<i32>(11945i, -43982i, 37353i, i32(-2147483648)), vec4<i32>(1i, -13615i, 0i, -34608i), vec4<i32>(1i, -2235i, 26661i, -1i), vec4<i32>(1i, 1i, -34797i, 0i), vec4<i32>(2147483647i, 1i, 43034i, -2549i), vec4<i32>(-20200i, -1i, -23057i, 0i), vec4<i32>(0i, -1i, 16088i, -38320i), vec4<i32>(-22694i, -37290i, 5326i, 26958i), vec4<i32>(0i, -7526i, 1i, i32(-2147483648)), vec4<i32>(-9164i, -20501i, 33166i, 2147483647i), vec4<i32>(-1i, 55485i, 0i, -1i), vec4<i32>(-19418i, -73228i, -31830i, -62551i), vec4<i32>(2147483647i, 43475i, 59512i, -62036i), vec4<i32>(28900i, 572i, -31810i, 2147483647i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 17860i));

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global3 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(1u), 1u)] + _wgslsmith_f_op_f32(-2384f * global0[_wgslsmith_index_u32(11908u, 1u)]))) + global0[_wgslsmith_index_u32(u_input.b, 1u)]);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b, 53782u, arg_0), max(vec4<u32>(u_input.d, arg_0, u_input.d, u_input.d), vec4<u32>(13015u, u_input.b, 1u, u_input.d))), u_input.a.xxw, vec2<bool>(true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 0u) & ~vec3<u32>(2427u, 3416u, 86907u), min(~vec3<u32>(17083u, 1u, 88090u), vec3<u32>(arg_0, u_input.b, arg_0))))), -440f);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~1u), _wgslsmith_div_u32(3172u, arg_0)), 1u)];
    global0 = array<f32, 1>();
    global2 = array<vec4<i32>, 28>();
    let var_2 = u_input.c;
    return vec4<u32>(1u, ~abs(_wgslsmith_mod_u32(u_input.d >> (1u % 32u), 5433u)), arg_0, ~_wgslsmith_mod_u32(arg_0, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(func_2(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u | arg_0.a.x, ~18914u), select(0u, 30362u, arg_0.c.x))).x, 15u)];
    let var_1 = Struct_1(~select(abs(arg_0.a), var_0.a, any(vec3<bool>(true, true, true))), -_wgslsmith_clamp_vec3_i32(global1[_wgslsmith_index_u32(arg_0.a.x, 27u)] >> (arg_0.a.www % vec3<u32>(32u)), vec3<i32>(min(u_input.c, u_input.c), _wgslsmith_mult_i32(arg_0.b.x, var_0.b.x), var_0.b.x), u_input.a.zzz), arg_0.c);
    var var_2 = var_1;
    var_2 = Struct_1(~reverseBits(~(~var_0.a)), ~reverseBits(~(vec3<i32>(-2147483647i, var_2.b.x, u_input.a.x) & u_input.a.yyz)), !arg_0.c);
    let var_3 = _wgslsmith_f_op_f32(step(1000f, 596f));
    return global3[_wgslsmith_index_u32(arg_1.x, 15u)];
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    global3 = array<Struct_1, 15>();
    let var_0 = ~u_input.b;
    let var_1 = true;
    var var_2 = var_1 && !(!all(!vec2<bool>(false, var_1)));
    global1 = array<vec3<i32>, 27>();
    return func_4(Struct_1(_wgslsmith_mod_vec4_u32(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(34818u, var_0, var_0), vec3<u32>(4294967295u, u_input.b, u_input.b))), firstLeadingBit(vec4<u32>(97926u, u_input.b, 4294967295u, 38904u))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, 0i), vec3<i32>(u_input.e, u_input.e, u_input.e))), vec2<bool>(true, true)), reverseBits(~max(select(vec3<u32>(1u, u_input.b, 40709u), vec3<u32>(var_0, 4294967295u, var_0), vec3<bool>(true, var_1, arg_0)), vec3<u32>(var_0, u_input.d, u_input.b))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = array<vec4<i32>, 28>();
    var var_0 = Struct_1(arg_2.a, vec3<i32>(~(~(-2147483647i)), ~func_4(arg_2, func_4(arg_1, vec3<u32>(4515u, arg_1.a.x, 0u)).a.yyw).b.x, -(~(-14595i))), func_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 1u)], -303f, -578f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1603f, 1050f, global0[_wgslsmith_index_u32(arg_1.a.x, 1u)]))))))).c);
    global3 = array<Struct_1, 15>();
    let var_1 = Struct_1(arg_2.a, -func_1(false, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1172f, -1241f, global0[_wgslsmith_index_u32(arg_0.a.x, 1u)])))).b & global1[_wgslsmith_index_u32(~arg_0.a.x, 27u)], !func_1(any(select(vec4<bool>(arg_2.c.x, var_0.c.x, arg_3.c.x, arg_1.c.x), vec4<bool>(true, false, true, var_0.c.x), arg_2.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(607f, 1223f, global0[_wgslsmith_index_u32(arg_0.a.x, 1u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.a.x, 1u)], global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], global0[_wgslsmith_index_u32(arg_3.a.x, 1u)]) * vec3<f32>(343f, global0[_wgslsmith_index_u32(var_0.a.x, 1u)], 573f)))).c);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~39186u), 15u)];
    return arg_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 1u)];
    var var_1 = _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(216i, abs(-2147483647i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) - _wgslsmith_f_op_f32(-834f - -139f)), -1713f)));
    global0 = array<f32, 1>();
    var var_3 = true;
    let var_4 = select(vec3<bool>(true, func_5(global3[_wgslsmith_index_u32(4294967295u, 15u)], func_1(true, vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], 1961f, 663f)), Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.d, 14650u), u_input.a.wzy, vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 16067u, u_input.b, 14475u), global1[_wgslsmith_index_u32(u_input.b, 27u)], vec2<bool>(false, true))) | any(vec4<bool>(true, false, true, true)), true), !vec3<bool>(true == (1000f <= global0[_wgslsmith_index_u32(u_input.b, 1u)]), true, true), true);
    var var_5 = select(!select(vec4<bool>(var_4.x, any(vec4<bool>(true, var_4.x, var_4.x, false)), true, var_4.x), !vec4<bool>(var_4.x, var_4.x, var_4.x, true), select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, var_4.x, var_4.x, true), select(vec4<bool>(false, false, var_4.x, var_4.x), vec4<bool>(var_4.x, true, false, var_4.x), vec4<bool>(var_4.x, var_4.x, var_4.x, true)))), vec4<bool>(!(var_2.x > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 1u)])), !(u_input.e > countOneBits(40075i)), false, all(!select(var_4, var_4, vec3<bool>(var_4.x, var_4.x, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, !var_4.x, any(var_4), !all(vec2<bool>(var_4.x, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(vec4<u32>(u_input.d, u_input.b, u_input.b, ~12731u), min(firstLeadingBit(u_input.a.ywy), func_1(true, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], -1458f, global0[_wgslsmith_index_u32(33425u, 1u)])).b), !func_4(global3[_wgslsmith_index_u32(1u, 15u)], vec3<u32>(u_input.b, u_input.b, 0u)).c), (_wgslsmith_mod_vec3_u32(vec3<u32>(32624u, 46340u, u_input.d), vec3<u32>(u_input.d, u_input.d, 61406u)) << (~vec3<u32>(0u, 0u, u_input.d) % vec3<u32>(32u))) ^ min(~vec3<u32>(50442u, u_input.b, 32595u), abs(vec3<u32>(u_input.d, 4294967295u, u_input.d)))).a.ww, vec3<f32>(_wgslsmith_f_op_f32(step(var_2.x, -1856f)), -525f, var_2.x));
}

