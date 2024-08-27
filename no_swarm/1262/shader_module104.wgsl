struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(-211f, vec4<bool>(false, true, true, true), true, vec4<u32>(4294967295u, 5417u, 4294967295u, 1u)), false, 1i, Struct_2(12137u, Struct_1(-1357f, vec4<bool>(true, false, false, true), false, vec4<u32>(0u, 57642u, 4294967295u, 0u))), vec4<i32>(i32(-2147483648), 7581i, 26444i, 2147483647i)), Struct_3(Struct_1(-1211f, vec4<bool>(true, false, false, false), true, vec4<u32>(0u, 1u, 73731u, 4294967295u)), false, -29547i, Struct_2(1344u, Struct_1(1739f, vec4<bool>(false, false, false, false), true, vec4<u32>(84309u, 39031u, 4294967295u, 0u))), vec4<i32>(749i, -1589i, 1i, i32(-2147483648))), Struct_3(Struct_1(-2562f, vec4<bool>(true, true, true, true), false, vec4<u32>(15896u, 9284u, 0u, 4294967295u)), true, -1i, Struct_2(16911u, Struct_1(335f, vec4<bool>(false, true, false, true), true, vec4<u32>(0u, 9797u, 4294967295u, 38706u))), vec4<i32>(7855i, 2147483647i, -24751i, 35720i)), Struct_3(Struct_1(-1000f, vec4<bool>(true, true, true, false), false, vec4<u32>(45833u, 0u, 22196u, 1u)), true, i32(-2147483648), Struct_2(17843u, Struct_1(-212f, vec4<bool>(true, true, false, true), false, vec4<u32>(48185u, 88043u, 1u, 45968u))), vec4<i32>(1i, 56187i, -4922i, 22749i)), Struct_3(Struct_1(-1000f, vec4<bool>(true, true, false, true), false, vec4<u32>(71588u, 54531u, 54677u, 114806u)), true, -15512i, Struct_2(0u, Struct_1(-815f, vec4<bool>(false, true, true, true), true, vec4<u32>(100243u, 4294967295u, 1u, 106326u))), vec4<i32>(i32(-2147483648), 8253i, 0i, 1i)), Struct_3(Struct_1(1342f, vec4<bool>(true, true, false, true), true, vec4<u32>(85836u, 1u, 27500u, 14328u)), false, 1i, Struct_2(0u, Struct_1(1000f, vec4<bool>(false, true, false, true), false, vec4<u32>(26480u, 12687u, 32902u, 1u))), vec4<i32>(-1i, -22829i, 2147483647i, 2147483647i)));

var<private> global1: Struct_4 = Struct_4(vec3<f32>(-1064f, 1238f, 926f));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(371f, vec4<bool>(true, false, true, false), true, vec4<u32>(0u, 29228u, 4294967295u, 0u)), Struct_1(-1011f, vec4<bool>(true, true, true, false), false, vec4<u32>(1u, 4294967295u, 31665u, 0u)), Struct_1(-869f, vec4<bool>(false, true, true, true), true, vec4<u32>(4294967295u, 55652u, 27477u, 0u)), Struct_1(-1000f, vec4<bool>(true, false, true, false), false, vec4<u32>(30872u, 48416u, 1u, 23266u)), Struct_1(1214f, vec4<bool>(true, false, false, false), true, vec4<u32>(39006u, 1u, 4294967295u, 115523u)), Struct_1(-692f, vec4<bool>(true, true, true, false), false, vec4<u32>(1641u, 20464u, 1286u, 0u)), Struct_1(1000f, vec4<bool>(true, true, true, true), false, vec4<u32>(38231u, 4294967295u, 16675u, 34296u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = vec3<bool>(~13579i == u_input.b.x, all(vec4<bool>(!all(vec4<bool>(false, false, true, true)), true, false, false)), true);
    let var_1 = vec4<bool>(true, true, any(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), var_0.x))), true);
    var var_2 = arg_0;
    global2 = array<Struct_1, 7>();
    var var_3 = 1467f;
    return select(~countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, arg_0, arg_0)), vec3<u32>(arg_0, arg_0, arg_0))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 40344u, 0u), ~vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(arg_0, 1u | arg_0, _wgslsmith_sub_u32(1u, arg_0))), ~(vec3<u32>(69704u, arg_0, 22843u) & vec3<u32>(arg_0, arg_0, arg_0)) & firstLeadingBit(vec3<u32>(arg_0, arg_0, 4294967295u) & vec3<u32>(4294967295u, arg_0, arg_0))), all(select(select(select(vec3<bool>(true, var_1.x, false), var_1.zyz, var_1.xxy), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false)), vec3<bool>(any(vec4<bool>(var_0.x, var_1.x, var_0.x, var_0.x)), var_1.x, global1.a.x >= global1.a.x), !all(var_1.yx))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: i32) -> vec3<i32> {
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.a.x - 502f), _wgslsmith_f_op_f32(global1.a.x + 181f)) - vec3<f32>(471f, _wgslsmith_div_f32(-160f, global1.a.x), 877f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x)))))));
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a.x) + -550f), _wgslsmith_f_op_f32(f32(-1f) * -1125f), global1.a.x));
    global1 = Struct_4(vec3<f32>(-1393f, -1683f, global1.a.x));
    global0 = array<Struct_3, 6>();
    return vec3<i32>(~reverseBits(arg_2), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), i32(-1i) * -905i), -1i), -1449i, _wgslsmith_clamp_i32(~abs(arg_3), ~u_input.a | 30799i, u_input.b.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2, _wgslsmith_dot_vec3_i32(select(u_input.b.wwy, u_input.b.wxw, vec3<bool>(false, true, true)), vec3<i32>(arg_3, -27368i, -2147483647i))), -37608i));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global2 = array<Struct_1, 7>();
    var var_0 = -func_4(_wgslsmith_dot_vec3_u32(countOneBits(func_3(0u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(5805u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 67419u, 1u)))), true, _wgslsmith_clamp_i32(10792i, u_input.c, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.wyy), firstLeadingBit(vec3<i32>(u_input.b.x, 48888i, -5446i)))), 5595i);
    global2 = array<Struct_1, 7>();
    var var_1 = select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), global1.a.x != 1255f), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true), select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_0.a.x - global1.a.x) >= global1.a.x), all(vec4<bool>(false, false, any(vec2<bool>(false, true)), select(true, true, true)))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -663f), true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(527f, global1.a.x)))) == 326f);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.a.x)), global1.a.x, global1.a.x) - global1.a)));
    return Struct_1(_wgslsmith_f_op_f32(514f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, 509f)))))), !vec4<bool>(var_1.x, !var_1.x, false, false), all(select(vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, true)), true, var_1.x & var_1.x), select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, false), var_1.x), !vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, true, false))), !vec3<bool>(var_1.x, var_1.x, false))), firstTrailingBit(vec4<u32>(firstLeadingBit(1u), ~(~4294967295u), ~1u, 38322u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = vec3<bool>(false, !(!select(false, true, true)), countOneBits(abs(u_input.c) ^ u_input.b.x) == ~19092i);
    var var_1 = select(var_0.xx, var_0.xx, var_0.x);
    var var_2 = Struct_2(~(~(~firstTrailingBit(4294967295u))), func_2(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.a, vec3<f32>(arg_2.x, global1.a.x, -2481f))) * _wgslsmith_div_vec3_f32(global1.a, global1.a)))));
    var_2 = Struct_2(func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.a))))).d.x, func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.a))))));
    global0 = array<Struct_3, 6>();
    return select(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b.d.yzx, var_2.b.d.zzy), vec3<u32>(~var_2.b.d.x, var_2.a, func_2(Struct_4(vec3<f32>(-571f, arg_2.x, 555f))).d.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.b.d, var_2.b.d), var_2.a, abs(_wgslsmith_mod_u32(reverseBits(var_2.b.d.x), 43558u))), !(!func_2(Struct_4(vec3<f32>(1000f, arg_2.x, var_2.b.a))).b.www));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = vec2<u32>(4294967295u, arg_0.b.d.x);
    let var_1 = arg_0;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, func_2(Struct_4(vec3<f32>(arg_0.b.a, 665f, -1397f))).a, global1.a.x)));
    let var_3 = select(arg_1.d.b.b.wz, vec2<bool>(var_1.b.c, arg_1.b), func_2(var_2).d.x <= ~_wgslsmith_dot_vec4_u32(arg_1.a.d, arg_0.b.d));
    return 93132u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)));
    var var_0 = firstTrailingBit(vec2<u32>(1u, 1u));
    var var_1 = global2[_wgslsmith_index_u32(func_5(Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(38208u, var_0.x, var_0.x)), func_1(vec3<i32>(u_input.c, u_input.b.x, u_input.a), vec2<i32>(-26155i, u_input.a), global1.a)), func_2(Struct_4(vec3<f32>(global1.a.x, 609f, global1.a.x)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global1.a.x), func_2(Struct_4(vec3<f32>(global1.a.x, -730f, 1353f))).b, true, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4834u, var_0.x, var_0.x), vec4<u32>(var_0.x, 13495u, var_0.x, 11264u))), true, _wgslsmith_div_i32(~u_input.c, ~u_input.b.x), Struct_2(select(var_0.x, 95788u, true), func_2(Struct_4(vec3<f32>(350f, global1.a.x, -712f)))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a, -2147483647i, 23831i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.a, 80896i, -29653i)))) | var_0.x, 7u)];
    var_1 = Struct_1(func_2(Struct_4(global1.a)).a, vec4<bool>(true, (func_2(Struct_4(global1.a)).b.x | true) & false, min(abs(1u), ~var_1.d.x) == 0u, select(!(true & var_1.c), false, true)), select(var_1.b.x, var_1.c, var_1.b.x), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(func_5(Struct_2(var_0.x, Struct_1(1100f, vec4<bool>(true, false, true, false), var_1.c, var_1.d)), global0[_wgslsmith_index_u32(1u, 6u)]), 61283u, _wgslsmith_sub_u32(0u, var_0.x), var_1.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, abs(4294967295u), var_1.d.x, ~35007u), var_1.d)));
    var var_2 = ~vec4<u32>(~var_1.d.x, ~_wgslsmith_sub_u32(abs(4294967295u), var_0.x << (0u % 32u)), countOneBits(_wgslsmith_mult_u32(func_5(Struct_2(4294967295u, Struct_1(412f, vec4<bool>(true, var_1.c, true, true), var_1.c, var_1.d)), Struct_3(global2[_wgslsmith_index_u32(0u, 7u)], true, u_input.c, Struct_2(var_1.d.x, global2[_wgslsmith_index_u32(59988u, 7u)]), u_input.b)), func_2(Struct_4(global1.a)).d.x)), ~var_1.d.x);
    var_2 = var_1.d;
    var_1 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2629f, global1.a.x, var_1.a))) * global1.a)));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstLeadingBit(~reverseBits(0u)), _wgslsmith_mod_u32(var_0.x, ~(~673u)) | var_1.d.x), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(62987u);
}

