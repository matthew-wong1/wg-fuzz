struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(4631i, 0i, 2147483647i), vec3<i32>(-17628i, 7752i, 0i), vec3<i32>(-43261i, 4375i, 0i), vec3<i32>(23801i, 11172i, -26713i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-1i, -9266i, 28160i), vec3<i32>(-58990i, i32(-2147483648), 1i), vec3<i32>(-13572i, -1i, 67469i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-29188i, -40345i, 35480i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(0i, 0i, 12189i), vec3<i32>(4902i, -1i, i32(-2147483648)), vec3<i32>(-1i, 20201i, -20110i), vec3<i32>(0i, 1i, 15048i), vec3<i32>(-27263i, 1i, -47828i), vec3<i32>(1236i, -69563i, -17404i));

var<private> global1: array<Struct_2, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.a;
    global0 = array<vec3<i32>, 17>();
    let var_1 = -527f;
    global1 = array<Struct_2, 29>();
    var var_2 = Struct_4(arg_1.c.a.d);
    return false;
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(~(~u_input.a), 29438u);
    let var_1 = ~(-reverseBits(i32(-1i) * -16212i));
    global0 = array<vec3<i32>, 17>();
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-111f, _wgslsmith_f_op_f32(max(-409f, _wgslsmith_f_op_f32(sign(1f)))))));
    var var_3 = Struct_3(640f, firstLeadingBit(_wgslsmith_div_vec2_u32((vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(var_0.x, 77330u), ~(~vec2<u32>(3024u, 70931u)))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_sub_u32(var_0.x, 41824u), ~46064u), var_1, func_3(Struct_3(1493f, vec2<u32>(3042u, 4294967295u), Struct_2(Struct_1(vec2<u32>(u_input.a, var_0.x), -20146i, false, vec4<i32>(var_1, var_1, -30219i, var_1))), global1[_wgslsmith_index_u32(var_0.x, 29u)], Struct_1(vec2<u32>(var_0.x, 4281u), 62028i, false, vec4<i32>(1i, 29806i, 1i, 2118i))), Struct_3(var_2.x, vec2<u32>(0u, var_0.x), Struct_2(Struct_1(vec2<u32>(u_input.a, 1u), -2147483647i, false, vec4<i32>(var_1, var_1, 6997i, -21839i))), Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), var_1, true, vec4<i32>(58661i, var_1, -19350i, 1i))), Struct_1(vec2<u32>(var_0.x, var_0.x), var_1, true, vec4<i32>(47888i, 1i, 132i, var_1))), global1[_wgslsmith_index_u32(25994u, 29u)]) | false, vec4<i32>(~var_1, var_1, ~0i, 1i))), global1[_wgslsmith_index_u32(~u_input.a, 29u)], Struct_1(vec2<u32>(max(27755u, firstLeadingBit(85218u)), ~var_0.x & min(24493u, 22184u)), ~var_1, true, _wgslsmith_mod_vec4_i32(vec4<i32>(-4807i, ~var_1, -9055i, 1i), select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1, 2147483647i, -2147483647i), vec4<i32>(var_1, 2147483647i, var_1, var_1)), -vec4<i32>(var_1, -2147483647i, -11874i, 42899i), true))));
    return Struct_2(Struct_1(countOneBits(vec2<u32>(_wgslsmith_div_u32(68177u, var_0.x), var_0.x)), countOneBits(0i), var_3.c.a.c, vec4<i32>(var_3.c.a.b, var_1, var_1, var_1)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_2, 29>();
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(573f, _wgslsmith_f_op_f32(round(1139f)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(f32(-1f) * -939f))), _wgslsmith_f_op_f32(f32(-1f) * -418f))), ~(~(~vec2<u32>(0u, u_input.a))), func_2(), func_2(), Struct_1(min(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1u, 50878u)), vec2<u32>(7738u, 125755u)), vec2<u32>(u_input.a ^ u_input.a, ~42941u)), arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(10367u, u_input.a))) >= ~u_input.a, arg_0.a | arg_1));
    global0 = array<vec3<i32>, 17>();
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.a))) * vec2<f32>(-100f, _wgslsmith_f_op_f32(var_0.a * var_0.a)))));
    var var_2 = var_0.a;
    return func_2().a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<bool>(any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), !vec4<bool>(arg_1.c, false, arg_1.c, true))), all(vec3<bool>(arg_1.c == false, select(false, arg_1.c, arg_1.c) & true, any(vec4<bool>(false, true, arg_1.c, true)))), false);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f - -426f) + _wgslsmith_f_op_f32(2158f - -442f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))))), ~countOneBits(~arg_1.a), func_2(), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(max(arg_1.a.x, u_input.a) >> (abs(u_input.a) % 32u), ~_wgslsmith_mod_u32(47519u, u_input.a))), 29u)], func_2().a);
    var var_2 = Struct_4(~arg_1.d);
    var_1 = Struct_3(371f, vec2<u32>(1u, _wgslsmith_div_u32(var_1.d.a.a.x, ~var_1.d.a.a.x) << (_wgslsmith_add_u32(29594u, 0u) % 32u)), Struct_2(arg_1), global1[_wgslsmith_index_u32(arg_1.a.x, 29u)], arg_1);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1124f)))))), max(func_1(Struct_4(_wgslsmith_sub_vec4_i32(var_1.e.d, var_1.d.a.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -43248i, var_1.d.a.d.x, arg_1.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.c.a.b, var_2.a.x, var_2.a.x), var_1.c.a.d), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 17336i))).a, vec2<u32>(arg_1.a.x, ~firstTrailingBit(arg_1.a.x))), global1[_wgslsmith_index_u32(~var_1.d.a.a.x, 29u)], func_2(), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~60060u, u_input.a), var_1.c.a.a), _wgslsmith_sub_i32(2147483647i, ~arg_0.x), true, _wgslsmith_add_vec4_i32(vec4<i32>(-41419i, 19110i, -70396i, -25597i) >> (vec4<u32>(var_1.b.x, u_input.a, 47990u, 4294967295u) % vec4<u32>(32u)), max(arg_1.d, vec4<i32>(arg_0.x, 1i, 17044i, 16471i))) & _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1.d, vec4<i32>(2147483647i, var_2.a.x, 2147483647i, 1i)), arg_1.d, vec4<i32>(-58430i, -9507i, arg_0.x, 2147483647i) | vec4<i32>(2147483647i, arg_0.x, arg_1.d.x, 34194i))));
    return -(~var_3.e.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~(-20168i) > _wgslsmith_mod_i32(firstTrailingBit(func_4(vec2<i32>(30661i, -2147483647i), func_1(Struct_4(vec4<i32>(-1i, -17974i, -2147483647i, -19264i)), vec4<i32>(1i, 19493i, 51305i, -33962i)))), -1i);
    let var_2 = vec3<u32>(~func_2().a.a.x, ~func_1(Struct_4(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-1i, -1i, min(34877i, 2147483647i), 10935i)).a.x, select(134u, u_input.a, true));
    global1 = array<Struct_2, 29>();
    let var_3 = select(vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(805f)) * -1918f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f * -1225f)), func_3(Struct_3(-1000f, var_2.zz, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1u), 29u)], Struct_2(Struct_1(var_2.yy, 1i, var_0, vec4<i32>(0i, 2147483647i, 17475i, -1i))), func_2().a), Struct_3(1499f, _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 0u), var_2.zy), Struct_2(Struct_1(vec2<u32>(u_input.a, 0u), -2648i, false, vec4<i32>(-1i, -11328i, -4610i, 965i))), Struct_2(Struct_1(vec2<u32>(41922u, u_input.a), 39227i, var_0, vec4<i32>(-7818i, 1i, 2147483647i, 48676i))), func_2().a), global1[_wgslsmith_index_u32(min(min(var_2.x, u_input.a), 20362u), 29u)])), !vec4<bool>(true, true, var_0, var_0), false);
    var_1 = true;
    global0 = array<vec3<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(-vec2<i32>(54522i, -1i), vec2<i32>(-41439i, 13071i) >> (vec2<u32>(18746u, u_input.a) % vec2<u32>(32u))), vec2<i32>(-41796i, -23215i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, 159f, -504f, -520f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2260f, 539f, -816f, -746f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(269f, 129f, 1242f, 2116f), vec4<f32>(-237f, -1844f, -468f, -1009f), vec4<bool>(false, false, true, var_0)))))))));
}

