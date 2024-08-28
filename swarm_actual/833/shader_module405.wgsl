struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(39733i, -28646i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), 35035i, -1i, 1i), vec4<i32>(i32(-2147483648), 26900i, 9173i, 20115i), vec4<i32>(1i, 1i, 14136i, 1132i), vec4<i32>(43456i, 23936i, 5692i, 2147483647i), vec4<i32>(-14314i, 6257i, 21481i, 19659i), vec4<i32>(-17509i, 23205i, -5995i, -51289i), vec4<i32>(3954i, -33748i, -37974i, 38032i), vec4<i32>(-24460i, 10798i, -1i, 1i), vec4<i32>(0i, 7415i, -1i, 0i));

var<private> global2: i32 = -1i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(vec3<bool>(false, !all(vec2<bool>(false, false)), true && !global0.a.a.x), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 1u, 18086u), ~vec4<u32>(7764u, 1u, arg_1.x, global0.a.b.x)), arg_2)), global0.b);
    return vec4<bool>(all(!var_0.b.a.a.xx), true, any(global0.b.b.a), !(~arg_2 > firstLeadingBit(_wgslsmith_sub_u32(var_0.a.b.x, var_0.b.a.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = select(vec4<bool>(arg_0.a.x, any(!vec2<bool>(true, arg_0.a.x)), !any(vec4<bool>(arg_3.b.a.a.x, false, true, global0.a.a.x)), countOneBits(firstTrailingBit(27371i)) == 22120i), !select(select(select(vec4<bool>(arg_3.b.b.a.x, arg_0.a.x, false, true), vec4<bool>(true, arg_3.b.b.a.x, true, arg_2.x), false), vec4<bool>(arg_3.b.a.a.x, arg_0.a.x, global0.b.a.a.x, false), arg_1 != arg_1), !func_3(vec4<bool>(arg_2.x, true, false, false), vec3<u32>(0u, arg_3.a.b.x, 1u), arg_0.b.x), vec4<bool>(false, global0.a.a.x, arg_2.x, !arg_2.x)), select(!vec4<bool>(true, !arg_3.b.a.a.x, !arg_3.a.a.x, func_3(vec4<bool>(true, true, arg_2.x, false), vec3<u32>(36574u, 1u, arg_3.b.a.b.x), arg_0.b.x).x), !(!(!vec4<bool>(arg_3.a.a.x, global0.b.a.a.x, false, false))), func_3(select(!vec4<bool>(global0.b.a.a.x, true, global0.b.b.a.x, true), !vec4<bool>(false, false, arg_0.a.x, global0.b.a.a.x), true), vec3<u32>(~1u, 4294967295u, 24473u), _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(global0.a.b.x, 1u), max(u_input.a, 97136u)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -352f))), 711f, arg_1);
    let var_2 = global0.b;
    global1 = array<vec4<i32>, 10>();
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -660f))), 2562f, 673f)));
    return Struct_1(global0.b.b.a, arg_0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.b.x, 86344u), firstTrailingBit(global0.a.b));
    var var_1 = vec4<u32>(~(~u_input.a), _wgslsmith_dot_vec2_u32(~abs(global0.a.b) << ((select(arg_2.e.a.b, arg_2.e.a.b, arg_1.a.yz) & ~global0.b.b.b) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(arg_2.c.a.b.x, _wgslsmith_add_u32(6353u, 6839u)), 50243u)), 4294967295u, max(1u, global0.a.b.x) << (~1u % 32u));
    global0 = Struct_4(func_2(func_2(Struct_1(!vec3<bool>(true, arg_2.c.b.a.x, arg_2.c.a.a.x), select(vec2<u32>(arg_2.e.a.b.x, 1u), arg_1.b, global0.b.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(371f + 2478f))), vec2<bool>(true | arg_1.a.x, func_3(vec4<bool>(false, arg_2.c.b.a.x, arg_2.b, arg_3.x), var_1.wzx, global0.b.b.b.x).x), Struct_4(Struct_1(global0.b.b.a, arg_1.b), Struct_2(Struct_1(arg_2.e.b.a, global0.a.b), Struct_1(vec3<bool>(true, true, true), vec2<u32>(22503u, 43197u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-622f * 815f), _wgslsmith_f_op_f32(948f + 1012f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(331f + 354f)))), vec2<bool>(false, true), Struct_4(func_2(Struct_1(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec2<u32>(27064u, 0u)), -579f, global0.b.b.a.zx, Struct_4(Struct_1(global0.a.a, global0.b.a.b), global0.b)), global0.b)), Struct_2(func_2(func_2(arg_1, -1004f, func_2(arg_2.e.b, 250f, global0.a.a.xx, Struct_4(Struct_1(arg_1.a, var_1.zx), Struct_2(arg_1, arg_2.c.b))).a.xz, Struct_4(Struct_1(arg_1.a, global0.a.b), Struct_2(arg_1, arg_1))), 1638f, !vec2<bool>(arg_3.x, global0.a.a.x), Struct_4(arg_1, global0.b)), global0.a));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1249f, 470f, arg_2.c.b.a.x)), -2092f)))), -1061f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(abs(-1098f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(417f)), _wgslsmith_f_op_f32(min(428f, -407f)), any(global0.a.a.zz))))), -1000f);
    let var_3 = Struct_4(Struct_1(vec3<bool>(arg_2.b, global0.b.a.a.x, arg_1.a.x), vec2<u32>(arg_2.e.b.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_2.e.a.b.x), arg_2.e.a.b))), arg_2.e);
    return Struct_4(arg_2.c.a, arg_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_4) -> u32 {
    global2 = 1i;
    global0 = func_4(min(arg_2.a.b.x, u_input.a), func_2(arg_0, _wgslsmith_f_op_f32(trunc(-869f)), !select(arg_0.a.yx, vec2<bool>(global0.a.a.x, global0.a.a.x), any(vec4<bool>(global0.b.a.a.x, true, false, false))), arg_2), Struct_3(abs(vec2<i32>(-2147483647i, ~53662i)), !(arg_0.b.x >= arg_0.b.x) || global0.a.a.x, global0.b, _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-35382i, -19102i, -2147483647i), vec3<i32>(-55943i, 1i, 1i), !vec3<bool>(arg_2.a.a.x, arg_0.a.x, false)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-29122i, 1i, 1i), vec3<i32>(-83782i, -2147483647i, 28582i), vec3<bool>(global0.a.a.x, arg_0.a.x, arg_2.a.a.x)), vec3<i32>(1i, 1i, 10207i), abs(vec3<i32>(18189i, 0i, 1i)))), global0.b), func_2(Struct_1(vec3<bool>(false | arg_2.b.b.a.x, true, func_3(vec4<bool>(false, arg_2.a.a.x, true, true), vec3<u32>(u_input.a, 65353u, 22184u), 0u).x), ~_wgslsmith_sub_vec2_u32(global0.b.b.b, vec2<u32>(9617u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(f32(-1f) * -767f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.b.a.a.xz, Struct_4(global0.b.a, global0.b)).a.yy);
    var var_0 = 2147483647i << (_wgslsmith_mult_u32(select(~arg_1.x & ~arg_0.b.x, 4294967295u, !any(arg_2.a.a)), func_2(Struct_1(arg_2.b.b.a, ~arg_0.b), 502f, vec2<bool>(!arg_0.a.x, !arg_2.a.a.x), Struct_4(Struct_1(vec3<bool>(global0.a.a.x, arg_2.a.a.x, arg_2.a.a.x), arg_1), arg_2.b)).b.x) % 32u);
    var_0 = max(~7285i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(38508i, 19499i, 24810i)) >> (vec3<u32>(~arg_1.x, 4294967295u, 41518u) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, -40609i), vec3<i32>(-21857i, 39259i, 1i)), -vec3<i32>(-1i, -2147483647i, -54591i), arg_0.a) << (vec3<u32>(min(global0.b.a.b.x, global0.a.b.x), 50779u, 84156u) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f * 504f)), 1426f))));
    return func_4(abs(_wgslsmith_dot_vec2_u32(~arg_1, ~global0.b.b.b)), Struct_1(!(!arg_0.a), vec2<u32>(22737u, func_2(arg_0, var_1.x, arg_0.a.zx, Struct_4(Struct_1(vec3<bool>(arg_0.a.x, global0.b.a.a.x, false), vec2<u32>(19074u, 4294967295u)), Struct_2(arg_2.b.b, Struct_1(global0.a.a, arg_0.b)))).b.x) >> (min(vec2<u32>(0u, 0u), func_4(arg_2.b.b.b.x, global0.a, Struct_3(vec2<i32>(-1i, 1i), global0.b.a.a.x, Struct_2(Struct_1(arg_2.a.a, arg_1), global0.b.a), vec3<i32>(-2000i, 59458i, -21323i), Struct_2(arg_0, Struct_1(vec3<bool>(false, true, false), vec2<u32>(u_input.a, 57978u)))), vec2<bool>(arg_0.a.x, true)).b.b.b) % vec2<u32>(32u))), Struct_3(~abs(vec2<i32>(2147483647i, 26751i)), !any(arg_2.a.a) != !(arg_0.a.x || true), Struct_2(Struct_1(select(arg_0.a, vec3<bool>(true, false, false), true), arg_2.a.b), arg_0), abs(~vec3<i32>(1i, 1i, 1i)), arg_2.b), vec2<bool>(arg_0.a.x, func_2(Struct_1(vec3<bool>(false, true, arg_2.a.a.x), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), global0.a.a.yy, arg_2).a.x)).a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(621f + -275f), _wgslsmith_f_op_f32(-1462f + -534f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1738f * _wgslsmith_f_op_f32(min(971f, 1387f))) - 405f))));
    var var_1 = !vec4<bool>(true, true, !(!(-368f >= var_0)), !global0.a.a.x);
    let var_2 = 1i;
    global2 = max(-var_2, _wgslsmith_clamp_i32(var_2, var_2 << (u_input.a % 32u), ~(-23630i)) << (reverseBits(func_1(global0.a, global0.b.a.b, Struct_4(Struct_1(vec3<bool>(var_1.x, false, var_1.x), vec2<u32>(u_input.a, u_input.a)), global0.b))) % 32u)) ^ _wgslsmith_mult_i32((-var_2 | var_2) ^ var_2, abs(1i));
    var var_3 = Struct_1(var_1.wyz, ~(~firstLeadingBit(vec2<u32>(u_input.a, 51329u)) | (vec2<u32>(u_input.a, global0.b.b.b.x) ^ vec2<u32>(25661u, global0.b.a.b.x))));
    global2 = select(firstLeadingBit(var_2), -1929i, false);
    global1 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -min(vec3<i32>(2147483647i, 57862i, var_2), vec3<i32>(var_2, var_2, var_2) << (vec3<u32>(u_input.a, var_3.b.x, global0.b.a.b.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2, var_2, 0i), vec3<i32>(-1i, -2147483647i, 0i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(25025u, u_input.a, 0u), vec3<u32>(4294967295u, global0.a.b.x, var_3.b.x)) % vec3<u32>(32u)), abs(countOneBits(vec3<i32>(var_2, var_2, var_2)))) | (vec3<i32>(min(-1i, 2147483647i), -48169i, _wgslsmith_div_i32(-311i, 16107i)) << (countOneBits(vec3<u32>(17559u, var_3.b.x, var_3.b.x)) % vec3<u32>(32u))), -vec3<i32>(var_2, -1i, firstLeadingBit(var_2)), var_0, var_2);
}

