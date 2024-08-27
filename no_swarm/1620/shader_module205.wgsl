struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: f32 = 1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global2 = 1021f;
    let var_0 = global0.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-103f - -167f), 1f) - _wgslsmith_f_op_f32(min(-306f, _wgslsmith_f_op_f32(sign(456f))))))), _wgslsmith_f_op_f32(f32(-1f) * -164f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f * var_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -488f));
    return var_1.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(min(-u_input.a, -12621i ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(45171i, 42898i, -12071i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f + -338f))) - _wgslsmith_f_op_f32(1190f + _wgslsmith_f_op_f32(select(127f, 193f, global0.a.x)))));
    global2 = _wgslsmith_f_op_f32(var_0.b + var_0.b);
    var var_1 = Struct_1(-u_input.a, -847f);
    global2 = _wgslsmith_f_op_f32(func_3(vec3<u32>(39313u, ~52002u, max(reverseBits(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(69958u, 1u, 94085u, 1u)))), _wgslsmith_mod_u32(0u, 1u)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-109f)) + _wgslsmith_f_op_f32(-971f + -190f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), ~(~4294967295u), _wgslsmith_f_op_f32(ceil(var_0.b)));
    return Struct_3(271f, 7019u, -537f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: u32, arg_3: vec3<u32>) -> bool {
    var var_0 = ~arg_3.xz;
    var var_1 = u_input.a;
    global2 = _wgslsmith_f_op_f32(abs(-1082f));
    let var_2 = func_2();
    global0 = Struct_4(!global0.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 13>();
    var var_0 = abs(~(~vec2<u32>(firstLeadingBit(58779u), 4294967295u)));
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~1u), select(19303u >> (var_0.x % 32u), ~28263u, func_1(vec2<bool>(global0.a.x, false), Struct_5(vec2<f32>(-1626f, -1293f), vec2<bool>(global0.a.x, false), global0.a.x, global0.a.zzz, vec4<f32>(604f, -474f, 1233f, 1330f)), var_0.x, vec3<u32>(4294967295u, 4294967295u, var_0.x)))), ~vec2<u32>(var_0.x, var_0.x) & ~vec2<u32>(11911u, var_0.x)));
    global1 = array<vec2<bool>, 13>();
    let var_1 = ~u_input.a;
    var_0 = ~(~vec2<u32>(4294967295u, var_0.x) << (vec2<u32>(~(~var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(18815u, var_0.x) ^ vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u)));
    let var_2 = var_0.x << (1u % 32u);
    var var_3 = Struct_4(select(vec4<bool>(any(vec3<bool>(true, true, false)), false, false, false), select(!select(vec4<bool>(false, global0.a.x, false, true), global0.a, false), global0.a, vec4<bool>(!global0.a.x, any(global0.a.yy), select(false, global0.a.x, global0.a.x), false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(var_0.x, var_0.x, 42255u), var_2)), _wgslsmith_div_f32(1212f, -858f), _wgslsmith_f_op_f32(-264f * 1530f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1256f, 2206f)), all(!vec3<bool>(false, var_3.a.x, false)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, -703f, 1164f) * vec3<f32>(-368f, 498f, 310f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-728f, 626f, 767f))))), abs(vec3<i32>(countOneBits(var_1 >> (var_0.x % 32u)), firstTrailingBit(abs(u_input.a)), -var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f * _wgslsmith_f_op_f32(f32(-1f) * -1101f))), -180f), ~vec2<u32>(firstLeadingBit(~1926u), 4294967295u), ~vec4<u32>(~(3774u ^ var_0.x), min(~88776u, select(var_2, var_2, global0.a.x)), _wgslsmith_mult_u32(~var_2, ~var_0.x), 0u));
}

