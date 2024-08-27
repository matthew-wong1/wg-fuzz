struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, 1u, vec3<i32>(i32(-2147483648), -1i, -13237i), vec4<u32>(38457u, 41548u, 14648u, 80366u), vec3<f32>(489f, 730f, 934f)), Struct_1(false, 4294967295u, vec3<i32>(-7906i, -21789i, 2147483647i), vec4<u32>(45482u, 59043u, 8046u, 28134u), vec3<f32>(1145f, 301f, -991f)), Struct_1(false, 37762u, vec3<i32>(-45367i, 13306i, -38008i), vec4<u32>(31434u, 65187u, 32658u, 0u), vec3<f32>(-1225f, 133f, 682f)), Struct_1(false, 53820u, vec3<i32>(2147483647i, 0i, 0i), vec4<u32>(0u, 10230u, 0u, 7023u), vec3<f32>(-646f, -353f, -1112f)), Struct_1(true, 4294967295u, vec3<i32>(0i, 1i, -65018i), vec4<u32>(40369u, 4294967295u, 4294967295u, 68728u), vec3<f32>(-146f, -318f, 821f)), Struct_1(true, 42757u, vec3<i32>(0i, -263i, -2595i), vec4<u32>(10993u, 0u, 18706u, 34665u), vec3<f32>(1222f, 2495f, 582f)), Struct_1(false, 4294967295u, vec3<i32>(2147483647i, 2147483647i, 50865i), vec4<u32>(1u, 4294967295u, 0u, 86998u), vec3<f32>(-196f, 1217f, -1008f)), Struct_1(true, 89520u, vec3<i32>(16347i, i32(-2147483648), -10744i), vec4<u32>(44046u, 0u, 51391u, 52744u), vec3<f32>(-521f, -341f, 1721f)), Struct_1(false, 0u, vec3<i32>(0i, 2147483647i, -1i), vec4<u32>(1u, 17484u, 0u, 43248u), vec3<f32>(-325f, -1401f, 793f)), Struct_1(true, 6339u, vec3<i32>(1i, 14725i, 1i), vec4<u32>(9563u, 49502u, 1u, 1u), vec3<f32>(1000f, 1691f, -1701f)), Struct_1(true, 19004u, vec3<i32>(-1i, 0i, -31716i), vec4<u32>(32273u, 74779u, 0u, 28786u), vec3<f32>(-729f, 1128f, -1335f)), Struct_1(false, 6494u, vec3<i32>(1i, 60156i, 32491i), vec4<u32>(4294967295u, 1u, 0u, 40052u), vec3<f32>(-779f, 164f, 1000f)), Struct_1(false, 0u, vec3<i32>(41816i, 14809i, i32(-2147483648)), vec4<u32>(1u, 77695u, 45736u, 55350u), vec3<f32>(1134f, -712f, -822f)), Struct_1(false, 0u, vec3<i32>(14198i, 48554i, i32(-2147483648)), vec4<u32>(0u, 59490u, 90223u, 1u), vec3<f32>(-1048f, -1516f, -2295f)), Struct_1(true, 4294967295u, vec3<i32>(i32(-2147483648), 11836i, 13924i), vec4<u32>(30250u, 7264u, 4294967295u, 40565u), vec3<f32>(270f, -2598f, -797f)), Struct_1(false, 43062u, vec3<i32>(-11692i, 1i, -9950i), vec4<u32>(0u, 1u, 1u, 46810u), vec3<f32>(-747f, 408f, 397f)), Struct_1(false, 80109u, vec3<i32>(2147483647i, -39999i, 1i), vec4<u32>(1u, 14940u, 1u, 1u), vec3<f32>(-2062f, 1947f, -625f)), Struct_1(false, 30579u, vec3<i32>(1i, -2308i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 45705u, 1u), vec3<f32>(-1000f, 465f, -2187f)));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-738f)), arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)), _wgslsmith_f_op_f32(sign(arg_0.e.x)))));
    return arg_0.d;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, global2.x), global2.x), !vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(global2.x, global2.x, true), !vec3<bool>(global2.x, true, false), vec3<bool>(true, true, true)))), 51952u, -vec3<i32>(~2147483647i, _wgslsmith_sub_i32(u_input.b, arg_1.x), select(arg_3.x, -59003i, global2.x)) | _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_1.x, arg_1.x, arg_3.x)), arg_1.yzx), countOneBits(vec4<u32>(_wgslsmith_add_u32(u_input.c, ~3363u), ~0u, u_input.c, ~_wgslsmith_add_u32(0u, 44071u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_2.x + -622f))), _wgslsmith_f_op_f32(f32(-1f) * -1109f), arg_0.x));
    global2 = vec2<bool>(true, false);
    global2 = select(vec2<bool>(var_0.a, !global2.x && !(!global2.x)), !vec2<bool>(arg_0.x > arg_2.x, any(select(global0[_wgslsmith_index_u32(var_0.b, 5u)], global0[_wgslsmith_index_u32(var_0.d.x, 5u)], vec4<bool>(true, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -947f)))) > _wgslsmith_f_op_f32(986f - _wgslsmith_f_op_f32(sign(-2042f))));
    global2 = vec2<bool>(select(-1i, -29772i, false) == _wgslsmith_div_i32(i32(-1i) * -var_0.c.x, _wgslsmith_add_i32(countOneBits(arg_1.x), arg_3.x >> (u_input.c % 32u))), false != !any(vec3<bool>(var_0.a, true, var_0.a)));
    global2 = !(!vec2<bool>(true, global2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - 1572f));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_1(global2.x, u_input.c, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~arg_0.c, arg_0.c), arg_0.c), vec4<u32>(~(~40130u), _wgslsmith_mod_u32(~arg_3.x, max(0u, 0u)), 4294967295u, min(u_input.c, arg_0.d.x)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.x - -1658f), 702f, -1015f));
    global2 = !(!(!vec2<bool>(!var_0.a, var_0.a)));
    let var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.e, -vec4<i32>(-81271i, -6156i, var_0.c.x, var_0.c.x), vec2<f32>(arg_1, arg_1), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), arg_0.c.yy))) * var_0.e.x)));
    var var_2 = var_0;
    let var_3 = var_0;
    return abs(_wgslsmith_div_u32(u_input.c, (0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_2.d.x, 32551u, u_input.c), vec4<u32>(4064u, 1u, 1112u, 116361u))) | select(var_0.d.x, firstTrailingBit(arg_3.x), true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 5u)];
    global2 = vec2<bool>(0i >= u_input.a, !var_0.x);
    var_0 = select(vec4<bool>(true, !all(var_0.yy), var_0.x, var_0.x), !(!(!vec4<bool>(global2.x, var_0.x, global2.x, var_0.x))), global2.x);
    var var_1 = Struct_1(false, reverseBits(max(~24989u, ~firstTrailingBit(arg_0.x))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.b), u_input.b, u_input.b)), -_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.b, 0i, u_input.b)), select(vec3<i32>(u_input.b, 0i, 38018i), vec3<i32>(u_input.b, u_input.b, 2147483647i), global2.x))), vec4<u32>(abs(~(~1u)), 80807u, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1954f + 481f)), 877f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(690f * -1047f))))));
    var var_2 = Struct_1((!var_1.a | global2.x) != (-495f == _wgslsmith_f_op_f32(-var_1.e.x)), ~var_1.b, vec3<i32>((_wgslsmith_mod_i32(-2147483647i, u_input.a) >> (1u % 32u)) | ~(~var_1.c.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, u_input.b))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, var_1.c.x, 17494i, 1i)) << (func_1(Struct_1(var_1.a, arg_0.x, var_1.c, vec4<u32>(arg_1, 69871u, arg_0.x, 1u), vec3<f32>(var_1.e.x, var_1.e.x, -1794f))) % vec4<u32>(32u)), select(vec4<i32>(var_1.c.x, u_input.b, 6796i, u_input.a), ~vec4<i32>(1i, var_1.c.x, u_input.a, -33520i), global2.x))), _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(~0u), func_1(Struct_1(var_1.a, 8420u, var_1.c, vec4<u32>(1u, 41683u, u_input.c, 3024u), var_1.e)).x, ~(~u_input.c), max(7355u, arg_0.x)), ~var_1.d), vec3<f32>(var_1.e.x, -563f, _wgslsmith_f_op_f32(abs(var_1.e.x))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.e.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-985f, 300f) * vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(var_2.e.x + var_1.e.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.e.x, -1003f)), var_2.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(617f, -182f)))), _wgslsmith_f_op_f32(f32(-1f) * -304f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global1 = array<Struct_1, 18>();
    var var_1 = Struct_1(global2.x, 25418u, ~vec3<i32>(1i, ~(-25488i), _wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(-8728i, u_input.a, u_input.b))), _wgslsmith_add_vec4_u32(func_1(global1[_wgslsmith_index_u32(976u, 18u)]), ~(~(~vec4<u32>(97446u, var_0, 4294967295u, u_input.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, _wgslsmith_f_op_f32(-624f - -3389f), _wgslsmith_f_op_f32(round(1532f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1110f, 299f, 361f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1211f, 1688f, -1029f) + vec3<f32>(853f, -1692f, 1001f))))));
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.e.x, var_1.e.x))))))) + _wgslsmith_f_op_vec2_f32(func_4(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0), var_1.d.xw, var_1.d.ww), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.d.zw, var_1.d.zy), var_2), vec2<bool>(true, global2.x)), _wgslsmith_sub_u32(0u, func_2(Struct_1(global2.x, var_1.d.x, var_1.c, var_1.d, vec3<f32>(250f, var_1.e.x, var_1.e.x)), _wgslsmith_f_op_f32(var_1.e.x - 156f), true, ~var_1.d.zyz)))));
    var var_4 = var_1.d.yw;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

