struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -908f;

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(1000f, -1860f, -285f, -1692f), vec4<f32>(-688f, -1669f, 294f, -507f), vec4<f32>(413f, 1894f, -204f, -263f), vec4<f32>(520f, 804f, 1000f, -475f), vec4<f32>(-671f, 2738f, 895f, 1485f), vec4<f32>(1410f, -317f, -1205f, -421f), vec4<f32>(1382f, 617f, 1260f, -958f), vec4<f32>(1497f, -501f, -450f, -1601f), vec4<f32>(777f, 472f, 913f, -1928f), vec4<f32>(-615f, 345f, -501f, -590f), vec4<f32>(328f, 382f, 1054f, 190f), vec4<f32>(-593f, 726f, -661f, 176f), vec4<f32>(351f, 892f, -1200f, -135f), vec4<f32>(1085f, -840f, 139f, -792f), vec4<f32>(-699f, -1519f, 1496f, -600f), vec4<f32>(217f, 116f, -212f, 199f), vec4<f32>(577f, 110f, 581f, -444f));

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-2893f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -611f), -143f, true))));
    return ~(~arg_0.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(235f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(ceil(983f)))))));
    let var_1 = ~(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(30254i, u_input.b)) ^ -4519i));
    let var_2 = ~1u;
    global1 = array<vec4<f32>, 17>();
    var var_3 = _wgslsmith_div_i32(0i, firstLeadingBit(0i));
    return Struct_2(Struct_1(vec2<f32>(arg_0.x, -282f)), Struct_1(arg_0), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(33121u | u_input.a, 1u, 4294967295u, 50845u), ~(~vec4<u32>(var_2, 4294967295u, 54050u, 12933u)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-773f, -303f)), arg_0) + vec2<f32>(-1329f, _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
}

fn func_1() -> bool {
    var var_0 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1005f, 203f)) - vec2<f32>(373f, _wgslsmith_f_op_f32(trunc(1486f))))), ~(~func_2(abs(vec3<u32>(1u, u_input.a, 0u)))));
    var var_1 = -1637f;
    let var_2 = Struct_3(Struct_2(var_0.a, var_0.b, func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.a.x, var_0.d.a.x), vec2<f32>(1687f, var_0.a.a.x))), 57818u).c, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.a, vec2<f32>(-495f, 1865f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.a.x, 748f), var_0.d.a))), var_0.c.x).a));
    let var_3 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(0u, 26480u), var_0.c.wz), vec2<u32>(1u, var_2.a.c.x)), abs(vec2<u32>(~u_input.a, select(u_input.a, 1u, true)))) < _wgslsmith_dot_vec4_u32(vec4<u32>(max(countOneBits(41150u), _wgslsmith_clamp_u32(u_input.a, 45041u, var_2.a.c.x)), var_2.a.c.x >> (u_input.a % 32u), _wgslsmith_sub_u32(var_2.a.c.x, 0u), var_2.a.c.x), firstLeadingBit(var_0.c));
    global2 = var_2.a.b.a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(920f, -143f))), -525f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(565f, 400f) * vec2<f32>(-601f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-539f, -2102f) + vec2<f32>(495f, -1078f)), any(vec4<bool>(false, false, false, true)))))), func_1())));
    global1 = array<vec4<f32>, 17>();
    let var_1 = vec4<u32>(~(~u_input.a ^ u_input.a), ~10281u, 0u, ~102124u);
    var var_2 = _wgslsmith_dot_vec4_u32(reverseBits(var_1) & vec4<u32>(1u, var_1.x, ~var_1.x, var_1.x ^ 0u), vec4<u32>((u_input.a | var_1.x) << (abs(u_input.a) % 32u), u_input.a, ~var_1.x, 80458u)) | ~u_input.a;
    let var_3 = 46569u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1637f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(-1271f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -458f, false))))), _wgslsmith_add_u32(func_2(~(~var_1.zzw)), u_input.a));
}

