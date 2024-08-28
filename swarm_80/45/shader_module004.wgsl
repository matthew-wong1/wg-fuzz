struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = min(u_input.d, _wgslsmith_add_i32(0i ^ countOneBits(u_input.b.x), u_input.d ^ ~0i)) ^ -u_input.d;
    var var_1 = 1793f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(468f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(1f * 1186f))));
    let var_2 = -_wgslsmith_dot_vec4_i32(~(u_input.b >> (vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c) % vec4<u32>(32u))), abs(vec4<i32>(~0i, u_input.b.x, _wgslsmith_sub_i32(0i, u_input.b.x), u_input.d)));
    var var_3 = u_input.d;
    return false;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = Struct_1(arg_3);
    var var_1 = Struct_1(1u);
    var var_2 = vec4<bool>(arg_2, any(vec2<bool>(true, true)), arg_1, !all(!select(vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(true, arg_2))));
    var var_3 = vec3<i32>(-u_input.b.x, u_input.d, u_input.d);
    let var_4 = 1u;
    return abs(var_3.x) >> (var_1.a % 32u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = 5555i;
    var var_2 = func_4(true | func_3(), true, !all(vec2<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)))), 1u);
    let var_3 = Struct_1(0u);
    var_2 = 1i;
    return Struct_1(_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(~u_input.c, ~u_input.c)), ~(~_wgslsmith_clamp_u32(14187u, 20345u, 0u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(max(-1615f, -826f))))), arg_2.yx));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2725f, var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1513f - arg_2.x) + _wgslsmith_div_f32(var_2.x, arg_2.x)), -2065f, 445f, -1454f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-893f, arg_2.x, arg_2.x, 1187f), vec4<f32>(arg_2.x, -1454f, 1116f, var_2.x), var_1)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(832f, 429f, arg_2.x, var_2.x))), all(vec4<bool>(true, var_1, var_1, var_1)))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2069f))) + _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(max(var_2.x, -2682f)))))), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_2.x, arg_2.x)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(var_3.x * var_3.x)))))));
    return arg_3;
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.d;
    var var_1 = func_5(func_2(vec4<u32>(~1u, u_input.c, u_input.c, ~54125u)), func_2(~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.c, 31629u, 0u), ~vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u))), vec3<f32>(-629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - -111f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)))), Struct_1(75324u));
    let var_2 = firstTrailingBit(36334i >> (~reverseBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u)) % 32u));
    let var_3 = ~reverseBits(var_1.a << (var_1.a % 32u)) << (var_1.a % 32u);
    let var_4 = !all(vec2<bool>(true, true));
    return !(!(!vec2<bool>(false, var_4 && var_4)));
}

fn func_6(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(3069f, 286f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f - -1382f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1255f, 201f)) + -458f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1712f, -374f) + _wgslsmith_f_op_f32(481f + -744f))), 1f));
    var var_1 = vec3<bool>(true, arg_1.x, true);
    var var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, ~u_input.c));
    let var_3 = func_2(countOneBits(vec4<u32>(min(firstLeadingBit(5020u), 1u << (var_2.a % 32u)), ~3005u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 41506u), vec3<u32>(12823u, arg_2, 8430u)) << (countOneBits(49034u) % 32u))));
    let var_4 = -2136f;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4, var_0.x, var_4)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -498f, -1181f), !var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b;
    let x = u_input.a;
    s_output = func_6(max(var_0.x, var_0.x), !select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_1(), vec2<bool>(var_0.x <= u_input.b.x, true)), reverseBits(u_input.c));
}

