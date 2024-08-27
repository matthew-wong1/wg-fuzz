struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1152f, 285f, 797f, -587f, -1104f, 1104f, -489f, -807f, -1477f, 1759f, 1000f, 2760f, -1230f, -1025f, 1568f, -851f, 338f, -262f, 844f, 771f, -393f, -1722f, -257f, 2375f, 145f, 1000f, 1000f, 1012f, 623f, 896f, -228f, -368f);

var<private> global1: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1203f, 1538f), vec2<f32>(384f, -1902f), vec2<f32>(847f, -467f), vec2<f32>(-151f, -757f), vec2<f32>(100f, -523f), vec2<f32>(464f, -135f), vec2<f32>(599f, -1167f), vec2<f32>(173f, -2413f), vec2<f32>(613f, 1045f), vec2<f32>(-754f, 625f), vec2<f32>(583f, -174f), vec2<f32>(1821f, 394f), vec2<f32>(-779f, -328f), vec2<f32>(-377f, -1000f), vec2<f32>(501f, -912f), vec2<f32>(1502f, 371f), vec2<f32>(530f, -691f), vec2<f32>(1394f, -786f), vec2<f32>(-915f, 1791f), vec2<f32>(-281f, 1741f), vec2<f32>(1003f, 1962f), vec2<f32>(886f, 418f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(~u_input.e.x, -(u_input.e.x >> (105713u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 32u)], -386f, true))) >= _wgslsmith_f_op_f32(max(-973f, global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 32u)])), ~abs(u_input.a.xz ^ u_input.a.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, -455f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(8994u, 32u)], 1064f)))), abs(~vec2<i32>(u_input.d.x, -1i)), true, ~firstTrailingBit(vec2<u32>(76052u, 66741u) << (u_input.a.xy % vec2<u32>(32u))));
    global0 = array<f32, 32>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = var_0.a;
    return vec3<bool>(any(!select(vec3<bool>(true, var_2.b, var_0.d), !vec3<bool>(var_2.b, var_2.b, var_2.b), any(vec2<bool>(true, true)))), var_2.b, any(vec3<bool>(var_0.d, all(vec3<bool>(var_2.b, false, true)), !var_2.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = countOneBits(arg_3.c.x);
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(~(~u_input.b), 32u)] >= -2032f, true, !all(select(vec4<bool>(arg_0.x, false, arg_0.x, true), select(vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b), vec4<bool>(false, true, true, false), vec4<bool>(false, arg_3.b, arg_0.x, true)), !vec4<bool>(false, arg_3.b, arg_3.b, true))), arg_0.x);
    let var_2 = arg_3.a;
    var var_3 = ~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(~abs(u_input.b), ~u_input.a.x, ~u_input.b));
    var_0 = 1u;
    return ~vec4<u32>(min(~(u_input.a.x >> (var_3.x % 32u)), _wgslsmith_sub_u32(var_3.x << (32124u % 32u), u_input.b)), 4294967295u, 0u, ~(~u_input.a.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_1(u_input.c.x, u_input.a.x > firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, arg_1, arg_1, 66959u), vec4<u32>(u_input.b, 28474u, 1u, 4294967295u)), abs(vec4<u32>(arg_1, u_input.a.x, u_input.a.x, 67024u)))), u_input.a.yz);
    let var_1 = ~func_4(func_3(), ~u_input.e, func_3().x, var_0) & abs(~vec4<u32>(func_4(vec3<bool>(true, false, true), vec4<i32>(49593i, var_0.a, var_0.a, u_input.d.x), true, var_0).x, ~u_input.a.x, _wgslsmith_mod_u32(arg_1, var_0.c.x), var_0.c.x));
    var var_2 = 4294967295u;
    global0 = array<f32, 32>();
    var_2 = min(_wgslsmith_add_u32(var_1.x, var_1.x), _wgslsmith_add_u32(4294967295u, ~var_0.c.x));
    return Struct_2(Struct_1(-_wgslsmith_add_i32(var_0.a << (var_1.x % 32u), 28792i), false, ~var_0.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * 508f), arg_0)) * global0[_wgslsmith_index_u32(~1u, 32u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -394f) * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -271f)), arg_0), abs(~u_input.d.yy & (u_input.c | _wgslsmith_add_vec2_i32(vec2<i32>(-18907i, var_0.a), u_input.c))), var_0.b, ~(~reverseBits(u_input.a.yx)));
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    global1 = array<vec2<f32>, 22>();
    let var_0 = func_2(global0[_wgslsmith_index_u32(8136u, 32u)], ~1u);
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_mult_u32(var_0.e.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), var_1) >> (4294967295u % 32u)) << (var_0.e.x % 32u);
    global0 = array<f32, 32>();
    return -u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(~u_input.c), vec2<i32>(countOneBits(2147483647i), -1i)) << (firstTrailingBit(~(~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), -vec2<i32>(u_input.e.x, 2147483647i));
    var var_2 = max(u_input.d.yw, func_1(vec4<bool>(all(vec3<bool>(true, false, true)) | all(vec3<bool>(false, true, false)), true, false, false)));
    let var_3 = select(vec4<bool>(!all(vec3<bool>(true, true, true)), true, !select(true, false, any(vec4<bool>(true, true, false, true))), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))), vec4<bool>(var_2.x >= (i32(-1i) * -11664i), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(65647u, 32u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] + global0[_wgslsmith_index_u32(u_input.b, 32u)]))) >= global0[_wgslsmith_index_u32(1u, 32u)], false), false);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1617f * _wgslsmith_f_op_f32(step(func_2(1914f, _wgslsmith_mult_u32(0u, u_input.a.x)).b.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f)), var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f))));
}

