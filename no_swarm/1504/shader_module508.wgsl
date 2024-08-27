struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(525f, vec4<bool>(false, true, false, false), vec4<u32>(6688u, 0u, 1u, 1u), 1u, vec3<u32>(69079u, 67736u, 52444u)), Struct_2(-1067f, false, vec3<bool>(false, true, true), Struct_1(-856f, vec4<bool>(false, true, false, false), vec4<u32>(16470u, 85454u, 0u, 39267u), 0u, vec3<u32>(37019u, 4294967295u, 1u)), Struct_1(992f, vec4<bool>(true, true, false, true), vec4<u32>(1u, 4294967295u, 67369u, 33667u), 1u, vec3<u32>(22837u, 72563u, 55917u))), Struct_2(-439f, true, vec3<bool>(false, false, false), Struct_1(-967f, vec4<bool>(true, false, true, false), vec4<u32>(0u, 0u, 0u, 54273u), 0u, vec3<u32>(8726u, 0u, 1u)), Struct_1(578f, vec4<bool>(true, true, true, true), vec4<u32>(0u, 30980u, 23571u, 12948u), 73834u, vec3<u32>(4294967295u, 0u, 1u))), vec3<i32>(0i, 2147483647i, -1i), vec2<f32>(1593f, 1480f));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_2 = Struct_2(-768f, false, vec3<bool>(true, true, false), Struct_1(838f, vec4<bool>(true, true, true, true), vec4<u32>(16188u, 1u, 0u, 0u), 10873u, vec3<u32>(6098u, 24424u, 82340u)), Struct_1(106f, vec4<bool>(true, false, true, true), vec4<u32>(30028u, 103687u, 0u, 1u), 54646u, vec3<u32>(0u, 1u, 13972u)));

var<private> global3: Struct_2 = Struct_2(-1000f, false, vec3<bool>(true, false, true), Struct_1(837f, vec4<bool>(false, false, false, true), vec4<u32>(1u, 14005u, 1u, 0u), 52377u, vec3<u32>(3048u, 6834u, 4294967295u)), Struct_1(822f, vec4<bool>(false, true, false, false), vec4<u32>(80118u, 4294967295u, 62724u, 23453u), 1u, vec3<u32>(533u, 23373u, 23299u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = global0.d.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1553f)), var_1, _wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_div_f32(global2.e.a, 537f)), vec4<f32>(_wgslsmith_f_op_f32(step(733f, global3.e.a)), _wgslsmith_f_op_f32(max(-2341f, 1595f)), -467f, _wgslsmith_f_op_f32(-global0.e.x))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -954f, -356f, 367f)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, global3.a)), vec4<bool>(global0.a.b.x, global3.b, global2.c.x, true), ~global0.c.d.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), 0u), global3.e.e);
    let var_4 = global3.d.e;
    return global0.d.xy;
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = select(!select(vec2<bool>(all(vec4<bool>(global0.b.d.b.x, global3.b, false, global1.x)), true), select(global2.d.b.zx, global2.e.b.yx, global3.e.e.x != 32324u), global0.b.e.b.yy), !(!vec2<bool>(false, !global1.x)), vec2<bool>(false, true));
    global2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1528f, _wgslsmith_f_op_f32(-345f * arg_0)))))), select(select(global0.a.a <= -362f, false, !(global1.x && global1.x)), all(vec3<bool>(!global2.d.b.x, true, var_0.x)), any(!global3.c)), select(select(vec3<bool>(select(global0.b.c.x, true, var_0.x), all(vec3<bool>(global2.d.b.x, var_0.x, var_0.x)), global1.x), global0.c.c, select(select(global0.a.b.wwy, vec3<bool>(true, global0.c.b, true), true), select(vec3<bool>(global3.b, true, true), vec3<bool>(true, true, false), global3.d.b.x), select(vec3<bool>(false, global0.a.b.x, false), global0.c.e.b.wyw, global0.a.b.zxx))), select(vec3<bool>(!global2.c.x, global3.b, false), !global0.c.d.b.www, vec3<bool>(all(global3.c.xy), var_0.x || var_0.x, any(global2.e.b.yw))), !(!vec3<bool>(false, var_0.x, global0.b.c.x))), Struct_1(arg_0, !vec4<bool>(any(global3.d.b.xxx), any(vec3<bool>(var_0.x, false, var_0.x)), any(global0.c.d.b), global0.a.b.x), firstLeadingBit(~vec4<u32>(42939u, global3.d.e.x, u_input.b.x, global3.e.c.x)), global3.e.e.x, abs(vec3<u32>(global2.d.c.x << (global2.d.c.x % 32u), 4294967295u, ~u_input.c))), Struct_1(657f, vec4<bool>(true, global2.b, false, all(!vec4<bool>(false, global2.e.b.x, var_0.x, global3.b))), max(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, global0.b.d.c), max(u_input.d, 3788u), ~74087u, reverseBits(global2.d.d)), vec4<u32>(~97887u, ~4294967295u, global2.e.e.x, _wgslsmith_mod_u32(global3.e.d, u_input.c))), global2.d.d, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4181u, 16301u), u_input.b.xy), ~4580u, ~firstTrailingBit(u_input.b.x))));
    global1 = vec2<bool>(select(true, all(vec4<bool>(true, true, !global2.d.b.x, var_0.x)), global0.a.e.x != _wgslsmith_mod_u32(1u, select(1u, 34025u, true))), true);
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_0), !select(vec4<bool>(true, var_0.x, true, global3.c.x), global0.b.e.b, global3.d.b), vec4<u32>(30469u, ~max(4294967295u, u_input.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.d.e.x, global2.d.c.x, global2.e.c.x), vec3<u32>(38897u, global0.c.d.e.x, global3.d.c.x)), _wgslsmith_add_u32(u_input.c, countOneBits(0u))), _wgslsmith_mod_u32(~22077u, u_input.b.x), vec3<u32>(39180u, 1u, 1u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-951f, arg_0) * 1014f), _wgslsmith_f_op_f32(step(arg_0, -1510f))), global3.d.b.x, select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, false, global0.d.x < global0.d.x), !var_0.x), global3.d, global2.d), global0.b, ~(~firstLeadingBit(vec3<i32>(1i, -27934i, -2147483647i)) >> (~global0.a.e % vec3<u32>(32u))), vec2<f32>(global2.e.a, _wgslsmith_f_op_f32(f32(-1f) * -238f)));
    return global0.d.x;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.a + global3.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.a + _wgslsmith_f_op_f32(step(-298f, global2.e.a))) * 1f)), global3.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a * global3.a)), global0.e.x);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) * _wgslsmith_f_op_f32(floor(global3.d.a)))), global0.a.b, firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(1732u, global0.a.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.c.x, global0.a.e.x, 4294967295u, global2.d.e.x), global0.b.e.c), ~2321u, ~4294967295u)), u_input.c, abs(reverseBits(vec3<u32>(global2.d.c.x, global0.c.d.e.x, global3.d.c.x))) | abs(~vec3<u32>(global3.d.c.x, global2.e.c.x, global2.e.c.x))), _wgslsmith_f_op_f32(ceil(1299f)), global2.e, select(!select(global0.b.e.b.zzy, vec3<bool>(true, true, true), global1.x), global2.c, select(vec3<bool>(false, !global2.d.b.x, !global2.b), global2.c, false)), func_2(all(global3.d.b)));
    var_1 = Struct_3(var_1.c, _wgslsmith_f_op_f32(-global2.a), Struct_1(_wgslsmith_f_op_f32(func_4(func_3(global2.a) < ~2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_1.a.a, global0.c.d.a, global0.b.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 1142f, -1345f, -209f) - vec4<f32>(global0.b.e.a, global3.a, 219f, global2.a))), ~(vec4<i32>(var_1.e.x, -17865i, var_1.e.x, 2147483647i) | vec4<i32>(29836i, var_1.e.x, global0.d.x, -36415i)))), !global3.d.b, ~vec4<u32>(4294967295u, 1u, 1u, 86095u), global2.d.d, vec3<u32>(global2.d.c.x, _wgslsmith_dot_vec3_u32(global3.d.c.wwx, vec3<u32>(0u, var_1.a.c.x, 14398u)), _wgslsmith_add_u32(var_1.c.e.x, 48261u)) & ~vec3<u32>(global2.d.d, 4294967295u, 66134u)), global3.c, abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.e.x, var_1.e.x), var_1.e, vec2<i32>(-10100i, global0.d.x)) >> (vec2<u32>(~1u, abs(u_input.b.x)) % vec2<u32>(32u))));
    var var_2 = reverseBits(-(~global0.d));
    let var_3 = vec2<bool>(false, any(select(select(global3.e.b, select(global3.e.b, global2.e.b, var_1.d.x), true), !(!vec4<bool>(true, var_1.c.b.x, true, false)), var_1.d.x)));
    return Struct_1(global2.d.a, vec4<bool>(false, false, global2.e.b.x, false), vec4<u32>(global2.e.c.x, ~(1u << (abs(global2.d.e.x) % 32u)), _wgslsmith_mult_u32(max(1u, countOneBits(6742u)), 15210u ^ (global0.c.d.e.x << (51340u % 32u))), 9383u), 39707u, select(~_wgslsmith_mod_vec3_u32(var_1.a.e, u_input.a), select(abs(u_input.a), vec3<u32>(58265u ^ global0.b.e.e.x, _wgslsmith_mod_u32(global0.c.d.e.x, global0.a.c.x), 11162u), global2.e.b.x), global2.d.b.wxw));
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    global2 = Struct_2(arg_0.a, arg_0.b.x, select(global2.c, global2.e.b.yzw, any(!func_1().b.zzy)), arg_0, global3.d);
    return Struct_4(func_1(), Struct_2(arg_0.a, any(vec4<bool>(true, all(vec2<bool>(false, global1.x)), true, true)), vec3<bool>(global2.c.x & false, true, global1.x), global2.d, func_1()), global0.b, max(_wgslsmith_div_vec3_i32(firstLeadingBit(~global0.d), reverseBits(global0.d)), abs(max(global0.d >> (global3.d.c.wyz % vec3<u32>(32u)), ~vec3<i32>(global0.d.x, global0.d.x, global0.d.x)))), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    let var_1 = func_5(var_0.a).b;
    var var_2 = var_0.b;
    global2 = global0.b;
    var_0 = Struct_4(global2.d, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.a)))), !(func_5(global3.d).b.e.b.x & all(var_1.e.b.wzz)), var_0.a.b.xzx, func_5(func_5(Struct_1(var_0.b.d.a, vec4<bool>(true, false, var_0.b.e.b.x, global0.c.e.b.x), vec4<u32>(78256u, var_1.e.e.x, 32796u, u_input.a.x), 1u, vec3<u32>(1u, global0.a.e.x, 2341u))).b.e).b.e, Struct_1(296f, !func_1().b, ~vec4<u32>(var_1.e.c.x, 0u, 9382u, 65015u), _wgslsmith_clamp_u32(global0.c.e.e.x, 0u, ~1u), vec3<u32>(53867u, global3.e.d, _wgslsmith_add_u32(77835u, global0.c.d.d)))), func_5(func_1()).c, vec3<i32>(1i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, global0.d.x, 1i), vec4<i32>(var_0.d.x, global0.d.x, 1i, var_0.d.x)), 13i), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.e.a, -1086f)), _wgslsmith_f_op_f32(var_0.b.a * -279f))) + global0.e));
    let var_3 = 9383u;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.d.yy, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.d, global0.d), func_3(469f)), _wgslsmith_div_i32(var_0.d.x & -51476i, func_3(var_2.e.a))), vec2<bool>(true & !var_0.a.b.x, global2.c.x & (var_1.e.b.x & false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(564f, var_1.e.a, 1024f) * vec3<f32>(var_0.a.a, global3.a, var_0.b.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.a, 1589f, -871f), vec3<f32>(101f, global3.e.a, -180f)))) + vec3<f32>(global2.d.a, -1024f, _wgslsmith_f_op_f32(-global3.e.a)))), ~(~vec3<i32>(-1i, func_5(global0.a).d.x, abs(15718i))), -_wgslsmith_add_i32(2734i, firstLeadingBit(~var_0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-808f, 1426f, global2.a, 519f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, global0.b.e.a, global2.e.a, -1459f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a, global2.e.a, 288f, global2.e.a) * vec4<f32>(global2.e.a, 1206f, -509f, -401f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.e.a * 1000f), _wgslsmith_f_op_f32(var_2.a + var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2152f - global0.a.a) - 872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1034f, var_0.c.e.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1295f)), _wgslsmith_div_f32(695f, _wgslsmith_f_op_f32(-global0.c.d.a)))));
}

