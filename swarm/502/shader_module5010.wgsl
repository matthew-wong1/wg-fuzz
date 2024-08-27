struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_1 {
    var var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(576f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(-1200f, _wgslsmith_f_op_f32(f32(-1f) * -1427f))))));
    global0 = Struct_1(any(!(!vec2<bool>(false, global0.a))));
    let var_2 = ~12228u;
    var_0 = 35735i;
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(true);
    var var_1 = -_wgslsmith_sub_i32((u_input.a.x & _wgslsmith_mult_i32(0i, 18183i)) ^ 27804i, 0i);
    global0 = func_1();
    var_0 = Struct_1(arg_1.a);
    let var_2 = func_1();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f) + _wgslsmith_f_op_f32(f32(-1f) * -594f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = vec4<bool>(!((1u == ~arg_2.x) || !global0.a), arg_2.x != ~(~firstTrailingBit(arg_2.x)), arg_1.a, true);
    let var_1 = -592f;
    global0 = func_1();
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, ~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), func_1())) - _wgslsmith_f_op_f32(min(453f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * -1023f), 1f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-853f, var_1) * _wgslsmith_f_op_f32(min(406f, 1000f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_i32(u_input.a.x, -1i);
    let var_1 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(!(!global0.a))));
    global0 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a), Struct_1(false), vec2<u32>(9241u, 4294967295u))), -345f, -1272f, _wgslsmith_f_op_f32(max(215f, -163f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-248f, 1344f, 543f, -1142f))), vec4<f32>(-963f, -1000f, -1104f, -285f)))));
    let var_1 = func_4(func_4(Struct_1(true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, -1627f, -799f, 538f)), vec4<f32>(-1290f, 550f, -237f, 524f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(940f, 219f, 415f, 362f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -502f, 141f, 1402f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, 657f, 1228f, 902f))))));
    var var_2 = func_4(var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1198f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false), Struct_1(global0.a), vec4<u32>(28785u, 55879u, 112637u, 74595u), var_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1822f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(f32(-1f) * -204f))), _wgslsmith_f_op_f32(f32(-1f) * -728f), 1000f));
    let var_3 = Struct_1(false || (!var_2.a & func_1().a));
    var var_4 = _wgslsmith_sub_u32((min(countOneBits(22289u), 1u) << (abs(0u) % 32u)) ^ min(_wgslsmith_mod_u32(select(4294967295u, 7687u, false), ~1u), 4294967295u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)));
    var var_5 = Struct_1(!any(!vec4<bool>(false, var_0.a, true, false)) != true);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(1u) ^ select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 10610u, 1u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 29496u), 31269u, ~26343u), false), vec4<f32>(154f, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), 1143f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, var_3, vec4<u32>(25000u, 58177u, 1u, 4294967295u), var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -388f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - 122f)), 139f, !var_5.a))), ~(select(~1u, ~1u, true) | ~select(28906u, 1u, var_0.a)));
}

