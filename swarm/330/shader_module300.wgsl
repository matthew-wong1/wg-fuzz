struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: Struct_4;

var<private> global4: array<Struct_4, 11>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = global3.a;
    var var_1 = false;
    global1 = array<vec3<bool>, 25>();
    let var_2 = global3.a;
    global0 = array<vec2<i32>, 10>();
    return (_wgslsmith_clamp_i32(var_2.a.x, abs(reverseBits(41821i)), arg_1) << (~(~(~0u)) % 32u)) < (_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(73877u, 10u)], vec2<i32>(_wgslsmith_add_i32(52147i, 0i), global3.a.b.x)) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_3.x, _wgslsmith_dot_vec3_u32(arg_3.zxx, arg_3.xzy)), arg_3.x) % 32u));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(731f, -830f, 1087f) + vec3<f32>(-1000f, 191f, -1000f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1216f, -247f), _wgslsmith_f_op_f32(max(1000f, 300f)), -1330f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-747f, -230f, -341f), vec3<f32>(771f, -705f, -121f), false)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1673f, 837f, 967f), vec3<f32>(284f, -243f, -939f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-816f, 759f, -906f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(949f, -905f, 406f))) - vec3<f32>(1134f, -940f, -434f))) * vec3<f32>(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1581f, 1608f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(516f * 527f), _wgslsmith_f_op_f32(sign(869f)))))), ((true || func_3(global2.x, global3.a.b.x, Struct_2(vec2<f32>(-1583f, -123f), Struct_1(946f, vec2<f32>(343f, 414f)), vec2<i32>(83805i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(2331f, vec2<f32>(-738f, 1481f))), arg_0)) == false) && global2.x));
    let var_2 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 73475u, 44702u) ^ arg_0.xzw, ~arg_0.yzw), ~vec3<u32>(~arg_0.x, ~arg_0.x, ~arg_0.x));
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.xy * vec2<f32>(-385f, var_1.x)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -456f), _wgslsmith_f_op_f32(trunc(-1254f))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), global2.x)), Struct_1(2850f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz), var_1.xz)), ~reverseBits(select(u_input.a.yw, -u_input.a.wz, global2.xz)), vec2<i32>(global3.a.b.x, -7977i), Struct_1(_wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, 130f, global2.x)), var_1.x, global2.x))), _wgslsmith_f_op_vec2_f32(var_1.xy - _wgslsmith_f_op_vec2_f32(-var_1.xx))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), 100675u, ~25558u, ~1u), select(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2179u)), arg_0.x & arg_2.x)) <= countOneBits(_wgslsmith_mult_u32(~22282u, 0u)));
    global4 = array<Struct_4, 11>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global4 = array<Struct_4, 11>();
    return Struct_3((vec4<i32>(_wgslsmith_add_i32(-7492i, arg_3.c.x), global3.a.b.x, 39425i, _wgslsmith_add_i32(-2147483647i, global3.a.a.x)) | u_input.a) ^ global3.a.a, _wgslsmith_add_vec2_i32(-arg_3.c, vec2<i32>(_wgslsmith_dot_vec3_i32(global3.a.a.yzw, vec3<i32>(37361i, global3.a.b.x, -2147483647i)), ~1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(63127u, 32702u, 24950u, 66284u), vec4<u32>(68904u, 48420u, 40937u, 0u)) % 32u))));
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(580f, 202f), vec2<f32>(1000f, 1159f))))), func_2(abs(~vec4<u32>(20608u, 0u, 4294967295u, 41102u))).b, select(abs(global3.a.b), -global3.a.b, global2.x), global3.a.b, Struct_1(1f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(618f, 422f), vec2<f32>(-1284f, -387f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1745f, -1099f), vec2<f32>(-876f, -487f), vec2<bool>(true, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(944f, -1573f)), true))))));
    let var_1 = !select(global1[_wgslsmith_index_u32(~(1u & firstTrailingBit(87003u)), 25u)], vec3<bool>(global2.x, any(vec4<bool>(true, global2.x, global2.x, false)), any(vec2<bool>(global2.x, true))), global1[_wgslsmith_index_u32(22215u, 25u)]);
    global1 = array<vec3<bool>, 25>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, -1000f));
    var var_3 = ~5223u;
    return Struct_4(func_4(var_1, var_0.b.b, !vec4<bool>(var_1.x, true, true, var_2.x < 524f), Struct_2(var_0.e.b, func_2(~vec4<u32>(125309u, 66769u, 1u, 0u)).b, vec2<i32>(firstTrailingBit(1i), global3.a.a.x), global3.a.b, var_0.e)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = vec2<bool>(!select(false, false, false), true);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-countOneBits(2147483647i), u_input.a.x, global3.a.b.x, abs(u_input.a.x)), countOneBits(~select(global3.a.a, global3.a.a, arg_2.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(-22942i, -global3.a.b.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-43692i, 14662i, 1i, -2147483647i), u_input.a)), -(~vec4<i32>(1i, -64932i, u_input.a.x, u_input.a.x))));
    global0 = array<vec2<i32>, 10>();
    let var_2 = _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 1i), global0[_wgslsmith_index_u32(~arg_0, 10u)]);
    var var_3 = select(var_2.x << ((_wgslsmith_mult_u32(82104u, 1u) >> (_wgslsmith_sub_u32(~103500u, arg_0) % 32u)) % 32u), ~1i, arg_2.x);
    return func_5(Struct_4(func_4(global1[_wgslsmith_index_u32(arg_0, 25u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(610f, -1738f), arg_3.xy))), !(!vec4<bool>(arg_2.x, true, global2.x, true)), func_2(vec4<u32>(arg_0, arg_0, arg_0, 0u) ^ vec4<u32>(arg_0, arg_0, 57318u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~1u, -1314f, global2.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1139f, -672f, -425f))))) + vec3<f32>(1f, -521f, -594f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-728f, 211f, -1146f), vec3<f32>(-1548f, 105f, -243f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1620f, 516f, 166f), vec3<f32>(1522f, -196f, -611f))))))));
    var var_1 = Struct_3(_wgslsmith_add_vec4_i32(~var_0.a.a, u_input.a), global3.a.b);
    var var_2 = global2.xz;
    var_2 = global2.xx;
    global2 = vec3<bool>(true, global2.x, !(!any(select(vec3<bool>(var_2.x, false, global2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, true, false)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1907f)) * _wgslsmith_f_op_f32(1044f * 622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-729f - 660f), -1945f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(188f, 1741f) * vec2<f32>(-236f, -1057f)), vec2<f32>(-663f, 130f))), vec2<f32>(_wgslsmith_f_op_f32(-182f - -1000f), _wgslsmith_f_op_f32(trunc(520f))))));
    let var_4 = max(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(56382u, 4294967295u, 4294967295u, 13817u), ~vec4<u32>(0u, 0u, 57742u, 1u), vec4<u32>(1u, 1u, 1u, 1u))).c.x, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), global3.a.a.x, _wgslsmith_mod_i32(select(u_input.a.x, -9875i, false), firstTrailingBit(u_input.a.x)))) << (1u % 32u);
    var var_5 = vec3<u32>(0u, 20820u, firstLeadingBit(~1u) ^ _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(19565u, 29572u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_3.b.x)), var_3.a);
}

