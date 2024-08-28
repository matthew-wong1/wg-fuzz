struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_2(countOneBits(-(~_wgslsmith_mult_vec2_i32(arg_0.xz, u_input.b.wz))), any(vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), 1u > select(1u, 116098u, true))));
    let var_1 = _wgslsmith_f_op_f32(min(573f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-630f * 937f)), _wgslsmith_f_op_f32(sign(-1000f)))));
    let var_2 = select(-4696i, max(8692i, min(_wgslsmith_mult_i32(u_input.a, min(u_input.b.x, -2147483647i)), u_input.b.x)), any(vec3<bool>(all(vec2<bool>(var_0.b, var_0.b)), var_0.b, false)) & !all(vec2<bool>(var_0.b, var_0.b)));
    let var_3 = Struct_2(vec2<i32>(arg_0.x, 0i >> (1u % 32u)), var_0.b);
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(35217u, 0u), 10211u);
    return 1057f;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(~vec2<i32>(-37767i, -15455i), select(true, true, false));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.zzx))), arg_0.x, _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) - _wgslsmith_f_op_f32(f32(-1f) * -751f)))), _wgslsmith_f_op_f32(-arg_0.x));
    var_0 = Struct_2(u_input.b.zz, !all(select(!vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), !vec2<bool>(var_0.b, var_0.b))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_1.x, arg_0.x, var_1.x), vec4<f32>(var_1.x, -986f, -1000f, var_1.x))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1258f - arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(725f, -791f) * -289f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2572f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), 682f);
    return Struct_2(-select(~select(vec2<i32>(1i, var_0.a.x), vec2<i32>(u_input.a, 0i), vec2<bool>(false, true)), reverseBits(u_input.b.xx), !var_0.b), all(select(!vec3<bool>(var_0.b, var_0.b, var_0.b), select(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b)), select(vec3<bool>(var_0.b, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, var_0.b, var_0.b)), vec3<bool>(false, false || var_0.b, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = arg_2.a;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(630f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-390f - var_1.d), _wgslsmith_f_op_f32(trunc(297f))) * _wgslsmith_f_op_f32(-1446f + -943f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.d)))) - -382f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(543f, var_1.d, 144f) - vec3<f32>(-702f, -1000f, -879f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, arg_1.d, 223f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(627f, var_1.d, 702f), vec3<f32>(var_2, 759f, var_2))))), arg_2.b))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), 420f, -598f))))));
    return _wgslsmith_f_op_vec2_f32(round(var_3.zy));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = -278f;
    var var_1 = all(arg_2.a.wwy);
    var_1 = arg_2.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(_wgslsmith_div_i32(arg_1, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, arg_2.c.x), ~vec3<i32>(1i, u_input.b.x, -12593i)))), Struct_1(arg_2.a, vec3<i32>(2147483647i, arg_0.x, -arg_2.c.x ^ ~arg_1), vec4<i32>(1i >> (_wgslsmith_mod_u32(arg_3, 18586u) % 32u), arg_1, arg_1 ^ 2147483647i, _wgslsmith_div_i32(firstTrailingBit(arg_0.x), arg_0.x)), arg_2.d), func_2(vec2<f32>(_wgslsmith_div_f32(1532f, _wgslsmith_f_op_f32(f32(-1f) * -760f)), arg_2.d), ~(~vec2<u32>(37892u, arg_3))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_3), ~reverseBits(vec2<u32>(4294967295u, 29429u))) & ~vec2<u32>(select(arg_3, arg_3, arg_2.a.x), arg_3)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.d, -419f, var_2.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, var_2.x, var_2.x) * vec3<f32>(arg_2.d, var_0, -2196f)), vec3<f32>(1000f, var_2.x, var_2.x)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_0) + var_0), 460f, 1929f)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = 403f;
    let var_1 = func_1(~vec4<i32>(~u_input.a, ~countOneBits(u_input.a), _wgslsmith_mod_i32(~u_input.a, firstTrailingBit(u_input.a)), u_input.a), _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(countOneBits(u_input.a ^ -1i), 23320i, countOneBits(u_input.a)), -(select(u_input.b.x, u_input.b.x, true) ^ _wgslsmith_div_i32(1i, 26234i))), Struct_1(!vec4<bool>(true, u_input.b.x < u_input.b.x, select(true, true, false), true), -(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) ^ _wgslsmith_add_vec3_i32(~u_input.b.xwz, abs(u_input.b.zxx)), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(countOneBits(1i), -1i), -17632i, 2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-174f, 711f)) + _wgslsmith_f_op_f32(-1950f - 1106f))))), 4294967295u);
    var_0 = -652f;
    let var_2 = func_1(firstTrailingBit(var_1.c), -52554i, Struct_1(vec4<bool>(true, true, _wgslsmith_div_i32(var_1.b.x, var_1.b.x) != var_1.c.x, all(vec3<bool>(true, false, true))), vec3<i32>(-2147483647i, -10509i, var_1.c.x), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.d, -1043f, all(vec4<bool>(var_1.a.x, false, var_1.a.x, true))))))), 1u << (1u % 32u));
    let var_3 = vec2<u32>(1u, select(firstTrailingBit(~4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(1u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29748u, 4294967295u), vec3<u32>(30619u, 0u, 24858u))), var_2.a.x));
    var var_4 = var_1;
    var_0 = var_1.d;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

