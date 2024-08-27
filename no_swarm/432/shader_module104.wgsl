struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: f32 = 1223f;

var<private> global3: vec4<f32>;

var<private> global4: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-36154i, 11319i, -12057i), vec3<i32>(13407i, -1i, 22255i), vec3<i32>(2147483647i, 0i, -31130i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(29870i, -47461i, -6125i), vec3<i32>(0i, 8889i, 28586i), vec3<i32>(-19156i, -20313i, i32(-2147483648)), vec3<i32>(452i, 0i, 2147483647i), vec3<i32>(-1i, -12647i, 2147483647i), vec3<i32>(5578i, 13329i, -45142i), vec3<i32>(-1i, 0i, 35689i), vec3<i32>(0i, 1i, -35938i), vec3<i32>(-15485i, -1i, 22045i), vec3<i32>(1i, -1i, 0i), vec3<i32>(i32(-2147483648), -43268i, i32(-2147483648)), vec3<i32>(3199i, 1i, 2147483647i), vec3<i32>(-24374i, 21326i, i32(-2147483648)), vec3<i32>(5169i, -6581i, 16065i), vec3<i32>(i32(-2147483648), 53507i, 7753i), vec3<i32>(i32(-2147483648), -3405i, 41339i), vec3<i32>(-30384i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), -4724i, i32(-2147483648)), vec3<i32>(-1i, 0i, -8485i), vec3<i32>(3654i, -1i, 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x), u_input.a), vec4<i32>(3328i, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(36550u, 0u, 4294967295u, 5065u) % vec4<u32>(32u))), abs(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 29018i)))), ~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.a.x)), vec4<i32>(1i, u_input.a.x, -30917i, u_input.a.x))) > -17764i;
    return select(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), false, true), !vec4<bool>(any(vec2<bool>(true, true)), true, -287f == _wgslsmith_f_op_f32(-global3.x), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(628f, global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 365f) * _wgslsmith_f_op_f32(abs(-217f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global3.x) - global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -778f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.x, -2013f, global3.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1948f, -794f, 776f, global3.x), vec4<f32>(-1112f, global3.x, -440f, -1677f), vec4<bool>(arg_0.a.x, false, arg_0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -153f, global3.x, -360f) * vec4<f32>(1000f, global3.x, 456f, 522f)))))));
    var var_0 = arg_0;
    var var_1 = global3.yx;
    global1 = select(true, false, all(select(arg_0.a, func_3(), !vec4<bool>(false, arg_0.a.x, var_0.a.x, var_0.a.x)))) && func_3().x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(791f * -1000f), _wgslsmith_f_op_f32(-412f + var_1.x)))))));
    return Struct_1(!(!vec4<bool>(true, u_input.a.x <= var_0.b, !arg_0.a.x, false && var_0.c)), -firstTrailingBit(u_input.a.x) << (69307u % 32u), true);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<u32> {
    global2 = global3.x;
    var var_0 = func_2(arg_2, vec3<u32>(0u, ~(~(arg_1 >> (0u % 32u))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_1, arg_1)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 3488u), vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, arg_1)) << (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(global3.x * -742f), _wgslsmith_f_op_f32(max(-1085f, _wgslsmith_f_op_f32(global3.x - 2096f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1745f, global3.x, global3.x, 478f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, -906f, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, -582f, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)), !var_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1611f, global3.x, global3.x, -1444f)))))));
    let var_1 = vec3<bool>(true, func_2(arg_2, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), min(vec3<u32>(arg_1, 61035u, 0u), vec3<u32>(103116u, 37945u, arg_1)))).a.x, false);
    let var_2 = arg_1 <= arg_1;
    return vec3<u32>(1u ^ arg_1, 64870u, 24073u & (arg_1 << (1u % 32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-2147483647i, arg_2.b, arg_2.b, u_input.a.x)) ^ vec4<i32>(1i, arg_1.b, arg_2.b, ~13006i));
    var var_1 = ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 26442u >> (1u % 32u), 4294967295u), ~vec3<u32>(26744u, 4294967295u, 4435u)), func_4(func_2(Struct_1(arg_2.a, arg_2.b, false), vec3<u32>(1u, 1u, 1u)), ~(~15179u), func_2(arg_1, vec3<u32>(0u, 4294967295u, 42954u)), vec2<bool>(true, arg_0)));
    var var_2 = vec3<u32>(113012u, _wgslsmith_mod_u32(~(~(~0u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 54347u, 78977u), vec3<u32>(57711u, 0u, 30607u)), vec3<u32>(1u, 1u, 1u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(16181u, 0u, 47398u), vec3<u32>(0u, 64137u, 21212u)) ^ max(~0u, _wgslsmith_add_u32(35267u, 21085u))));
    let var_3 = select(vec2<bool>(arg_0, any(arg_1.a)), vec2<bool>(true, arg_0), !select(vec2<bool>(arg_2.c, arg_0), !func_2(arg_2, vec3<u32>(var_2.x, var_2.x, var_2.x)).a.zy, (var_2.x != 0u) & (global3.x <= 963f)));
    let var_4 = Struct_1(vec4<bool>(~1i >= var_0.x, all(vec2<bool>(arg_1.c, false)), all(arg_1.a.zw), true), var_0.x, false);
    return func_2(Struct_1(var_4.a, arg_1.b, false), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, firstLeadingBit(0u), 64605u), reverseBits(vec3<u32>(0u, 50032u, 16931u))) & vec3<u32>(~(~var_2.x), var_2.x, _wgslsmith_add_u32(var_2.x | 4294967295u, var_2.x)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = func_2(Struct_1(!arg_2.a, 55001i, select(arg_2.c, arg_0, true)), ~(~(~vec3<u32>(26151u, arg_1, arg_1)) >> (~countOneBits(vec3<u32>(105028u, 4294967295u, arg_1)) % vec3<u32>(32u)))).a.x;
    let var_0 = ~func_4(Struct_1(vec4<bool>(u_input.a.x < 2147483647i, arg_0, all(arg_2.a), global3.x >= global3.x), u_input.a.x, true), arg_3, arg_2, !select(arg_2.a.zw, func_3().wy, arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(643f, global3.x, 1179f, global3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-880f - global3.x), -483f, _wgslsmith_f_op_f32(1146f + global3.x), _wgslsmith_f_op_f32(step(global3.x, global3.x)))) - vec4<f32>(-1560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1106f, global3.x, true)) + global3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(-473f * -398f))));
    let var_2 = Struct_1(arg_2.a, u_input.a.x, all(!arg_2.a.zx));
    let var_3 = Struct_1(var_2.a, var_2.b, ~_wgslsmith_dot_vec2_i32(~u_input.a.wx, u_input.a.xw) >= 29506i);
    return _wgslsmith_add_u32(0u, 1u);
}

fn func_6(arg_0: u32, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = select(func_3().zy, func_1(_wgslsmith_mod_u32(arg_0, _wgslsmith_div_u32(arg_0, arg_0)) < arg_0, func_1(true, Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), select(u_input.a.x, u_input.a.x, false), true), func_2(func_1(false, Struct_1(vec4<bool>(false, false, true, false), arg_1.x, true), Struct_1(vec4<bool>(true, false, true, false), -2147483647i, false), global3.x), ~vec3<u32>(arg_0, 34148u, 4294967295u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_div_f32(global3.x, global3.x), true))), Struct_1(func_2(func_2(Struct_1(vec4<bool>(true, true, false, false), 15416i, false), vec3<u32>(23418u, arg_0, arg_0)), vec3<u32>(arg_0, 1u, 0u)).a, (-17855i | u_input.a.x) << ((arg_0 ^ 0u) % 32u), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + global3.x)).a.xy, func_3().x | true);
    var var_1 = vec4<bool>(any(!vec2<bool>(var_0.x, true)), true, var_0.x, ((1i & _wgslsmith_sub_i32(10807i, arg_1.x)) < -1i) | !var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), _wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 1419f), vec2<f32>(234f, 572f))), vec2<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), global3.x), any(func_1(true, Struct_1(vec4<bool>(false, var_0.x, var_1.x, var_1.x), -1i, var_1.x), Struct_1(vec4<bool>(var_1.x, var_1.x, false, var_0.x), -11634i, true), global3.x).a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.wx)), vec2<f32>(414f, global3.x))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 720f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zy))))));
    let var_3 = func_1(!(!func_3().x), func_2(Struct_1(func_3(), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 25565i), vec4<i32>(u_input.a.x, 24504i, arg_1.x, 2003i))), false || any(var_1.zz)), vec3<u32>(_wgslsmith_sub_u32(~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(39948u, arg_0, 0u, 4294967295u), vec4<u32>(4294967295u, arg_0, 37403u, arg_0))), _wgslsmith_div_u32(0u, func_5(var_0.x, arg_0, Struct_1(vec4<bool>(var_1.x, var_1.x, var_0.x, false), -1i, var_0.x), arg_0)), ~arg_0 << (~arg_0 % 32u))), func_2(func_1(-4511i > -arg_1.x, func_2(func_2(Struct_1(vec4<bool>(false, false, var_0.x, false), arg_1.x, false), vec3<u32>(arg_0, 21647u, 0u)), min(vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(arg_0, 1846u, 30637u))), func_1(!var_0.x, func_2(Struct_1(vec4<bool>(true, true, var_1.x, var_1.x), u_input.a.x, var_1.x), vec3<u32>(86360u, 0u, arg_0)), Struct_1(vec4<bool>(var_0.x, false, true, true), u_input.a.x, false), var_2.x), global3.x), ~(~(~vec3<u32>(73337u, 4294967295u, arg_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + _wgslsmith_f_op_f32(step(-455f, global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f * global3.x))))));
    global1 = true;
    return vec2<u32>(((~arg_0 ^ arg_0) & 0u) ^ _wgslsmith_mod_u32(func_4(Struct_1(var_3.a, 0i, var_1.x), arg_0, Struct_1(var_3.a, 0i, var_1.x), vec2<bool>(var_1.x, var_1.x)).x, arg_0), arg_0 | ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(~60883u, 1u) & func_6(func_5(true, 1u, func_1(false, Struct_1(vec4<bool>(false, false, true, false), u_input.a.x, false), Struct_1(vec4<bool>(true, true, true, true), 19065i, false), global3.x), ~18803u), vec4<i32>(-40112i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 0i, 23066i >> (1u % 32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.yz * vec2<f32>(872f, global3.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(-global3.x)))) + global3.xz);
    var var_2 = min(vec2<u32>(19136u ^ var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u));
    var var_3 = func_1(!any(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(-24768i, 2105i)), var_0.x == 0u), func_2(Struct_1(vec4<bool>(true, true, true, true), -51810i, true), ~(~(~vec3<u32>(var_0.x, 1u, var_0.x)))), -847f);
    var var_4 = Struct_1(vec4<bool>(var_3.c, any(func_1(var_3.c, func_1(var_3.c, Struct_1(vec4<bool>(var_3.a.x, var_3.c, var_3.a.x, true), 1i, true), Struct_1(vec4<bool>(true, false, var_3.c, true), -3732i, false), var_1.x), func_2(Struct_1(vec4<bool>(var_3.c, false, var_3.c, false), 2147483647i, false), vec3<u32>(50310u, 69201u, 27033u)), _wgslsmith_f_op_f32(select(801f, 576f, var_3.c))).a.wxx), var_3.a.x, _wgslsmith_div_f32(var_1.x, var_1.x) >= global3.x), ~(-2147483647i << (var_0.x % 32u)), var_3.c);
    var var_5 = Struct_1(vec4<bool>(any(var_4.a) || (func_2(Struct_1(vec4<bool>(true, var_4.a.x, false, true), var_3.b, false), vec3<u32>(var_2.x, var_2.x, var_2.x)).c && false), var_3.c, true, true), 36457i, !(!(-13530i >= ~u_input.a.x)));
    let var_6 = _wgslsmith_mult_u32(~55696u, max(_wgslsmith_div_u32(var_2.x, 46905u), max(var_2.x ^ var_2.x, ~_wgslsmith_mod_u32(23145u, var_0.x))));
    let var_7 = vec3<u32>(min(~abs(_wgslsmith_sub_u32(4294967295u, var_6)), ~(59684u ^ ~var_6)), func_6(_wgslsmith_add_u32(~var_0.x >> (max(var_6, var_0.x) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(85894u, 0u, var_2.x), vec3<u32>(var_2.x, 0u, 1u)), ~vec3<u32>(99024u, 0u, 4294967295u))), -(~(-u_input.a))).x, var_2.x);
    let var_8 = Struct_1(vec4<bool>(!((var_7.x <= var_0.x) || any(vec4<bool>(false, var_5.a.x, var_3.c, var_4.a.x))), true, var_5.c, !var_5.a.x), max(~max(var_3.b, -2209i), ~_wgslsmith_sub_i32(1i, countOneBits(6397i))), !var_5.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(7670u);
}

