struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, false, false, false, true, false, true, true, true, true, false);

var<private> global1: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    var var_0 = !vec2<bool>(true, (1i | u_input.c.x) == arg_0.b.e);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)));
    var var_1 = false;
    var var_2 = 20462i;
    var_0 = select(select(vec2<bool>(arg_0.c <= arg_0.b.a.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.d.x), vec2<u32>(arg_1.x, arg_1.x))), 12u)]), select(select(vec2<bool>(true, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 12u)]), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], var_0.x)), select(select(vec2<bool>(var_0.x, arg_0.a.c), vec2<bool>(true, arg_0.a.c), vec2<bool>(false, true)), vec2<bool>(false, arg_0.b.a.c), arg_0.a.a > arg_0.b.c), all(vec4<bool>(var_0.x, arg_0.a.c, global0[_wgslsmith_index_u32(arg_1.x, 12u)], false)) && true), select(vec2<bool>(true == var_0.x, true), select(vec2<bool>(var_0.x, false), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.d.x, 12u)], true), vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(arg_0.b.d.x, 12u)]), vec2<bool>(false, var_0.x)), true), select(select(vec2<bool>(false, false), vec2<bool>(arg_0.b.a.c, true), false), vec2<bool>(true, true), all(vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(1u, 12u)]))))), select(vec2<bool>(true, false), vec2<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], global0[_wgslsmith_index_u32(arg_0.b.d.x, 12u)], global0[_wgslsmith_index_u32(arg_0.b.d.x, 12u)], var_0.x)), all(vec2<bool>(true, var_0.x)) && true), arg_0.a.c), vec2<bool>(var_0.x, any(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(37665u, 12u)]))));
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = !select(!select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0, 12u)]), !vec3<bool>(arg_1, true, false), select(vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(17298u, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, false), vec3<bool>(arg_1, arg_1, false))), vec3<bool>((global0[_wgslsmith_index_u32(6499u, 12u)] == global0[_wgslsmith_index_u32(1u, 12u)]) & select(false, arg_1, false), true, true), all(!vec4<bool>(arg_1, false, global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_1)));
    var var_1 = _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(min(-1953f, arg_3)));
    return 5736u;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, 2276f)), vec2<f32>(594f, 436f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, -174f) + vec2<f32>(1369f, -181f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f - -1572f)), 1590f)));
    var var_1 = vec2<u32>(arg_2, min(28983u, 1u));
    var var_2 = Struct_4(-1473f);
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -487f, -1000f, 875f), vec4<f32>(var_2.a, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 1000f, -1930f, -141f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 506f, var_2.a, var_0.x)))))), true), vec2<i32>(2147483647i, -1i), var_2.a, min(_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_2, 1u, arg_2, var_1.x | var_1.x), ~abs(vec4<u32>(var_1.x, 8923u, var_1.x, var_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_div_u32(11291u, var_1.x), var_1.x, _wgslsmith_add_u32(var_1.x, arg_2)), countOneBits(~vec4<u32>(17722u, 2575u, 20935u, arg_2)))), 1i);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(var_4.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1867f, var_4.a.a, -690f, -1030f)) * _wgslsmith_f_op_vec4_f32(floor(var_4.a.b))), !(!var_4.a.c)), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.b, -2147483647i), vec2<i32>(2147483647i, arg_3.x)), _wgslsmith_f_op_f32(var_2.a - -448f), vec4<u32>(func_4(~71922u, func_3(Struct_3(Struct_1(-1000f, vec4<f32>(914f, var_2.a, var_2.a, var_2.a), var_4.a.c), Struct_2(Struct_1(var_4.a.a, vec4<f32>(var_2.a, var_0.x, var_2.a, var_0.x), false), vec2<i32>(0i, u_input.a), -469f, var_4.d, -2147483647i), -852f), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, arg_2, 0u), vec3<u32>(1u, 14462u, 42947u))), 49528u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))), ~arg_2 << (~1u % 32u), var_1.x, ~min(~var_4.d.x, 0u)), _wgslsmith_div_i32(countOneBits(-1i), -_wgslsmith_clamp_i32(1i, 1i, firstTrailingBit(var_4.b.x))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = vec2<u32>(arg_1.b.d.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(arg_1.b.d, arg_1.b.d, false), vec4<u32>(arg_1.b.d.x, 22430u, arg_1.b.d.x, 76620u)), ~arg_1.b.d.x << (48235u % 32u)), arg_1.b.d.x));
    global1 = arg_1.b.c;
    global1 = arg_1.c;
    global1 = _wgslsmith_f_op_f32(-arg_1.b.a.a);
    global1 = 192f;
    return arg_1.b.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1574f))) + func_5(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 9941i, u_input.b, u_input.d.x << (arg_2.x % 32u)), ~u_input.c), Struct_3(func_5(~vec4<i32>(9293i, 2147483647i, u_input.b, -2147483647i), Struct_3(arg_0, Struct_2(arg_0, u_input.d.xy, -460f, vec4<u32>(1u, 12523u, arg_2.x, arg_2.x), -20277i), -695f), vec2<bool>(true, arg_0.c), all(vec3<bool>(true, arg_0.c, global0[_wgslsmith_index_u32(14523u, 12u)]))), Struct_2(arg_0, u_input.d.xz, 1142f, vec4<u32>(arg_2.x, 11066u, 1885u, 0u) << (vec4<u32>(9096u, arg_2.x, 28445u, 0u) % vec4<u32>(32u)), -22667i | u_input.b), arg_0.b.x), vec2<bool>(false, arg_0.c), true).b.x);
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(1312f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f + arg_1.x) - 157f)), func_2(arg_0.c, vec2<bool>(true, false), arg_2.x, u_input.c.ywz).a.b, all(vec4<bool>(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_2.x, 12u)])), !global0[_wgslsmith_index_u32(0u, 12u)], false, !arg_0.c))), 4294967295u);
    return Struct_5(func_2(!func_3(Struct_3(arg_0, Struct_2(Struct_1(297f, vec4<f32>(369f, arg_1.x, arg_1.x, arg_1.x), false), u_input.c.yw, 1000f, vec4<u32>(var_0.b, arg_2.x, 43352u, 40738u), -63062i), 1314f), max(vec3<u32>(arg_2.x, var_0.b, arg_2.x), vec3<u32>(32691u, 1u, var_0.b))), vec2<bool>(arg_0.c, global0[_wgslsmith_index_u32(firstLeadingBit(34327u), 12u)] & all(vec3<bool>(true, var_0.a.c, global0[_wgslsmith_index_u32(1u, 12u)]))), min(max(abs(70404u), _wgslsmith_mod_u32(var_0.b, arg_2.x)), ~arg_2.x), u_input.d.ywy).a, select(_wgslsmith_add_u32(reverseBits(~1u), var_0.b), ~arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]));
}

fn func_7(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(~arg_0.b, _wgslsmith_div_u32(~4294967295u, ~arg_0.b));
    global0 = array<bool, 12>();
    let var_1 = select(vec2<bool>(any(vec3<bool>(true, true, !global0[_wgslsmith_index_u32(0u, 12u)])), !(!arg_0.a.c)), vec2<bool>(all(!vec4<bool>(arg_2.c, true, false, false)), true), vec2<bool>(any(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(var_0, 12u)]), vec3<bool>(true, arg_2.c, arg_2.c), arg_2.c), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_0.a.c, arg_2.c), !vec3<bool>(false, false, arg_0.a.c))), any(select(vec4<bool>(false, arg_2.c, arg_2.c, true), select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(29872u, 12u)]), vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c), vec4<bool>(true, true, true, true)), arg_0.a.c))));
    global1 = -1278f;
    var var_2 = !any(vec2<bool>(var_1.x, true));
    return Struct_3(func_5(~(abs(u_input.c) & ~u_input.c), Struct_3(func_6(arg_0.a, vec4<f32>(-1000f, arg_0.a.a, -706f, arg_2.a), ~vec2<u32>(0u, 16206u)).a, func_2(func_5(u_input.c, Struct_3(Struct_1(-1427f, arg_2.b, true), Struct_2(arg_2, arg_1, -859f, vec4<u32>(22885u, var_0, var_0, 4294967295u), 6931i), arg_0.a.a), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_1.x), arg_2.c).c, var_1, 1u, -vec3<i32>(1i, u_input.c.x, 0i)), arg_2.b.x), var_1, arg_0.a.c), func_2(false, !var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_0, arg_0.b), 0u), vec2<u32>(~arg_0.b, 94473u)), -_wgslsmith_mult_vec3_i32(~u_input.d.zww, min(u_input.d.xxy, u_input.c.zwz))), _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(max(arg_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1308f)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = func_7(func_6(func_5(u_input.d, Struct_3(Struct_1(arg_0, vec4<f32>(arg_1.a, -2839f, arg_1.a, arg_0), global0[_wgslsmith_index_u32(37066u, 12u)]), func_2(false, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3.x, 12u)]), arg_3.x, u_input.d.zwx), -1000f), vec2<bool>(!global0[_wgslsmith_index_u32(arg_2, 12u)], arg_3.x > arg_2), global0[_wgslsmith_index_u32(~arg_2 | arg_3.x, 12u)]), vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f * arg_1.a) * -784f), 1000f, arg_1.a), ~vec2<u32>(1u, _wgslsmith_clamp_u32(1u, 4294967295u, 5450u))), vec2<i32>(-(~(-9254i)), ~2147483647i), func_5(u_input.c, Struct_3(Struct_1(_wgslsmith_f_op_f32(max(1148f, 743f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, -1172f, arg_1.a, -141f), vec4<f32>(-558f, arg_1.a, 2914f, -857f))), false), func_2(!global0[_wgslsmith_index_u32(arg_3.x, 12u)], !vec2<bool>(global0[_wgslsmith_index_u32(43016u, 12u)], false), _wgslsmith_mod_u32(0u, 19497u), u_input.d.wxz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -792f) + arg_1.a)), select(vec2<bool>(true, true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(52986u, 12u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(arg_2, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(22949u, 12u)], global0[_wgslsmith_index_u32(56623u, 12u)])), vec2<bool>(global0[_wgslsmith_index_u32(arg_3.x, 12u)], false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_3.x, 12u)], global0[_wgslsmith_index_u32(arg_2, 12u)]))), global0[_wgslsmith_index_u32(24498u, 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(select(arg_3, arg_3, vec2<bool>(false, false)), _wgslsmith_mod_vec2_u32(arg_3, vec2<u32>(arg_3.x, arg_3.x))), ~(~vec2<u32>(38434u, 1u))), 12u)]));
    let var_1 = !select(vec4<bool>(func_6(Struct_1(-137f, var_0.a.b, true), vec4<f32>(arg_1.a, arg_1.a, 1267f, var_0.c), var_0.b.d.ww).a.c, (var_0.b.d.x >= var_0.b.d.x) == true, global0[_wgslsmith_index_u32(~var_0.b.d.x, 12u)], false), vec4<bool>(func_5(vec4<i32>(1i, -2147483647i, -65987i, 11463i), func_7(Struct_5(Struct_1(-111f, var_0.b.a.b, global0[_wgslsmith_index_u32(arg_2, 12u)]), arg_2), u_input.d.yy, var_0.b.a), vec2<bool>(var_0.a.c, global0[_wgslsmith_index_u32(4294967295u, 12u)]), global0[_wgslsmith_index_u32(var_0.b.d.x, 12u)] | false).c, all(!vec4<bool>(true, false, false, var_0.b.a.c)), all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 12u)], true, false, var_0.b.a.c)), false), var_0.b.a.c);
    let var_2 = var_0.a;
    var var_3 = !vec3<bool>(!any(select(var_1, var_1, var_1)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.b.d.x, reverseBits(22384u)), ~var_0.b.d.x), 12u)], var_1.x);
    var_0 = Struct_3(func_7(Struct_5(Struct_1(-320f, vec4<f32>(arg_1.a, arg_1.a, 184f, 1835f), !var_2.c), ~arg_3.x), -vec2<i32>(var_0.b.e >> (arg_3.x % 32u), 22267i), Struct_1(_wgslsmith_f_op_f32(-var_0.a.b.x), vec4<f32>(1294f, _wgslsmith_f_op_f32(step(1357f, 575f)), -1108f, 514f), global0[_wgslsmith_index_u32(var_0.b.d.x, 12u)])).b.a, Struct_2(func_5(vec4<i32>(var_0.b.b.x, var_0.b.e, firstTrailingBit(var_0.b.b.x), var_0.b.e), func_7(func_6(var_0.b.a, var_0.b.a.b, var_0.b.d.yy), _wgslsmith_mod_vec2_i32(u_input.c.wx, u_input.d.zy), Struct_1(arg_1.a, var_0.a.b, var_3.x)), var_3.zx, func_3(func_7(Struct_5(Struct_1(arg_0, var_2.b, false), 4294967295u), u_input.c.ww, var_0.a), var_0.b.d.ywy | vec3<u32>(arg_3.x, arg_2, arg_2))), u_input.d.yy, 1000f, var_0.b.d >> (~(~vec4<u32>(var_0.b.d.x, var_0.b.d.x, 1u, arg_3.x)) % vec4<u32>(32u)), ~33755i), _wgslsmith_f_op_f32(-arg_0));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(486f))) - 635f) + 317f), Struct_4(1413f), _wgslsmith_mult_u32(countOneBits(74668u), ~4294967295u), ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(99383u, 1u, 1u)), ~vec3<u32>(76274u, 1u, 66555u)), ~32221u));
    let var_1 = select(vec4<bool>(false, all(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false, var_0.a.c, global0[_wgslsmith_index_u32(9985u, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 12u)], var_0.a.c, true, var_0.a.c), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(0u, 12u)], true))), false, global0[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(any(vec3<bool>(true, var_0.a.c, var_0.b.x > u_input.b)), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], var_0.a.c, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 12u)], false, var_0.a.c)))), global0[_wgslsmith_index_u32(var_0.d.x, 12u)], func_2(!var_0.a.c, !(!vec2<bool>(false, var_0.a.c)), _wgslsmith_sub_u32(func_7(Struct_5(Struct_1(1248f, var_0.a.b, true), var_0.d.x), vec2<i32>(-50914i, 11189i), var_0.a).b.d.x, _wgslsmith_mult_u32(1u, 4294967295u)), vec3<i32>(var_0.b.x, u_input.d.x, u_input.d.x) ^ reverseBits(vec3<i32>(u_input.d.x, var_0.e, u_input.d.x))).a.c), _wgslsmith_div_i32(~max(var_0.b.x, 2147483647i), u_input.d.x) >= -1i);
    let var_2 = var_0.a;
    global0 = array<bool, 12>();
    let var_3 = true;
    let var_4 = _wgslsmith_add_vec3_u32(select(vec3<u32>(~1u, var_0.d.x & 4294967295u, 26967u), ~var_0.d.wxw, true) & ~vec3<u32>(select(4294967295u, 46438u, true), _wgslsmith_dot_vec2_u32(var_0.d.xw, vec2<u32>(17908u, 14404u)), var_0.d.x), var_0.d.wzy);
    let var_5 = var_0.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~abs(u_input.b), min(var_0.b.x, var_0.b.x), i32(-1i) * -87874i, u_input.c.x), ~(~func_2(global0[_wgslsmith_index_u32(var_0.d.x, 12u)], var_1.zz, 0u, u_input.c.wwx).d.x ^ abs(_wgslsmith_dot_vec2_u32(var_0.d.xz, vec2<u32>(var_0.d.x, var_4.x)))), var_0.d.x, var_2.b.zw);
}

