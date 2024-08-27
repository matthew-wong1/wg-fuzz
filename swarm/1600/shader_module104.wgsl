struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: u32) -> f32 {
    var var_0 = arg_3;
    var var_1 = vec3<u32>(62143u, _wgslsmith_mod_u32(~(~select(arg_0.b.b, arg_3, false)), abs(arg_3)), 23730u << ((~27926u | _wgslsmith_mod_u32(~0u, arg_0.c)) % 32u));
    global0 = array<vec2<i32>, 9>();
    let var_2 = min(firstTrailingBit(~(-vec4<i32>(10654i, 0i, 42066i, arg_2.a)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.c, arg_3), vec4<u32>(var_1.x, 44366u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), select(select(vec4<i32>(10227i, arg_0.a.e, -1i, 676i), ~vec4<i32>(3240i, arg_0.b.e, -47476i, -2147483647i), false), -(~vec4<i32>(arg_2.a, 0i, -7001i, arg_0.a.e)), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(arg_1.x, arg_0.b.a, arg_0.b.a, arg_1.x), select(vec4<bool>(false, arg_0.b.c, false, false), vec4<bool>(arg_0.d.x, arg_1.x, arg_0.a.c, true), vec4<bool>(arg_0.d.x, arg_0.d.x, true, false)))) ^ vec4<i32>(u_input.a, 35484i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.e, -1i), vec2<i32>(-2147483647i, arg_0.a.e)), -34704i));
    var_1 = min(vec3<u32>(1u, 17096u, ~(4294967295u << (countOneBits(var_1.x) % 32u))), _wgslsmith_add_vec3_u32(vec3<u32>(select(4294967295u, abs(arg_3), all(arg_0.d.xy)), ~countOneBits(12198u), select(0u, max(30690u, 32169u), var_2.x != var_2.x)), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.x, 111576u), vec3<u32>(var_1.x, arg_0.c, arg_0.c)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, arg_3, var_1.x), vec3<u32>(0u, arg_3, arg_3)))));
    return -1524f;
}

fn func_2() -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -2147483647i), -(~10337i));
    var_0 = countOneBits(1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f));
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(98972u, 52247u, 5438u), vec3<u32>(1u, 12034u, 11896u)), 29564u)));
    var var_3 = all(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f - -132f)) != _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false, 36879u, false, vec2<f32>(-232f, -362f), 16816i), Struct_1(false, 0u, true, vec2<f32>(975f, 2063f), 2147483647i), var_2.x, vec3<bool>(true, false, true)), vec2<bool>(false, false), Struct_4(u_input.a, vec2<f32>(-1157f, -561f)), ~38711u))));
    return Struct_2(Struct_1(!all(vec4<bool>(true, true, true, true)), 56848u, !all(vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-1254f * -801f), -614f), ~(i32(-1i) * -1i)), Struct_1(all(vec3<bool>(var_2.x != 4294967295u, true, all(vec4<bool>(true, true, true, false)))), abs(~_wgslsmith_mod_u32(10213u, var_2.x)), all(vec2<bool>(select(false, true, true), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(min(196f, 437f)))), (u_input.a ^ _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_2.x, 9u)], global0[_wgslsmith_index_u32(var_2.x, 9u)])) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2) % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(44199u, 4294967295u, var_2.x, 60636u), vec4<u32>(1u, var_2.x, 0u, var_2.x)), ~vec4<u32>(var_2.x, var_2.x, 3369u, var_2.x)), vec4<u32>(var_2.x, 0u, 1u, 1u) & vec4<u32>(4294967295u, 28811u, var_2.x, var_2.x)), 0u), select(vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), false), vec3<bool>(select(true, all(vec3<bool>(true, false, true)), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    var var_0 = func_2();
    var_0 = Struct_2(func_2().a, func_2().b, 6129u, !(!(!vec3<bool>(var_0.b.c, var_0.b.a, var_0.d.x))));
    var_0 = func_2();
    return Struct_1(false, 70135u >> ((max(51031u, ~1u) | _wgslsmith_sub_u32(~arg_0.x, var_0.b.b)) % 32u), true | !all(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(arg_3.b + arg_2), 0i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.d);
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    var var_1 = select(!vec4<bool>(false, true, true, all(vec4<bool>(arg_2.b.a, false, true, arg_3.d.x))), vec4<bool>(any(!(!arg_3.d.yz)), (_wgslsmith_add_i32(u_input.b, 2147483647i) << (1u % 32u)) < 0i, false, arg_2.b.a), true);
    return Struct_5(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(~vec4<u32>(1u, 1u, 1u, 1u), 46504u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(430f, -633f), vec2<f32>(-1172f, -416f))), _wgslsmith_div_vec2_f32(vec2<f32>(-124f, 130f), vec2<f32>(-1000f, -1000f)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_4(-10745i, vec2<f32>(-1000f, 1425f))), Struct_1(true, countOneBits(0u), any(vec4<bool>(true, true, false, true)) && true, vec2<f32>(1f, 1654f), ~_wgslsmith_sub_i32(0i, u_input.b)), 1u, vec3<bool>(false, false, true)), Struct_4(1i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(336f, -407f), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-229f, 208f), vec2<f32>(-688f, 780f))))))), func_2(), Struct_2(Struct_1(true, _wgslsmith_sub_u32(~38365u, _wgslsmith_mod_u32(4294967295u, 45609u)), any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1116f, -1000f), vec2<f32>(-1321f, 1000f)))), u_input.a), func_1(vec4<u32>(1u, _wgslsmith_mult_u32(1u, 1u), firstTrailingBit(9014u), ~0u), ~_wgslsmith_sub_u32(66283u, 0u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-897f, -626f))), Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(-45306i, 1i, -1i)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(658f, -591f))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 5634u), vec3<u32>(1u, 1u, 1u)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)));
    var_0 = func_4(var_0.a, Struct_4(_wgslsmith_mod_i32(~u_input.b, 0i), vec2<f32>(func_4(Struct_2(Struct_1(false, 95175u, var_0.a.b.c, vec2<f32>(var_0.a.b.d.x, 186f), -1i), var_0.a.b, 55814u, var_0.a.d), Struct_4(1i, vec2<f32>(var_0.a.b.d.x, var_0.a.a.d.x)), func_4(var_0.a, Struct_4(-9544i, vec2<f32>(var_0.a.a.d.x, var_0.a.a.d.x)), var_0.a, Struct_2(var_0.a.a, Struct_1(var_0.a.a.a, 0u, var_0.a.b.c, vec2<f32>(104f, 1307f), 2147483647i), 4294967295u, vec3<bool>(false, true, var_0.a.b.c))).a, var_0.a).a.b.d.x, var_0.a.b.d.x)), Struct_2(var_0.a.b, Struct_1(false, 10367u, false, vec2<f32>(-769f, _wgslsmith_f_op_f32(-482f + -318f)), firstTrailingBit(max(u_input.b, 2147483647i))), ~1u, var_0.a.d), func_4(var_0.a, Struct_4(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 6739i), vec4<i32>(var_0.a.a.e, -2147483647i, -16771i, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-481f * 144f), var_0.a.a.d.x)), Struct_2(func_2().a, func_4(func_4(Struct_2(Struct_1(true, 0u, var_0.a.d.x, vec2<f32>(var_0.a.a.d.x, -1243f), var_0.a.a.e), Struct_1(false, var_0.a.c, var_0.a.a.c, vec2<f32>(337f, var_0.a.a.d.x), var_0.a.b.e), 3248u, var_0.a.d), Struct_4(-2126i, vec2<f32>(-1513f, var_0.a.a.d.x)), Struct_2(var_0.a.b, var_0.a.a, var_0.a.b.b, vec3<bool>(var_0.a.b.c, true, var_0.a.b.a)), var_0.a).a, Struct_4(u_input.a, var_0.a.a.d), Struct_2(Struct_1(true, 43555u, true, vec2<f32>(var_0.a.a.d.x, 1739f), var_0.a.b.e), Struct_1(true, 0u, var_0.a.a.c, vec2<f32>(462f, -176f), u_input.a), var_0.a.a.b, vec3<bool>(true, var_0.a.d.x, var_0.a.b.a)), func_2()).a.b, 0u, vec3<bool>(true, true || var_0.a.a.a, true)), func_2()).a);
    let var_1 = func_4(Struct_2(var_0.a.a, func_4(func_4(var_0.a, Struct_4(var_0.a.a.e, var_0.a.a.d), Struct_2(Struct_1(var_0.a.a.a, 1u, true, var_0.a.b.d, var_0.a.a.e), Struct_1(false, var_0.a.c, var_0.a.d.x, var_0.a.b.d, u_input.b), 4294967295u, vec3<bool>(false, true, var_0.a.d.x)), Struct_2(Struct_1(true, var_0.a.c, false, vec2<f32>(var_0.a.a.d.x, -388f), u_input.a), var_0.a.b, var_0.a.a.b, var_0.a.d)).a, Struct_4(-1273i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.d.x, 887f))), func_2(), func_2()).a.b, 63345u, vec3<bool>(~4037u >= var_0.a.a.b, !var_0.a.b.c, true)), Struct_4(_wgslsmith_mult_i32(71466i, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(456f)), func_4(Struct_2(Struct_1(false, 66017u, var_0.a.a.c, var_0.a.a.d, 2147483647i), var_0.a.a, var_0.a.c, vec3<bool>(var_0.a.a.a, var_0.a.d.x, true)), Struct_4(-1i, var_0.a.a.d), Struct_2(var_0.a.a, var_0.a.b, var_0.a.b.b, var_0.a.d), Struct_2(Struct_1(true, var_0.a.c, var_0.a.a.c, vec2<f32>(var_0.a.b.d.x, 453f), u_input.b), var_0.a.b, 30059u, vec3<bool>(false, true, var_0.a.a.a))).a.b.d.x) * var_0.a.a.d)), func_4(Struct_2(var_0.a.b, var_0.a.a, ~(~0u), !var_0.a.d), Struct_4(8348i, _wgslsmith_f_op_vec2_f32(exp2(func_2().a.d))), func_2(), var_0.a).a, var_0.a);
    let var_2 = Struct_4(min(~var_0.a.b.e, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, 1i) << (func_4(var_0.a, Struct_4(2147483647i, vec2<f32>(var_1.a.a.d.x, var_0.a.a.d.x)), Struct_2(var_0.a.b, Struct_1(true, 871u, false, vec2<f32>(1700f, -938f), 1i), 53608u, vec3<bool>(var_0.a.b.a, false, var_1.a.d.x)), var_1.a).a.b.b % 32u), -1i, _wgslsmith_div_i32(min(var_1.a.b.e, u_input.a), u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(var_1.a.b.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) * var_0.a.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a.d.x), _wgslsmith_f_op_f32(-var_1.a.b.d.x), true)) * var_1.a.b.d.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - 1336f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * _wgslsmith_f_op_f32(floor(-877f)))), var_0.a.b.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.b.d.x)))));
    var var_4 = var_0.a.b.d.x;
    global0 = array<vec2<i32>, 9>();
    let var_5 = func_4(func_2(), var_2, var_1.a, Struct_2(func_4(var_1.a, Struct_4(var_1.a.a.e, _wgslsmith_f_op_vec2_f32(-var_2.b)), Struct_2(Struct_1(var_1.a.a.c, var_0.a.b.b, true, vec2<f32>(-744f, 438f), 5509i), var_1.a.b, 5499u, !vec3<bool>(false, true, var_1.a.a.c)), var_1.a).a.b, var_1.a.b, 32424u, var_0.a.d)).a.d;
    var var_6 = vec4<u32>(var_1.a.a.b, var_0.a.c, 37132u, 1243u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_2().a.d.x, func_1(~vec4<u32>(var_0.a.a.b, var_1.a.a.b, 45696u, var_6.x), var_0.a.a.b, vec2<f32>(var_1.a.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1885f)), var_2).d.x), var_1.a.a.e, _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.a.b, var_1.a.c, var_1.a.c, 4294967295u), vec4<u32>(var_6.x, 55707u, var_6.x, var_6.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_6.x, var_1.a.a.b, var_0.a.a.b, 0u), vec4<u32>(var_0.a.c, var_1.a.c, 37482u, var_0.a.c), vec4<u32>(var_1.a.c, 4294967295u, 2782u, var_0.a.a.b))), ~(~vec4<u32>(var_0.a.c, var_0.a.b.b, 0u, var_6.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.c, var_1.a.a.b, 12036u, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 0u, var_1.a.a.b)))));
}

