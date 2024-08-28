struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-134f, -1147f), vec2<f32>(-364f, 1000f), vec2<f32>(-905f, 1592f), vec2<f32>(1469f, -2127f), vec2<f32>(1000f, 765f), vec2<f32>(-223f, 623f), vec2<f32>(634f, 245f), vec2<f32>(3509f, 2338f), vec2<f32>(-1000f, -619f), vec2<f32>(1196f, -756f), vec2<f32>(960f, 1258f), vec2<f32>(-788f, -1493f), vec2<f32>(1000f, -610f), vec2<f32>(-1053f, 923f), vec2<f32>(-1374f, -587f), vec2<f32>(-1542f, -1512f), vec2<f32>(663f, 394f), vec2<f32>(1185f, 1299f), vec2<f32>(-461f, 1369f));

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_3(arg_0);
    global1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-arg_0.b, u_input.a), ~(-1i));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-global3.xy);
    var var_3 = any(select(!var_0.a.a.wzz, select(select(!var_1.a.a.zwx, var_0.a.a.xwx, select(arg_0.a.wwy, vec3<bool>(true, false, true), vec3<bool>(true, arg_0.c, var_1.a.c))), arg_0.a.yyz, var_0.a.c), var_0.a.a.x));
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(19387u, 1u), vec2<u32>(41153u, 1u))) & 2148u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(min(4294967295u, 0u), _wgslsmith_mult_u32(0u, 1u)), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    var var_1 = Struct_3(Struct_2(vec4<bool>(all(!vec4<bool>(false, true, true, arg_1.a.x)), all(arg_0.a.wxw) | (true | arg_0.a.x), !all(vec2<bool>(true, true)), arg_0.a.x), 0i, arg_0.a.x, global3.x, arg_0.e));
    global2 = array<vec2<f32>, 19>();
    var var_2 = ~select(vec3<u32>(0u, 10909u, 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(69616u, 1u, 39123u), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 1u, 4294967295u), ~vec3<u32>(11324u, var_0.x, var_0.x))), arg_0.a.x);
    global1 = max(arg_0.b, ~(-_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_2, arg_0.e.x, arg_2, 0i)), firstLeadingBit(vec4<i32>(var_1.a.b, -32191i, arg_2, -63817i)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.d, _wgslsmith_div_f32(var_1.a.d, arg_0.d)), 211f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = !vec2<bool>(true, arg_1.a.a.x);
    let var_1 = arg_1.a.a;
    global2 = array<vec2<f32>, 19>();
    let var_2 = Struct_3(Struct_2(vec4<bool>(arg_1.a.a.x | true, var_0.x, false, select(-1447f <= global3.x, all(arg_1.a.a), true)), -23251i, arg_1.a.a.x, -1686f, arg_1.a.e));
    var var_3 = ~25672u;
    return vec2<u32>(1u, 1u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = arg_1;
    global1 = _wgslsmith_add_i32(~(-50328i), 0i);
    var var_1 = abs(_wgslsmith_sub_vec4_i32(func_2(Struct_2(!vec4<bool>(var_0.x, var_0.x, false, true), -u_input.a, true, _wgslsmith_f_op_f32(f32(-1f) * -541f), vec3<i32>(-1i, 2147483647i, u_input.a)), reverseBits(vec4<i32>(-1i, 1i, u_input.a, -1i))), abs(countOneBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, -26908i)))));
    var var_2 = vec3<i32>(reverseBits(-_wgslsmith_div_i32(11676i, -u_input.a)), _wgslsmith_mult_i32(1i, -1i), 30029i);
    var_1 = vec4<i32>(-880i, _wgslsmith_add_i32(1i, -var_2.x), ~func_2(Struct_2(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, false, arg_1.x), var_0.x), ~u_input.a, !var_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_mod_vec3_i32(var_1.yww, var_1.wzw)), firstTrailingBit(vec4<i32>(1i, var_1.x, var_1.x, 0i))).x, u_input.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) * arg_3.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xx - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1026f, arg_0.x)))))), arg_0, true, func_4(_wgslsmith_f_op_vec3_f32(-arg_0.wwz), Struct_3(Struct_2(vec4<bool>(false, false, arg_2, arg_1.x), var_1.x, true | arg_2, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, false, var_0.x, false), u_input.a, arg_1.x, 112f, vec3<i32>(u_input.a, u_input.a, var_2.x)), Struct_2(vec4<bool>(arg_2, arg_1.x, false, var_0.x), 27898i, true, global3.x, vec3<i32>(-2147483647i, -16841i, -13889i)), var_2.x)), var_1.yww)), _wgslsmith_f_op_vec2_f32(-arg_0.zz), Struct_3(Struct_2(vec4<bool>(true, false, var_0.x, true), u_input.a, arg_3.x < -361f, _wgslsmith_f_op_f32(max(-182f, arg_0.x)), reverseBits(var_1.wwz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 23730i;
    var var_1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(min(-318f, -234f))))), _wgslsmith_f_op_f32(ceil(-647f)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global3.x) * 1055f)), vec3<bool>(true, true, true), -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, var_0), vec3<i32>(0i, var_0, 27235i))) != -2147483647i, vec3<f32>(-1599f, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x)))))), _wgslsmith_f_op_f32(exp2(func_1(_wgslsmith_f_op_vec4_f32(-var_1.b), !select(vec3<bool>(true, var_1.c, var_1.c), vec3<bool>(true, var_1.c, true), vec3<bool>(var_1.c, false, var_1.c)), countOneBits(var_1.d.x) <= (0u << (var_1.d.x % 32u)), _wgslsmith_f_op_vec3_f32(floor(func_1(var_1.b, vec3<bool>(false, var_1.c, true), true, vec3<f32>(var_1.b.x, global3.x, 108f)).b.wzy))).a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(421f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f - 1000f))));
    global0 = array<vec3<u32>, 4>();
    global1 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-3522i);
}

