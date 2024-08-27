struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = max(vec4<u32>(reverseBits(u_input.d.x) >> (0u % 32u), 6776u, ~4294967295u, 85697u >> (~u_input.d.x % 32u)), vec4<u32>(u_input.d.x, u_input.d.x, select(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(35284u, 2139u), _wgslsmith_mod_u32(u_input.d.x, 1u)), any(arg_2.a.zx)), _wgslsmith_add_u32(u_input.d.x | u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)) >> (~(~u_input.d.x) % 32u)));
    let var_1 = countOneBits(~vec2<u32>(~var_0.x, reverseBits(0u)) ^ var_0.yz);
    let var_2 = true;
    var_0 = ~vec4<u32>(_wgslsmith_add_u32(~2367u, _wgslsmith_mult_u32(0u, var_1.x)), _wgslsmith_mult_u32((var_1.x & u_input.d.x) | (29478u >> (u_input.d.x % 32u)), ~(~var_0.x)), ~(~u_input.d.x), _wgslsmith_div_u32(u_input.d.x ^ 20112u, var_1.x));
    let var_3 = Struct_1(select(!(!(!vec3<bool>(false, arg_3.a.x, false))), arg_3.a, true & select(arg_1.x, arg_1.x, false)));
    return !(!arg_3.a);
}

fn func_3() -> u32 {
    let var_0 = ~(~u_input.d.x);
    var var_1 = Struct_1(select(vec3<bool>(select(false, true, u_input.a != 14083i), false, any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true), false)));
    var_1 = Struct_1(var_1.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-186f + 2662f), 1661f, _wgslsmith_f_op_f32(min(-767f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-689f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-506f + 652f), _wgslsmith_f_op_f32(f32(-1f) * -455f), -1000f, _wgslsmith_f_op_f32(trunc(-1427f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-426f, -875f, -964f, -1047f) + vec4<f32>(-528f, 1644f, -1035f, 1621f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, -274f, -368f, -1178f)), vec4<f32>(364f, -1946f, 368f, 174f))))));
    let var_3 = reverseBits(~vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, 1u) << (0u % 32u), 0u, u_input.d.x));
    return min(u_input.d.x, 1u << (var_3.x % 32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = !all(select(select(vec4<bool>(true, true, false, arg_1.a.x), vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), !arg_3.a.x), vec4<bool>(false, true, false, arg_1.a.x), !(!arg_3.a.x)));
    var var_1 = reverseBits(~abs(vec4<u32>(0u, 0u, 65078u, 1u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(10481u, arg_2, 1u, u_input.d.x), vec4<u32>(arg_2, 1u, 15798u, u_input.d.x))));
    let var_2 = arg_1;
    let var_3 = -firstTrailingBit(~u_input.c.x) >> (var_1.x % 32u);
    let var_4 = ~(~func_3());
    return arg_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-920f, -1849f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-156f + -370f), 176f))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -717f))))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1074f - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(922f, var_0.x, var_0.x) + vec3<f32>(-1284f, var_0.x, var_0.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(1348f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 204f))), Struct_1(func_2(u_input.c, arg_1.zx, Struct_1(arg_1.wzz), Struct_1(arg_1.wzw))), func_3() >> (18695u % 32u), Struct_1(!vec3<bool>(arg_1.x, arg_1.x, false)))))));
    var var_2 = Struct_1(vec3<bool>(true, func_2(~u_input.c, !arg_1.ww, Struct_1(vec3<bool>(arg_1.x, arg_1.x, false)), Struct_1(vec3<bool>(arg_1.x, true, false))).x || true, arg_1.x & any(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))));
    var_2 = Struct_1(var_2.a);
    return vec3<bool>(!select(!(!var_2.a.x), true, arg_1.x), _wgslsmith_mod_i32(u_input.c.x, -11159i) >= _wgslsmith_add_i32(u_input.a, u_input.b.x), select(false, arg_1.x, !(var_2.a.x || arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = Struct_1(!(!select(func_1(vec3<u32>(var_0.x, 4294967295u, 35617u), vec4<bool>(true, false, true, true), u_input.d.x), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), all(vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1016f * 107f), 526f, _wgslsmith_div_f32(814f, 1218f), -523f) + vec4<f32>(2416f, _wgslsmith_f_op_f32(round(2649f)), _wgslsmith_f_op_f32(max(255f, 452f)), _wgslsmith_f_op_f32(abs(-1150f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-799f, -416f, -913f, -1669f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-494f, -2256f, -816f, 1262f))), !vec4<bool>(var_1.a.x, false, false, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(208f, 383f, 1000f, 1000f), vec4<f32>(888f, -503f, -1498f, -920f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1506f, -104f, -2547f, -2854f) + vec4<f32>(-206f, -559f, -103f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_u32(13407u, 51882u, (4294967295u & var_0.x) << (firstTrailingBit(var_0.x) % 32u)), firstTrailingBit(~u_input.d.x << (4294967295u % 32u))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(abs(-569f)))));
}

