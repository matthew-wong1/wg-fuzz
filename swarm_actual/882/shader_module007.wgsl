struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-942f, 410f, -289f, 1000f), vec4<f32>(-1182f, -2841f, -386f, -584f), vec4<f32>(-336f, 1889f, -1000f, -1000f), vec4<f32>(-2642f, -558f, -737f, -1453f), vec4<f32>(-623f, -759f, 281f, 2427f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(33013i, -32834i, -24120i), 800f, vec3<f32>(-291f, -1374f, 295f), 17479i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = Struct_1(vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.a.x, 2147483647i, -26345i), 1i), ~1i, _wgslsmith_mult_i32(min(_wgslsmith_mod_i32(u_input.a, global1.d), arg_0.a), u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.x, 288f))))), vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), arg_1.b, global1.b), ~3021i);
    global1 = Struct_1(select(vec3<i32>(-1i, ~(-47319i), -1i), vec3<i32>(~(~arg_0.b.a.x), u_input.a, -global1.d), true), _wgslsmith_f_op_f32(-global1.c.x), arg_1.c, reverseBits(arg_1.d));
    global1 = arg_0.d;
    let var_0 = arg_0.d;
    global0 = array<vec4<f32>, 5>();
    return ~(1u >> (abs(_wgslsmith_div_u32(46385u << (0u % 32u), select(11092u, 41593u, true))) % 32u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(global1.c.x * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -850f)) * _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(ceil(global1.c))))), global1.d);
    var var_1 = Struct_1(-(~global1.a << (vec3<u32>(_wgslsmith_div_u32(1u, 26887u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4553u), vec2<u32>(63426u, 20601u)), abs(68157u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-783f))), global1.c, ~u_input.a);
    global0 = array<vec4<f32>, 5>();
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, _wgslsmith_f_op_f32(-var_1.b), arg_0)), ~(-(reverseBits(var_0.d) >> (0u % 32u))));
    var var_3 = select(_wgslsmith_mod_u32(~(~func_3(Struct_2(u_input.a, var_2, var_2.b, Struct_1(global1.a, -330f, vec3<f32>(-492f, global1.c.x, 1708f), var_0.a.x)), var_2, -156f)), firstTrailingBit(countOneBits(21902u)) & 4294967295u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(27487u, 47523u, 74350u, 1u), ~vec4<u32>(1u, 0u, 69605u, 4294967295u)), vec4<u32>(min(1u, 1u), 1u, _wgslsmith_div_u32(4294967295u, 53289u), 0u)), min(~var_0.a.x, var_1.a.x ^ u_input.a) < _wgslsmith_sub_i32(-(~u_input.a), -1i));
    return var_2;
}

fn func_1() -> f32 {
    var var_0 = func_2(global1.c.x);
    let var_1 = ~countOneBits(_wgslsmith_sub_vec4_u32(select(vec4<u32>(14394u, 4294967295u, 51110u, 26424u), vec4<u32>(0u, 40228u, 49618u, 1u), vec4<bool>(false, true, false, true)) | vec4<u32>(4294967295u, 1u, 1u, 11792u), vec4<u32>(48557u, 1u, abs(63390u), abs(0u))));
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    var var_2 = global1.c;
    return 1313f;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = -2147483647i;
    global0 = array<vec4<f32>, 5>();
    var_0 = arg_0.d.d;
    var_0 = -2147483647i;
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f) * 1838f), global1.c, -1i);
    return Struct_2(u_input.a, Struct_1(_wgslsmith_mod_vec3_i32(-(global1.a << (vec3<u32>(9124u, 19549u, 26571u) % vec3<u32>(32u))), ~vec3<i32>(u_input.a, global1.d, 16973i)), _wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(-609f * -725f)), arg_2.b.c, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2.b.c.x)), _wgslsmith_f_op_f32(global1.b + 251f), arg_1.x)), _wgslsmith_f_op_f32(-arg_2.b.c.x))), func_2(_wgslsmith_f_op_f32(-arg_3.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.d.b));
    var var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-105f * global1.b));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-393f + -568f), _wgslsmith_f_op_f32(-317f + -1224f), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec3_f32(-var_2.b.c)), _wgslsmith_div_vec3_f32(global1.c, global1.c), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))));
    var_3 = _wgslsmith_f_op_vec3_f32(func_4(arg_0, vec4<bool>(true, false, true, ~global1.a.x >= countOneBits(-1687i)), Struct_2(u_input.a, func_4(arg_0, select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), arg_0, _wgslsmith_f_op_vec2_f32(-var_2.d.c.yx)).b, arg_0.d.b, func_2(var_0.x)), var_0).b.c + vec3<f32>(-381f, func_4(Struct_2(global1.d, func_2(1000f), 638f, Struct_1(global1.a, -113f, arg_0.b.c, 17240i)), vec4<bool>(all(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, true)), true, true), func_4(Struct_2(-1i, arg_0.d, -1000f, Struct_1(var_2.b.a, 225f, vec3<f32>(1387f, var_3.x, 1000f), var_2.a)), vec4<bool>(false, true, true, false), func_4(arg_0, vec4<bool>(false, true, false, true), Struct_2(global1.a.x, Struct_1(arg_0.d.a, -1332f, vec3<f32>(var_0.x, var_2.d.b, 1000f), -2147483647i), var_0.x, var_2.d), vec2<f32>(global1.c.x, var_3.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-630f, arg_0.d.b), vec2<f32>(var_2.b.c.x, 1969f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, var_0.x)))).c, _wgslsmith_f_op_f32(-1227f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f), var_2.c))));
    return Struct_1(-(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -32518i, arg_0.d.d), global1.a), -global1.a) << (~max(vec3<u32>(53583u, 1u, 82792u), vec3<u32>(1u, 1u, 40074u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_3.x), arg_0.d.c, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a, func_5(func_4(Struct_2(~u_input.a, Struct_1(global1.a, global1.b, global1.c, global1.a.x), _wgslsmith_f_op_f32(-769f * -1267f), Struct_1(vec3<i32>(0i, 1i, 18401i), global1.c.x, vec3<f32>(global1.c.x, 835f, -1889f), 2147483647i)), vec4<bool>(false, true, false, true), Struct_2(u_input.a, Struct_1(global1.a, 1058f, global1.c, u_input.a), _wgslsmith_f_op_f32(global1.b - global1.c.x), Struct_1(global1.a, 670f, global1.c, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(global1.b + 289f), _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 865f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b + global1.c.x))))), Struct_1(_wgslsmith_mod_vec3_i32(global1.a, -_wgslsmith_mod_vec3_i32(vec3<i32>(1767i, global1.a.x, global1.d), vec3<i32>(global1.a.x, 9390i, 1i))), global1.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -2408f), -710f))), _wgslsmith_sub_i32(~max(35253i, 2232i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.d, global1.d), -20634i, global1.a.x))));
    let var_1 = u_input.a;
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    global1 = Struct_1(-(-(~var_0.d.a) >> (~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), var_0.d.c.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(func_4(Struct_2(u_input.a, Struct_1(var_0.d.a, -1041f, var_0.b.c, -1i), global1.b, Struct_1(var_0.d.a, -680f, vec3<f32>(-417f, var_0.b.c.x, var_0.d.b), var_1)), vec4<bool>(false, false, true, false), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -475f))).b.c, _wgslsmith_f_op_vec3_f32(-func_4(var_0, vec4<bool>(true, true, true, false), Struct_2(var_1, Struct_1(vec3<i32>(-43090i, -21897i, 0i), var_0.c, vec3<f32>(1000f, -1918f, var_0.d.b), u_input.a), 1576f, Struct_1(vec3<i32>(u_input.a, 55961i, var_0.d.a.x), 1735f, vec3<f32>(948f, 1000f, global1.c.x), u_input.a)), vec2<f32>(global1.c.x, var_0.c)).b.c)))), 2147483647i);
    var var_2 = ~_wgslsmith_mult_vec3_i32(func_5(Struct_2(24774i, var_0.d, func_2(857f).c.x, func_2(865f))).a, min(func_2(_wgslsmith_f_op_f32(global1.b - var_0.b.c.x)).a, select(vec3<i32>(global1.d, -1i, 2147483647i) & global1.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, var_1), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(u_input.a, -2147483647i, u_input.a)), -965f > global1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1), global1.a.yy);
}

