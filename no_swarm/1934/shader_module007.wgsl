struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 5639u, 0u, 1u);

var<private> global1: f32 = -835f;

var<private> global2: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    var var_0 = u_input.b;
    global0 = u_input.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1f)))));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(abs(u_input.a) >> (4294967295u % 32u), -2147483647i, select(true, any(vec4<bool>(true, false, true, true)), true)), firstTrailingBit(_wgslsmith_sub_i32(u_input.c << (global0.x % 32u), u_input.c)), u_input.a, u_input.c), vec4<i32>(~u_input.c, -1i, ~(i32(-1i) * -35850i), u_input.c));
    global2 = (-173f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-366f - -361f), 779f)))) | !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2291f, -2151f))) == _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(995f, 2073f), _wgslsmith_f_op_f32(-1073f - 1463f), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-750f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(219f, -315f, false))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1186f, -1279f), 202f)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-625f, 563f)))))) * _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) - arg_0.a);
    global0 = max(vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, arg_1.x), 41630u), arg_1.x, arg_1.x << (0u % 32u)), vec4<u32>(18886u, _wgslsmith_dot_vec4_u32(vec4<u32>(72561u & arg_1.x, 4294967295u, ~0u, u_input.b.x ^ 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 25818u, global0.x, 39025u), vec4<u32>(0u, arg_1.x, 29254u, u_input.b.x), u_input.b)), _wgslsmith_add_u32(_wgslsmith_sub_u32(30425u, max(arg_1.x, 31484u)), abs(arg_1.x)), min(~(~4294967295u), ~(~34176u))));
    global2 = !any(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), select(vec2<bool>(true, true), vec2<bool>(true, false), true))) & arg_2;
    var var_0 = 64433u | max(arg_1.x, ~1u);
    var_0 = min(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(~16572u, u_input.b.x), _wgslsmith_dot_vec2_u32(global0.wy, vec2<u32>(~2244u, ~0u))));
    return -5131i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_1(select(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.c, arg_1.a), u_input.a), 0i, true), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(arg_1.b, reverseBits(arg_1.b), vec4<bool>(arg_2, true, arg_2, false)), ~vec4<u32>(arg_1.b.x, global0.x, arg_1.b.x, 33600u) << ((vec4<u32>(95054u, arg_1.b.x, u_input.d.x, global0.x) ^ u_input.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(arg_1.b, vec4<u32>(~arg_1.b.x, ~31694u, ~arg_1.b.x, _wgslsmith_mult_u32(u_input.b.x, 14500u))), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_1.b, arg_1.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, arg_1.b.x, 2187u, 0u), u_input.b << (arg_1.b % vec4<u32>(32u))))), vec3<f32>(arg_1.c.x, -428f, -630f));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, 1000f) + _wgslsmith_f_op_f32(select(-1300f, arg_1.c.x, true))))) + _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-1167f + _wgslsmith_f_op_f32(1062f - var_0.c.x)), -1032f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = (0u <= (0u & arg_1.b.x)) && (global0.x != global0.x);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -340f)))) - -1150f)));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1176f))));
    return vec2<bool>(true, all(!select(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), !vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, false))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1340f))));
    var_0 = -1862f;
    var var_1 = Struct_1(-2147483647i, arg_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-436f, _wgslsmith_f_op_f32(ceil(276f)), 1f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(101f, -1000f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-330f, 1206f, -719f) * vec3<f32>(805f, -1935f, 479f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-351f, -696f, -756f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-385f, 560f, 607f) - vec3<f32>(1000f, 1084f, 1556f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1780f, -677f, 1143f), vec3<f32>(-417f, -1000f, -1000f), vec3<bool>(arg_0.x, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, -277f, 680f)))))));
    var_1 = Struct_1(u_input.c | ~1i, _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x ^ arg_1.x, u_input.d.x, _wgslsmith_sub_u32(33029u, arg_1.x), _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, var_1.b) & _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(arg_1.x, 11539u, 1u, 0u)), ~(~var_1.b))), var_1.c);
    var_0 = var_1.c.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-962f + _wgslsmith_f_op_f32(trunc(-447f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - 710f)))));
}

fn func_1() -> vec2<u32> {
    global1 = -1030f;
    global2 = !(((u_input.a << (80394u % 32u)) & _wgslsmith_add_i32(abs(16104i), u_input.a)) > ~u_input.c);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(388f, -971f)) + _wgslsmith_f_op_f32(298f * -600f)) + _wgslsmith_f_op_f32(func_2())))));
    let var_0 = -437f;
    global2 = _wgslsmith_f_op_f32(-var_0) <= _wgslsmith_f_op_f32(func_5(func_4(firstTrailingBit(-17995i) ^ func_3(Struct_2(var_0, vec2<f32>(var_0, var_0), var_0), u_input.d, false), Struct_1(u_input.a, firstLeadingBit(vec4<u32>(global0.x, 0u, global0.x, 1u)), vec3<f32>(-168f, var_0, -952f)), true), ~vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.x), global0.xw), ~65118u, ~u_input.d.x)));
    return u_input.d.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    global1 = -113f;
    let var_0 = ~(~func_1());
    global2 = false;
    global2 = all(vec2<bool>(func_4(~2147483647i, Struct_1(~(-1980i), vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1075f, -769f, 1576f), vec3<f32>(1000f, 459f, 218f), vec3<bool>(true, false, true)))), true).x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, -1753f, -829f, 579f) * vec4<f32>(2069f, 289f, -563f, 1460f)) + _wgslsmith_div_vec4_f32(vec4<f32>(128f, -784f, -930f, 178f), vec4<f32>(-815f, 737f, -1745f, 1185f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1686f, 783f, 1000f))))), vec4<i32>(_wgslsmith_clamp_i32(countOneBits(1i) >> (_wgslsmith_add_u32(global0.x, 4294967295u) % 32u), 1i, -30546i), -func_3(Struct_2(-1600f, vec2<f32>(394f, 245f), 1422f), select(u_input.b.zwz, global0.wzw, false), true), u_input.a, ~0i), 1f, _wgslsmith_div_vec2_u32(~firstTrailingBit(var_0), vec2<u32>(u_input.b.x, ~(~31767u))));
}

