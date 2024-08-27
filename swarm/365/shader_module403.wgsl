struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(~vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec2_i32(~u_input.c.wy, vec2<i32>(u_input.a.x, u_input.a.x)), 77875i, _wgslsmith_clamp_i32(u_input.c.x, -2487i, 12152i | u_input.c.x)), -vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, countOneBits(39330i), u_input.c.x), 32655i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -1i), ~_wgslsmith_clamp_i32(-24187i, u_input.a.x, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(882f)), 687f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-723f - -831f), _wgslsmith_f_op_f32(trunc(230f))))), 2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f - -2336f) - _wgslsmith_f_op_f32(floor(-769f)))), u_input.c.x), 1u);
    let var_1 = vec3<u32>(~(~select(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(32757u, 4294967295u, var_0.e), vec3<u32>(27731u, 4294967295u, var_0.e)), all(vec4<bool>(true, false, false, true)))), _wgslsmith_clamp_u32((var_0.e | abs(4294967295u)) ^ max(6503u, 4294967295u), 4844u, select(~(~u_input.b), ~(~56918u), false)), ~(~(~(~u_input.b))));
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c.x, -_wgslsmith_clamp_i32(var_0.a.x, var_0.d.b, var_0.c.b), firstLeadingBit(~u_input.c.x)), var_0.b, abs(u_input.a)), firstTrailingBit(~_wgslsmith_mult_vec4_i32(var_0.a, var_0.b)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.a * var_0.c.a))))), u_input.a.x), var_0.c, 1u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1424f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.a))), var_2.d.a);
    let var_4 = Struct_2(min(u_input.a, abs(vec4<i32>(10552i, -21552i, -71158i, u_input.c.x)) << (vec4<u32>(_wgslsmith_mod_u32(var_2.e, 4294967295u), ~53802u, firstLeadingBit(u_input.b), max(39639u, 4294967295u)) % vec4<u32>(32u))), var_0.b, var_2.d, Struct_1(_wgslsmith_f_op_f32(-var_2.c.a), ~(~abs(u_input.c.x))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~var_0.e, ~u_input.b) | 1u, u_input.b));
    return var_3.x;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-626f * -1417f), 539f, _wgslsmith_f_op_f32(f32(-1f) * -857f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1455f, -975f, -908f), _wgslsmith_f_op_vec3_f32(vec3<f32>(500f, 451f, 464f) - vec3<f32>(-579f, -650f, 1627f)))), vec3<f32>(-168f, _wgslsmith_f_op_f32(trunc(-885f)), _wgslsmith_f_op_f32(func_3())), true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, 1297f, -1432f) - vec3<f32>(1352f, -677f, -198f)))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2540f))))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -405f), -(~arg_1.x));
    var var_1 = _wgslsmith_mult_i32(min(~(~abs(-40348i)), countOneBits(0i)), 55593i ^ _wgslsmith_sub_i32(~(-2147483647i), arg_1.x));
    let var_2 = all(vec2<bool>(all(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), 512f));
    var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-17253i, 18931i), ~(_wgslsmith_clamp_i32(reverseBits(-2147483647i), u_input.c.x, countOneBits(u_input.c.x)) >> (arg_0.x % 32u)));
    return vec4<u32>(~(~reverseBits(_wgslsmith_dot_vec3_u32(arg_2.wyz, arg_2.xyw))), arg_2.x, select(u_input.b, countOneBits(max(1u, u_input.b)), any(vec4<bool>(true, var_2, true || var_2, all(vec4<bool>(var_2, var_2, var_2, false))))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, false);
    var var_1 = ~max(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(1u, 1u, u_input.b, 4294967295u))), ~abs(vec4<u32>(61014u, u_input.b, u_input.b, u_input.b))), min(firstTrailingBit(func_1(vec2<u32>(u_input.b, 0u), u_input.a.yzx, vec4<u32>(u_input.b, u_input.b, 16877u, u_input.b))), ~abs(vec4<u32>(0u, u_input.b, 4294967295u, 10252u))));
    let var_2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), ~vec2<u32>(var_1.x, 4294967295u)), 8537u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.yw, var_1.zw), u_input.b, 32962u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-128f))))), _wgslsmith_div_i32(u_input.a.x, 0i));
    let var_4 = ~(vec4<u32>(~abs(var_1.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b), var_1.x), firstTrailingBit(abs(835u)), ~_wgslsmith_sub_u32(u_input.b, u_input.b)) << (~(~vec4<u32>(6036u, u_input.b, var_1.x, u_input.b)) % vec4<u32>(32u)));
    var var_5 = max(vec2<i32>(_wgslsmith_add_i32(26517i, -2147483647i), var_3.b), -(-vec2<i32>(u_input.c.x, var_3.b) << ((vec2<u32>(0u, 10958u) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(11456u, ~var_4.x) % vec2<u32>(32u)));
    var var_6 = var_4;
    var var_7 = _wgslsmith_dot_vec3_i32(u_input.c.zzy & _wgslsmith_div_vec3_i32(u_input.c.xyz, u_input.c.wzx), -firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.a.zxx, vec3<i32>(-43758i, -43316i, var_3.b))) & _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, var_5.x, var_5.x), u_input.a.xzw, vec3<bool>(var_0.x, false, true)), ~u_input.a.wxz), countOneBits(select(u_input.c.yww, vec3<i32>(u_input.c.x, var_3.b, -35398i), true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.x << (_wgslsmith_clamp_u32(1u >> (var_2 % 32u), 1u, reverseBits(var_4.x)) % 32u), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -21294i, -20224i), vec3<i32>(-35107i, var_5.x, u_input.c.x)), -9358i, var_5.x)), var_1.zyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1001f, -1000f, var_3.a)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 381f, var_3.a)))))));
}

