struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, true, false, true, true, false, true, true, true, false, false, false, true, true, true, false, false, false, true, true, true, false, false, true, true, false, true, true, false, true);

var<private> global1: vec4<f32> = vec4<f32>(-1000f, 573f, 899f, -1410f);

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(31577u, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -21514i), vec4<f32>(1000f, 1009f, 1309f, -819f), true, 38533u), Struct_1(1u, vec4<i32>(-33005i, 30389i, i32(-2147483648), 38392i), vec4<f32>(901f, -763f, 1878f, 1084f), false, 0u), Struct_1(29587u, vec4<i32>(1i, 13008i, i32(-2147483648), -29339i), vec4<f32>(-367f, 715f, -1296f, -1576f), false, 1u), Struct_1(4294967295u, vec4<i32>(1i, -1616i, 20584i, -13046i), vec4<f32>(-375f, -1214f, -1877f, 1092f), false, 1u), Struct_1(37066u, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 25039i), vec4<f32>(902f, 678f, -659f, 438f), false, 31981u), Struct_1(1u, vec4<i32>(-14016i, 1i, 1i, 64266i), vec4<f32>(-791f, 1257f, -418f, -712f), false, 158383u), Struct_1(1u, vec4<i32>(-5605i, 16291i, i32(-2147483648), -8268i), vec4<f32>(-358f, -338f, 449f, -425f), true, 3907u), Struct_1(33862u, vec4<i32>(29662i, -14452i, -33924i, 1i), vec4<f32>(-190f, -706f, 890f, 1352f), true, 44747u), Struct_1(1u, vec4<i32>(0i, 2147483647i, 8386i, 2147483647i), vec4<f32>(334f, 1074f, 610f, 1109f), false, 44023u), Struct_1(45148u, vec4<i32>(11617i, 2147483647i, 13196i, -1024i), vec4<f32>(768f, -665f, 1324f, 376f), true, 1u), Struct_1(50221u, vec4<i32>(-1i, -28637i, -16714i, 1i), vec4<f32>(-955f, -759f, -1494f, 651f), false, 0u), Struct_1(1u, vec4<i32>(1i, 1i, i32(-2147483648), 0i), vec4<f32>(313f, 630f, -1825f, 2308f), false, 4294967295u), Struct_1(2876u, vec4<i32>(14041i, 31014i, 1i, 29i), vec4<f32>(-1007f, -597f, 1106f, 1000f), true, 0u), Struct_1(48134u, vec4<i32>(2147483647i, -26916i, -1i, 4248i), vec4<f32>(343f, 2667f, 443f, -419f), false, 27423u), Struct_1(43354u, vec4<i32>(-36014i, i32(-2147483648), 18786i, -15169i), vec4<f32>(-636f, -871f, 213f, 1854f), true, 5073u), Struct_1(4294967295u, vec4<i32>(-1i, -1i, 151i, 21174i), vec4<f32>(1293f, 1973f, 336f, -804f), true, 0u), Struct_1(0u, vec4<i32>(35576i, 1i, 0i, -18602i), vec4<f32>(1996f, -1550f, 496f, -156f), true, 0u), Struct_1(1u, vec4<i32>(-2540i, -37918i, -61196i, 1i), vec4<f32>(-1072f, -128f, 126f, 1451f), false, 4294967295u), Struct_1(0u, vec4<i32>(-33734i, -1i, 5078i, -6431i), vec4<f32>(-1405f, -740f, -263f, 916f), true, 0u), Struct_1(73490u, vec4<i32>(-64557i, 2147483647i, 0i, i32(-2147483648)), vec4<f32>(-407f, -933f, -232f, 1206f), false, 0u), Struct_1(44519u, vec4<i32>(3412i, 1i, 1i, 6451i), vec4<f32>(1235f, -679f, -606f, 289f), true, 0u), Struct_1(0u, vec4<i32>(-11623i, i32(-2147483648), -1i, -1i), vec4<f32>(1000f, -1699f, 767f, -380f), false, 42091u), Struct_1(24563u, vec4<i32>(34077i, 28280i, 33879i, -1i), vec4<f32>(2169f, -998f, -1326f, -381f), false, 1u), Struct_1(64355u, vec4<i32>(19356i, -1i, 15673i, 0i), vec4<f32>(-1454f, 722f, -1529f, 2753f), true, 0u), Struct_1(15157u, vec4<i32>(46447i, 0i, 70079i, 0i), vec4<f32>(831f, -556f, -757f, -309f), false, 25617u));

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(max(~u_input.a.x, 1u), ~select(u_input.a.x, u_input.a.x, global2.x), 59456u | ~u_input.a.x, _wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x)), firstTrailingBit(vec4<u32>(48548u, abs(45018u), 1u, firstLeadingBit(u_input.a.x)))), vec4<i32>(1i, _wgslsmith_add_i32(reverseBits(-arg_0), firstTrailingBit(~(-1i))), ~arg_0, (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(0i, arg_0, arg_0)) & ~47525i) | max(arg_0, arg_0 | arg_0)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, global1.x) * _wgslsmith_f_op_f32(global1.x * 600f)) + global1.x), 558f, global1.x, _wgslsmith_f_op_f32(-813f + global1.x)), arg_0 > abs(-2147483647i), ~(~_wgslsmith_div_u32(reverseBits(u_input.a.x), firstLeadingBit(62355u))));
    var var_1 = 42703u;
    var var_2 = Struct_1(u_input.a.x, -var_0.b >> (max(vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(4294967295u, var_0.e), ~u_input.a.x, ~var_0.e), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.e, u_input.a.x, var_0.e, var_0.a)), max(vec4<u32>(1u, 0u, 4566u, 4294967295u), vec4<u32>(4294967295u, var_0.a, var_0.a, 66060u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(var_0.c)), var_0.d, ~reverseBits(~var_0.a));
    global4 = array<Struct_1, 1>();
    var var_3 = select(16330u, 36344u, true | select(true, var_2.d, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, var_2.a), 30u)]));
    return ~var_2.e >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_2.e, u_input.a.x, 1u), reverseBits(u_input.a)), ~u_input.a) % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(arg_0, ~arg_0);
    var var_1 = !all(!vec2<bool>(arg_3.b.x >= arg_2.b.x, true));
    global4 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(637f, 1357f, global1.x, _wgslsmith_f_op_f32(-656f * 269f)));
    var var_3 = global2.wxy;
    return any(vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(func_3(2147483647i), 30u)], false, all(vec2<bool>(any(vec3<bool>(false, true, true)), arg_2.d))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_3.yyx;
    let var_1 = select(global2.wz, vec2<bool>(true, true), true);
    var var_2 = u_input.a.x;
    let var_3 = any(vec3<bool>(false, true && global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(arg_3.x, 4294967295u), ~1u), 30u)], global0[_wgslsmith_index_u32(countOneBits(~var_0.x), 30u)] && global2.x));
    global2 = select(select(vec4<bool>(any(vec2<bool>(true, false)), var_3 | global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(12619u, 30u)], false), !(!(!vec4<bool>(true, true, global2.x, false))), vec4<bool>(global2.x, true, !(false || global2.x), true | global0[_wgslsmith_index_u32(arg_3.x, 30u)])), !vec4<bool>(true, false, func_2(vec4<u32>(var_0.x, 1u, var_0.x, arg_3.x) & arg_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(262f, 1000f, 1326f, -555f) + arg_2), Struct_1(u_input.a.x, vec4<i32>(55792i, 1i, -45141i, 37772i), arg_2, true, var_0.x), global4[_wgslsmith_index_u32(85729u, 1u)]), true), false);
    return Struct_1(4294967295u, vec4<i32>(min(firstLeadingBit(-1567i), abs(42799i)), _wgslsmith_dot_vec4_i32((vec4<i32>(-2147483647i, 0i, 26840i, 0i) >> (vec4<u32>(1u, arg_3.x, var_0.x, 42173u) % vec4<u32>(32u))) >> ((arg_3 ^ arg_3) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), ~(_wgslsmith_div_i32(-33229i, 28187i) >> (u_input.a.x % 32u)), -max(_wgslsmith_div_i32(-1i, -2147483647i), i32(-1i) * -1i)), vec4<f32>(arg_0, arg_1.x, 315f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_1.x)))))), true, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(~arg_3.x & 4294967295u, ~_wgslsmith_sub_u32(5327u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1239f - -837f), _wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_vec3_f32(global1.xxz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yxx * global1.ywy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 968f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))) - vec4<f32>(_wgslsmith_f_op_f32(1202f * global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), 1152f))), ~vec4<u32>(abs(74436u), ~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 0u), select(u_input.a.x, 1u, global2.x))));
    global4 = array<Struct_1, 1>();
    var var_1 = ~(_wgslsmith_dot_vec2_u32(~u_input.a.xy, vec2<u32>(var_0.a, 55583u) >> (u_input.a.yx % vec2<u32>(32u))) ^ u_input.a.x) & (1u >> (func_1(global1.x, global1.zyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.c))), vec4<u32>(var_0.e, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_u32(19954u, 1u), 1u)).a % 32u));
    var_1 = var_0.a;
    global3 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~0u, var_0.e)), -1i);
}

