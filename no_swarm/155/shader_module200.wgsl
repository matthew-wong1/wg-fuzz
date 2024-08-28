struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: array<Struct_5, 29>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_4(!select(vec4<bool>(select(true, false, false), true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 305f, 214f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(688f, -1091f, 126f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-397f, 1000f, -1125f))))))), Struct_1(-51680i, _wgslsmith_f_op_f32(f32(-1f) * -833f), u_input.e.zyz, select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(true, true, false, true)), true, all(vec2<bool>(true, true))), all(vec3<bool>(false, true, true))), all(vec3<bool>(u_input.d <= 0u, true, true))), Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(35554i, -1i, u_input.a, u_input.a)), max(-vec4<i32>(u_input.a, 69084i, 1214i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i))), -1115f, u_input.b.xyy, vec4<bool>(true, true, true, true), false));
    let var_1 = var_0.d;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(668f, 269f, -405f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_0.d.b, var_0.c.b, var_0.b.x) + vec4<f32>(-258f, var_0.c.b, 723f, 836f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-480f)), var_0.d.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(187f - -420f))), -634f));
    let var_3 = var_0.c;
    let var_4 = var_0.c;
    return var_0.c.c.x;
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_5, 29>();
    global1 = array<Struct_5, 29>();
    global1 = array<Struct_5, 29>();
    let var_0 = Struct_4(vec4<bool>(u_input.c >= 1u, all(vec3<bool>(false, all(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, false)))), 1243f != _wgslsmith_f_op_f32(ceil(-1634f)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(747f, 685f, -434f) + vec3<f32>(611f, 1000f, -1140f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(942f, 102f, 2638f)))))), Struct_1(u_input.a, _wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f + -1211f))), ~u_input.b.xyx >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]), u_input.b.wyw) % vec3<u32>(32u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), true), Struct_1(530i, 387f, u_input.e.zzz, !vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, false))), true));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(reverseBits(func_3()), 2592u), func_3(), 1u, ~(~(~u_input.c)));
    return Struct_2(var_0.d, firstLeadingBit(~34202u), var_0.d.d.x, 1i << (firstTrailingBit(46327u) % 32u), Struct_1(-abs(u_input.a), _wgslsmith_f_op_f32(-1515f - -624f), ~_wgslsmith_div_vec3_u32(countOneBits(u_input.b.www), max(var_1.xxx, vec3<u32>(75572u, u_input.c, 0u))), vec4<bool>(all(vec2<bool>(true, true)), var_1.x <= 38838u, true, max(u_input.b.x, 45457u) != ~u_input.d), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global1 = array<Struct_5, 29>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let var_0 = Struct_5(_wgslsmith_div_vec2_i32(vec2<i32>(42220i, _wgslsmith_mod_i32(1i, -27338i << (global0[_wgslsmith_index_u32(arg_2.b, 12u)] % 32u))), vec2<i32>(func_2().e.a, max(arg_2.a.a, -arg_3.e.a))), ~arg_0.e.c.x, max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, arg_2.a.a), arg_3.d), ~(~2147483647i)) | arg_2.d, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_sub_i32(select(-51855i, arg_3.d, true), _wgslsmith_add_i32(arg_0.d, arg_0.e.a))), 0i), all(vec3<bool>(true, (-50245i ^ arg_1.a.x) < (i32(-1i) * -1i), arg_0.a.e)));
    return all(!(!arg_0.e.d.yz));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-341f, -553f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 623f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1816f, -1000f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, _wgslsmith_f_op_f32(max(-669f, 1096f))) - vec2<f32>(1356f, _wgslsmith_div_f32(-1147f, -952f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1894f, -1661f)) - vec2<f32>(-243f, -701f)))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var var_1 = func_4(func_2(), Struct_5(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a, -23288i)), _wgslsmith_div_vec2_i32(min(vec2<i32>(-10028i, 11481i), vec2<i32>(5109i, u_input.a)), select(vec2<i32>(u_input.a, 0i), vec2<i32>(31918i, 1i), false))), ~_wgslsmith_clamp_u32(u_input.b.x >> (4294967295u % 32u), global0[_wgslsmith_index_u32(u_input.b.x, 12u)] | u_input.e.x, 4294967295u), 0i, u_input.a, true), func_2(), Struct_2(Struct_1(_wgslsmith_mod_i32(1i, -u_input.a), _wgslsmith_f_op_f32(var_0.x + -582f), ~u_input.b.yzw & u_input.e.yxx, select(func_2().e.d, vec4<bool>(true, true, true, true), true), _wgslsmith_dot_vec2_u32(u_input.b.wx, vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], u_input.c)) != global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.zxy, vec3<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(0u, 12u)])), 12u)]), firstTrailingBit(global0[_wgslsmith_index_u32(59440u, 12u)]), !(func_2().e.a != -40556i), max(abs(u_input.a), _wgslsmith_mod_i32(-46905i, u_input.a)) << (1u % 32u), func_2().a));
    var var_2 = vec2<bool>(~u_input.d > ~1u, false | all(vec3<bool>(true, true, true)));
    var var_3 = Struct_2(func_2().a, abs(~(~u_input.b.x)) | ~(countOneBits(1u) << ((u_input.d >> (u_input.b.x % 32u)) % 32u)), var_2.x, -35101i, func_2().a);
    global0 = array<u32, 12>();
    return Struct_4(vec4<bool>(~_wgslsmith_dot_vec3_u32(u_input.e.wwy, vec3<u32>(6863u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39149u, 12u)], 12u)], 12u)], 12105u)) <= 4294967295u, false, any(vec3<bool>(true, true, true)), !var_3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.e.b, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), true)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_3.e.b, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-556f, var_0.x, var_3.e.b) + vec3<f32>(var_3.e.b, -140f, var_0.x))))), Struct_1(0i, -2136f, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(2153u, var_3.a.c.x), _wgslsmith_mod_u32(80579u, 4294967295u)), func_3(), 57171u), !select(vec4<bool>(false, false, var_2.x, var_3.a.d.x), select(vec4<bool>(var_2.x, var_2.x, var_3.c, var_2.x), var_3.e.d, vec4<bool>(false, false, false, true)), var_3.a.d), false), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = array<Struct_5, 29>();
    let var_1 = func_1();
    var var_2 = func_2();
    var var_3 = var_2.a.c;
    global0 = array<u32, 12>();
    let var_4 = func_2();
    let var_5 = firstTrailingBit(u_input.b.wwz);
    global0 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a), firstTrailingBit(max(vec2<i32>(u_input.a, 48840i), vec2<i32>(var_4.a.a, u_input.a)))) ^ var_1.d.a, min(var_4.e.a, _wgslsmith_div_i32(-_wgslsmith_mult_i32(var_2.d, 13628i), 19289i)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_5.x >> (10115u % 32u), ~var_4.e.c.x, u_input.e.x), vec3<u32>(_wgslsmith_add_u32(1u, ~var_2.b), var_1.c.c.x, ~4294967295u & (1u >> (var_4.e.c.x % 32u)))), u_input.b);
}

