struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(u_input.a, arg_0 > abs(0u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(651f)) + _wgslsmith_f_op_f32(ceil(arg_3.x))), _wgslsmith_f_op_f32(-1314f * 289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - arg_3.x) * -648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(206f, -984f)) + arg_3.x)))), u_input.b.xz, arg_3);
    var_0 = Struct_1(min(~_wgslsmith_div_i32(-2147483647i, arg_2.b.x), ~var_0.a), _wgslsmith_f_op_f32(max(2421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * arg_2.a)))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(max(arg_3.x, -1123f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1151f), -689f, _wgslsmith_f_op_f32(-546f - 174f), _wgslsmith_f_op_f32(575f * var_0.c.x)))), ~(countOneBits(vec2<u32>(var_0.d.x, 4294967295u) << (u_input.b.zx % vec2<u32>(32u))) | ~vec2<u32>(arg_0, arg_0)), arg_3);
    var_0 = Struct_1(u_input.a, true, _wgslsmith_f_op_vec4_f32(abs(var_0.c)), var_0.d | vec2<u32>(~u_input.b.x, 97036u), var_0.e);
    var var_1 = var_0.b;
    global0 = array<vec3<u32>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.x, arg_1 && true, Struct_4(arg_0.c, arg_0.b, -1432f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c)) - _wgslsmith_f_op_f32(-arg_0.a)), arg_0.c))));
    var var_1 = Struct_3(vec3<i32>(18931i, -2147483647i, abs(~(arg_2.x << (u_input.b.x % 32u)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-609f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f * arg_0.c) - arg_0.a)))), vec4<i32>(59630i, _wgslsmith_add_i32(u_input.c.x, u_input.d.x), 1i, (countOneBits(u_input.a) >> (~34857u % 32u)) << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 37502u, u_input.e, 0u), vec4<u32>(12040u, u_input.b.x, 49789u, 5372u))) % 32u)), 242f);
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(var_1.a.x, 21050i, 1i), -arg_0.b.x), _wgslsmith_mod_i32(-21627i, ~(-2147483647i))) << (u_input.b.x % 32u), max(_wgslsmith_sub_i32(-7001i, select(2147483647i, var_1.a.x, false) | select(arg_2.x, -4508i, true)), 2147483647i), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-15398i, arg_2.x, 21863i), -arg_0.b.xzz), u_input.a), _wgslsmith_dot_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_2.b.x, u_input.c.x, arg_2.x), arg_0.b)), min(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, arg_0.b.x, u_input.c.x, arg_0.b.x), u_input.c, vec4<bool>(false, false, arg_1, arg_1)), vec4<i32>(u_input.d.x, 0i, 0i, -2147483647i)), u_input.c)));
    var var_4 = u_input.d;
    return _wgslsmith_mult_vec4_u32(~max(vec4<u32>(4294967295u, 0u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u)) | vec4<u32>(~0u, abs(0u), _wgslsmith_mult_u32(29524u & u_input.b.x, u_input.e), u_input.e), ~firstTrailingBit(vec4<u32>(u_input.e & 4294967295u, u_input.b.x, ~u_input.b.x, ~u_input.b.x)));
}

fn func_1() -> bool {
    let var_0 = ~u_input.b.x;
    global0 = array<vec3<u32>, 28>();
    var var_1 = ~(max(reverseBits(~vec4<u32>(0u, var_0, 35025u, 0u)), ~vec4<u32>(0u, u_input.e, u_input.e, 4294967295u)) << (func_2(Struct_4(-325f, -u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1028f)), true, vec2<i32>(u_input.a, u_input.c.x) << (max(vec2<u32>(4294967295u, u_input.e), u_input.b.xz) % vec2<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_2(Struct_1(-2147483647i, !(!any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-203f, 2079f, -993f, -652f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -293f, -346f, 322f), vec4<f32>(218f, -947f, -242f, -2203f), vec4<bool>(false, false, false, false)))))), vec2<u32>(var_1.x, _wgslsmith_div_u32(var_0, 78356u)), vec3<f32>(-693f, 341f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2086f, 1704f)))), global0[_wgslsmith_index_u32(1u, 28u)], all(vec3<bool>(true, false, true)), vec4<i32>(u_input.a, u_input.d.x, 30973i, ~u_input.a), firstTrailingBit(u_input.c));
    var var_3 = !(!vec4<bool>(all(select(vec3<bool>(var_2.c, false, var_2.a.b), vec3<bool>(var_2.c, true, false), var_2.c)), false == (29732i < var_2.e.x), var_2.c, var_2.a.b));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 28>();
    var var_0 = !vec4<bool>(true, !any(vec3<bool>(false, false, true)), func_1(), true);
    let var_1 = var_0.x;
    let var_2 = Struct_2(Struct_1(u_input.d.x >> (u_input.b.x % 32u), var_0.x && !(u_input.d.x != 14281i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 571f, 713f, 2529f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1090f, 1381f, -658f, -536f), vec4<f32>(-979f, -1311f, -465f, -287f), true))))), countOneBits(select(firstLeadingBit(u_input.b.yy), vec2<u32>(u_input.e, u_input.b.x) | vec2<u32>(12184u, u_input.e), true && var_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(f32(-1f) * -1342f), 934f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, 719f, 1429f) + vec3<f32>(-315f, -913f, 1334f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-457f, 354f, -806f) + vec3<f32>(-1435f, -824f, -1785f))))))), global0[_wgslsmith_index_u32(u_input.e, 28u)], true || any(select(!vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x))), -u_input.c, vec4<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(reverseBits(u_input.a), 19223i << (0u % 32u))), select(-60736i, _wgslsmith_dot_vec3_i32(u_input.c.wzy, vec3<i32>(-9989i, u_input.c.x, 24738i)), var_0.x) ^ -(~u_input.a), _wgslsmith_clamp_i32(u_input.c.x, u_input.a, select(u_input.c.x, u_input.a << (u_input.b.x % 32u), var_0.x))));
    let var_3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.x, u_input.a, 0i) & u_input.d, reverseBits(vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x))), _wgslsmith_add_i32(u_input.a, 0i) & ~2147483647i) << (var_2.b.x % 32u), true, _wgslsmith_f_op_vec4_f32(var_2.a.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.c))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(61885u, 52446u, var_2.b.x, 7509u), firstLeadingBit(vec4<u32>(u_input.e, u_input.b.x, u_input.b.x, 1u))), ~71027u), _wgslsmith_f_op_vec3_f32(-var_2.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_3.d.x, 0u, 1u, ~0u)), var_2.b.x);
}

