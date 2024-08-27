struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2428f;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<i32>(2147483647i, -1i, -37549i), false), Struct_2(vec3<i32>(0i, -1i, -11618i), true), Struct_2(vec3<i32>(0i, 2147483647i, -1i), true));

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(2147483647i, -32700i, 1i), true);

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-615f, 822f, 276f, 975f), -592f), Struct_1(vec4<f32>(1301f, -1047f, 601f, 610f), -445f), Struct_1(vec4<f32>(2529f, -1275f, -1008f, 1172f), 1254f), Struct_1(vec4<f32>(231f, 514f, -233f, -1249f), -1662f), Struct_1(vec4<f32>(371f, 1633f, 825f, 574f), 281f), Struct_1(vec4<f32>(482f, 894f, -978f, 1104f), -1000f), Struct_1(vec4<f32>(-614f, 121f, 1942f, -1681f), -476f), Struct_1(vec4<f32>(856f, -2551f, -983f, 1396f), -193f), Struct_1(vec4<f32>(-1000f, 1738f, -831f, 925f), -3517f), Struct_1(vec4<f32>(1000f, 1071f, -156f, -544f), 1603f), Struct_1(vec4<f32>(1570f, -221f, 354f, -377f), 452f), Struct_1(vec4<f32>(-333f, 680f, -1000f, 934f), 1981f), Struct_1(vec4<f32>(-1126f, 483f, -1532f, -684f), -797f), Struct_1(vec4<f32>(1000f, -1000f, 1140f, -2055f), -151f), Struct_1(vec4<f32>(1345f, -246f, -1360f, 1211f), -100f), Struct_1(vec4<f32>(-552f, -1084f, -1926f, -273f), -612f), Struct_1(vec4<f32>(-2001f, -559f, -819f, 1070f), -1412f), Struct_1(vec4<f32>(647f, 292f, 529f, -1179f), 837f), Struct_1(vec4<f32>(1497f, -197f, -1976f, -2547f), -945f), Struct_1(vec4<f32>(251f, -158f, -1000f, -1742f), -478f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f + 1883f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f + 802f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -666f) * -614f);
    global2 = Struct_2(abs(abs(~reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, -40832i)))), !(!(any(vec3<bool>(false, true, global2.b)) & global3.b)));
    var var_0 = any(!vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 57640u), vec2<u32>(6701u, 4294967295u)) != 4294967295u, global2.b));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    var var_0 = select(vec4<bool>(arg_0.x > arg_0.x, any(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), true), select(vec4<bool>(!func_3(), global3.b, !(arg_1.x > arg_1.x), global2.b), !select(vec4<bool>(false, global2.b, global3.b, false), !vec4<bool>(global3.b, global2.b, global2.b, global2.b), global3.b != true), vec4<bool>((global3.b && global2.b) || true, any(select(vec3<bool>(global2.b, global3.b, global2.b), vec3<bool>(global2.b, true, false), vec3<bool>(global2.b, global2.b, global2.b))), global2.b, -arg_2 <= min(u_input.b.x, 9506i))), any(!(!(!vec3<bool>(global3.b, global3.b, global3.b)))));
    let var_1 = Struct_1(vec4<f32>(723f, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), 2239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(185f)))), 1000f);
    var_0 = vec4<bool>(!func_3(), false, !select(global2.b, true, 1i >= reverseBits(global3.a.x)), !(!all(!vec3<bool>(false, global3.b, true))));
    global3 = Struct_2(u_input.a.yxz, all(!(!(!var_0.wy))));
    let var_2 = ~(vec4<i32>(-1i) * -vec4<i32>(16217i, global3.a.x, u_input.b.x, -2147483647i)) | ~u_input.b;
    return 111f;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(1u, 20u)];
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159f, arg_1.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(firstTrailingBit(firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x, u_input.b.x), vec2<i32>(-6355i, 97244i)))), global3.a.xy);
    var var_1 = Struct_1(arg_1.a, -1698f);
    global3 = Struct_2(global3.a, global2.a.x < (329i | global3.a.x));
    global0 = _wgslsmith_div_f32(1484f, 1000f);
    global1 = array<Struct_2, 3>();
    return ~firstLeadingBit(1u);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = select(~1u | _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(arg_0, arg_0, arg_0, 0u)), ~(~vec4<u32>(0u, arg_0, 4294967295u, 43261u))), ~countOneBits(1u | _wgslsmith_add_u32(52642u, arg_0)), true && (select(true, !global3.b, all(vec2<bool>(global2.b, false))) | true));
    global1 = array<Struct_2, 3>();
    let var_1 = 1u;
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1256f, 2018f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-188f * -306f), _wgslsmith_f_op_f32(f32(-1f) * -1190f))))), func_4(vec2<bool>(global3.b, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(88289u, 65312u, var_1), vec4<f32>(144f, 1000f, 1000f, -972f), 1i)), _wgslsmith_f_op_f32(2210f * -1043f)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-102f, -220f)), 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f)))) - -488f), -556f)));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~44732u, ~var_0, var_2, _wgslsmith_div_u32(~min(1u, arg_0), var_2)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0, var_0), ~var_0, _wgslsmith_add_u32(4294967295u, var_1), var_0 & var_1), reverseBits(vec4<u32>(1089u, 0u, var_1, 23445u))), ~(~vec4<u32>(var_0, 15325u, var_1, 1u)) | (vec4<u32>(1u, 43016u, var_1, 0u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_1, 4294967295u, arg_0), vec4<u32>(var_0, arg_0, var_2, var_2), vec4<u32>(8368u, 0u, var_2, 1u))))), 3u)];
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = func_1(0u);
    var var_1 = !arg_1.b;
    let var_2 = _wgslsmith_mult_u32(~(~32149u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33741u), vec2<u32>(0u, 23635u)), ~52056u), ~(~44488u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(2163u, ~1u, ~1068u), 1u), ~firstTrailingBit(4845u) << (_wgslsmith_clamp_u32(firstTrailingBit(893u), 1u, ~0u) % 32u)));
    let var_3 = ~(var_2 >> ((firstLeadingBit(func_5(arg_0.yx, Struct_1(vec4<f32>(-979f, arg_3, 1138f, -587f), arg_2.x))) << (_wgslsmith_mod_u32(~var_2, var_2) % 32u)) % 32u));
    let var_4 = _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(func_1(_wgslsmith_mult_u32(var_3, var_3)).a.x, 0i, ~arg_1.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -2147483647i, global3.a.x, global3.a.x), vec4<i32>(17158i, var_0.a.x, global3.a.x, global3.a.x) & vec4<i32>(0i, u_input.b.x, global3.a.x, 2147483647i))), -vec4<i32>(~global2.a.x, _wgslsmith_sub_i32(0i, arg_1.a.x), 13426i, _wgslsmith_add_i32(global2.a.x, 1i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1230f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f - -502f) + -2160f), _wgslsmith_f_op_f32(trunc(arg_2.x))))), _wgslsmith_div_f32(-212f, -140f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = -1i;
    let var_2 = 1301f;
    var var_3 = func_6(vec3<f32>(-805f, -654f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-160f + var_2)))), func_1(var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), var_2)), var_2, 200f) - vec3<f32>(_wgslsmith_f_op_f32(769f - _wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-735f * -1674f) + 981f), 198f)), var_2);
    let var_4 = Struct_1(var_3.a, func_6(_wgslsmith_f_op_vec3_f32(floor(var_3.a.yzz)), Struct_2(select(u_input.a.wyx, vec3<i32>(var_1, 0i, 2147483647i), !global3.b), true), var_3.a.yxz, _wgslsmith_f_op_f32(round(-1065f))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(62971u, 11921u, 26460u, 48825u), vec4<u32>(1u, 37720u, 4294967295u, var_0)), 7471u, ~var_0, ~40826u)), 1u);
}

