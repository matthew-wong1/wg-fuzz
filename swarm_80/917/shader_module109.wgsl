struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(-129f, vec4<bool>(true, true, true, false)), vec2<u32>(24751u, 1u), true, Struct_1(1000f, vec4<bool>(true, true, false, false)), Struct_1(451f, vec4<bool>(true, true, true, true)));

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(global1.b.x, _wgslsmith_mod_u32(u_input.b, global1.b.x));
    global0 = _wgslsmith_f_op_f32(-891f + 1269f);
    var_0 = abs(firstTrailingBit(abs(_wgslsmith_mod_u32(66543u, 33431u)) & _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(global1.b.x, 19240u), abs(global1.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, _wgslsmith_f_op_f32(global1.d.a * _wgslsmith_f_op_f32(global1.e.a * global1.a.a)), -1056f));
    let var_2 = Struct_3(global1.a.a, global1.d, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, -16584i))), vec2<i32>(u_input.c ^ u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c))), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 7126i), vec2<i32>(u_input.c, -37202i)), -max(vec2<i32>(-18697i, u_input.c), vec2<i32>(55035i, 2147483647i))), max(-(vec2<i32>(1i, 7407i) >> (global1.b % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(u_input.c, 26408i) << (global1.b % vec2<u32>(32u))))), all(!(!vec3<bool>(global1.c, global1.a.b.x, false))), u_input.c);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.yx))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = global1.e.a;
    global2 = array<vec4<f32>, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_2 = false;
    var var_3 = arg_0.zw;
    return Struct_2(global1.a, ~(~abs(~vec2<u32>(u_input.b, u_input.b))), global1.a.b.x, global1.e, global1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_2(~select(vec4<u32>(~global1.b.x, 43650u, ~arg_1.b.x, 1u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(49272u, global1.b.x, arg_1.b.x, arg_2.b.x)), vec4<u32>(arg_2.b.x, 0u, arg_2.b.x, global1.b.x) ^ vec4<u32>(27963u, global1.b.x, u_input.d, 16695u)), arg_2.e.b)).a;
    global1 = arg_1;
    var var_1 = Struct_1(-245f, arg_3.b.b);
    let var_2 = Struct_4(func_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.b.x, 85799u, 4294967295u, global1.b.x)), firstTrailingBit(~vec4<u32>(arg_1.b.x, 52644u, global1.b.x, 0u)))), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_3.b.a), -139f)), arg_0, arg_3.b.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1455f, 966f, arg_3.b.a, 795f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.a, arg_1.e.a, -883f, 118f), global2[_wgslsmith_index_u32(arg_1.b.x, 32u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, global1.e.a, var_1.a, var_1.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.e.a, _wgslsmith_f_op_f32(-global1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * arg_0)), _wgslsmith_div_f32(_wgslsmith_div_f32(766f, -296f), arg_1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1611f))));
    var_0 = arg_2.d;
    return global1.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global1 = Struct_2(Struct_1(-429f, select(vec4<bool>(!global1.c, arg_0.b.x, global1.e.b.x & arg_0.b.x, true), select(arg_0.b, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), true), !global1.d.b.x)), vec2<u32>(global1.b.x, ~(~_wgslsmith_div_u32(u_input.a, global1.b.x))), arg_0.b.x, global1.e, Struct_1(func_4(global1.a.a, func_2(~vec4<u32>(global1.b.x, 1u, 4294967295u, global1.b.x)), Struct_2(func_4(-193f, Struct_2(global1.a, global1.b, true, Struct_1(-1000f, vec4<bool>(arg_0.b.x, arg_0.b.x, true, global1.d.b.x)), global1.e), Struct_2(Struct_1(-308f, vec4<bool>(global1.c, false, arg_0.b.x, false)), global1.b, global1.a.b.x, Struct_1(1000f, arg_0.b), Struct_1(arg_0.a, vec4<bool>(arg_0.b.x, false, false, false))), Struct_3(global1.a.a, global1.d, arg_1.xy, true, u_input.c)), global1.b & global1.b, true, Struct_1(global1.a.a, global1.a.b), func_2(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)).d), Struct_3(_wgslsmith_f_op_f32(-1422f + 372f), Struct_1(global1.e.a, vec4<bool>(false, true, false, true)), -vec2<i32>(u_input.c, -18216i), arg_0.b.x, ~2147483647i)).a, arg_0.b));
    var var_0 = Struct_2(func_2(vec4<u32>(10666u ^ global1.b.x, u_input.d | u_input.a, u_input.d, u_input.a)).a, countOneBits(abs(max(~vec2<u32>(4294967295u, global1.b.x), select(vec2<u32>(global1.b.x, 7123u), global1.b, global1.a.b.xy)))), arg_0.b.x, Struct_1(func_4(global1.d.a, func_2(vec4<u32>(0u, global1.b.x, u_input.a, 4294967295u) >> (vec4<u32>(0u, 4790u, global1.b.x, u_input.b) % vec4<u32>(32u))), Struct_2(arg_0, vec2<u32>(0u, global1.b.x) >> (global1.b % vec2<u32>(32u)), arg_0.a <= -308f, func_2(vec4<u32>(34253u, global1.b.x, u_input.d, global1.b.x)).a, func_4(1000f, Struct_2(Struct_1(-1176f, vec4<bool>(arg_0.b.x, arg_0.b.x, false, global1.a.b.x)), global1.b, global1.d.b.x, Struct_1(global1.a.a, vec4<bool>(true, global1.a.b.x, true, false)), arg_0), Struct_2(arg_0, vec2<u32>(77089u, 1u), global1.e.b.x, global1.d, Struct_1(-486f, arg_0.b)), Struct_3(-1474f, Struct_1(946f, arg_0.b), arg_1.xy, global1.a.b.x, -9550i))), Struct_3(_wgslsmith_f_op_f32(-arg_0.a), arg_0, firstTrailingBit(vec2<i32>(0i, 0i)), 1u <= u_input.a, -39267i)).a, arg_0.b), global1.a);
    global2 = array<vec4<f32>, 32>();
    var_0 = Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(1387f * _wgslsmith_f_op_f32(var_0.e.a * var_0.e.a))), func_2(reverseBits(select(vec4<u32>(var_0.b.x, global1.b.x, var_0.b.x, 35734u), vec4<u32>(1u, 0u, 4294967295u, 110435u), global1.d.b.x))), func_2(vec4<u32>(abs(0u), _wgslsmith_mod_u32(global1.b.x, u_input.a), _wgslsmith_add_u32(0u, global1.b.x), _wgslsmith_mod_u32(29032u, u_input.b))), Struct_3(_wgslsmith_f_op_f32(step(arg_0.a, -814f)), global1.e, arg_1.zz, true, -(~(-18711i)))), global1.b >> (countOneBits(var_0.b) % vec2<u32>(32u)), !((max(u_input.c, -344i) < firstTrailingBit(-1i)) || arg_0.b.x), var_0.d, arg_0);
    var var_1 = arg_1.x;
    return func_2(~vec4<u32>(1u, var_0.b.x, _wgslsmith_mod_u32(firstLeadingBit(0u), var_0.b.x), _wgslsmith_clamp_u32(global1.b.x, ~u_input.b, _wgslsmith_mod_u32(0u, global1.b.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: i32) -> vec4<f32> {
    global1 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-190f)) - _wgslsmith_f_op_f32(global1.e.a + arg_1.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 886f) * -278f)), func_2(abs(vec4<u32>(u_input.b, u_input.b, global1.b.x, global1.b.x)) << (max(vec4<u32>(64296u, global1.b.x, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 4294967295u, global1.b.x)) % vec4<u32>(32u))), func_2(~(vec4<u32>(16002u, 18671u, 5054u, u_input.b) & vec4<u32>(u_input.b, global1.b.x, global1.b.x, 0u))), Struct_3(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(408f + -1061f)), global1.e, firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_1.e), arg_1.c, arg_1.c)), true, i32(-1i) * -2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(19131i, ~(-59995i), countOneBits(arg_1.c.x)), abs(u_input.c | arg_1.e), _wgslsmith_div_i32(-1i, arg_3)) & -vec3<i32>(i32(-1i) * -5929i, arg_3 >> (u_input.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-59909i, 1i, arg_3), vec3<i32>(arg_3, -2147483647i, 2147483647i))));
    global1 = func_5(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(426f + arg_1.b.a))), !func_5(func_4(arg_1.b.a, Struct_2(arg_1.b, global1.b, true, Struct_1(global1.d.a, vec4<bool>(false, false, true, global1.d.b.x)), Struct_1(arg_2.x, arg_1.b.b)), Struct_2(arg_1.b, vec2<u32>(u_input.d, u_input.b), true, arg_1.b, Struct_1(arg_2.x, vec4<bool>(arg_1.d, true, arg_1.b.b.x, false))), Struct_3(1214f, Struct_1(-1052f, vec4<bool>(true, arg_1.d, arg_0.x, false)), vec2<i32>(0i, arg_3), arg_0.x, 18472i)), -vec3<i32>(-1i, arg_1.e, u_input.c)).a.b), min(-(~vec3<i32>(40810i, u_input.c, -1i) >> (~vec3<u32>(0u, u_input.d, 1u) % vec3<u32>(32u))), vec3<i32>(~77528i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, 23644i, arg_1.c.x, arg_1.e), vec4<i32>(u_input.c, arg_3, -33122i, u_input.c)), -vec4<i32>(arg_3, u_input.c, arg_3, arg_1.e)), 1i)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0));
    var var_2 = arg_1.b.b.wyz;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global1.e.a, 290f)), _wgslsmith_f_op_f32(trunc(-498f)), _wgslsmith_f_op_f32(global1.d.a - -331f), _wgslsmith_f_op_f32(-var_0))))));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1564f), vec4<bool>(!(!func_2(vec4<u32>(u_input.d, 27404u, 0u, 0u)).d.b.x), all(!vec3<bool>(false, true, arg_0.x)), (global1.b.x << (u_input.a % 32u)) >= ~u_input.d, false));
    global0 = -1000f;
    var var_1 = -1i;
    let var_2 = ~(~((~vec3<u32>(64302u, global1.b.x, 4294967295u) | vec3<u32>(global1.b.x, global1.b.x, 1u)) & vec3<u32>(~4294967295u, u_input.d << (u_input.d % 32u), u_input.b)));
    let var_3 = var_2;
    return func_5(global1.d, -vec3<i32>(countOneBits(u_input.c & -1i), abs(_wgslsmith_mod_i32(arg_2.x, -2147483647i)), reverseBits(~(-14417i)))).e.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2090u & firstTrailingBit(_wgslsmith_div_u32(firstTrailingBit(global1.b.x), ~max(u_input.a, 0u)));
    var_0 = min(global1.b.x, ~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(34189u, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, global1.b.x, 0u, 22526u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.a + -187f) + _wgslsmith_f_op_f32(floor(global1.e.a))) - _wgslsmith_f_op_f32(sign(1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f) * global1.a.a))), !func_6(global1.e.b, _wgslsmith_f_op_vec4_f32(func_1(!global1.d.b, Struct_3(global1.a.a, Struct_1(global1.e.a, global1.d.b), vec2<i32>(-65377i, u_input.c), true, -7839i), vec2<f32>(-1201f, -584f), _wgslsmith_dot_vec2_i32(vec2<i32>(-41164i, -1i), vec2<i32>(u_input.c, u_input.c)))), vec2<i32>(-18327i, u_input.c), vec2<bool>(false, global1.c | global1.e.b.x)));
    let var_2 = Struct_3(var_1.a, func_4(_wgslsmith_f_op_vec4_f32(func_1(func_2(vec4<u32>(u_input.a, 1u, global1.b.x, global1.b.x) << (vec4<u32>(u_input.a, 4294967295u, 4294967295u, global1.b.x) % vec4<u32>(32u))).a.b, Struct_3(_wgslsmith_div_f32(var_1.a, global1.d.a), global1.a, vec2<i32>(8136i, 14363i) >> (global1.b % vec2<u32>(32u)), 4294967295u == u_input.d, ~(-2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global1.a.a)), vec2<f32>(var_1.a, global1.d.a)), min(u_input.c, 1i))).x, func_5(Struct_1(_wgslsmith_f_op_f32(-var_1.a), var_1.b), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -78070i), vec2<i32>(u_input.c, u_input.c)), 3277i)), func_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 5305u, global1.b.x, u_input.b), vec4<u32>(global1.b.x, 9363u, u_input.d, global1.b.x))), Struct_3(2457f, func_4(_wgslsmith_div_f32(var_1.a, 1456f), Struct_2(global1.e, vec2<u32>(global1.b.x, 4294967295u), global1.e.b.x, Struct_1(1329f, var_1.b), global1.a), Struct_2(global1.e, vec2<u32>(u_input.d, global1.b.x), true, global1.a, global1.e), Struct_3(var_1.a, global1.a, vec2<i32>(0i, u_input.c), false, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c) ^ vec2<i32>(u_input.c, 24391i), vec2<i32>(u_input.c, -5443i) >> (global1.b % vec2<u32>(32u))), !(!global1.e.b.x), u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(44287i, 1i, -22930i), vec3<i32>(u_input.c, -24953i, u_input.c))) >> (~vec2<u32>(72843u, u_input.d) % vec2<u32>(32u)), select(~(-vec2<i32>(1097i, -2147483647i)), ~(-vec2<i32>(u_input.c, u_input.c)), u_input.c < 26957i)), global1.a.b.x, firstLeadingBit(u_input.c << (_wgslsmith_mod_u32(~global1.b.x, func_2(vec4<u32>(global1.b.x, 1u, 4294967295u, u_input.a)).b.x) % 32u)));
    let var_3 = vec3<i32>(-_wgslsmith_mult_i32(-32226i, 0i), i32(-1i) * -((6526i ^ u_input.c) ^ -9548i), -(-_wgslsmith_dot_vec2_i32(var_2.c, vec2<i32>(24168i, -1i)) >> (global1.b.x % 32u)));
    global2 = array<vec4<f32>, 32>();
    var var_4 = Struct_4(Struct_2(var_2.b, global1.b, select(!func_5(Struct_1(global1.e.a, global1.a.b), var_3).e.b.x, _wgslsmith_f_op_f32(-464f + global1.e.a) != _wgslsmith_div_f32(var_1.a, -138f), -1180f >= _wgslsmith_f_op_f32(-var_1.a)), func_5(func_5(var_2.b, select(vec3<i32>(-2147483647i, -30763i, u_input.c), vec3<i32>(2147483647i, -22891i, -1i), var_1.b.xww)).e, -var_3).a, func_2(~abs(vec4<u32>(1u, 39511u, 14371u, 1u))).e), _wgslsmith_mod_i32(u_input.c, u_input.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f - 956f) - 510f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.a - 705f), -558f, var_1.b.x))), -713f, var_1.a, global1.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(min(20844u, global1.b.x), 32u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_4.c.zx), var_4.a.b.x);
}

