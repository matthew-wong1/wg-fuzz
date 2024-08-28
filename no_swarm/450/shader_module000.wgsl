struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(true, false, false, false), true, vec2<f32>(745f, -1219f), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 23468u)), Struct_1(vec4<bool>(true, false, true, true), true, vec2<f32>(-227f, -1264f), vec4<bool>(false, false, true, false), vec2<u32>(1u, 91176u)), Struct_1(vec4<bool>(false, false, true, false), false, vec2<f32>(-213f, 1542f), vec4<bool>(false, true, false, true), vec2<u32>(0u, 1404u)), Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(1000f, -1284f), vec4<bool>(true, true, true, true), vec2<u32>(1u, 698u)), Struct_1(vec4<bool>(false, false, true, true), false, vec2<f32>(-303f, 480f), vec4<bool>(true, true, false, true), vec2<u32>(14805u, 40719u)), Struct_1(vec4<bool>(true, true, false, false), false, vec2<f32>(-145f, -475f), vec4<bool>(true, false, true, true), vec2<u32>(2359u, 24497u)), Struct_1(vec4<bool>(true, true, true, false), false, vec2<f32>(1000f, -374f), vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), false, vec2<f32>(445f, -311f), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 15071u)), Struct_1(vec4<bool>(false, false, false, true), true, vec2<f32>(300f, 1012f), vec4<bool>(true, false, false, true), vec2<u32>(1u, 9407u)), Struct_1(vec4<bool>(true, false, true, true), true, vec2<f32>(-1000f, -1885f), vec4<bool>(false, true, true, true), vec2<u32>(5468u, 1u)), Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(-1126f, 428f), vec4<bool>(false, false, false, false), vec2<u32>(1u, 83809u)), Struct_1(vec4<bool>(false, false, false, true), true, vec2<f32>(683f, 285f), vec4<bool>(false, false, true, false), vec2<u32>(43612u, 1u)), Struct_1(vec4<bool>(false, false, true, false), false, vec2<f32>(1000f, 506f), vec4<bool>(true, true, false, false), vec2<u32>(9363u, 73795u)), Struct_1(vec4<bool>(true, false, true, false), true, vec2<f32>(-1360f, -1115f), vec4<bool>(false, false, true, false), vec2<u32>(1u, 78307u)), Struct_1(vec4<bool>(true, true, false, false), false, vec2<f32>(-701f, -686f), vec4<bool>(false, false, true, true), vec2<u32>(15713u, 1u)), Struct_1(vec4<bool>(false, false, true, true), false, vec2<f32>(-177f, 1612f), vec4<bool>(true, false, true, true), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), false, vec2<f32>(723f, 1000f), vec4<bool>(false, true, false, true), vec2<u32>(1u, 0u)), Struct_1(vec4<bool>(true, true, true, false), true, vec2<f32>(-532f, -491f), vec4<bool>(false, false, false, false), vec2<u32>(84314u, 1u)), Struct_1(vec4<bool>(true, true, false, false), true, vec2<f32>(678f, -1404f), vec4<bool>(true, true, false, true), vec2<u32>(27145u, 0u)), Struct_1(vec4<bool>(true, false, false, true), false, vec2<f32>(-1763f, -188f), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 365u)), Struct_1(vec4<bool>(false, true, false, false), false, vec2<f32>(272f, -1404f), vec4<bool>(true, true, false, true), vec2<u32>(66040u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), false, vec2<f32>(-1173f, -713f), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), true, vec2<f32>(336f, -102f), vec4<bool>(true, false, true, false), vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(true, false, true, true), true, vec2<f32>(-1000f, 235f), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(-1339f, 1084f), vec4<bool>(false, false, false, true), vec2<u32>(17456u, 68263u)), Struct_1(vec4<bool>(false, true, false, false), true, vec2<f32>(612f, 959f), vec4<bool>(false, true, false, false), vec2<u32>(1u, 47441u)), Struct_1(vec4<bool>(true, false, false, true), false, vec2<f32>(-952f, 1533f), vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 10998u)), Struct_1(vec4<bool>(true, true, false, false), false, vec2<f32>(278f, 514f), vec4<bool>(false, false, false, false), vec2<u32>(1u, 0u)), Struct_1(vec4<bool>(false, true, false, false), true, vec2<f32>(428f, 461f), vec4<bool>(true, true, false, false), vec2<u32>(46973u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), false, vec2<f32>(-1074f, 1374f), vec4<bool>(true, false, false, true), vec2<u32>(74948u, 38111u)));

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<i32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    global1 = array<Struct_2, 17>();
    global0 = array<Struct_1, 30>();
    var var_0 = true;
    global2 = array<i32, 11>();
    global2 = array<i32, 11>();
    return ~(~arg_2);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = arg_0.d;
    global0 = array<Struct_1, 30>();
    let var_1 = 0u;
    let var_2 = firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(arg_0.e.x, 11u)], global2[_wgslsmith_index_u32(3u, 11u)], -18260i), _wgslsmith_sub_vec4_i32(vec4<i32>(8285i, u_input.a, u_input.a, 17927i), vec4<i32>(global2[_wgslsmith_index_u32(arg_1.b.e.x, 11u)], global2[_wgslsmith_index_u32(var_1, 11u)], -30593i, u_input.a))) << ((~vec4<u32>(0u, var_1, arg_1.b.e.x, 1u) >> (vec4<u32>(1u, 111564u, arg_1.a, max(1u, arg_1.b.e.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = -1i;
    return true;
}

fn func_1() -> vec2<f32> {
    var var_0 = !any(vec2<bool>(any(vec3<bool>(false, false, true)) | true, all(vec2<bool>(false, false))));
    let var_1 = -29107i;
    let var_2 = func_3(global0[_wgslsmith_index_u32(func_2(-1291f, Struct_1(vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-629f, 239f), vec2<f32>(-526f, 753f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(527f, 302f))), vec4<bool>(true, select(false, true, false), true, true), ~(~vec2<u32>(1u, 40606u))), _wgslsmith_add_u32(~(~0u), 1u), vec2<bool>(all(vec2<bool>(true, false)) || false, false)), 30u)], Struct_2(~1u, Struct_1(vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1150f, 1000f))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), ~vec2<u32>(1u, 45301u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-450f - -325f), -221f)))));
    global2 = array<i32, 11>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 + vec2<f32>(-1000f, var_3.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3) - var_3) * _wgslsmith_f_op_vec2_f32(-var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1339f), vec2<f32>(-1000f, -2074f), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1260f, 475f) - vec2<f32>(-574f, 847f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-688f, -360f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(384f, -2085f))))));
    var var_1 = global1[_wgslsmith_index_u32(~abs(32000u), 17u)];
    var var_2 = vec2<bool>(!var_1.b.a.x || true, var_1.b.b || (all(var_1.b.d) || var_1.b.a.x));
    global1 = array<Struct_2, 17>();
    let var_3 = var_1.b;
    var var_4 = vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(~(max(vec4<i32>(u_input.a, u_input.a, -33939i, -2147483647i), vec4<i32>(-27004i, u_input.a, 2147483647i, global2[_wgslsmith_index_u32(var_3.e.x, 11u)])) & abs(vec4<i32>(-48095i, 2147483647i, u_input.a, u_input.a))), ~vec4<i32>(u_input.a, 7870i, 18217i, 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.e.x, var_3.e.x, var_1.b.e.x, 1u) << (vec4<u32>(var_1.a, 1u, 52330u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(53151u, 28962u, var_3.e.x, 28127u), vec4<u32>(4294967295u, 1u, 4294967295u, var_3.e.x))) % vec4<u32>(32u))), u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(2147483647i, -20979i)), (vec2<i32>(-2147483647i, -10467i) & vec2<i32>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(global2[_wgslsmith_index_u32(72718u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<i32>(global2[_wgslsmith_index_u32(var_3.e.x, 11u)], global2[_wgslsmith_index_u32(var_1.b.e.x, 11u)]))), -min(-global2[_wgslsmith_index_u32(var_1.b.e.x, 11u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.e.x, 4294967295u), 11u)])));
    var var_5 = -_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, min(var_4.x, global2[_wgslsmith_index_u32(var_1.a, 11u)])), select(-(~vec2<i32>(1i, -13196i)), vec2<i32>(max(-46703i, var_4.x), _wgslsmith_dot_vec2_i32(var_4.wx, vec2<i32>(global2[_wgslsmith_index_u32(var_3.e.x, 11u)], 12596i))), false));
    let var_6 = -4244i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(_wgslsmith_mult_u32(4294967295u, var_3.e.x ^ 1u)), 1u, 4294967295u, ~var_1.b.e.x), _wgslsmith_add_vec3_i32(var_4.zyz & ~vec3<i32>(30402i, -17970i, var_4.x), vec3<i32>(-(i32(-1i) * -20265i), firstLeadingBit(i32(-1i) * -1i), var_5.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-832f, -1098f, var_1.b.a.x)) - var_3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f) + -115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f * var_3.c.x) * _wgslsmith_f_op_f32(exp2(var_1.b.c.x)))), 772f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-855f, var_0.x, var_1.b.c.x) + vec3<f32>(1041f, 871f, 843f)))))), ~var_4.x);
}

