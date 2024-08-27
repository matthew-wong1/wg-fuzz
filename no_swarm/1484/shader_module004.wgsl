struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_4,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(46085u, 4294967295u, 0u, 47965u);

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1333f, 2018f, 168f), vec3<f32>(1000f, 1274f, -1730f), vec3<f32>(-353f, -1316f, 2396f), vec3<f32>(-1409f, 2010f, -320f), vec3<f32>(476f, 768f, -1005f), vec3<f32>(-299f, 1174f, -2090f), vec3<f32>(727f, -1725f, 1420f), vec3<f32>(1000f, 384f, -644f), vec3<f32>(-1002f, 1968f, -1428f), vec3<f32>(1107f, -438f, 1141f), vec3<f32>(280f, 252f, 699f), vec3<f32>(632f, -2037f, 935f), vec3<f32>(-263f, 1632f, 996f), vec3<f32>(543f, 497f, -613f), vec3<f32>(684f, 410f, -308f), vec3<f32>(-227f, 1184f, -1052f));

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    let var_0 = ~abs(arg_2.b.c.zy);
    var var_1 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1529f, 2554f, -1657f, 175f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1224f, -173f, 277f, -294f)))), vec4<bool>(false, false, false, global2.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-988f, 543f, 1314f, 723f) + vec4<f32>(1574f, -854f, -1000f, -665f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, -135f, -277f, 399f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-565f, 329f, 1000f, -674f))))))), global2.zxz, Struct_2(arg_1.c, !(any(vec2<bool>(arg_2.b.b, arg_2.c.a.x)) || any(vec4<bool>(false, arg_1.a, arg_2.b.a.a.x, true))), vec4<u32>(select(arg_2.b.c.x, global0.x, arg_1.b.b), 10054u, ~1170u, 34631u) ^ reverseBits(firstLeadingBit(arg_1.b.c))), Struct_1(vec2<bool>(any(arg_2.c.a), true), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.b.x), -arg_2.c.b), u_input.b)));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(reverseBits(arg_3 ^ u_input.a.xz), abs(_wgslsmith_add_vec2_u32(var_1.c.c.xz, vec2<u32>(arg_1.b.c.x, u_input.c.x))), true), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mod_u32(arg_1.b.c.x, arg_2.b.c.x)), vec2<u32>(~var_1.c.c.x, _wgslsmith_sub_u32(35044u, var_0.x)))), _wgslsmith_clamp_u32(var_1.c.c.x, 90946u, firstTrailingBit(1u)));
    var var_3 = _wgslsmith_sub_u32(~u_input.a.x | _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(16383u, 20524u, var_0.x), _wgslsmith_dot_vec3_u32(arg_2.b.c.wxx, arg_2.b.c.xwz)), ~(~arg_3.x)), firstTrailingBit(~(var_1.c.c.x << (25208u % 32u))));
    var_3 = u_input.c.x;
    return _wgslsmith_f_op_f32(step(-1217f, var_1.a.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec4<bool> {
    global2 = !select(!vec4<bool>(!global2.x, any(vec4<bool>(true, global2.x, true, false)), any(vec3<bool>(true, false, false)), global2.x), vec4<bool>(false, any(select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(false, global2.x, global2.x, false))), true, global2.x), false);
    global0 = ~vec4<u32>(~1u, global0.x, u_input.c.x, arg_1.x);
    let var_0 = Struct_2(Struct_1(global2.xz, -1i), global2.x, ~vec4<u32>(~1u, arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, arg_1.x, arg_1.x, u_input.a.x), arg_1), ~arg_1), min(reverseBits(85415u), arg_1.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(func_3(-10081i, Struct_3(false, var_0, Struct_1(!var_0.a.a, -var_0.a.b)), Struct_3(false, Struct_2(var_0.a, !global2.x, min(var_0.c, arg_1)), Struct_1(select(global2.xy, vec2<bool>(true, global2.x), global2.zy), -53734i)), global0.zw)), _wgslsmith_div_f32(arg_0.x, -390f), -389f);
    var var_2 = vec3<u32>(~(~min(1u, ~global0.x)), max(select(~4294967295u, ~34679u, var_0.a.a.x), 52592u), var_0.c.x);
    return select(vec4<bool>((firstLeadingBit(46603i) | -u_input.b.x) < (abs(var_0.a.b) ^ abs(9418i)), true, true, !(!global2.x)), !vec4<bool>(any(global2.yww), false, arg_0.x > _wgslsmith_f_op_f32(ceil(var_1.x)), true), select(vec4<bool>(_wgslsmith_div_f32(512f, arg_0.x) < -717f, -19712i >= firstTrailingBit(21473i), !(arg_0.x == arg_0.x), true), vec4<bool>(true, global2.x, true, 938f != _wgslsmith_f_op_f32(trunc(-1000f))), select(vec4<bool>(any(global2.ww), global2.x, global2.x | global2.x, false), !(!vec4<bool>(false, var_0.a.a.x, var_0.b, true)), all(vec2<bool>(true, var_0.b)))));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global2 = select(!func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, 138f, 1000f, 411f))), vec4<u32>(global0.x, _wgslsmith_clamp_u32(5907u, global0.x, global0.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), global0.x)), !(!vec4<bool>(global2.x, any(vec2<bool>(global2.x, global2.x)), global2.x, !global2.x)), true);
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-350f, -951f)), -644f, 585f, 1844f)))), !select(vec3<bool>(true, func_2(vec4<f32>(1000f, 494f, 358f, -477f), vec4<u32>(9724u, 0u, global0.x, 1u)).x, global2.x), global2.xwz, vec3<bool>(all(global2.yxz), all(vec4<bool>(false, global2.x, global2.x, global2.x)), true)), Struct_2(Struct_1(vec2<bool>(global2.x, func_2(vec4<f32>(1375f, -1869f, 1000f, 419f), vec4<u32>(u_input.c.x, 3578u, 1u, 4294967295u)).x), countOneBits(-2147483647i)), all(select(global2.wz, select(global2.yx, global2.zz, global2.x), true & global2.x)), (firstLeadingBit(vec4<u32>(global0.x, 0u, 28771u, 39111u)) ^ vec4<u32>(global0.x, global0.x, 52974u, 9522u)) | vec4<u32>(1u, ~4294967295u, firstLeadingBit(global0.x), _wgslsmith_clamp_u32(8961u, global0.x, 0u))), Struct_1(global2.yx, 6112i));
    let var_1 = Struct_3(all(vec4<bool>(select(global2.x, true, 1u == u_input.c.x), true | var_0.c.b, true, true)), Struct_2(var_0.d, true, ~_wgslsmith_clamp_vec4_u32(var_0.c.c >> (var_0.c.c % vec4<u32>(32u)), var_0.c.c, var_0.c.c ^ vec4<u32>(99772u, global0.x, 0u, 29014u))), var_0.c.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(var_0.a.xy));
    var var_3 = max(abs(reverseBits(var_1.b.c)), ~var_1.b.c);
    return _wgslsmith_mult_vec4_u32(var_1.b.c, ~vec4<u32>(50154u, ~81490u, 4294967295u, var_1.b.c.x | global0.x) & var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(~76498u, u_input.c.x, ~(~19610u), 49968u);
    global0 = func_1(2147483647i);
    let var_0 = !all(vec2<bool>(global2.x, true)) | global2.x;
    global1 = array<vec3<f32>, 16>();
    var var_1 = Struct_1(vec2<bool>(true, global2.x), abs(u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f * _wgslsmith_f_op_f32(step(548f, _wgslsmith_f_op_f32(-1567f + 1188f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(func_3(-11745i, Struct_3(var_1.a.x, Struct_2(Struct_1(global2.xz, 32250i), var_1.a.x, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, global0.x)), Struct_1(vec2<bool>(global2.x, var_0), -35244i)), Struct_3(true, Struct_2(Struct_1(var_1.a, -2147483647i), var_0, vec4<u32>(1u, u_input.c.x, 4294967295u, 403u)), Struct_1(vec2<bool>(true, true), var_1.b)), u_input.c))) * 1f)));
    var_1 = Struct_1(!var_1.a, ~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~_wgslsmith_add_u32(1u, ~(~global0.x)), global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1226f + _wgslsmith_f_op_f32(f32(-1f) * -442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(1203f * 409f)), _wgslsmith_f_op_f32(abs(-353f)))));
}

