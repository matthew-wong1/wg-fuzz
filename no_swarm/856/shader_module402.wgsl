struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(18775i, false, vec4<f32>(-496f, -1209f, 1124f, 1079f), 1u, false);

var<private> global1: vec4<f32> = vec4<f32>(1514f, 520f, 265f, -2203f);

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(0u, 4294967295u, 9823u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(40622u, 1u, 0u), vec3<u32>(4294967295u, 45234u, 0u), vec3<u32>(4294967295u, 1u, 15330u), vec3<u32>(24215u, 41622u, 0u), vec3<u32>(43418u, 1u, 66899u), vec3<u32>(80834u, 17140u, 65171u), vec3<u32>(170u, 21209u, 54729u), vec3<u32>(1u, 0u, 1u), vec3<u32>(78095u, 0u, 46289u), vec3<u32>(4294967295u, 31161u, 0u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 14477u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(7843u, 1u, 6812u), vec3<u32>(39090u, 5819u, 75146u), vec3<u32>(37411u, 4294967295u, 0u), vec3<u32>(1u, 1u, 34196u), vec3<u32>(56185u, 1u, 1u), vec3<u32>(1u, 1u, 11274u));

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(i32(-2147483648), -1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = var_0.c.d << (countOneBits(vec4<u32>(firstTrailingBit(~arg_0.c.a.d), firstLeadingBit(arg_0.c.a.d) << (0u % 32u), arg_0.c.a.d, _wgslsmith_div_u32(12796u, 68215u) & arg_1)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_add_vec2_i32(firstTrailingBit(~var_0.a.xx), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -reverseBits(vec2<i32>(-2147483647i, 5243i)), vec2<i32>(i32(-1i) * -u_input.b, ~arg_0.c.c.a << (0u % 32u))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(exp2(1f)));
    var var_4 = global0.d >= ~abs(20637u);
    return all(select(var_0.b.xx, select(!(!vec2<bool>(true, global0.b)), !arg_0.b.ww, arg_0.b.xx), var_0.b.zx));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(-vec2<i32>(u_input.b, u_input.a.x), ~global0.d, global0.c.x, ~_wgslsmith_add_u32(27735u, global0.d ^ 45463u));
    var var_1 = global0.c.x;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))) - 1779f));
    let var_3 = vec3<f32>(var_2.a, 222f, global1.x);
    var var_4 = _wgslsmith_sub_vec3_i32(u_input.a.ywx, u_input.a.zzw);
    return Struct_3(vec3<i32>((u_input.b | _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-6004i, var_4.x, -6863i, -20219i))) & _wgslsmith_mult_i32(var_4.x, 2147483647i ^ var_4.x), -29906i, _wgslsmith_sub_i32(-3034i | -var_0.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.a, var_0.a), u_input.a.x))), vec4<bool>(!all(select(vec4<bool>(false, global0.b, global0.b, true), vec4<bool>(global0.e, global0.b, true, true), false)), !select(false || global0.b, false, true), !(!func_3(Struct_3(u_input.a.zxz, vec4<bool>(true, true, false, false), Struct_2(Struct_1(-7855i, false, vec4<f32>(var_0.c, -752f, 562f, var_3.x), 1u, true), global0.e, Struct_1(var_0.a.x, global0.e, global0.c, var_0.d, false), vec4<u32>(0u, 0u, var_0.d, var_0.b), var_2.a)), 72465u, vec4<i32>(var_4.x, u_input.b, var_4.x, -1i))), !any(select(vec2<bool>(false, global0.b), vec2<bool>(false, false), global0.b))), Struct_2(Struct_1(20693i, true, vec4<f32>(global0.c.x, global1.x, 1439f, _wgslsmith_f_op_f32(f32(-1f) * -717f)), ~(~40181u), true), false, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), firstLeadingBit(u_input.a)), true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.c))), countOneBits(4294967295u), global0.b), max(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b, 1u, var_0.b, global0.d), vec4<u32>(var_0.d, var_0.d, global0.d, 4294967295u)), firstLeadingBit(~vec4<u32>(0u, 4294967295u, 16748u, global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1294f, -1625f)) + -1486f))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<f32> {
    global2 = array<vec3<u32>, 22>();
    global2 = array<vec3<u32>, 22>();
    var var_0 = ~arg_1.c.d;
    var var_1 = Struct_4(global1.x);
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1093f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(437f * 1999f))), -257f, global0.c.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1132f, 325f, arg_1.c.c.c.x, var_1.a), vec4<f32>(-807f, -110f, arg_1.c.e, var_1.a), vec4<bool>(true, true, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(var_1.a, -452f, global1.x, var_1.a))))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-299f, -222f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.e * -114f), -781f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2214f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(649f, arg_1.c.a.c.x, global1.x, 805f))))) + arg_1.c.c.c))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec3<i32> {
    global1 = arg_3;
    let var_0 = Struct_4(global1.x);
    global1 = arg_3;
    global0 = Struct_1(u_input.a.x, !(!global0.e), _wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(func_4(any(arg_2.zyy), func_2()))), ~10924u, true);
    var var_1 = arg_0.x << (~(4294967295u | ~arg_1) % 32u);
    return abs(u_input.a.xzx);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-523f - global0.c.x), arg_1.x)) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1208f, -791f, all(vec2<bool>(true, arg_2.x))))))));
    var var_1 = arg_2;
    let var_2 = firstLeadingBit(~(~(~2147483647i)));
    var var_3 = global0.d;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), -740f, global1.x, _wgslsmith_f_op_f32(-703f + -178f)) - vec4<f32>(global1.x, _wgslsmith_div_f32(282f, 1660f), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(622f, _wgslsmith_f_op_vec4_f32(func_4(arg_2.x, Struct_3(arg_3.wyz, vec4<bool>(global0.b, true, true, arg_2.x), Struct_2(Struct_1(5227i, arg_2.x, global0.c, global0.d, true), true, Struct_1(arg_3.x, var_1.x, arg_1, global0.d, false), vec4<u32>(44017u, 4294967295u, 23880u, 1u), 1208f)))).x, _wgslsmith_f_op_f32(-var_0.a), func_2().c.a.c.x) + _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 3131f, -577f) - vec4<f32>(var_0.a, arg_1.x, 1619f, var_0.a))))), vec4<f32>(1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_div_f32(func_2().c.e, 356f), global1.x));
    return _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(global0.d), global0.d, ~firstLeadingBit(global0.d), _wgslsmith_sub_u32(_wgslsmith_add_u32(~global0.d, ~51786u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, global0.d, global0.d, 26254u) ^ vec4<u32>(0u, 78836u, global0.d, global0.d), _wgslsmith_add_vec4_u32(vec4<u32>(global0.d, 76922u, global0.d, global0.d), vec4<u32>(67428u, global0.d, global0.d, 0u))))), ~select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d, global0.d, 50036u, 1u), vec4<u32>(3428u, global0.d, 19981u, global0.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(33395u, 0u, 1u, 25514u), vec4<u32>(22220u, global0.d, global0.d, global0.d), vec4<u32>(0u, 15833u, global0.d, 36153u))), (vec4<u32>(20866u, 4294967295u, global0.d, 67764u) >> (vec4<u32>(1u, global0.d, 4294967295u, 1u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, global0.d, global0.d, 0u), vec4<u32>(global0.d, global0.d, 40728u, 0u)) % vec4<u32>(32u)), !vec4<bool>(true, false, arg_2.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-722f))), global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), global0.c));
    var var_0 = vec3<i32>(2147483647i, 14959i, _wgslsmith_clamp_i32(~0i, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.a, 39351i, u_input.b), u_input.a.zxw)), _wgslsmith_mod_i32(670i, ~(-35947i))));
    var var_1 = !vec4<bool>(false, global0.e, !(!(!global0.b)), all(vec2<bool>(true, false)));
    var_0 = vec3<i32>(-27205i, -u_input.a.x, 1i);
    global3 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_5(_wgslsmith_dot_vec3_i32(~(~u_input.a.wzz), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, global0.a) & u_input.a.zwz, func_1(vec2<u32>(23351u, global0.d), global0.d, vec4<bool>(global0.e, true, false, true), vec4<f32>(global0.c.x, 588f, global1.x, -953f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(var_0.x >= global0.a, func_2()))), vec3<bool>(false, select(var_1.x, global0.e, true) && select(global0.b, true, var_1.x), !all(vec4<bool>(false, true, global0.b, false))), vec4<i32>(-1i) * -vec4<i32>(46133i, global0.a, var_0.x, var_0.x)), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f) + 1f) + global0.c.x))));
}

