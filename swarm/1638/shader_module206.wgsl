struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(arg_0))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(914f, _wgslsmith_f_op_f32(floor(var_0)))), -682f, _wgslsmith_f_op_f32(abs(264f)), _wgslsmith_div_f32(arg_0, -574f));
    var var_2 = Struct_3(Struct_2(!global0.a, !select(vec4<bool>(true, global0.a, false, true), global0.b, global0.b), ~_wgslsmith_clamp_u32(31082u, global1.c, u_input.a.x)), Struct_1(firstLeadingBit(reverseBits(vec4<u32>(48108u, u_input.c, arg_3.a.x, arg_3.a.x)))), Struct_1(u_input.a));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-(~0i), u_input.b), -21362i, firstTrailingBit(arg_1.x)), ~(~select(select(vec3<i32>(u_input.b, 28689i, u_input.b), vec3<i32>(25604i, u_input.b, -1i), vec3<bool>(false, true, global0.b.x)), abs(vec3<i32>(-18901i, -2147483647i, u_input.b)), select(global0.b.zyz, global1.b.yxz, var_2.a.a))));
    let var_4 = Struct_1(~max(_wgslsmith_add_vec4_u32(vec4<u32>(43347u, 1u, global1.c, arg_3.a.x), vec4<u32>(0u, 0u, 0u, var_2.b.a.x)) << (vec4<u32>(arg_3.a.x, global1.c, 4294967295u, 9477u) % vec4<u32>(32u)), max(min(arg_3.a, vec4<u32>(28490u, global0.c, 23433u, 76975u)), ~vec4<u32>(17175u, 1u, arg_3.a.x, arg_3.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_3(Struct_2(global0.a, vec4<bool>(global0.a, true, arg_0.x, arg_1.a), _wgslsmith_div_u32(~12584u, ~(~u_input.d.x))), Struct_1(min(vec4<u32>(_wgslsmith_div_u32(4294967295u, 12031u), _wgslsmith_clamp_u32(global0.c, u_input.a.x, 60008u), ~global1.c, global0.c & global1.c), ~vec4<u32>(69577u, 43875u, 25026u, 65199u))), arg_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-1598f, vec2<i32>(arg_3.x, 1i) >> (vec2<u32>(global0.c, 20245u) % vec2<u32>(32u)), !arg_1.b.x, Struct_1(var_0.b.a))), 1f), -577f)) - 2120f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = 34276u;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, arg_2, -1856f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_div_f32(arg_1.x, 1130f))) - _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(floor(arg_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, arg_2, -266f))) * _wgslsmith_f_op_vec4_f32(step(arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_2), -617f, _wgslsmith_f_op_f32(arg_1.x - -788f), -2190f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, 2219f, arg_2, arg_1.x))))));
    global1 = arg_3.a;
    global0 = arg_0;
    global0 = Struct_2(any(vec2<bool>(select(!global0.b.x, !arg_3.a.a, !arg_3.a.a), any(vec4<bool>(global1.b.x, global0.b.x, global1.a, false)))), !select(vec4<bool>(global0.b.x != global0.b.x, false, !global1.a, true), arg_0.b, select(!arg_0.b, select(vec4<bool>(false, false, true, arg_3.a.b.x), vec4<bool>(arg_3.a.b.x, global1.a, false, false), false), -1333f > arg_1.x)), ~(~(~u_input.a.x) | ~reverseBits(var_0)));
    return arg_3.a;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> u32 {
    global1 = arg_0.a;
    let var_0 = vec2<i32>(~u_input.b, u_input.b);
    global0 = func_4(Struct_2((_wgslsmith_f_op_f32(select(-917f, 302f, true)) <= _wgslsmith_f_op_f32(func_2(vec2<bool>(global1.a, arg_1), arg_0.a, Struct_1(u_input.a), vec3<i32>(-2147483647i, -1i, 53318i)))) && any(global0.b.xxw), !global1.b, ~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 0u), u_input.c)), vec4<f32>(459f, -913f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(429f, 2313f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(trunc(107f))), all(select(global1.b, vec4<bool>(global1.b.x, true, false, arg_0.a.a), vec4<bool>(true, global1.b.x, false, false))))), _wgslsmith_f_op_f32(-1733f + 670f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f - -404f) * _wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(2424f - _wgslsmith_div_f32(1000f, -1612f)))), Struct_3(arg_0.a, arg_0.b, arg_0.c));
    var var_1 = ~arg_0.b.a.wyx;
    var var_2 = Struct_2(true, global0.b, ~global0.c);
    return _wgslsmith_mod_u32(~var_2.c, _wgslsmith_mult_u32(~countOneBits(20797u) >> (~var_1.x % 32u), 26894u));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    global0 = Struct_2(false, !global0.b, _wgslsmith_mod_u32(~countOneBits(34325u), global0.c));
    let var_0 = Struct_1(vec4<u32>(func_4(Struct_2(true, vec4<bool>(true, global1.a, global1.b.x, global0.a), countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(arg_2)))), arg_2.x, Struct_3(func_4(Struct_2(global0.b.x, vec4<bool>(global0.b.x, global0.b.x, true, true), 94110u), arg_2, arg_2.x, Struct_3(Struct_2(true, vec4<bool>(global0.b.x, global1.b.x, global1.b.x, true), u_input.a.x), arg_1, Struct_1(vec4<u32>(83437u, 86501u, global0.c, global1.c)))), arg_1, Struct_1(vec4<u32>(arg_1.a.x, u_input.c, arg_1.a.x, u_input.a.x)))).c, 1u, func_1(Struct_3(Struct_2(false, global1.b, 0u), Struct_1(u_input.a), Struct_1(vec4<u32>(0u, global1.c, global0.c, global1.c))), any(select(vec2<bool>(true, false), global1.b.yy, false)), 34069i == -arg_0), ~global0.c));
    global1 = func_4(func_4(Struct_2(true, !global1.b, ~(~83362u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * -1771f), -1033f, -927f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - arg_2.x)))), Struct_3(func_4(func_4(Struct_2(false, vec4<bool>(global1.a, false, false, global1.a), u_input.a.x), vec4<f32>(592f, 615f, -441f, arg_2.x), arg_2.x, Struct_3(Struct_2(true, vec4<bool>(global0.b.x, true, global1.b.x, false), global1.c), var_0, Struct_1(vec4<u32>(1u, 26457u, 4294967295u, 0u)))), _wgslsmith_f_op_vec4_f32(max(arg_2, arg_2)), -1486f, Struct_3(Struct_2(global1.a, vec4<bool>(true, false, global1.a, true), 0u), arg_1, Struct_1(var_0.a))), Struct_1(vec4<u32>(15596u, var_0.a.x, global0.c, 1u)), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1127f, -1211f, arg_2.x, arg_2.x), arg_2)), arg_2, true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, -389f, arg_2.x, arg_2.x)))), _wgslsmith_div_f32(327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2585f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x))), Struct_3(Struct_2(any(!global0.b.yxz), global0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 50282u), vec2<u32>(var_0.a.x, var_0.a.x)), select(u_input.d.xz, vec2<u32>(38711u, var_0.a.x), vec2<bool>(true, global1.a)))), Struct_1(u_input.a), Struct_1(max(~arg_1.a, min(vec4<u32>(6098u, 4294967295u, arg_1.a.x, 4294967295u), vec4<u32>(1u, 4294967295u, 49137u, 1u))))));
    global0 = func_4(Struct_2(any(vec4<bool>(!global0.b.x, false, any(vec3<bool>(false, global1.a, global0.b.x)), arg_2.x >= -1471f)), !global1.b, 57293u), _wgslsmith_f_op_vec4_f32(max(arg_2, arg_2)), arg_2.x, Struct_3(func_4(Struct_2(false, !global1.b, 4294967295u), _wgslsmith_f_op_vec4_f32(ceil(arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, 574f))), Struct_3(func_4(Struct_2(global0.a, vec4<bool>(global0.a, global1.b.x, true, true), 40059u), arg_2, 204f, Struct_3(Struct_2(true, vec4<bool>(true, global1.a, false, true), 1u), Struct_1(var_0.a), var_0)), arg_1, Struct_1(vec4<u32>(arg_1.a.x, 50042u, 56369u, 0u)))), Struct_1(~(vec4<u32>(arg_1.a.x, global0.c, arg_1.a.x, 1u) ^ vec4<u32>(u_input.a.x, global0.c, var_0.a.x, 1509u))), Struct_1(vec4<u32>(10491u, countOneBits(1u), global1.c, 7140u))));
    global1 = func_4(Struct_2(true & any(vec2<bool>(false, global1.a)), global1.b, func_1(Struct_3(func_4(Struct_2(true, global1.b, u_input.c), arg_2, 992f, Struct_3(Struct_2(global1.b.x, global0.b, u_input.c), arg_1, Struct_1(vec4<u32>(global1.c, u_input.a.x, 32933u, global1.c)))), arg_1, Struct_1(vec4<u32>(global1.c, 55176u, 14070u, global1.c))), global0.a, -arg_0 <= ~arg_0)), _wgslsmith_div_vec4_f32(arg_2, _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 174f, -788f) + vec4<f32>(arg_2.x, 360f, arg_2.x, 1820f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<f32>(490f, arg_2.x, arg_2.x, arg_2.x)))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)))), Struct_3(func_4(Struct_2(false, select(global1.b, vec4<bool>(global1.b.x, false, global1.b.x, false), global0.b), var_0.a.x), _wgslsmith_div_vec4_f32(arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1527f, arg_2.x, arg_2.x, -115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) + _wgslsmith_f_op_f32(1977f + arg_2.x)), Struct_3(Struct_2(global1.b.x, global1.b, u_input.c), Struct_1(arg_1.a), arg_1)), var_0, Struct_1(arg_1.a)));
    return Struct_2(true, vec4<bool>(arg_0 <= (i32(-1i) * -20036i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) < _wgslsmith_f_op_f32(arg_2.x - arg_2.x), global1.b.x, any(global1.b.yy)), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(countOneBits(u_input.b), Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(min(global0.c, global1.c), ~0u, reverseBits(34757u), func_1(Struct_3(Struct_2(false, global0.b, 0u), Struct_1(vec4<u32>(36659u, 26242u, 28538u, 6454u)), Struct_1(vec4<u32>(0u, global1.c, u_input.d.x, 25335u))), global0.b.x, global1.b.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1070f)), 1024f, -312f, _wgslsmith_f_op_f32(f32(-1f) * -1051f))), vec4<f32>(1f, 1f, 1f, 1f))));
    global0 = func_5(reverseBits(-15350i), Struct_1(_wgslsmith_mult_vec4_u32(u_input.a, ~(~u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(457f, 995f, -1850f, 156f), vec4<f32>(1000f, 1283f, -371f, -1006f)), vec4<f32>(1f, 1f, 1f, 1f), global0.a)), vec4<f32>(-1011f, _wgslsmith_f_op_f32(1536f - -636f), _wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(sign(127f))))));
    global0 = Struct_2(~u_input.b == -58927i, global1.b, max(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yw), u_input.a.x), func_1(Struct_3(Struct_2(true, global1.b, global1.c), Struct_1(u_input.a), Struct_1(u_input.a)), global0.b.x, false)));
    global1 = func_4(Struct_2(func_5(0i, Struct_1(vec4<u32>(54541u, 1u, 4294967295u, u_input.a.x) & vec4<u32>(4294967295u, global0.c, 57942u, 70956u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2062f, 1200f, 410f, -648f), vec4<f32>(1000f, -614f, 1000f, 798f)))).a, global0.b, u_input.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -648f), 1000f, -646f, _wgslsmith_f_op_f32(ceil(-2191f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1652f, -673f, 1757f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2721f, -867f, -1226f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1376f, -790f, 1259f, -513f), vec4<f32>(-570f, 1000f, 842f, 866f)))))), all(!vec2<bool>(global1.b.x, global0.b.x)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f * -903f)))), Struct_3(func_4(func_4(func_4(Struct_2(true, vec4<bool>(true, global0.b.x, global0.b.x, false), global1.c), vec4<f32>(1000f, 513f, 1084f, 1666f), 746f, Struct_3(Struct_2(true, global0.b, global1.c), Struct_1(vec4<u32>(global1.c, 57683u, 0u, u_input.d.x)), Struct_1(u_input.a))), vec4<f32>(-1462f, 166f, 1266f, -567f), _wgslsmith_f_op_f32(-267f * 190f), Struct_3(Struct_2(true, global0.b, 44306u), Struct_1(vec4<u32>(0u, 4294967295u, u_input.d.x, global0.c)), Struct_1(vec4<u32>(24573u, 4294967295u, global0.c, 1u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, 389f, 1000f, 1000f)), -1845f, Struct_3(func_5(0i, Struct_1(vec4<u32>(global1.c, global1.c, global0.c, global0.c)), vec4<f32>(-1084f, -986f, -104f, 1116f)), Struct_1(u_input.a), Struct_1(vec4<u32>(4294967295u, global0.c, global1.c, global1.c)))), Struct_1(u_input.a), Struct_1((vec4<u32>(global0.c, global0.c, 29433u, 0u) ^ u_input.a) >> (vec4<u32>(global0.c, global0.c, u_input.c, u_input.d.x) % vec4<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-822f)), _wgslsmith_f_op_f32(714f + 471f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1735f + 859f), _wgslsmith_f_op_f32(max(-2349f, -484f)))), 787f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(247f - 1822f), 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1551f * 1000f))), -757f))), _wgslsmith_f_op_f32(-251f + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_2(!global1.b.xx, func_4(Struct_2(global1.a, vec4<bool>(false, false, false, global1.b.x), 1u), vec4<f32>(1000f, -736f, -1834f, 354f), -630f, Struct_3(Struct_2(global1.b.x, global1.b, 39025u), Struct_1(u_input.a), Struct_1(u_input.a))), Struct_1(u_input.a), ~vec3<i32>(u_input.b, -4152i, u_input.b))))), u_input.a);
}

