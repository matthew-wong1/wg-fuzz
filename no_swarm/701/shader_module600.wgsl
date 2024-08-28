struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(708f, Struct_1(2147483647i, -62165i), Struct_1(i32(-2147483648), -42535i), vec2<u32>(26031u, 0u)), Struct_2(-386f, Struct_1(-1i, 2147483647i), Struct_1(-11500i, -3833i), vec2<u32>(0u, 44238u)), Struct_2(871f, Struct_1(45217i, 29029i), Struct_1(-6522i, -8644i), vec2<u32>(0u, 4323u)), Struct_2(-818f, Struct_1(i32(-2147483648), 2147483647i), Struct_1(2147483647i, 2147483647i), vec2<u32>(3900u, 4294967295u)), Struct_2(-2443f, Struct_1(-1i, 2690i), Struct_1(-1i, -1i), vec2<u32>(15185u, 3159u)), Struct_2(822f, Struct_1(-1i, 39105i), Struct_1(0i, -54102i), vec2<u32>(46783u, 4294967295u)), Struct_2(-876f, Struct_1(2147483647i, 2147483647i), Struct_1(2147483647i, -1i), vec2<u32>(1u, 4294967295u)), Struct_2(1795f, Struct_1(0i, 15218i), Struct_1(i32(-2147483648), -55383i), vec2<u32>(20251u, 4294967295u)), Struct_2(-1000f, Struct_1(-78110i, 2147483647i), Struct_1(-1i, 1i), vec2<u32>(17794u, 56989u)), Struct_2(787f, Struct_1(34190i, 25186i), Struct_1(-16667i, -1i), vec2<u32>(23830u, 1u)), Struct_2(1488f, Struct_1(2147483647i, -26898i), Struct_1(-73895i, 5438i), vec2<u32>(0u, 1u)), Struct_2(-403f, Struct_1(-46856i, 29514i), Struct_1(-13150i, 31775i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(527f, Struct_1(1i, 1i), Struct_1(0i, 51222i), vec2<u32>(0u, 1u)), Struct_2(-441f, Struct_1(-1i, 31973i), Struct_1(-35647i, i32(-2147483648)), vec2<u32>(4294967295u, 22293u)), Struct_2(1649f, Struct_1(0i, 20777i), Struct_1(-18157i, 20617i), vec2<u32>(4294967295u, 1u)), Struct_2(-930f, Struct_1(i32(-2147483648), 0i), Struct_1(i32(-2147483648), 1i), vec2<u32>(0u, 65473u)), Struct_2(350f, Struct_1(-9489i, i32(-2147483648)), Struct_1(-8703i, 0i), vec2<u32>(0u, 11714u)), Struct_2(731f, Struct_1(i32(-2147483648), 39500i), Struct_1(-16330i, -22760i), vec2<u32>(47349u, 16582u)), Struct_2(2354f, Struct_1(-63943i, -1i), Struct_1(i32(-2147483648), i32(-2147483648)), vec2<u32>(17499u, 71578u)), Struct_2(371f, Struct_1(i32(-2147483648), 37111i), Struct_1(1i, 71051i), vec2<u32>(43187u, 4294967295u)), Struct_2(-1000f, Struct_1(-2354i, i32(-2147483648)), Struct_1(-17561i, -1i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(-1000f, Struct_1(2147483647i, -37713i), Struct_1(-19050i, -8902i), vec2<u32>(4294967295u, 3993u)), Struct_2(1341f, Struct_1(2147483647i, 12038i), Struct_1(-10476i, 16627i), vec2<u32>(80908u, 7794u)), Struct_2(1000f, Struct_1(-14276i, 2147483647i), Struct_1(0i, -1i), vec2<u32>(114087u, 0u)), Struct_2(1000f, Struct_1(1i, 20068i), Struct_1(-1i, 39506i), vec2<u32>(1u, 28273u)), Struct_2(-1915f, Struct_1(i32(-2147483648), -12093i), Struct_1(0i, -16978i), vec2<u32>(33424u, 4294967295u)), Struct_2(947f, Struct_1(2147483647i, -10325i), Struct_1(-1i, 1i), vec2<u32>(56972u, 0u)), Struct_2(758f, Struct_1(-1i, -14976i), Struct_1(i32(-2147483648), i32(-2147483648)), vec2<u32>(32564u, 4294967295u)), Struct_2(266f, Struct_1(12165i, 19698i), Struct_1(i32(-2147483648), 2147483647i), vec2<u32>(0u, 59996u)), Struct_2(-970f, Struct_1(9096i, i32(-2147483648)), Struct_1(2147483647i, 12825i), vec2<u32>(0u, 0u)), Struct_2(2769f, Struct_1(i32(-2147483648), i32(-2147483648)), Struct_1(-32858i, -52618i), vec2<u32>(16394u, 36892u)));

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 31>();
    let var_0 = true;
    var var_1 = Struct_4(~_wgslsmith_dot_vec3_i32(vec3<i32>(~global1.e.x, min(u_input.a.x, u_input.c), ~u_input.c), vec3<i32>(u_input.c, 1i, u_input.b | global1.d)), global1.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1160f)) - global1.a.c.a), global1.a.a, Struct_1(_wgslsmith_add_i32(global1.c.x, i32(-1i) * -2147483647i), u_input.c), _wgslsmith_mult_vec2_u32(~abs(global1.a.b), ~_wgslsmith_add_vec2_u32(global1.a.c.d, global1.a.b))), select(reverseBits(u_input.a) >> (abs(vec3<u32>(global1.a.c.d.x, 0u, global1.a.b.x)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.e, global1.d, u_input.a.x), ~u_input.a), vec3<bool>(all(!vec4<bool>(true, var_0, true, var_0)), var_0, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.a, 248f, 704f, var_1.b.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, 672f, var_1.b.c.a, 678f) - vec4<f32>(global1.a.c.a, global1.b, 1204f, var_1.c.a)))))))));
    let var_3 = vec3<u32>(~0u, _wgslsmith_div_u32(global1.a.c.d.x, 0u) >> (~31826u % 32u), global1.a.b.x);
    return _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(global1.b * -563f)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = vec4<f32>(-697f, global1.b, 1247f, _wgslsmith_f_op_f32(759f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.a)))));
    var var_1 = global1.a.e;
    let var_2 = -_wgslsmith_mult_vec2_i32(global1.e.xx, u_input.a.yy) << (~global1.a.c.d % vec2<u32>(32u));
    var var_3 = u_input.a.x;
    var var_4 = var_0.x;
    return Struct_3(global1.a.c.b, ~(~global1.a.b), Struct_2(_wgslsmith_f_op_f32(func_3()), Struct_1(-19765i, u_input.c), Struct_1(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x) ^ var_2, global1.e.yx)), ~vec2<u32>(countOneBits(67260u), 0u)), global1.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-57969i, 1i, arg_0, countOneBits(global1.e.x)), vec4<i32>(_wgslsmith_div_i32(min(-1i, var_2.x), 2147483647i), _wgslsmith_dot_vec3_i32(~u_input.a, abs(vec3<i32>(-47427i, 1i, -1i))), 0i, arg_0)));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_mult_i32(u_input.c, global1.a.a.b));
    var var_1 = func_2(-2147483647i).c;
    var var_2 = var_1.b.b;
    global1 = Struct_5(global1.a, -485f, global1.c, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(~global1.c.xz, u_input.a.zx)), -411i), ~(-(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(10161i, var_1.c.b, 7344i)) ^ (vec3<i32>(-4849i, 1i, -14981i) >> (vec3<u32>(global1.a.c.d.x, 43250u, global1.a.b.x) % vec3<u32>(32u))))));
    var var_3 = ~u_input.c;
    return select(firstLeadingBit(~((var_0.b.x >> (1u % 32u)) << (15368u % 32u))), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 25228u, global1.a.c.d.x), ~reverseBits(vec3<u32>(2880u, var_1.d.x, 0u))), 0u), u_input.d <= 28988u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u >> (~(~_wgslsmith_mult_u32(global1.a.b.x, global1.a.c.d.x)) % 32u), _wgslsmith_clamp_u32(~func_1(), 34667u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.a.b.x, 1u, u_input.d), vec4<u32>(21088u, global1.a.b.x, global1.a.b.x, u_input.d)), vec4<u32>(4294967295u, 1u, u_input.d, 20542u), true), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, global1.a.b.x, global1.a.b.x, u_input.d)), select(vec4<u32>(62537u, 1u, 55689u, 1u), vec4<u32>(u_input.d, global1.a.c.d.x, 0u, 40126u), false)))), u_input.d, 20911u & _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.a.c.d.x, global1.a.c.d.x, 0u, u_input.d)), vec4<u32>(global1.a.b.x, ~13242u, 76271u, 21686u)));
    global1 = Struct_5(func_2(-_wgslsmith_add_i32(abs(-1i), 1i)), 767f, global1.c, u_input.b, abs(global1.e));
    let var_1 = abs(~(vec2<u32>(_wgslsmith_sub_u32(u_input.d, global1.a.b.x), firstLeadingBit(5962u)) >> (~abs(vec2<u32>(var_0.x, 57178u)) % vec2<u32>(32u))));
    var var_2 = Struct_4(-(~_wgslsmith_clamp_i32(-2147483647i, abs(-35810i), 55457i)), Struct_3(Struct_1(u_input.b, firstLeadingBit(max(u_input.b, 0i))), vec2<u32>(global1.a.c.d.x, abs(_wgslsmith_mod_u32(var_1.x, 53857u))), global0[_wgslsmith_index_u32(~(~func_2(2147483647i).b.x), 31u)], func_2(global1.e.x).c.b, ~u_input.b), global1.a.c, u_input.a);
    var var_3 = vec2<bool>(true, !(!any(vec3<bool>(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

