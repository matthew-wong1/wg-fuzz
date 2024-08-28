struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 14> = array<i32, 14>(22444i, -52131i, -22674i, 0i, 0i, 0i, -987i, -63438i, -1i, 1i, -62094i, 28514i, -17195i, -56045i);

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(-1i), Struct_1(-1i), 127f), Struct_2(Struct_1(-79139i), Struct_1(2147483647i), -949f), Struct_2(Struct_1(-1i), Struct_1(-44537i), -870f), Struct_2(Struct_1(5365i), Struct_1(2147483647i), 1075f), Struct_2(Struct_1(0i), Struct_1(2147483647i), -912f), Struct_2(Struct_1(-5684i), Struct_1(2147483647i), 825f), Struct_2(Struct_1(1i), Struct_1(32781i), 566f), Struct_2(Struct_1(-34905i), Struct_1(i32(-2147483648)), 2731f), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-68809i), 161f), Struct_2(Struct_1(2147483647i), Struct_1(-24082i), 2526f), Struct_2(Struct_1(-12703i), Struct_1(0i), 405f), Struct_2(Struct_1(390i), Struct_1(15871i), 1474f), Struct_2(Struct_1(-1i), Struct_1(-108i), 1301f), Struct_2(Struct_1(0i), Struct_1(0i), 649f), Struct_2(Struct_1(-13079i), Struct_1(-10652i), 430f), Struct_2(Struct_1(-1i), Struct_1(0i), 315f), Struct_2(Struct_1(1i), Struct_1(-13291i), -1563f), Struct_2(Struct_1(-7987i), Struct_1(-4242i), 628f), Struct_2(Struct_1(10343i), Struct_1(0i), 196f), Struct_2(Struct_1(2147483647i), Struct_1(0i), -421f), Struct_2(Struct_1(0i), Struct_1(-9067i), 403f), Struct_2(Struct_1(-1i), Struct_1(1i), 1365f), Struct_2(Struct_1(-4012i), Struct_1(1i), -724f), Struct_2(Struct_1(39019i), Struct_1(-22456i), -124f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d.x, 24u)];
    global1 = array<i32, 14>();
    global0 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 10665u), firstLeadingBit(u_input.e.x));
    global0 = u_input.d.x;
    let var_1 = vec3<i32>(global1[_wgslsmith_index_u32(0u, 14u)], 1i, -_wgslsmith_dot_vec2_i32(-select(u_input.b, vec2<i32>(-2147483647i, u_input.c.x), vec2<bool>(false, false)), vec2<i32>(2147483647i ^ u_input.c.x, _wgslsmith_add_i32(u_input.b.x, u_input.c.x))));
    return ~abs(max(0u, u_input.d.x));
}

fn func_3() -> vec2<i32> {
    global1 = array<i32, 14>();
    let var_0 = Struct_5(46404u);
    var var_1 = Struct_1(i32(-1i) * -_wgslsmith_div_i32(u_input.b.x, global1[_wgslsmith_index_u32(var_0.a, 14u)] & u_input.b.x));
    var var_2 = Struct_3(Struct_2(Struct_1(~var_1.a), Struct_1(u_input.b.x), -284f), -(u_input.c.x << ((4294967295u << (select(u_input.a.x, u_input.a.x, true) % 32u)) % 32u)), Struct_1(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.d.x, 14u)], 2147483647i)), global2[_wgslsmith_index_u32(var_0.a, 24u)], 28255u);
    global1 = array<i32, 14>();
    return abs(~vec2<i32>(var_1.a, countOneBits(var_1.a)) >> (((firstLeadingBit(vec2<u32>(var_0.a, var_0.a)) ^ ~u_input.e) >> (vec2<u32>(abs(57502u), u_input.e.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    global2 = array<Struct_2, 24>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + 1418f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(921f, arg_1)), _wgslsmith_f_op_f32(trunc(1253f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 1742f), _wgslsmith_f_op_f32(min(arg_1, arg_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -535f), -1631f);
    global0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.e.x | arg_0) | ((1u | u_input.e.x) | 13317u), _wgslsmith_add_u32(~min(47249u, u_input.d.x), _wgslsmith_div_u32(arg_0, ~20014u))) << (_wgslsmith_dot_vec3_u32(u_input.d.zzy, _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a.x, 12019u, u_input.a.x) ^ u_input.d.wxz), u_input.d.zwx)) % 32u);
    global0 = _wgslsmith_sub_u32(~_wgslsmith_add_u32(reverseBits(arg_0), 4294967295u), arg_0);
    var var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0.x)) >= 1000f, any(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b))), select(vec2<bool>(all(select(vec4<bool>(true, true, false, arg_2.b), vec4<bool>(arg_2.b, true, false, true), vec4<bool>(arg_2.b, false, false, arg_2.b))), reverseBits(19360u) != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.a)), select(select(!vec2<bool>(arg_2.b, arg_2.b), !vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, true)), select(!vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(false, true), vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_2.b)), select(vec2<bool>(false, arg_2.b), vec2<bool>(false, arg_2.b), true)), arg_2.b), all(!vec4<bool>(arg_2.b, arg_2.b, arg_2.b, false)) | arg_2.b), !arg_2.b);
    return var_1.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<bool>(true, true, func_4(~(func_2() << ((u_input.e.x << (u_input.a.x % 32u)) % 32u)), -340f, Struct_4(select(~u_input.c, func_3(), vec2<bool>(true, true)), false, _wgslsmith_add_i32(u_input.b.x, 10714i) | u_input.b.x), -countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(global1[_wgslsmith_index_u32(12457u, 14u)], u_input.c.x, global1[_wgslsmith_index_u32(9231u, 14u)]), vec3<i32>(global1[_wgslsmith_index_u32(1u, 14u)], 74710i, -4921i)))));
    global2 = array<Struct_2, 24>();
    var var_1 = u_input.d.xyx;
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(462f)) - _wgslsmith_div_f32(-111f, 413f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(689f, 1752f)))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1687f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1317f)))))));
    return 740f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u << (_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.a.x, ~u_input.d.x), ~u_input.a.x, ~_wgslsmith_mod_u32(firstTrailingBit(u_input.e.x), 0u)) % 32u), 24u)];
    var var_1 = var_0.c == var_0.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(535f, var_0.c, 469f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_div_f32(var_0.c, -1000f))) * vec3<f32>(-387f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-312f, var_0.c)))), _wgslsmith_f_op_f32(-2557f - _wgslsmith_f_op_f32(-var_0.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, 582f, var_0.c), vec3<f32>(var_0.c, var_0.c, var_0.c))))));
    let var_3 = _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(max(0u, ~1u), u_input.a.x, ~u_input.a.x)) < u_input.a.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, -1068f, var_0.c), vec3<f32>(var_0.c, var_0.c, var_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_2.x, -332f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, -1145f), vec3<f32>(652f, var_2.x, -812f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_div_f32(var_0.c, var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) * _wgslsmith_f_op_f32(1607f * 442f)))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-869f, -397f, var_0.c, var_2.x), vec4<f32>(-869f, 1607f, -953f, var_2.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(696f, 224f, -2641f, var_2.x), vec4<f32>(var_4.x, var_4.x, -212f, var_4.x)))) * vec4<f32>(-1522f, _wgslsmith_f_op_f32(min(1094f, -962f)), 1254f, 1f))));
    let var_6 = ~44044u;
    let var_7 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f * 990f) * var_4.x), -1171f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(31216i, 1i, ~var_0.b.a), vec3<i32>(reverseBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 42235i, u_input.c.x), vec3<i32>(-48222i, global1[_wgslsmith_index_u32(0u, 14u)], -32666i)), global1[_wgslsmith_index_u32(~42578u, 14u)])), firstTrailingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, var_0.b.a, u_input.b.x), vec3<i32>(u_input.c.x, var_0.b.a, u_input.b.x) & vec3<i32>(var_0.b.a, 0i, 5082i))), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.a, 0i, var_0.a.a), vec3<i32>(global1[_wgslsmith_index_u32(15200u, 14u)], var_0.a.a, var_0.a.a)))), -global1[_wgslsmith_index_u32(~(~21594u), 14u)]);
}

