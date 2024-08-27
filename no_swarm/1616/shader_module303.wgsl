struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, false, true, false, false);

var<private> global2: array<vec2<f32>, 24>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(844f, -208f, -1163f), 0i, -334f, vec4<bool>(false, true, true, true), 56640u);

var<private> global4: array<f32, 26> = array<f32, 26>(1000f, 1876f, -519f, -1000f, -947f, -1414f, -1208f, 428f, 1567f, -2028f, 1064f, -496f, -665f, 1189f, -429f, -1000f, -391f, 335f, 1995f, -1208f, 1388f, -736f, -1196f, -2773f, -935f, 1461f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = 427f;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(global0.a.a));
    global4 = array<f32, 26>();
    let var_2 = global0.c;
    global3 = global0.a;
    return ~u_input.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-7939i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, func_3(961f), -18878i), _wgslsmith_clamp_i32(func_3(350f), -1i, -2147483647i)), global3.b, global3.b), ~(~(~abs(vec4<i32>(2147483647i, 2147483647i, u_input.a, global0.a.b)))));
    global1 = array<bool, 6>();
    let var_1 = select(vec4<i32>(-1i, global0.a.b ^ min(28106i, abs(global3.b)), global0.a.b, var_0.x), -(~(~vec4<i32>(var_0.x, 0i, -22586i, 1i))) >> ((~reverseBits(vec4<u32>(0u, 45062u, global3.e, 0u)) | ~u_input.b) % vec4<u32>(32u)), select(global3.d, select(global0.a.d, !(!global0.a.d), !global3.d), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.e, 6u)], global0.a.d.x, true)));
    var var_2 = 4294967295u >> (_wgslsmith_dot_vec3_u32(u_input.b.wzx, ~vec3<u32>(~u_input.b.x, max(78091u, global0.a.e), ~29996u)) % 32u);
    var var_3 = Struct_3(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.b.x, u_input.b.x))), ~max(~u_input.b.wy, vec2<u32>(global3.e, global3.e))), u_input.b.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.a.a)), -3301i, 1263f, !(!vec4<bool>(false, true, !global3.d.x, 1i == u_input.a)), ~_wgslsmith_clamp_u32(u_input.b.x, abs(69412u), ~var_3.b) | global0.a.e);
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_3(u_input.b.xz, 4294967295u);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(1u, 26u)], global0.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(global0.c + global3.a.x), _wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_div_f32(-764f, global3.a.x))))));
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global4[_wgslsmith_index_u32(global3.e, 26u)], 637f), global3.a)) + vec3<f32>(_wgslsmith_f_op_f32(abs(432f)), _wgslsmith_f_op_f32(global0.d.x - global0.a.c), 1233f))), _wgslsmith_f_op_vec2_f32(-global0.d.yw), 1000f, _wgslsmith_f_op_vec4_f32(-global0.d));
    let var_3 = 19876i;
    let var_4 = var_2.a;
    return select(vec4<i32>(global0.a.b, countOneBits(_wgslsmith_mod_i32(1i, reverseBits(arg_0))), ~(-(i32(-1i) * -2147483647i)), func_2(func_2(vec3<f32>(307f, -626f, -1565f)).a).b | 1i), firstLeadingBit(~vec4<i32>(-17918i, arg_0, ~(-33090i), 1i)), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-803f, _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global0.a.b, global3.b, global0.a.b, -42791i)), vec4<i32>(-20096i, u_input.a, global0.a.b, u_input.a) << (vec4<u32>(global0.a.e, 38797u, global3.e, global0.a.e) % vec4<u32>(32u))), -func_1(global0.a.b)), -51114i);
}

