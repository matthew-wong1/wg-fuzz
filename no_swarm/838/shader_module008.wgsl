struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = !(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    var var_1 = select(vec4<bool>(!(!var_0.x) | !any(vec3<bool>(false, arg_2.c.b, false)), var_0.x, true, arg_0.b.b.c.b), !(!select(vec4<bool>(false, arg_2.c.b, arg_0.b.a.x, true), select(vec4<bool>(arg_2.c.b, arg_0.b.b.c.b, var_0.x, arg_2.c.b), vec4<bool>(true, arg_2.c.b, true, false), var_0.x), !var_0.x)), !vec4<bool>(select(false, true, arg_0.b.b.c.b), true, false, false));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.c.a), arg_2.d > _wgslsmith_add_i32(2147483647i, ~(-u_input.b.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.b.c.a.x, _wgslsmith_f_op_f32(arg_2.c.a.x * -777f)))), vec3<i32>(~firstLeadingBit(~u_input.b.x), _wgslsmith_dot_vec2_i32(-arg_2.c.d.xz, select(countOneBits(vec2<i32>(arg_2.c.d.x, arg_0.b.b.c.d.x)), firstTrailingBit(vec2<i32>(arg_2.d, arg_2.d)), true)), u_input.b.x));
    var_1 = !(!vec4<bool>(arg_2.c.b, all(vec4<bool>(var_1.x, var_0.x, var_0.x, true)), true, any(!vec4<bool>(false, var_0.x, false, true))));
    var var_3 = arg_0;
    return select(var_1.zwz, !vec3<bool>(all(select(vec2<bool>(false, false), var_1.wx, vec2<bool>(false, true))), var_3.a <= _wgslsmith_f_op_f32(-var_3.b.b.c.c.x), true), true);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), false), func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2018f)), Struct_3(vec2<bool>(true, true), Struct_2(4294967295u, u_input.c.x, Struct_1(vec3<f32>(-2970f, 1163f, -1000f), false, vec2<f32>(-1194f, 487f), u_input.b.yyw), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-212f)) + -1598f)), Struct_2(u_input.d.x, 16660u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, -2829f, 1242f) + vec3<f32>(1203f, -252f, 583f)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1260f, -1441f) + vec2<f32>(933f, 766f)), ~vec3<i32>(2147483647i, -1i, -1i)), -_wgslsmith_div_i32(arg_0.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, _wgslsmith_f_op_f32(min(1167f, 899f)), _wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(min(973f, -982f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-332f)), -797f, -1000f, _wgslsmith_div_f32(2098f, -269f)))), false);
    var_0 = vec3<bool>(true, arg_0.x >= (1i & u_input.b.x), true);
    let var_1 = vec4<i32>(abs(arg_0.x), u_input.b.x, -_wgslsmith_mult_i32(45353i, -firstLeadingBit(arg_0.x)), ~_wgslsmith_sub_i32(0i, -17598i));
    var var_2 = firstTrailingBit(u_input.b.xz);
    let var_3 = ~19150u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -609f, 567f), vec3<f32>(-1000f, -1274f, -235f))))))), !select(true, all(vec3<bool>(false, var_0.x, var_0.x)) & true, any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-505f, -841f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -1913f) * vec2<f32>(-144f, 232f))))), ~(~(vec3<i32>(-1i) * -var_1.xwz)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-227f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1178f, 811f))))));
    var var_1 = Struct_2(u_input.c.x, firstLeadingBit(_wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(abs(0u), _wgslsmith_dot_vec3_u32(u_input.c.zyw, u_input.c.zxw)))), func_2(-u_input.b | _wgslsmith_mult_vec4_i32(u_input.b, ~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x))), max(abs(~u_input.b.x), u_input.b.x));
    let var_2 = Struct_1(var_1.c.a, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0, 271f, false))))), var_1.c.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, ~u_input.b.x) & (~vec3<i32>(27595i, var_1.d, u_input.b.x) & ~var_1.c.d), func_2(-u_input.b).d ^ -reverseBits(var_1.c.d)));
    var_1 = Struct_2(1u & (30743u >> (var_1.b % 32u)), 0u, func_2(select(vec4<i32>(6637i, var_2.d.x, 37385i, var_2.d.x), countOneBits(vec4<i32>(u_input.b.x, var_1.d, -2147483647i, -2147483647i)), false) & vec4<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), 1i, var_2.d.x >> (64465u % 32u), ~var_2.d.x)), var_2.d.x);
    var_1 = Struct_2(var_1.a, ~103178u << (u_input.d.x % 32u), var_1.c, -10862i);
    return Struct_2(~(~50161u), ~(~u_input.c.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.a.x, var_1.c.c.x)), var_0), var_0), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a.x, var_1.c.c.x) - var_2.a.yz) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_2.c.x))))), var_1.c.d), _wgslsmith_div_i32(1i, -2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.c.x * arg_0.c.c.x) + _wgslsmith_f_op_f32(-arg_0.c.c.x)) * _wgslsmith_f_op_f32(trunc(arg_1)))), Struct_3(!(!(!arg_2)), func_1(func_3(Struct_4(102f, Struct_3(arg_2, Struct_2(u_input.d.x, 24216u, Struct_1(arg_0.c.a, true, vec2<f32>(arg_1, 856f), u_input.b.yzw), arg_0.c.d.x))), arg_0.c.a.x, arg_0, vec4<f32>(388f, arg_0.c.a.x, arg_1, arg_1)).x & arg_2.x)));
    var_0 = Struct_4(arg_1, Struct_3(select(vec2<bool>(true, false), func_3(Struct_4(arg_1, var_0.b), _wgslsmith_f_op_f32(trunc(-1436f)), func_1(var_0.b.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.c.x, arg_1, 1000f, arg_1), vec4<f32>(938f, arg_1, arg_0.c.c.x, arg_0.c.a.x))).xy, 495f <= _wgslsmith_f_op_f32(select(arg_0.c.a.x, -300f, arg_0.c.b))), var_0.b.b));
    var_0 = Struct_4(_wgslsmith_f_op_f32(arg_1 - func_1(func_3(Struct_4(-512f, var_0.b), -1901f, Struct_2(var_0.b.b.a, 38209u, var_0.b.b.c, -2147483647i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.a.x, -2034f, -416f, arg_0.c.c.x)))).x).c.c.x), Struct_3(!arg_2, func_1(all(!var_0.b.a))));
    var var_1 = func_1(true || (1765f >= func_2(u_input.b >> (vec4<u32>(24706u, u_input.a, arg_0.b, 27435u) % vec4<u32>(32u))).c.x)).c;
    var_1 = var_0.b.b.c;
    return max(vec3<u32>(0u, ~0u, ~_wgslsmith_dot_vec4_u32(reverseBits(u_input.c), vec4<u32>(4294967295u, var_0.b.b.b, arg_0.a, arg_0.a))), max(firstTrailingBit(~vec3<u32>(0u, 48254u, u_input.c.x)), vec3<u32>(~arg_0.a ^ u_input.c.x, firstTrailingBit(0u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.c.x, 15708u), vec4<u32>(var_0.b.b.a, 1u, 0u, var_0.b.b.b)), var_0.b.b.b, var_0.b.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xwy >> (firstLeadingBit(vec3<u32>(~(~u_input.a), ~u_input.a, 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.a, 0u), u_input.c))) % vec3<u32>(32u));
    var_0 = _wgslsmith_mod_vec3_u32(u_input.c.yxw, func_4(func_1(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1339f))), _wgslsmith_f_op_f32(sign(-242f))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 1u), countOneBits(21427u)) >> ((~7714u & countOneBits(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 1u, 11938u, 22767u)))) % 32u), 0u);
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a, _wgslsmith_mult_u32(var_1, ~1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~0u << (var_1 % 32u), abs(u_input.a)), ~vec3<u32>(u_input.c.x >> (4294967295u % 32u), var_1, ~1u), vec3<u32>(39534u, var_1, 4294967295u)));
    let var_2 = Struct_3(vec2<bool>(false, true), func_1(true || !(u_input.b.x == u_input.b.x)));
    let var_3 = select(!select(vec3<bool>(func_2(vec4<i32>(u_input.b.x, -1i, u_input.b.x, var_2.b.d)).b, var_2.b.c.b, !var_2.a.x), !vec3<bool>(var_2.a.x, var_2.b.c.b, var_2.b.c.b), select(select(vec3<bool>(var_2.b.c.b, var_2.b.c.b, false), vec3<bool>(false, true, var_2.a.x), vec3<bool>(var_2.a.x, false, true)), !vec3<bool>(true, var_2.a.x, var_2.a.x), !vec3<bool>(false, false, var_2.b.c.b))), vec3<bool>(true, !var_2.a.x, all(vec3<bool>(false, var_2.a.x || true, all(var_2.a)))), func_2(_wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.c.d.x, 1i, var_2.b.c.d.x, u_input.b.x), u_input.b)), u_input.b)).b);
    var_0 = max(firstTrailingBit(countOneBits(~(u_input.c.zxz & vec3<u32>(var_1, 28222u, var_2.b.a)))), ~countOneBits(~u_input.c.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.c.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-891f, var_2.b.c.c.x, var_2.b.c.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.c.c.x, var_2.b.c.c.x, var_2.b.c.a.x, -1140f) + vec4<f32>(var_2.b.c.c.x, 1594f, var_2.b.c.c.x, 488f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.a.x, var_2.b.c.a.x, -140f, var_2.b.c.a.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(594f))), -320f)), select((u_input.b ^ u_input.b) >> (vec4<u32>(66674u, var_0.x, var_2.b.b, var_0.x) % vec4<u32>(32u)), reverseBits(u_input.b), true) ^ abs(~reverseBits(u_input.b)), 0i);
}

