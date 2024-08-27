struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    return arg_0;
}

fn func_2() -> vec3<u32> {
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(~57959u, ~u_input.a, (u_input.a ^ u_input.a) | u_input.a) & ~(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), ~vec3<u32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30610u, 14977u), vec3<u32>(0u, u_input.a, u_input.a))), ~1u), min(reverseBits(vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(133903u, 76305u, u_input.a)), u_input.a)), max(abs(abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(34927u, select(u_input.a, u_input.a, true), _wgslsmith_div_u32(u_input.a, 0u)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = 0u & func_1(func_2().x, arg_0.b.x);
    let var_1 = !select(select(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(false, arg_1.x), arg_0.b.x), vec2<bool>(arg_0.b.x, true), !arg_0.b.x), arg_1, true | (false | arg_0.b.x)), vec2<bool>(true, any(!vec2<bool>(false, arg_1.x))), select(vec2<bool>(true, true), vec2<bool>(arg_0.b.x, arg_1.x), 8612i == -u_input.b.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f + -1251f))))) - arg_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_0.d.zx, arg_0.d.yx)))))));
    let var_4 = var_0;
    return vec3<bool>(true, false, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-884f + 1319f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1102f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f + 335f))))) + _wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -365f)))));
    let var_1 = select(vec3<u32>(min(func_1(u_input.a, false), 0u), func_1(u_input.a, true), ~u_input.a) ^ (_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 34351u)), ~vec3<u32>(1u, u_input.a, 9537u)) | vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(24554u, u_input.a, 10809u)), u_input.a)), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a, 52340u, 4294967295u), vec3<u32>(u_input.a, 10437u, u_input.a) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), ~max(vec3<u32>(u_input.a, 0u, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), func_2())), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_3(Struct_1(u_input.a, vec4<bool>(true, true, false, true), u_input.a, vec3<f32>(1090f, 1353f, -948f), vec2<u32>(656u, 28548u)), vec2<bool>(false, false), vec2<f32>(200f, 1000f))), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, -1658i), ~(-53152i)), _wgslsmith_dot_vec2_i32(vec2<i32>(16433i, -2147483647i), u_input.b.zx) & -1i, -60494i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, -1265f))))));
}

