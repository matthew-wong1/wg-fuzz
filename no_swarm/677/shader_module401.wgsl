struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-7246i, 0i, 0i, 2147483647i), vec4<i32>(0i, -65590i, -35248i, -37956i), vec4<i32>(-6726i, 0i, -29717i, -1i), vec4<i32>(8053i, 0i, 0i, -22537i), vec4<i32>(28102i, -28213i, 22266i, 0i), vec4<i32>(1i, i32(-2147483648), 1i, 38546i), vec4<i32>(27930i, 23940i, 1i, 2147483647i), vec4<i32>(-3946i, 1i, 1i, 26143i), vec4<i32>(11157i, -1i, -1i, 38942i), vec4<i32>(-1i, 25131i, 9652i, 10127i), vec4<i32>(-1i, -1i, 4613i, 18185i), vec4<i32>(14633i, 27063i, 48203i, 36128i), vec4<i32>(1i, 1732i, -6398i, -1i), vec4<i32>(0i, 2147483647i, 23488i, i32(-2147483648)), vec4<i32>(54867i, 2147483647i, 18152i, -7214i), vec4<i32>(23029i, i32(-2147483648), -9293i, i32(-2147483648)), vec4<i32>(-1036i, -1i, 2147483647i, 0i), vec4<i32>(1i, 7586i, -1i, 3615i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec2<u32> {
    let var_0 = -3828i & abs(u_input.b);
    global0 = array<vec4<i32>, 18>();
    return _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(~(u_input.a.xz ^ arg_0.c.b.c), vec2<u32>(31158u, 0u) & ~vec2<u32>(61770u, arg_0.a.x)), ~_wgslsmith_sub_vec2_u32(select(arg_0.a.zy, ~arg_0.c.b.c, arg_0.c.b.a.yy), ~firstTrailingBit(vec2<u32>(arg_0.b.d.x, 4294967295u))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b.e.x));
    var var_1 = arg_2;
    let var_2 = arg_2.b.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.e.x), _wgslsmith_f_op_f32(exp2(arg_2.b.e.x)), !all(arg_3.c.b.a))), var_1.c.b.b)));
    var_0 = arg_3.b.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.b.e * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1736f, arg_2.e.b.b, 1141f) * vec4<f32>(-1195f, -896f, -1651f, 322f)) - _wgslsmith_f_op_vec4_f32(sign(arg_0.e))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.e + vec4<f32>(-351f, -432f, 1158f, arg_3.c.b.b))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_3(~countOneBits(~vec4<u32>(arg_1.d.x, arg_1.c.x, u_input.a.x, 14908u)), arg_1, Struct_2(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)], vec4<i32>(u_input.b, ~u_input.b, -u_input.b, -u_input.b)), arg_1), u_input.a, Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(12639u, 18u)], vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, 2147483647i, -20559i)), global0[_wgslsmith_index_u32(20688u, 18u)]) >> (_wgslsmith_clamp_u32(u_input.c, u_input.c, _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % 32u), arg_1));
    var_0 = Struct_3(var_0.a, Struct_1(select(!(!vec3<bool>(arg_1.a.x, true, false)), select(!vec3<bool>(true, arg_1.a.x, true), vec3<bool>(true, true, true), !arg_1.a), false), arg_2, u_input.a.xx, u_input.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.b.e.x * 384f), _wgslsmith_f_op_f32(arg_2 + 409f), arg_0, 1000f), _wgslsmith_f_op_vec4_f32(sign(arg_1.e))))), Struct_2(-48313i, Struct_1(vec3<bool>(true, true, true), arg_0, ~_wgslsmith_sub_vec2_u32(u_input.a.xy, var_0.b.d.xz), _wgslsmith_add_vec3_u32(var_0.a.xwz & vec3<u32>(55870u, 3635u, arg_1.d.x), var_0.e.b.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(arg_1.e - arg_1.e))))), ~abs(arg_1.d << (vec3<u32>(4294967295u, u_input.a.x, arg_1.c.x) % vec3<u32>(32u))), var_0.c);
    var_0 = Struct_3(vec4<u32>(~1u, var_0.e.b.d.x, 16654u, firstLeadingBit(select(var_0.e.b.d.x, arg_1.d.x, var_0.c.b.a.x | false))), Struct_1(vec3<bool>(true, true, false), 1f, _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.e.b.c, var_0.c.b.c), vec2<u32>(~var_0.d.x, ~140499u)), u_input.a, vec4<f32>(arg_0, 233f, _wgslsmith_div_f32(_wgslsmith_div_f32(265f, arg_2), _wgslsmith_f_op_f32(var_0.c.b.b + -1206f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.b)))), Struct_2(var_0.c.a, arg_1), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, 0u, 1u) >> (var_0.d % vec3<u32>(32u))), select(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), ~vec3<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), vec3<bool>(true, true, var_0.c.b.a.x))), vec3<u32>(abs(arg_1.d.x) >> (14121u % 32u), 4294967295u, ~u_input.c)), Struct_2(-2147483647i, Struct_1(vec3<bool>(select(false, arg_1.a.x, var_0.c.b.a.x), !arg_1.a.x, all(vec3<bool>(true, var_0.b.a.x, var_0.e.b.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -913f))), vec2<u32>(arg_1.d.x, var_0.b.c.x), ~_wgslsmith_mult_vec3_u32(u_input.a, arg_1.d), vec4<f32>(_wgslsmith_f_op_f32(min(148f, -861f)), arg_0, arg_0, _wgslsmith_f_op_f32(trunc(123f))))));
    let var_1 = Struct_1(select(vec3<bool>(-u_input.b == -2147483647i, true, var_0.c.b.a.x), vec3<bool>(!any(vec4<bool>(arg_1.a.x, true, true, arg_1.a.x)), var_0.c.b.a.x, _wgslsmith_f_op_f32(-arg_0) != arg_0), select(vec3<bool>(true, true, any(vec4<bool>(arg_1.a.x, true, false, var_0.b.a.x))), var_0.b.a, true)), var_0.b.e.x, var_0.d.yx | abs(vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a), 9826u)), select(u_input.a >> (~u_input.a % vec3<u32>(32u)), firstLeadingBit(u_input.a), !select(!vec3<bool>(arg_1.a.x, arg_1.a.x, var_0.e.b.a.x), !arg_1.a, !vec3<bool>(true, false, var_0.b.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(632f, arg_1.e.x)), _wgslsmith_f_op_f32(min(arg_0, arg_1.e.x)), arg_1.e.x, _wgslsmith_f_op_f32(-var_0.c.b.b)))));
    let var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, var_0.b.b, false)) * arg_2) != _wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) == arg_0, var_0.b.a.x), 849f, arg_1.c, var_1.d, vec4<f32>(1658f, -311f, arg_0, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(trunc(-783f)))));
    return !select(!(!var_0.e.b.a), vec3<bool>(true, var_1.a.x, (var_2.a.x && var_1.a.x) != true), vec3<bool>(true, false, any(select(vec4<bool>(false, var_1.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, true, var_0.c.b.a.x, true), vec4<bool>(false, false, arg_1.a.x, var_2.a.x)))));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    let var_0 = -387f;
    var var_1 = func_4(var_0, Struct_1(vec3<bool>(false, select(false, u_input.b == u_input.b, select(false, true, false)), all(vec2<bool>(true, true))), -106f, _wgslsmith_add_vec2_u32(func_2(Struct_3(vec4<u32>(30659u, 1u, arg_0, arg_0), Struct_1(vec3<bool>(false, false, true), var_0, vec2<u32>(59310u, arg_0), u_input.a, vec4<f32>(1112f, var_0, -872f, 431f)), Struct_2(u_input.b, Struct_1(vec3<bool>(false, false, true), -2932f, vec2<u32>(48524u, arg_0), vec3<u32>(u_input.c, 4294967295u, 14204u), vec4<f32>(1251f, 1602f, var_0, var_0))), vec3<u32>(arg_0, 0u, u_input.c), Struct_2(u_input.b, Struct_1(vec3<bool>(false, false, false), 1602f, u_input.a.xy, vec3<u32>(arg_0, 57842u, u_input.a.x), vec4<f32>(323f, -570f, 1000f, var_0)))), select(arg_0, 3909u, true), true), ~u_input.a.xy), _wgslsmith_div_vec3_u32(u_input.a, min(u_input.a, ~u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(true, false, true), var_0, u_input.a.yx, u_input.a, vec4<f32>(379f, -236f, var_0, -1000f)), -1150f, Struct_3(vec4<u32>(1u, u_input.a.x, 4294967295u, 1u), Struct_1(vec3<bool>(false, true, false), var_0, u_input.a.yz, u_input.a, vec4<f32>(1206f, var_0, -1000f, 861f)), Struct_2(u_input.b, Struct_1(vec3<bool>(true, false, false), var_0, u_input.a.yy, vec3<u32>(arg_0, 83381u, 132342u), vec4<f32>(678f, var_0, -270f, 219f))), vec3<u32>(arg_0, 79109u, u_input.c), Struct_2(u_input.b, Struct_1(vec3<bool>(true, false, true), var_0, u_input.a.zz, vec3<u32>(96521u, 62301u, 22177u), vec4<f32>(var_0, 112f, var_0, var_0)))), Struct_3(vec4<u32>(71792u, arg_0, u_input.a.x, 4294967295u), Struct_1(vec3<bool>(true, true, false), 821f, vec2<u32>(u_input.a.x, u_input.c), u_input.a, vec4<f32>(var_0, 765f, 234f, var_0)), Struct_2(u_input.b, Struct_1(vec3<bool>(true, true, true), var_0, vec2<u32>(0u, 53708u), u_input.a, vec4<f32>(181f, var_0, -938f, -1382f))), vec3<u32>(1u, 1u, u_input.a.x), Struct_2(u_input.b, Struct_1(vec3<bool>(false, true, false), var_0, vec2<u32>(4294967295u, u_input.a.x), u_input.a, vec4<f32>(var_0, var_0, -752f, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(609f, var_0, var_0, 582f) * vec4<f32>(var_0, var_0, var_0, -1211f))))), var_0);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(u_input.c, (~10928u << (u_input.a.x % 32u)) & func_1(_wgslsmith_div_u32(0u, 1u)));
    global0 = array<vec4<i32>, 18>();
    var_0 = u_input.c;
    global0 = array<vec4<i32>, 18>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f + -645f) + _wgslsmith_f_op_f32(f32(-1f) * -1131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(435f * -1000f) + 1515f))))));
    global0 = array<vec4<i32>, 18>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1716f, -1682f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1262f), vec2<f32>(1201f, -526f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec2<i32>(u_input.b, 1i) & ~vec2<i32>(u_input.b, 0i), -reverseBits(vec2<i32>(-2147483647i, u_input.b)), vec2<bool>(false, true)), ~abs((vec4<i32>(-42969i, -1i, 2147483647i, 59088i) & vec4<i32>(24297i, u_input.b, u_input.b, u_input.b)) >> (~vec4<u32>(4294967295u, u_input.c, 1u, 35831u) % vec4<u32>(32u))), select(min(max(-u_input.b, 1i), -56100i), u_input.b, true), u_input.a.zx, -1i);
}

