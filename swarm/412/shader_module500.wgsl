struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = Struct_1(firstLeadingBit(~_wgslsmith_div_vec2_u32(arg_2.d.e.a, _wgslsmith_clamp_vec2_u32(arg_2.d.e.a, vec2<u32>(u_input.d, u_input.d), arg_2.d.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - _wgslsmith_f_op_f32(arg_2.b.c.x + _wgslsmith_f_op_f32(min(483f, 625f))))), false);
    let var_1 = vec4<bool>(true, false, var_0.c, !any(!select(vec2<bool>(false, arg_2.d.e.c), vec2<bool>(true, true), arg_1.xy)));
    var var_2 = Struct_4(~reverseBits(-(~(-631i))), Struct_2(1i, arg_2.d.b, arg_2.d.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(710f)), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + 1000f) + -205f)), arg_2.b.e), any(vec4<bool>(false, ~0u > ~u_input.d, arg_1.x, false)), Struct_2(arg_2.b.a, vec2<i32>(~arg_2.a, 45062i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(171f)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(arg_2.d.c))))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), -101f), var_0));
    let var_3 = !select(select(vec2<bool>(false, var_1.x), select(select(var_1.zz, vec2<bool>(true, true), false), !vec2<bool>(false, var_0.c), false), true), vec2<bool>(false == all(vec2<bool>(false, true)), 4294967295u <= arg_2.d.e.a.x), vec2<bool>(true, true));
    var var_4 = var_2.d;
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_3.c.x;
    var var_1 = Struct_4(_wgslsmith_dot_vec4_i32(-u_input.c, max(vec4<i32>(-60886i, arg_3.a, 2040i, arg_3.a), u_input.c << (vec4<u32>(15664u, 18018u, 37536u, arg_3.e.a.x) % vec4<u32>(32u))) ^ func_3(vec2<f32>(arg_3.c.x, 295f), vec3<bool>(false, false, true), Struct_4(u_input.b.x, Struct_2(-1i, arg_3.b, vec3<f32>(-352f, arg_3.c.x, -1032f), vec2<f32>(arg_3.c.x, arg_3.e.b), Struct_1(arg_2.zy, arg_3.d.x, arg_0)), arg_1, arg_3))), Struct_2(-(~abs(arg_3.a)), vec2<i32>(~(~(-1i)), arg_3.a), _wgslsmith_f_op_vec3_f32(arg_3.c + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_3.c)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1336f, 569f) - _wgslsmith_f_op_f32(abs(-246f))), arg_3.e.b), arg_3.e), false, arg_3);
    var var_2 = !((_wgslsmith_f_op_f32(step(-985f, arg_3.e.b)) != var_1.d.e.b) || arg_0) || any(vec4<bool>(var_1.d.e.c, false, !arg_3.e.c, !arg_0 || false));
    var var_3 = ~(~(min(~var_1.b.e.a.x, 1u) >> (27184u % 32u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(var_1.d.c.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.c.zy)));
    return Struct_4(~14235i, Struct_2(1i, -firstLeadingBit(var_1.d.b | vec2<i32>(20768i, arg_3.b.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.d.c - vec3<f32>(var_1.d.d.x, arg_3.c.x, var_1.d.c.x)), vec3<f32>(1f, 769f, _wgslsmith_f_op_f32(step(arg_3.c.x, arg_3.e.b))))), var_1.d.c.yz, arg_3.e), min(_wgslsmith_dot_vec4_u32(arg_2, max(vec4<u32>(33958u, u_input.d, arg_2.x, 31925u), vec4<u32>(arg_3.e.a.x, arg_3.e.a.x, 15066u, 6255u))), u_input.d) > 4294967295u, Struct_2(~(~abs(-1i)), -vec2<i32>(~(-54765i), ~arg_3.b.x), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_3.c.x, -1097f, true)))), var_1.d.c.x, -2866f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1220f, arg_3.e.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.e.b, 738f)))), Struct_1(vec2<u32>(~4245u, ~45356u), 296f, all(!vec2<bool>(arg_1, true)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = Struct_5(Struct_1(arg_3.b.e.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), 609f)), 785f), arg_3.d.e.c), !vec2<bool>(arg_2, true), Struct_3(vec4<f32>(541f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1345f), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -641f)), arg_3.b.e, vec4<bool>(arg_3.b.e.c, false, 1i <= u_input.b.x, all(vec2<bool>(true, arg_3.d.e.c)) || select(arg_2, arg_2, false)), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_3.a), arg_0.zx) | select(arg_0.xz, vec2<i32>(arg_0.x, -1i), vec2<bool>(false, true)), select(u_input.d, 4294967295u, any(select(vec2<bool>(arg_3.b.e.c, true), vec2<bool>(false, true), vec2<bool>(arg_2, false))))));
    let var_1 = true;
    var var_2 = u_input.c;
    let var_3 = ~(~(~(~var_0.c.b.a.x)) >> (0u % 32u));
    var_2 = ~vec4<i32>(u_input.a, 2147483647i, 26518i, 0i & u_input.c.x);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_3.d.c, arg_3.d.c)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_5 {
    let var_0 = func_2(true, arg_0.x, ~(~(~(~vec4<u32>(arg_3.e.a.x, arg_3.e.a.x, arg_3.e.a.x, arg_3.e.a.x)))), func_2(all(!select(arg_0.xx, vec2<bool>(arg_3.e.c, arg_3.e.c), arg_0.x)), 203f < func_2(arg_0.x != arg_0.x, arg_3.e.c, _wgslsmith_div_vec4_u32(vec4<u32>(11412u, u_input.d, u_input.d, 1u), vec4<u32>(arg_3.e.a.x, 1u, arg_3.e.a.x, 1u)), Struct_2(15037i, arg_3.b, vec3<f32>(-1321f, arg_3.c.x, -224f), arg_3.d, Struct_1(arg_3.e.a, -1267f, arg_0.x))).b.d.x, vec4<u32>(u_input.d, 1u, ~(~1u), 34411u ^ _wgslsmith_mult_u32(84148u, arg_3.e.a.x)), arg_3).d).d.e;
    let var_1 = !(!(!arg_0.xx));
    let var_2 = vec3<bool>(!var_0.c | func_2(arg_0.x, arg_2 != arg_2, _wgslsmith_clamp_vec4_u32(vec4<u32>(42059u, arg_3.e.a.x, 24164u, 13390u), vec4<u32>(u_input.d, arg_3.e.a.x, 1u, arg_3.e.a.x), vec4<u32>(27567u, u_input.d, var_0.a.x, u_input.d) & vec4<u32>(u_input.d, 38954u, u_input.d, var_0.a.x)), func_2(arg_3.a < arg_3.b.x, func_2(arg_3.e.c, false, vec4<u32>(60484u, 0u, 18230u, 23421u), arg_3).b.e.c, ~vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x), arg_3).b).c, arg_3.e.c, false & (arg_3.e.c | select(true, any(vec4<bool>(var_0.c, arg_0.x, true, true)), true)));
    let var_3 = 1016f;
    var var_4 = Struct_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(max(-16381i, -2147483647i), u_input.b.x, 1i), vec3<i32>(arg_1.x, _wgslsmith_mult_i32(-2147483647i, 0i), ~(-38792i)))), vec2<i32>(-_wgslsmith_add_i32(arg_1.x, arg_1.x), ~(~(-1i))) & arg_1.wz, _wgslsmith_f_op_vec3_f32(arg_3.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.c, vec3<f32>(-830f, 498f, 319f), vec3<bool>(var_0.c, true, var_2.x))) + vec3<f32>(1578f, arg_2, var_3)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.c + vec3<f32>(var_3, arg_2, -772f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.d.x, arg_3.d.x))), Struct_1(min(reverseBits(arg_3.e.a) & select(var_0.a, vec2<u32>(u_input.d, u_input.d), var_2.x), var_0.a), _wgslsmith_f_op_f32(min(164f, var_3)), !any(!vec4<bool>(false, var_1.x, arg_3.e.c, arg_3.e.c))));
    return Struct_5(arg_3.e, var_1, Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, 1156f, arg_3.e.b, arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.e.b, -1053f, arg_3.d.x, var_0.b), vec4<f32>(-3035f, 699f, -318f, var_4.e.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, var_4.c.x, -753f, var_3)))), var_0, vec4<bool>(952f == _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(abs(-260f)) > _wgslsmith_f_op_f32(-arg_3.c.x), true, func_2(var_4.e.c, any(vec3<bool>(var_1.x, false, arg_0.x)), ~vec4<u32>(arg_3.e.a.x, 0u, arg_3.e.a.x, 0u), Struct_2(44095i, arg_3.b, vec3<f32>(var_3, -1000f, 248f), arg_3.d, var_0)).c), -max(select(vec2<i32>(arg_1.x, arg_3.a), var_4.b, var_1.x), ~vec2<i32>(arg_3.b.x, -41022i)), var_0.a.x));
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    var var_0 = vec4<u32>(func_5(vec3<bool>(true, true, true), u_input.c, func_5(select(arg_0.c.c.zzx, arg_0.c.c.zyx, false), u_input.c, _wgslsmith_f_op_f32(arg_0.c.a.x * arg_0.c.a.x), Struct_2(u_input.b.x, arg_0.c.d, arg_0.c.a.zyx, vec2<f32>(138f, -1061f), Struct_1(arg_0.a.a, -910f, arg_0.b.x))).c.b.b, func_2(20712u < arg_0.c.e, all(arg_0.c.c), ~vec4<u32>(arg_0.a.a.x, 1u, arg_0.a.a.x, arg_0.c.b.a.x), Struct_2(-47032i, vec2<i32>(0i, arg_0.c.d.x), arg_0.c.a.xzw, vec2<f32>(1170f, arg_0.a.b), Struct_1(vec2<u32>(0u, arg_0.a.a.x), arg_0.c.b.b, arg_0.c.b.c))).b).a.a.x << (~arg_0.a.a.x % 32u), 0u, u_input.d >> (_wgslsmith_clamp_u32(1u, countOneBits(firstLeadingBit(u_input.d)), 1u) % 32u), ~(~(~arg_0.c.e)));
    var var_1 = arg_0.c.a.yxz;
    let var_2 = 72110u;
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.c.a.yww * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1351f)), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -176f)), arg_0.c.a.yzy))), func_2(arg_0.a.c, !arg_0.a.c, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, var_0.x, 19863u, 0u) & vec4<u32>(arg_0.a.a.x, 57927u, u_input.d, 1u), vec4<u32>(4294967295u, 37417u, 16704u, var_0.x)), abs(~var_2), _wgslsmith_add_u32(75646u, ~u_input.d), min(var_0.x, 70968u) << (var_0.x % 32u)), Struct_2(arg_0.c.d.x, vec2<i32>(u_input.c.x, -42981i) ^ arg_0.c.d, arg_0.c.a.yyy, vec2<f32>(arg_0.a.b, -1119f), Struct_1(arg_0.c.b.a, _wgslsmith_f_op_f32(-var_1.x), arg_0.a.c & arg_0.a.c))).b.c));
    let var_3 = func_5(arg_0.c.c.ywz, firstLeadingBit(u_input.c), var_1.x, Struct_2(countOneBits(~1i), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(arg_0.c.d.x, arg_0.c.d.x, arg_0.c.d.x))), _wgslsmith_div_vec3_f32(arg_0.c.a.wyy, arg_0.c.a.xzx), _wgslsmith_f_op_vec2_f32(arg_0.c.a.ww + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))))), Struct_1(~vec2<u32>(arg_0.c.e, 33376u), _wgslsmith_f_op_f32(f32(-1f) * -195f), false)));
    return Struct_4(-firstLeadingBit(40150i), Struct_2(arg_0.c.d.x, _wgslsmith_mult_vec2_i32(select(-u_input.c.yy, arg_0.c.d, !var_3.a.c), -var_3.c.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(771f, 709f, var_3.a.b)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-319f, var_1.x), -1000f), _wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.b.b, 294f)), var_3.c.c.zx))), Struct_1(var_3.c.b.a, _wgslsmith_div_f32(var_3.c.b.b, var_1.x), !func_5(arg_0.c.c.wxz, vec4<i32>(1i, 12698i, -1i, var_3.c.d.x), var_1.x, Struct_2(arg_0.c.d.x, arg_0.c.d, var_3.c.a.xww, vec2<f32>(var_1.x, -749f), var_3.a)).a.c)), !func_5(arg_0.c.c.xxy, _wgslsmith_mod_vec4_i32(max(u_input.c, u_input.c), vec4<i32>(var_3.c.d.x, arg_0.c.d.x, -1i, var_3.c.d.x) ^ u_input.c), var_1.x, Struct_2(_wgslsmith_add_i32(1i, u_input.a), vec2<i32>(1i, 2147483647i) << (arg_0.c.b.a % vec2<u32>(32u)), var_3.c.a.wwz, _wgslsmith_f_op_vec2_f32(var_3.c.a.wz + vec2<f32>(2144f, arg_0.c.b.b)), Struct_1(var_3.a.a, -668f, false))).a.c, func_2(var_3.b.x, !(_wgslsmith_div_i32(-19490i, arg_0.c.d.x) <= -40173i), ~_wgslsmith_div_vec4_u32(vec4<u32>(73653u, var_3.c.b.a.x, 0u, arg_0.c.e), vec4<u32>(24076u, 52818u, 3789u, var_2)) | ~vec4<u32>(14673u, arg_0.a.a.x, 88168u, var_0.x), Struct_2(func_5(var_3.c.c.zwx, vec4<i32>(2147483647i, -10284i, var_3.c.d.x, var_3.c.d.x), var_1.x, Struct_2(0i, vec2<i32>(45487i, -2147483647i), vec3<f32>(204f, -161f, -806f), vec2<f32>(162f, var_3.a.b), var_3.a)).c.d.x >> ((u_input.d | 59237u) % 32u), vec2<i32>(max(u_input.b.x, 24770i), func_3(arg_0.c.a.zy, vec3<bool>(var_3.b.x, true, var_3.a.c), Struct_4(-1i, Struct_2(var_3.c.d.x, var_3.c.d, vec3<f32>(-2652f, 1412f, arg_0.a.b), vec2<f32>(-1243f, var_1.x), Struct_1(vec2<u32>(var_0.x, u_input.d), var_3.c.b.b, var_3.a.c)), true, Struct_2(arg_0.c.d.x, vec2<i32>(2147483647i, 2147483647i), vec3<f32>(arg_0.a.b, -166f, var_1.x), arg_0.c.a.zx, Struct_1(var_0.xx, 1409f, false)))).x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.a.x, 1416f, -1189f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(180f, var_3.c.b.b, var_3.a.b))), true)), var_3.c.a.wx, Struct_1(vec2<u32>(0u, arg_0.a.a.x), func_5(vec3<bool>(true, false, var_3.c.b.c), u_input.c, 779f, Struct_2(arg_0.c.d.x, vec2<i32>(var_3.c.d.x, arg_0.c.d.x), arg_0.c.a.wwx, vec2<f32>(1505f, 1000f), arg_0.c.b)).c.b.b, func_2(arg_0.b.x, false, vec4<u32>(82184u, 8861u, 18490u, var_0.x), Struct_2(-2147483647i, vec2<i32>(arg_0.c.d.x, 2147483647i), vec3<f32>(1486f, 118f, -150f), vec2<f32>(arg_0.c.a.x, 579f), Struct_1(arg_0.a.a, var_1.x, arg_0.c.b.c))).c))).d);
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = func_6(func_5(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(false, true, false) | true), -(vec4<i32>(-42809i, -2147483647i, u_input.b.x, u_input.c.x) << (~vec4<u32>(54013u, 0u, 1u, 43709u) % vec4<u32>(32u))), -1000f, Struct_2(_wgslsmith_div_i32(~u_input.a, 1i), vec2<i32>(u_input.a, -1i) ^ vec2<i32>(u_input.c.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(func_4(-vec3<i32>(u_input.a, u_input.b.x, -3639i), 889f, true, func_2(false, false, vec4<u32>(arg_0, 51685u, arg_0, 77606u), Struct_2(-10004i, vec2<i32>(1881i, 0i), vec3<f32>(-397f, 1239f, -1594f), vec2<f32>(195f, -1167f), Struct_1(vec2<u32>(u_input.d, 1u), -1312f, false))))), vec2<f32>(-583f, _wgslsmith_div_f32(2913f, 1369f)), func_2(true, func_2(true, true, vec4<u32>(u_input.d, u_input.d, arg_0, u_input.d), Struct_2(u_input.c.x, u_input.c.wz, vec3<f32>(680f, 379f, 976f), vec2<f32>(-1242f, 730f), Struct_1(vec2<u32>(arg_0, 1u), -839f, true))).d.e.c, ~vec4<u32>(1u, 95551u, arg_0, 1u), Struct_2(u_input.a, vec2<i32>(u_input.a, -29957i), vec3<f32>(1614f, -577f, -1168f), vec2<f32>(-869f, 669f), Struct_1(vec2<u32>(arg_0, 4783u), -718f, true))).d.e)));
    let var_1 = -u_input.c;
    var var_2 = func_5(select(select(vec3<bool>(true, var_0.b.e.c, var_0.d.e.c), vec3<bool>(var_0.b.e.c, true, true), !var_0.b.e.c), !(!vec3<bool>(var_0.d.e.c, var_0.b.e.c, false)), any(!vec3<bool>(var_0.d.e.c, true, true))), ~vec4<i32>(-2147483647i, u_input.a, _wgslsmith_mult_i32(var_1.x, var_1.x), firstTrailingBit(-24680i)), func_5(func_5(func_5(vec3<bool>(false, true, true), vec4<i32>(-2147483647i, var_0.a, u_input.b.x, u_input.c.x), var_0.d.e.b, Struct_2(var_0.b.a, u_input.b.zz, vec3<f32>(var_0.d.e.b, var_0.b.d.x, -470f), var_0.d.d, var_0.b.e)).c.c.wzz, firstTrailingBit(vec4<i32>(-1i, u_input.b.x, var_1.x, -1i)), var_0.b.c.x, var_0.b).c.c.xxy, min(vec4<i32>(11539i, 1i, 0i, 2147483647i), ~var_1), _wgslsmith_div_f32(-1108f, 965f), var_0.b).c.a.x, var_0.b).a.a.x << (25659u % 32u);
    var var_3 = func_6(func_5(func_5(vec3<bool>(var_0.d.e.c && true, var_0.c, u_input.b.x != 0i), vec4<i32>(-25504i, firstTrailingBit(-350i), func_5(vec3<bool>(false, false, true), var_1, -957f, Struct_2(var_0.a, vec2<i32>(var_0.a, 14170i), vec3<f32>(var_0.d.c.x, var_0.b.d.x, var_0.d.e.b), var_0.b.c.xy, Struct_1(vec2<u32>(arg_0, u_input.d), var_0.b.d.x, true))).c.d.x, func_3(vec2<f32>(1668f, var_0.b.c.x), vec3<bool>(var_0.b.e.c, true, var_0.c), Struct_4(-2147483647i, Struct_2(u_input.c.x, vec2<i32>(-1i, u_input.c.x), vec3<f32>(-793f, var_0.b.c.x, var_0.b.e.b), vec2<f32>(var_0.d.e.b, var_0.b.d.x), Struct_1(vec2<u32>(14153u, var_0.d.e.a.x), var_0.b.d.x, false)), true, var_0.b)).x), 476f, func_2(var_0.c | var_0.d.e.c, !var_0.d.e.c, vec4<u32>(80u, var_0.b.e.a.x, arg_0, 42724u), func_2(var_0.d.e.c, var_0.b.e.c, vec4<u32>(var_0.b.e.a.x, u_input.d, 4294967295u, arg_0), Struct_2(-1i, u_input.b.zz, vec3<f32>(1000f, 685f, var_0.d.e.b), vec2<f32>(var_0.d.c.x, var_0.d.e.b), var_0.b.e)).d).b).c.c.xxy, vec4<i32>(_wgslsmith_add_i32(countOneBits(var_0.b.b.x), _wgslsmith_mod_i32(-15765i, var_0.d.b.x)), func_5(vec3<bool>(var_0.d.e.c, var_0.b.e.c, true), ~u_input.c, _wgslsmith_f_op_f32(floor(var_0.d.e.b)), Struct_2(-29987i, u_input.b.xx, vec3<f32>(var_0.b.d.x, var_0.b.e.b, var_0.d.e.b), var_0.b.c.yz, var_0.d.e)).c.d.x, ~var_1.x, _wgslsmith_mult_i32(u_input.c.x ^ 22461i, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.d.x, var_0.b.d.x) - -1244f), func_2(var_0.d.e.c, var_0.b.e.c & var_0.c, min(select(vec4<u32>(1u, 3476u, 1u, 1u), vec4<u32>(1u, 4294967295u, var_0.b.e.a.x, 4294967295u), false), select(vec4<u32>(u_input.d, u_input.d, 0u, var_0.d.e.a.x), vec4<u32>(u_input.d, 1u, 4294967295u, 41674u), var_0.c)), Struct_2(max(var_1.x, var_1.x), countOneBits(var_0.d.b), func_6(Struct_5(Struct_1(vec2<u32>(u_input.d, 81788u), var_0.b.c.x, var_0.d.e.c), vec2<bool>(true, var_0.d.e.c), Struct_3(vec4<f32>(var_0.b.c.x, -266f, 975f, var_0.b.e.b), var_0.d.e, vec4<bool>(var_0.c, var_0.d.e.c, var_0.b.e.c, true), var_1.zw, 59422u))).b.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-946f, var_0.b.c.x), vec2<f32>(-768f, var_0.b.e.b))), func_5(vec3<bool>(false, var_0.b.e.c, var_0.d.e.c), vec4<i32>(-44969i, u_input.b.x, -1i, var_0.d.b.x), 745f, var_0.d).a)).b)).b;
    var_3 = var_0.d;
    return func_5(vec3<bool>(true, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.d, var_3.e.a.x), vec4<u32>(1u, 93923u, 0u, 4294967295u)), min(vec4<u32>(arg_0, 4294967295u, 69580u, 4753u), vec4<u32>(1u, 1u, 15686u, 81273u))) < u_input.d, true), -(min(max(var_1, var_1), var_1) | -select(vec4<i32>(u_input.c.x, -2147483647i, var_3.b.x, -10194i), u_input.c, var_0.b.e.c)), 408f, Struct_2(1i & (var_3.a | 1i), vec2<i32>(var_1.x, ~(~var_3.b.x)), var_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.e.b, 1165f) * vec2<f32>(-651f, 462f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_3.d)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.e.b, -193f)))))), Struct_1(max(var_0.b.e.a << (vec2<u32>(var_3.e.a.x, 20812u) % vec2<u32>(32u)), var_3.e.a), var_3.e.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(~u_input.d, _wgslsmith_div_u32(~u_input.d, u_input.d));
    let var_1 = -792f;
    var var_2 = func_1(34221u);
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(27993i, 21157i, var_2.c.d.x, -3326i);
    let var_4 = reverseBits(24971u);
    let var_5 = vec4<bool>(func_6(func_1(_wgslsmith_add_u32(3648u, var_0) | 24812u)).c, var_2.a.c, true, var_2.b.x && !any(vec3<bool>(false, var_2.b.x, var_2.c.b.c)));
    var var_6 = 851i << (abs(_wgslsmith_div_u32(0u >> (var_2.a.a.x % 32u), 4294967295u) ^ func_6(Struct_5(Struct_1(var_2.a.a, 1742f, var_5.x), vec2<bool>(true, false), Struct_3(vec4<f32>(423f, 930f, var_2.c.a.x, var_2.a.b), var_2.a, var_2.c.c, var_3.yx, var_2.a.a.x))).d.e.a.x) % 32u);
    let var_7 = select((vec4<i32>(u_input.b.x ^ -2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.c.xxx), _wgslsmith_dot_vec3_i32(vec3<i32>(44895i, var_3.x, 2147483647i), u_input.b), max(4635i, var_3.x)) << (vec4<u32>(u_input.d, 1u, 1u, ~var_4) % vec4<u32>(32u))) ^ (u_input.c ^ _wgslsmith_clamp_vec4_i32(u_input.c, ~vec4<i32>(-5628i, 1i, 0i, -1i), vec4<i32>(var_3.x, 1i, -25658i, var_3.x))), vec4<i32>(~(-15509i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, firstTrailingBit(var_2.c.d.x), 1i | var_3.x), -15440i), -var_3.x, 1i), func_5(!(!var_2.c.c.wxw), ~abs(var_3) << (~vec4<u32>(0u, var_4, var_0, 66747u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -472f), Struct_2(min(var_2.c.d.x, 2147483647i) << (~4294967295u % 32u), func_2(false, true, ~vec4<u32>(var_0, 1u, var_2.a.a.x, var_0), Struct_2(1i, u_input.b.zy, var_2.c.a.xxx, var_2.c.a.wx, Struct_1(var_2.a.a, var_2.a.b, false))).d.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.b, var_1, 274f) + vec3<f32>(var_2.c.b.b, var_1, var_1)), var_2.c.a.yzy), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_4(u_input.c.yxy, var_2.c.a.x, true, Struct_4(u_input.b.x, Struct_2(var_3.x, u_input.c.zy, var_2.c.a.wzw, var_2.c.a.zz, var_2.a), true, Struct_2(-41939i, var_3.yx, var_2.c.a.wyz, vec2<f32>(var_1, var_2.c.a.x), Struct_1(vec2<u32>(var_0, var_4), 1138f, var_2.b.x))))).x, var_2.a.b), var_2.c.b)).c.c.x);
    var_2 = func_5(!(!vec3<bool>(func_6(Struct_5(var_2.a, vec2<bool>(var_5.x, false), var_2.c)).c, true, select(false, false, var_5.x))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_7.x, var_7.x), vec3<i32>(var_2.c.d.x, 1i, 80539i))), i32(-1i) * -3020i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.x, -2147483647i, var_2.c.d.x), _wgslsmith_sub_vec3_i32(vec3<i32>(67800i, -2147483647i, 2147483647i), u_input.b)) ^ min(var_2.c.d.x, var_3.x), func_1(u_input.d).c.d.x), _wgslsmith_f_op_vec3_f32(func_4(~abs(max(var_3.yww, vec3<i32>(800i, var_2.c.d.x, var_2.c.d.x))), var_2.c.a.x, true, func_2(select(true, true, true), true, _wgslsmith_sub_vec4_u32(~vec4<u32>(54778u, u_input.d, 90651u, var_4), abs(vec4<u32>(u_input.d, 10404u, 78858u, 90065u))), func_6(Struct_5(var_2.c.b, vec2<bool>(var_2.a.c, true), var_2.c)).b))).x, func_6(Struct_5(var_2.a, func_5(select(var_2.c.c.zwz, vec3<bool>(var_2.b.x, var_2.b.x, var_2.a.c), var_2.b.x), ~vec4<i32>(1i, u_input.c.x, -16816i, 63534i), -1042f, Struct_2(u_input.b.x, var_2.c.d, var_2.c.a.wzz, vec2<f32>(var_1, 524f), Struct_1(vec2<u32>(var_4, var_0), -896f, var_2.b.x))).c.c.zz, Struct_3(var_2.c.a, Struct_1(vec2<u32>(var_2.c.b.a.x, 14576u), var_1, var_2.a.c), vec4<bool>(true, var_5.x, var_2.b.x, false), -var_3.xy, _wgslsmith_mult_u32(1u, var_0)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.b.b))), vec3<u32>(func_1(var_4).c.b.a.x, abs(38056u), 1u), var_7.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(140f, -322f)), _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-356f, 1371f)))));
}

