struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: vec2<u32> = vec2<u32>(93027u, 4611u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    global1 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(33159u, 19995u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, 0u)))) | vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.c, 38490u), vec4<u32>(56242u, 1223u, global1.x, 0u))), u_input.c));
    global1 = countOneBits(abs(countOneBits(abs(vec2<u32>(1u, u_input.b)))) & vec2<u32>(u_input.b, 4294967295u));
    global1 = vec2<u32>(_wgslsmith_clamp_u32(global1.x, 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 54979u), vec2<u32>(58431u, u_input.b) >> (vec2<u32>(34956u, 0u) % vec2<u32>(32u))), ~vec2<u32>(4294967295u, 13398u) ^ select(vec2<u32>(global1.x, global1.x), vec2<u32>(6584u, 0u), true))), select(countOneBits(45029u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.c), vec2<u32>(u_input.b, global1.x)) | u_input.c), true));
    return select(arg_0, 1i, !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_5(false, ~select(1u, min(u_input.b, 0u), arg_1.b.x <= global1.x), Struct_1(arg_1.a, vec2<u32>(min(11905u >> (global1.x % 32u), 7749u), _wgslsmith_add_u32(7774u, _wgslsmith_mult_u32(8016u, arg_1.b.x)))), !all(vec3<bool>(arg_2.x, true, arg_2.x)) != true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1434f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1140f * 581f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) * _wgslsmith_f_op_f32(trunc(1511f))) * -587f)));
    return vec3<i32>(-61754i, arg_0.x | u_input.a, u_input.a);
}

fn func_2() -> Struct_4 {
    global1 = ~(~(~abs(vec2<u32>(u_input.b, 4294967295u)) >> (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))));
    let var_0 = func_4(~_wgslsmith_mult_vec4_i32(vec4<i32>(func_3(u_input.a), u_input.a, ~(-24858i), 2147483647i), vec4<i32>(min(u_input.a, 2147483647i), u_input.a, u_input.a & 13919i, -1i | u_input.a)), Struct_1(max(u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 10852u, u_input.b), vec4<u32>(u_input.b, u_input.c, 4294967295u, 0u))), vec2<u32>(global1.x, ~_wgslsmith_mod_u32(30352u, global1.x))), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), any(vec3<bool>(true, true, true))), vec4<bool>(any(vec4<bool>(false, false, true, true)), !(4294967295u != global1.x), all(vec3<bool>(true, false, false)), true), vec4<bool>(false, true, reverseBits(u_input.b) >= ~59396u, !any(vec2<bool>(false, false)))));
    global1 = countOneBits(abs(firstLeadingBit(firstTrailingBit(abs(vec2<u32>(global1.x, 1u))))));
    let var_1 = Struct_5(true, 55082u, Struct_1(~19719u, vec2<u32>(~(13909u ^ global1.x), 32197u)), !select(true, !all(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, false, true)) && true), 789f);
    let var_2 = var_0;
    return Struct_4(_wgslsmith_f_op_f32(min(var_1.e, -1000f)), Struct_3(abs(2366u) << (~(~var_1.b) % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, 417f))), Struct_1(var_1.b, var_1.c.b)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 25800u, u_input.c, global1.x), vec4<u32>(4294967295u, 0u, var_1.b, var_1.b)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_1.b, 1u, 0u, 1u)), countOneBits(vec4<u32>(u_input.b, 76117u, 4294967295u, 31866u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-891f, var_1.e)))), vec2<f32>(_wgslsmith_f_op_f32(round(-937f)), 841f), false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, -337f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.e * var_1.e))), var_1.e)), vec4<i32>(var_0.x, ~u_input.a, -7772i, ~(~(-2147483647i))), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.e, -1876f), vec2<f32>(var_1.e, var_1.e))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1751f, var_1.e)))))), Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(3802u, 4294967295u, 1u), vec3<u32>(global1.x, global1.x, u_input.c)), vec3<u32>(u_input.c, global1.x, 4294967295u)), vec2<u32>(18570u, abs(1u)))));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = vec2<u32>(var_0.b.b.b.b.x, ~firstTrailingBit(1u));
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 1877f) - _wgslsmith_f_op_f32(-var_0.a)))), var_0.b, _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, 3968i) | var_0.c, -var_0.c)), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-20557i, -2147483647i, u_input.a, -2147483647i), var_0.c), var_0.c)), func_2().b.b);
    return 364f;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = -1i;
    global0 = array<vec3<f32>, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-357f))))));
    global0 = array<vec3<f32>, 26>();
    let var_2 = vec3<i32>(-func_2().c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(_wgslsmith_add_i32(var_0, u_input.a)), ~(-882i) | _wgslsmith_sub_i32(var_0, u_input.a)), func_4(~vec4<i32>(-2147483647i, var_0, 24325i, 1i), func_2().b.b.b, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x | arg_1.x)).zz), ~var_0);
    return func_2().d.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_4 {
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~37034u << (_wgslsmith_add_u32(arg_0.a, arg_0.a) % 32u), ~_wgslsmith_add_u32(global1.x, 4294967295u)), max(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), arg_2.ww), vec2<u32>(arg_2.x, u_input.b))) ^ ~(reverseBits(~vec2<u32>(arg_0.a, 25419u)) >> (vec2<u32>(_wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_dot_vec2_u32(arg_0.b, arg_0.b)) % vec2<u32>(32u)));
    global1 = ~(~_wgslsmith_mult_vec2_u32(arg_0.b, vec2<u32>(~u_input.c, ~4294967295u)));
    global0 = array<vec3<f32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(466f)) + 510f))));
    global0 = array<vec3<f32>, 26>();
    return Struct_4(_wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), var_0), _wgslsmith_div_f32(var_0, var_0)))), Struct_3(u_input.b, func_2().b.b, 34158u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0, var_0), var_0, _wgslsmith_f_op_f32(-var_0)) * vec3<f32>(-1117f, _wgslsmith_f_op_f32(781f - var_0), _wgslsmith_f_op_f32(func_1())))), vec4<i32>(-(~u_input.a), min(-74912i, u_input.a), -(~(~28484i)), arg_1.x), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0 - 563f), 814f)), func_2().b.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(-299f - -1000f))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), vec4<bool>(true, false, true, true), false | (17715u < u_input.c))), max(min(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -8398i, 41128i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), vec4<i32>(-u_input.a, 1i, -1i, _wgslsmith_sub_i32(u_input.a, 2147483647i))), abs(firstLeadingBit(vec4<i32>(30767i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(global1.x, u_input.b, global1.x, u_input.c) % vec4<u32>(32u))))), ~(~(~vec4<u32>(123786u, u_input.c, 54022u, 32868u))));
    let var_1 = true;
    let var_2 = Struct_2(vec2<f32>(1323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1430f, 156f, var_1)) + var_0.b.e.x) - _wgslsmith_f_op_f32(-var_0.a))), func_5(_wgslsmith_f_op_f32(ceil(var_0.d.a.x)), select(vec4<bool>(var_1, all(vec4<bool>(false, true, var_1, var_1)), any(vec4<bool>(var_1, var_1, var_1, true)), true), vec4<bool>(global1.x <= var_0.d.b.b.x, var_1, !var_1, var_1), !any(vec4<bool>(true, true, var_1, var_1)))));
    var var_3 = var_0.c.x;
    var_3 = ~(-3737i);
    global0 = array<vec3<f32>, 26>();
    let var_4 = var_0.b.e;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-845f + -747f)))), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_2.a.x) * 390f), _wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), var_0.b.e.x, var_2.a.x, var_2.a.x), vec4<f32>(_wgslsmith_f_op_f32(round(func_2().b.b.a.x)), -546f, var_0.b.b.a.x, var_0.a), vec4<bool>(select(true || var_1, true, all(vec4<bool>(var_1, var_1, false, var_1))), !(!var_1), true, true))));
    var var_6 = vec2<u32>(1u, ~(~abs(u_input.b)) ^ var_0.d.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_2.a.x, countOneBits(var_0.c.xzx & firstLeadingBit(var_0.c.zzz)));
}

