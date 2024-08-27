struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(arg_0.x), Struct_1(u_input.a));
    var var_1 = var_0;
    var var_2 = countOneBits(-var_0.b.a);
    let var_3 = Struct_3(~1u);
    var var_4 = false;
    return vec3<bool>(true, !any(vec2<bool>(true, var_3.a >= 1u)), false & ((1u != var_3.a) & any(vec2<bool>(true, false))));
}

fn func_2() -> u32 {
    return select(1u, ~_wgslsmith_div_u32(90807u, ~_wgslsmith_clamp_u32(65506u, 75869u, 0u)), select(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))) | any(func_3(vec4<i32>(u_input.c.x, -23967i, -6113i, -15707i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, -678f, 546f, 1000f)))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = reverseBits(abs(_wgslsmith_add_vec2_u32(select(~vec2<u32>(arg_0, arg_0), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 3963u), vec2<u32>(arg_0, arg_0)), arg_1.x || arg_1.x), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, 20456u)), ~vec2<u32>(arg_0, arg_0)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2304f, 206f, 1534f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, -227f, -279f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, -1310f, 942f)))))) - vec3<f32>(_wgslsmith_f_op_f32(912f * _wgslsmith_f_op_f32(1780f - -857f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-565f, _wgslsmith_f_op_f32(min(1552f, 804f)), true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(f32(-1f) * -1515f))), -113f))));
    let var_2 = firstLeadingBit(-firstTrailingBit(u_input.c.x));
    let var_3 = arg_1;
    let var_4 = abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.c.x), -34897i)) >> (max(~arg_0, _wgslsmith_mult_u32(firstLeadingBit(arg_0), arg_0)) % 32u);
    return Struct_3(var_0.x);
}

fn func_1() -> vec4<i32> {
    let var_0 = vec3<f32>(-977f, -656f, -918f);
    var var_1 = func_4(max(firstTrailingBit(abs(4294967295u)), func_2()) & ~min(1u, ~87310u), !select(vec3<bool>(true, true, true), func_3(~vec4<i32>(u_input.b.x, -2070i, u_input.b.x, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, var_0.x, 152f, var_0.x))), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(938f, 517f, -1155f)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1498f - var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1066f + -1173f)))))));
    let var_3 = Struct_2(Struct_1(u_input.a), Struct_1(u_input.d.x));
    var_1 = func_4(~28960u, func_3(u_input.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-376f))), 573f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f + -1002f) + 843f))));
    return -_wgslsmith_clamp_vec4_i32(abs(abs(~vec4<i32>(-18436i, -45097i, u_input.d.x, u_input.a))), vec4<i32>(-1i) * -abs(vec4<i32>(-52902i, 24256i, var_3.b.a, 50729i)), vec4<i32>(-13681i, ~var_3.a.a, -9735i, ~(-2147483647i)) << (abs(vec4<u32>(63640u, 65212u, 1u, 0u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.d, _wgslsmith_sub_vec4_i32((u_input.d | vec4<i32>(u_input.a, -1i, -2147483647i, 16088i)) | func_1(), ~vec4<i32>(u_input.a, -1i, u_input.b.x, -60219i))));
    let var_1 = vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_0.x), -u_input.d.x, 2147483647i), -vec3<i32>(u_input.d.x, 0i, var_0.x) & vec3<i32>(-22771i, -61668i, u_input.d.x)), _wgslsmith_sub_i32(1i, var_0.x), -u_input.a);
    var var_2 = vec3<bool>(!all(vec2<bool>(true, true)) != (select(~var_0.x, var_1.x, all(vec3<bool>(false, true, false))) >= min(~2147483647i, func_1().x)), func_3(_wgslsmith_clamp_vec4_i32((vec4<i32>(var_0.x, var_1.x, u_input.a, var_0.x) & u_input.d) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(28928u, 2755u, 0u, 0u), vec4<u32>(35388u, 63667u, 0u, 4294967295u), vec4<u32>(60662u, 14705u, 47650u, 27605u)) % vec4<u32>(32u)), countOneBits(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(-2147483647i, var_0.x, u_input.a, 2147483647i))), ~vec4<i32>(36999i, u_input.d.x, 1i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, -1161f, _wgslsmith_f_op_f32(-321f + -989f), 1f))).x, !(countOneBits(var_0.x << (1u % 32u)) >= _wgslsmith_dot_vec2_i32(-var_0.yw, vec2<i32>(var_0.x, u_input.a))));
    let var_3 = !(!vec3<bool>(false, func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.x, var_1.x, u_input.d.x), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-838f, 288f, 1111f, 890f))).x, false));
    var var_4 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 6099i), var_0.x | _wgslsmith_sub_i32(-var_1.x, var_1.x));
    let var_5 = ~_wgslsmith_sub_vec4_i32(u_input.d, firstLeadingBit(-(~vec4<i32>(-3618i, var_0.x, 4480i, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(2025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)));
}

