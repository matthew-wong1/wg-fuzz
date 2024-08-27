struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = abs(countOneBits(select(vec2<u32>(1u, 15520u), vec2<u32>(1u, 1u), !vec2<bool>(arg_1, true)) ^ select(~vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 31984u), vec2<bool>(arg_1, true))));
    var var_1 = ~firstTrailingBit(vec2<u32>(var_0.x, max(22194u, ~32109u)));
    var var_2 = Struct_1(~max(-28447i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.c), 1i)), firstLeadingBit(~firstLeadingBit(select(vec4<u32>(var_0.x, 4294967295u, 13761u, var_0.x), vec4<u32>(15666u, 33550u, var_0.x, var_1.x), vec4<bool>(false, true, arg_1, false)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -1779f, 219f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -116f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 790f, -712f) * vec3<f32>(118f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1063f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, arg_0, arg_0))))))), select(!select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), arg_1), vec2<bool>(false, false), vec2<bool>(false, false)), !(!vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1)), vec4<f32>(-1000f, 464f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2157f - arg_0)), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(trunc(-870f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2040f)))));
    let var_3 = vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(var_2.c.x * 1685f), _wgslsmith_f_op_f32(select(-633f, arg_0, var_2.e.x >= -1803f)));
    let var_4 = Struct_1(0i & _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.b), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(0i, 2147483647i))), _wgslsmith_sub_vec4_u32(var_2.b, abs(countOneBits(var_2.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(floor(var_2.e.x)), var_3.x), var_2.e.wwz, all(vec4<bool>(true, true, true, true)))), vec3<f32>(1335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(-2025f * 2549f)), -232f))), !(!(!var_2.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.e, vec4<f32>(_wgslsmith_f_op_f32(abs(-1160f)), arg_0, 1510f, -1569f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.e.x)), _wgslsmith_f_op_f32(ceil(-717f)), var_2.c.x, _wgslsmith_f_op_f32(var_3.x + arg_0))))));
    return var_0.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_1(-(i32(-1i) * -60885i), vec4<u32>(~(~_wgslsmith_add_u32(1u, 23628u)), min(func_3(_wgslsmith_div_f32(280f, arg_0), true), 26973u), 12177u, 1u), vec3<f32>(1000f, 1342f, arg_0), vec2<bool>(false, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -574f, arg_0) - vec4<f32>(arg_0, -767f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(264f, arg_0, arg_0, arg_0))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * var_0.c) + _wgslsmith_f_op_vec3_f32(floor(var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, 1115f, arg_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, -1319f, -200f))))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(var_2.e));
    var var_4 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-472f, arg_0)), var_2.c.x)))));
    return Struct_2(var_0);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = -420f;
    let var_1 = func_2(884f);
    var var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1107f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f * 255f))).a.c.x)).a.d.x;
    var_2 = false;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.d.xz & vec2<i32>(1i, arg_0.a)), u_input.a), vec4<u32>(var_1.a.b.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~1u, abs(68280u)), ~0u, _wgslsmith_mult_u32(arg_0.b.x, 4294967295u)), arg_0.b.x, _wgslsmith_mult_u32(min(firstTrailingBit(var_1.a.b.x), 15429u), 107349u)), var_1.a.c, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, var_0, var_1.a.c.x, var_0) - arg_0.e) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.e.x, var_1.a.c.x, -808f, 1731f))), func_2(arg_0.e.x).a.e, !vec4<bool>(arg_0.d.x, var_1.a.d.x, arg_0.d.x, true)))));
    return -3346i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.c, func_1(Struct_1(u_input.c, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec3<f32>(-766f, -237f, -2646f), vec2<bool>(false, false), vec4<f32>(1000f, -1563f, -907f, 864f)))) << (~(~abs(vec2<u32>(20901u, 52151u))) % vec2<u32>(32u)));
}

