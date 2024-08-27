struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(925f, 245f, -572f, -1348f), vec4<f32>(-310f, 2948f, 1127f, 1659f), vec4<f32>(-1000f, -1849f, -1332f, -886f), vec4<f32>(-1000f, -171f, -565f, -1175f), vec4<f32>(675f, -1151f, 1000f, 829f), vec4<f32>(-306f, 811f, 1000f, -1314f), vec4<f32>(2095f, 984f, -1189f, -525f), vec4<f32>(-875f, -1000f, 905f, 1777f), vec4<f32>(-133f, 1000f, 445f, -2201f), vec4<f32>(797f, 175f, 1195f, -829f), vec4<f32>(-626f, -304f, -1128f, -1739f), vec4<f32>(-1637f, 1056f, 1137f, -1615f), vec4<f32>(-1745f, 1875f, 394f, 919f), vec4<f32>(418f, 1219f, 435f, 172f), vec4<f32>(-1477f, -1000f, -312f, -702f));

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 1u, 6278u, 4294967295u), vec4<u32>(4294967295u, 45745u, 0u, 70427u), vec4<u32>(99157u, 5892u, 16253u, 4294967295u), vec4<u32>(11845u, 4294967295u, 88292u, 1u), vec4<u32>(0u, 20181u, 0u, 1u), vec4<u32>(0u, 1u, 3594u, 34722u), vec4<u32>(1u, 25487u, 45755u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(7494u, 51144u, 0u, 0u), vec4<u32>(1u, 0u, 4294967295u, 1u));

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec4<f32>, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(arg_1.b.a);
    global3 = array<vec4<f32>, 14>();
    return select(arg_3, arg_3, select(vec2<bool>(true, true), arg_3, select(arg_3, arg_3, false)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(782f)))), _wgslsmith_div_f32(432f, -595f)))));
    var var_1 = select(func_2(u_input.b.xyx, Struct_3(~u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, 1u), 1u), 31u)]), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f))))), vec2<bool>((u_input.a == u_input.a) | true, true)), func_2(reverseBits(vec3<u32>(u_input.c, reverseBits(u_input.b.x), u_input.c)), Struct_3(1i, Struct_1(_wgslsmith_f_op_f32(-1368f * 1731f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(376f, 1457f))), !vec2<bool>(false, all(vec3<bool>(true, true, true)))), all(!vec2<bool>(true, func_2(u_input.b.zzw, Struct_3(u_input.a, Struct_1(-1503f)), global2[_wgslsmith_index_u32(0u, 31u)], vec2<bool>(true, true)).x)));
    global3 = array<vec4<f32>, 14>();
    var_0 = -1000f;
    global2 = array<Struct_1, 31>();
    return -270f;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(u_input.a, arg_2);
    var var_1 = !vec2<bool>(true, !(_wgslsmith_f_op_f32(max(2002f, var_0.b.a)) < var_0.b.a));
    global2 = array<Struct_1, 31>();
    let var_2 = var_0;
    global2 = array<Struct_1, 31>();
    return Struct_2(global2[_wgslsmith_index_u32(63091u, 31u)], var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<u32>(_wgslsmith_clamp_u32(39793u, ~14134u, u_input.b.x), u_input.c));
    let var_1 = u_input.a == u_input.a;
    var var_2 = _wgslsmith_add_vec4_i32(countOneBits(reverseBits(vec4<i32>(u_input.a, -u_input.a, u_input.a, -12296i))), _wgslsmith_div_vec4_i32(max(reverseBits(vec4<i32>(u_input.a, u_input.a, -10195i, u_input.a)), _wgslsmith_add_vec4_i32(-vec4<i32>(-28891i, u_input.a, 2147483647i, u_input.a), select(vec4<i32>(0i, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), false))), vec4<i32>(max(u_input.a, ~32678i), u_input.a, ~(-1i), u_input.a)));
    let var_3 = ~10869i;
    var var_4 = func_3(var_3, u_input.a, Struct_1(_wgslsmith_f_op_f32(func_1())));
    var var_5 = Struct_3(17315i ^ _wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(var_2.x, -1i, -26146i, 56965i))), vec4<i32>(~1i, 1i, 2147483647i, _wgslsmith_mod_i32(1i, u_input.a))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-931f, 1491f)))), _wgslsmith_f_op_f32(-func_3(-24888i, 2147483647i, Struct_1(-177f)).a.a))));
    let var_6 = !vec2<bool>(var_4.b, true);
    let var_7 = var_3;
    var_0 = select(~(~u_input.b.wx), u_input.b.xz, !select(select(!var_6, func_2(vec3<u32>(0u, u_input.b.x, var_0.x), Struct_3(0i, Struct_1(var_4.a.a)), Struct_1(var_4.a.a), var_6), true), var_6, select(var_6, var_6, func_2(u_input.b.xwz, Struct_3(var_2.x, global2[_wgslsmith_index_u32(1u, 31u)]), var_5.b, var_6))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.a) - _wgslsmith_f_op_f32(-var_5.b.a)))), ~var_2.x, _wgslsmith_div_vec4_i32(vec4<i32>(7591i, 2147483647i, min(abs(-2147483647i), var_2.x), min(var_5.a, -6451i)), vec4<i32>(-2147483647i, -1i, var_5.a & firstLeadingBit(-23561i), 1i)), ~43763i);
}

