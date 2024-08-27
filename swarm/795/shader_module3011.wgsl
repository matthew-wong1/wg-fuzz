struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) - _wgslsmith_f_op_f32(-1177f - -358f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(522f * 574f))))));
    var var_1 = 0u;
    var var_2 = _wgslsmith_sub_vec3_i32(arg_0 << (vec3<u32>(0u, _wgslsmith_dot_vec3_u32(arg_2.wwy, vec3<u32>(arg_2.x, arg_2.x, 5879u)), ~(arg_2.x << (2518u % 32u))) % vec3<u32>(32u)), reverseBits(abs(vec3<i32>(~(-12541i), _wgslsmith_add_i32(44756i, -16319i), 42281i))));
    var_2 = arg_0;
    return max(~arg_2.x, arg_2.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(u_input.a);
    let var_1 = Struct_1(-max(~(-2147483647i), u_input.a));
    var var_2 = abs(-min(countOneBits(vec3<i32>(var_1.a, 0i, var_0.a)), vec3<i32>(-20064i, -20088i, 1i))) >> (countOneBits(vec3<u32>(max(~0u, 58419u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(1u, 32843u, 1u, 4294967295u)), 26047u)) % vec3<u32>(32u));
    let var_3 = 1u;
    var var_4 = Struct_2(true, all(vec4<bool>(true, true, true, true)) && any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), ~0u < ~((var_3 & var_3) ^ ~34605u), var_1);
    return Struct_2(-42307i > firstLeadingBit(min(~0i, _wgslsmith_sub_i32(var_0.a, -51985i))), var_4.c & var_4.a, var_4.c, var_4.d);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(416f, -235f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + -1939f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(896f, _wgslsmith_f_op_f32(1115f + 1029f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, 774f)))));
    let var_1 = ~1u;
    var var_2 = abs(arg_0.d.a) < ~arg_0.d.a;
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(2147483647i, 0i), -9279i, i32(-1i) * -2147483647i) >> (~vec3<u32>(_wgslsmith_add_u32(var_1, 0u) >> ((var_1 & 78397u) % 32u), _wgslsmith_mult_u32(var_1 & var_1, ~16573u), ~var_1) % vec3<u32>(32u));
    var_3 = vec3<i32>(-1i) * -(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0.d.a, arg_1.d.a), vec3<i32>(arg_0.d.a, 2147483647i, -11652i))));
    return all(select(select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(true, true), vec2<bool>(arg_0.c, true), vec2<bool>(arg_1.a, false)), !vec2<bool>(arg_1.c, true)), !(!vec2<bool>(true, arg_1.b)), !(!vec2<bool>(arg_0.a, arg_1.a)))) | false;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.b.x, -1i, u_input.a), true), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.a), vec3<i32>(-41856i, 1i, u_input.a))), vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, _wgslsmith_mod_i32(abs(-47638i), u_input.a)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.b.x, 2147483647i, u_input.a))), firstLeadingBit(firstTrailingBit(~vec3<i32>(u_input.a, u_input.b.x, u_input.a)))));
    let var_1 = func_2().d;
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(24678i, var_0) & var_1.a, countOneBits(~1i), (var_1.a & var_1.a) << (func_1(vec3<i32>(16943i, 1i, 21128i), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<u32>(76193u, 1u, 16196u, 4294967295u)) % 32u)) | 1i);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = !select(select(select(vec4<bool>(true, arg_1, true, arg_1), !vec4<bool>(false, true, arg_1, true), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, false, true, false), vec4<bool>(arg_1, false, true, false))), !(!vec4<bool>(arg_1, arg_1, true, arg_1)), !(!vec4<bool>(arg_1, true, arg_1, arg_1))), !select(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, true)), vec4<bool>(arg_1, true, arg_1, arg_1), any(vec3<bool>(false, arg_1, true))), true);
    var var_1 = Struct_2(all(!select(var_0.yyz, !var_0.wxy, false)), true, true, Struct_1(arg_0.a));
    var_0 = !select(vec4<bool>(any(vec3<bool>(var_1.c, true, var_0.x)), !(!arg_1), arg_1, !all(vec3<bool>(false, var_1.c, var_0.x))), !vec4<bool>(var_0.x, !var_0.x, false, true), !(!all(var_0.xzz)));
    var var_2 = func_2().d;
    var var_3 = Struct_2(var_0.x, any(select(vec3<bool>(true, arg_1, arg_1), var_0.xyw, arg_1)), arg_1 | arg_1, Struct_1(~24274i));
    return Struct_1(~func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_3.c, false))).a ^ func_2().d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(_wgslsmith_add_u32(0u, 21694u), 1u, countOneBits(5924u)), ~reverseBits(vec3<u32>(4294967295u, 56444u, 105401u)), true), ~vec3<u32>(~18107u, ~50141u, func_1(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), vec4<bool>(true, true, false, true), vec4<u32>(27986u, 4294967295u, 102878u, 1u)))));
    let var_1 = func_5(func_4(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), func_3(func_2(), Struct_2(true, false, true, Struct_1(u_input.b.x))))), select(true, true, true), ~vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(10355u, 0u), select(vec2<u32>(var_0.x, 90899u), vec2<u32>(4294967295u, var_0.x), false)), var_0.x, firstTrailingBit(~30666u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(428f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-531f, 2363f), _wgslsmith_f_op_f32(select(1000f, 248f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f + 328f)), _wgslsmith_f_op_f32(f32(-1f) * -1218f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1462f, var_2.x, 1619f))))));
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(var_2.xy)), vec2<f32>(-323f, var_2.x), !(var_2.x <= var_2.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zw + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * var_2.xx)) * _wgslsmith_f_op_vec2_f32(min(var_2.yw, _wgslsmith_f_op_vec2_f32(select(var_2.zw, vec2<f32>(356f, 371f), true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1424f + -779f), _wgslsmith_f_op_f32(-var_4.x), 1431f <= var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(var_4.x + var_2.x), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - var_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 334f), var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -958f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.x)))), 813f), min(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(0i, var_1.a, 30025i, u_input.b.x)), ~(vec4<i32>(0i, -1i, var_1.a, u_input.b.x) | vec4<i32>(var_1.a, var_1.a, -2147483647i, var_1.a))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, var_1.a, u_input.b.x, -1i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(46404i, u_input.b.x, 0i, -1i), vec4<i32>(-27975i, var_1.a, 11153i, u_input.b.x)), vec4<i32>(-7019i, var_1.a, u_input.b.x, var_1.a), true))));
}

