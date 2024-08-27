struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(483f, -2459f)))))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 + arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, arg_2.x))) + arg_2))));
    let var_2 = vec3<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true)), -7472i <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -17008i, 8805i), u_input.b.xwy)), select(true, (u_input.a.x < (40118u ^ u_input.a.x)) || !all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-211f)), _wgslsmith_f_op_f32(-arg_2.x))), false);
    let var_3 = _wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_clamp_u32(~17248u << (abs(0u) % 32u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 13247u))), u_input.a.x);
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))));
    return -931f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    var var_0 = 27353u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-806f - 1f), _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, 868f)))));
    let var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) - vec2<f32>(100f, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, -560f), vec2<f32>(arg_0.x, arg_0.x))), false))));
    var var_4 = var_2;
    return any(vec2<bool>(any(vec3<bool>(true, true, true)) && (all(vec2<bool>(false, false)) | true), select(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true)))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> bool {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(func_3(-(~u_input.b.xxz), i32(-1i) * -u_input.b.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(-408f, arg_1)))), arg_2.x)), 314f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + 1f))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -489f), 1429f)))), _wgslsmith_mod_vec4_i32(~(~(~vec4<i32>(63220i, 1i, 0i, u_input.b.x))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -69944i, 17286i), ~u_input.b))));
    var_0 = arg_0;
    let var_1 = ~(u_input.a.x << (0u % 32u)) | 1u;
    var var_2 = ~u_input.b.wy | ~(-arg_2);
    let var_3 = reverseBits(31001u);
    return true;
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, _wgslsmith_f_op_f32(f32(-1f) * -1203f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2331f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, -289f)), true)))));
    var var_1 = var_0;
    var var_2 = ~arg_1;
    var_2 = _wgslsmith_div_i32(~0i, select(-4669i, abs(~(-47810i)), true)) >> (u_input.a.x % 32u);
    let var_3 = !(true & select(arg_0, !arg_0, !arg_0)) || func_2(true, _wgslsmith_f_op_f32(var_1.a.x + var_0.a.x), abs(_wgslsmith_add_vec2_i32(u_input.b.xy, u_input.b.zz)) ^ max(_wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(2834i, 2147483647i)), vec2<i32>(u_input.b.x, 37087i)));
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = u_input.a.x & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(8508u, u_input.a.x, u_input.a.x, 1u)), u_input.a), countOneBits(u_input.a ^ u_input.a)), vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, firstLeadingBit(1u), 8345u));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_2.a.x)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_6(func_5(!func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<i32>(u_input.b.x, -13665i)), -17621i), abs(_wgslsmith_sub_i32(~(-1i | u_input.b.x), u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 749f), _wgslsmith_f_op_f32(2711f - -1018f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, 587f) * vec2<f32>(-519f, 1913f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)))));
    var var_2 = 228f;
    let var_3 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a << (~(firstLeadingBit(vec4<u32>(34028u, 4294967295u, u_input.a.x, u_input.a.x)) ^ ~u_input.a) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_6(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -27434i), vec3<i32>(0i, 6071i, -1841i)), var_0).a.x, -1000f))));
    return func_5(arg_0 | arg_0, -10623i);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = ~83816u;
    let var_1 = vec3<bool>(arg_1.x == reverseBits(-select(0i, arg_1.x, false)), select(select(all(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), true), true, func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2778f, arg_2.a.x, arg_2.a.x)))), func_5(arg_2.a.x < 638f, arg_1.x | u_input.b.x), arg_2, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 79798i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, -14565i, u_input.b.x)))), true);
    var_0 = min(_wgslsmith_mult_u32(42775u, u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(~(~u_input.a.x), u_input.a.x), 826u));
    var_0 = 1u;
    var var_2 = arg_0;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 1559f, var_2.a.x, 655f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, arg_2.a.x, arg_2.a.x, 582f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = !(!(!select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1083f - 1292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1437f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2 - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 627f) - var_2))))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~70628u)) << (~(~abs(var_0.x)) % 32u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_7(func_1(false), (vec4<i32>(-1i, 23996i, u_input.b.x, 0i) & u_input.b) | select(u_input.b, u_input.b, true), func_1(var_1.x))), vec4<f32>(-2046f, var_2.x, func_5(false, -2147483647i).a.x, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(max(-937f, var_3.a.x)), _wgslsmith_f_op_f32(-1081f + var_3.a.x), var_2.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, var_2.x, var_2.x, 184f) - vec4<f32>(-512f, var_2.x, var_2.x, var_3.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1086f * var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(trunc(465f)), _wgslsmith_f_op_f32(-var_3.a.x)))))), _wgslsmith_sub_u32(4294967295u, 35458u));
}

