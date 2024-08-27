struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), 1933f, _wgslsmith_div_f32(-832f, _wgslsmith_f_op_f32(-694f - -186f)), -1285f), _wgslsmith_div_f32(-458f, 1947f), Struct_1(firstTrailingBit(~vec4<u32>(arg_0, arg_0, arg_0, 18187u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.b)))))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f * -829f) + _wgslsmith_f_op_f32(var_0.b * var_0.a.x))), 782f));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = any(select(vec4<bool>(true, false, false, func_3(30990u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), func_3(_wgslsmith_clamp_u32(28973u, 1048u, arg_1.x), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true & any(vec4<bool>(true, true, true, false))), !(!any(vec3<bool>(true, false, true)))));
    var var_1 = 324f;
    var var_2 = _wgslsmith_clamp_u32(1u, arg_1.x, 40345u);
    var_2 = min(_wgslsmith_clamp_u32(33333u | firstTrailingBit(~arg_1.x), 4294967295u, _wgslsmith_mod_u32(select(arg_1.x, _wgslsmith_mod_u32(arg_1.x, arg_1.x), true && var_0), arg_1.x)), abs(14695u));
    var var_3 = arg_1.x;
    return Struct_1(reverseBits(~(abs(vec4<u32>(0u, 66777u, arg_1.x, 9722u)) >> (~vec4<u32>(46496u, 14253u, arg_1.x, 4294967295u) % vec4<u32>(32u)))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1341f));
    let var_1 = func_2(~reverseBits(0i), countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 1u, 23520u), vec3<u32>(4294967295u, 1u, 4294967295u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(349f, -1284f)) * 621f) + _wgslsmith_f_op_f32(162f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(121f * -1201f), -1943f, true)))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(967f - -1231f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-662f - -1658f))), func_3(var_1.a.x << (var_1.a.x % 32u), vec4<bool>(true, true, true, true))))))));
    return _wgslsmith_dot_vec2_u32(var_1.a.xx, vec2<u32>(var_1.a.x, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = 2147483647i > _wgslsmith_mult_i32(1i, i32(-1i) * -u_input.a);
    var var_2 = func_1();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1998f, 1964f, 1306f, -1000f) + vec4<f32>(-1000f, -1353f, -147f, -403f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, -657f, -1000f, -1500f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, 1382f, 203f, 2011f)))))), -1018f, func_2(-9693i, vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, var_0, var_0), _wgslsmith_mult_u32(min(var_0, var_0), max(var_0, 50859u)), _wgslsmith_mod_u32(~4294967295u, 11792u))));
    var_3 = Struct_2(vec4<f32>(var_3.b, -1000f, _wgslsmith_f_op_f32(-118f * -897f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f * var_3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - 722f))), var_3.c);
    var var_4 = !any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true));
    let var_5 = ~_wgslsmith_clamp_vec3_i32(~abs(abs(vec3<i32>(u_input.a, -1i, u_input.a))), -vec3<i32>(-1i >> (var_3.c.a.x % 32u), u_input.a, firstLeadingBit(u_input.a)), ~vec3<i32>(1i, _wgslsmith_div_i32(-2147483647i, -2147483647i), -2147483647i));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_3.c.a.x, func_1()), var_3.c.a.x);
}

