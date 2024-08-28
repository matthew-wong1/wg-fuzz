struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, _wgslsmith_f_op_f32(max(arg_0, 656f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1385f, 127f) * vec2<f32>(arg_1.a.c, -366f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.c.d.a, arg_0)))))));
    var var_1 = 69983u;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, -826f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -496f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.c.a.a)), var_0.x))));
    let var_2 = Struct_5(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(3732u, 62105u))) | ~_wgslsmith_div_u32(1u, min(12165u, u_input.b.x)), arg_1.c, arg_2, (~countOneBits(u_input.b.zy) << (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.ww)) % vec2<u32>(32u))) | vec2<u32>(firstLeadingBit(2825u), 4294967295u));
    let var_3 = true;
    return !vec3<bool>(arg_1.b.a, true, false);
}

fn func_2() -> vec3<f32> {
    let var_0 = func_3(-328f, Struct_4(Struct_3(Struct_2(_wgslsmith_div_f32(1066f, -788f)), Struct_1(true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -321f))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1779f)), Struct_1(all(vec2<bool>(false, true)))), Struct_1(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-1149f + -1301f)), Struct_1(true), -1079f, Struct_2(_wgslsmith_f_op_f32(sign(-733f))), Struct_1(true))), ~abs(abs(vec2<i32>(u_input.a, u_input.a))) ^ min(~vec2<i32>(u_input.a, u_input.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-55794i, u_input.a))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(491f)), 345f, select(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1046f), Struct_4(Struct_3(Struct_2(2230f), Struct_1(false), 665f, Struct_2(2277f), Struct_1(var_0.x)), Struct_1(false), Struct_3(Struct_2(-324f), Struct_1(false), -292f, Struct_2(-2229f), Struct_1(true))), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))).x, true, true))));
    let var_2 = ~(~abs(vec3<i32>(u_input.a, -1i, -2147483647i)) ^ vec3<i32>(~u_input.a ^ (53293i >> (0u % 32u)), _wgslsmith_sub_i32(~u_input.a, 0i), -9537i));
    let var_3 = u_input.b.x;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-457f * 224f)))) + _wgslsmith_f_op_f32(-var_1.a)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(-var_1.a), 582f)))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_4.a, var_1.a, true)))), var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1444f * var_1.a) + 404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -1559f))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(260f, 985f)))))));
    let var_1 = vec4<i32>(u_input.a, u_input.a, u_input.a, -1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-734f, var_0))), 1384f), _wgslsmith_f_op_vec3_f32(func_2())));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_2.x)), 1000f);
    var_3 = 486f;
    return Struct_3(Struct_2(531f), Struct_1(-757f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))) * var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0, -234f)), _wgslsmith_f_op_f32(max(199f, var_2.x)))))), Struct_2(var_0), Struct_1(true));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = vec3<f32>(-904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2108f, arg_0.d.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(291f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.a - -374f), arg_0.a.a));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1612f, func_1().c, arg_0.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1570f, -420f, 141f) * vec3<f32>(arg_0.d.a, arg_0.c, arg_0.c)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-994f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(step(-891f, 853f)))))));
    var_0 = vec3<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 389f)), _wgslsmith_f_op_f32(-arg_0.c));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(var_0.x))))), arg_0.d.a, _wgslsmith_f_op_f32(-arg_0.c));
    return StorageBuffer(~vec4<i32>(2147483647i, i32(-1i) * -35745i, abs(u_input.a), ~_wgslsmith_div_i32(u_input.a, u_input.a)), -2147483647i, u_input.b.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -352f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(var_0, -538f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, 1037f)))))));
    let x = u_input.a;
    s_output = func_4(func_1());
}

