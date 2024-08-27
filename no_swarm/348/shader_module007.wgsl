struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, false && (-21081i != select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2, 1i, arg_2), vec4<i32>(1i, -28324i, arg_2, -2147483647i)), ~arg_2, true)), arg_1, arg_1);
    let var_1 = true;
    var var_2 = Struct_2(countOneBits(-u_input.a.x));
    let var_3 = Struct_2(~arg_2);
    var_2 = var_3;
    return min(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, arg_2, -2147483647i, 7753i), vec4<i32>(1i, u_input.a.x, var_3.a, var_2.a) << (vec4<u32>(arg_0, arg_0, 0u, 40468u) % vec4<u32>(32u)))), 1i, ~(~(-2147483647i)), max(var_3.a, firstTrailingBit(var_2.a) >> (1u % 32u))), -_wgslsmith_mult_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.a.x, -42713i, u_input.a.x, 30454i))), -max(vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), vec4<i32>(var_3.a, var_3.a, 0i, u_input.a.x))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 1i), reverseBits(u_input.a.x), firstLeadingBit(-2147483647i), -6131i)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, -33243i), vec3<i32>(2147483647i, arg_1, u_input.a.x)), 26828i, select(74719i, 2147483647i, arg_2.x), u_input.a.x) >> (vec4<u32>(_wgslsmith_mod_u32(arg_3, arg_3), 53419u, arg_3 | arg_3, _wgslsmith_div_u32(1380u, 1u)) % vec4<u32>(32u))));
    var var_1 = select(var_0.wyw, min(vec3<i32>(_wgslsmith_dot_vec4_i32(func_3(43692u, false, arg_1), var_0), arg_1, -12195i), _wgslsmith_mod_vec3_i32(vec3<i32>(-7298i, 0i, ~(-8137i)), firstTrailingBit(~vec3<i32>(u_input.a.x, arg_1, -16730i)))), true);
    let var_2 = vec3<i32>(u_input.a.x, ~(i32(-1i) * -u_input.a.x), max(~(~(-2147483647i)), var_0.x));
    let var_3 = true;
    let var_4 = arg_2;
    return vec3<bool>(true, var_3, abs(_wgslsmith_dot_vec3_i32(var_0.xyw, vec3<i32>(-18354i, 35348i, 2147483647i))) < (i32(-1i) * -min(2147483647i, 60294i)));
}

fn func_1() -> f32 {
    let var_0 = vec3<i32>(67752i, 31982i, -1i);
    let var_1 = Struct_1(!any(!func_2(-406f, -38021i, vec2<bool>(false, true), 0u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1214f, 354f))), -202f), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1995f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1208f, -689f, false)) * _wgslsmith_div_f32(1685f, 1264f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-303f - 1943f))), -458f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-951f)) + 1774f)), 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 552f, -245f) * vec3<f32>(1387f, 282f, 892f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1280f, 1000f)))), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(816f, -326f, -828f), vec3<f32>(1292f, -1159f, 113f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.c.yzx)) + var_1.c.yxw));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(939f - 129f), -1837f, true))), _wgslsmith_f_op_f32(var_1.c.x * var_2.x), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1063f * var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(1u, ~firstLeadingBit(_wgslsmith_mult_u32(26357u, 1u)), ~(~1u)) | ~1u;
    let var_1 = _wgslsmith_f_op_f32(func_1());
    var_0 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(62593u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(33322u, 0u))), ~reverseBits(~max(27757u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(50911u)) << (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(1u), 37270u), abs(4294967295u))));
}

