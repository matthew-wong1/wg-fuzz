struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 1278u), vec2<u32>(1u, 44001u), vec2<u32>(4294967295u, 33502u), vec2<u32>(1u, 4641u), vec2<u32>(78828u, 4294967295u), vec2<u32>(0u, 90990u), vec2<u32>(31462u, 0u), vec2<u32>(20650u, 56088u), vec2<u32>(1u, 52512u), vec2<u32>(1u, 5845u), vec2<u32>(1u, 14983u), vec2<u32>(41792u, 17610u), vec2<u32>(0u, 19494u), vec2<u32>(101736u, 1u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(select(countOneBits(64916u), _wgslsmith_mult_u32(u_input.b.x, ~arg_2.c), all(arg_1)), reverseBits(_wgslsmith_mod_u32(arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, arg_2.c), u_input.b.xzz)))), 37480u >> (_wgslsmith_mult_u32(60284u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 56002u), 18241u, _wgslsmith_add_u32(54156u, u_input.b.x))) % 32u), 59736u);
    global0 = array<vec2<u32>, 14>();
    let var_1 = ~(~vec4<i32>(-32018i, 15455i, 9763i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-5315i, 0i), 1i)));
    var var_2 = arg_2;
    var var_3 = u_input.b.zxw;
    return abs(26906u);
}

fn func_3() -> vec2<bool> {
    global0 = array<vec2<u32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2045f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f * -952f))))));
    let var_1 = firstTrailingBit(min(~_wgslsmith_mod_i32(-16721i << (u_input.a % 32u), 2147483647i), 29812i));
    var var_2 = vec2<u32>(u_input.a, ~1u);
    var var_3 = true;
    return !vec2<bool>((abs(-21849i) > max(var_1, -74971i)) || !all(vec2<bool>(true, false)), false);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.zxy, _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_add_u32(firstTrailingBit(~13525u) >> (_wgslsmith_clamp_u32(~arg_0, 1u, func_2(arg_1.x, arg_1, Struct_1(arg_1.xxz, 657f, u_input.b.x), vec4<f32>(442f, arg_2.x, -1200f, 123f))) % 32u), ~36586u));
    global0 = array<vec2<u32>, 14>();
    let var_1 = all(!func_3()) && (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))) != _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.b))))));
    let var_2 = 32086u | (48673u & _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(19126u, 1u, 34684u, u_input.a), vec4<u32>(u_input.a, var_0.c, arg_0, 36914u)), 1u));
    global0 = array<vec2<u32>, 14>();
    return select(var_0.a, var_0.a, !select(arg_1.zxz, !vec3<bool>(false, var_1, true), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!select(vec3<bool>(false, true, false), func_1(u_input.a, vec4<bool>(true, false, false, false), vec4<f32>(303f, 640f, -222f, -310f)), false), !func_1(1u, vec4<bool>(false, false, false, false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(553f, 867f, 1506f, -1003f)))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1013f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(258f - -1468f), -457f)) - -1335f), _wgslsmith_clamp_u32(u_input.b.x, u_input.a, 9273u));
    global0 = array<vec2<u32>, 14>();
    let var_1 = func_3().x;
    var var_2 = Struct_1(func_1(var_0.c, select(!(!vec4<bool>(false, false, false, var_1)), !vec4<bool>(var_0.a.x, true, false, false), _wgslsmith_f_op_f32(f32(-1f) * -1948f) >= _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, 1568f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -233f, 1517f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b, 1519f), _wgslsmith_f_op_f32(-207f - -386f), all(vec4<bool>(var_1, true, var_0.a.x, var_0.a.x)))) * 719f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(floor(699f))))), ~(var_0.c ^ 1u));
    var var_3 = select(vec2<u32>(1u, _wgslsmith_mult_u32(28891u, 19780u)), ~(~(_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(36241u, 14u)], global0[_wgslsmith_index_u32(var_2.c, 14u)]) & vec2<u32>(u_input.a, var_0.c))), vec2<bool>(select(var_0.a.x, !select(false, var_1, true), !(var_2.a.x & var_2.a.x)), true | !(var_1 || true)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f * var_0.b) - 1981f);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.b, 1000f))))))) * -489f);
    var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.c, var_3.x, min(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yx) ^ _wgslsmith_mod_u32(58363u, var_0.c), abs(1u))), -2147483647i, firstLeadingBit(abs(reverseBits(-1i))) << (0u % 32u), -38723i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(190f, 377f) + vec2<f32>(-965f, var_0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(212f, var_2.b) * vec2<f32>(1525f, -274f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2940f, 1139f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1524f) + vec2<f32>(var_0.b, var_2.b)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1102f))))));
}

