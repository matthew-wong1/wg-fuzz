struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 393f, -661f), vec3<f32>(-1460f, 681f, -602f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2209f, -427f, -354f))))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -852f), 2227f, _wgslsmith_f_op_f32(2027f * -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 873f, -1081f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, _wgslsmith_f_op_f32(floor(563f)), _wgslsmith_f_op_f32(f32(-1f) * -312f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(836f, -2443f, 897f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, 716f, -378f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-959f, -809f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1787f, var_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, -376f, 297f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1000f), vec3<f32>(var_0.x, var_0.x, 360f)))))))));
    var var_1 = arg_2.e;
    let var_2 = -24150i;
    let var_3 = -vec2<i32>(abs(0i), 0i);
    return all(vec2<bool>(all(vec4<bool>(true, true, true, true)), -245f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(-(~u_input.b.x), u_input.b.x), select(-1i, -11302i, any(vec4<bool>(true, u_input.a > 0u, true, func_3(Struct_2(Struct_1(u_input.b.x, vec2<i32>(u_input.b.x, 5803i), u_input.b.yw, -9768i), Struct_1(15510i, vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xw, u_input.b.x), 68842u, Struct_1(-1i, u_input.b.ww, vec2<i32>(-26825i, u_input.b.x), -56680i), Struct_1(0i, u_input.b.xx, u_input.b.yw, u_input.b.x)), vec3<u32>(15714u, 24093u, 4294967295u), Struct_2(Struct_1(-31058i, u_input.b.zw, u_input.b.zw, u_input.b.x), Struct_1(u_input.b.x, u_input.b.wz, vec2<i32>(u_input.b.x, -27181i), u_input.b.x), 3168u, Struct_1(-1i, vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, u_input.b.x), u_input.b.x), Struct_1(-1i, u_input.b.yw, u_input.b.yz, -1060i)))))));
    let var_1 = Struct_2(Struct_1(0i, -max(u_input.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(14960i, 2147483647i), u_input.b.wy)), u_input.b.ww & var_0, 32820i), Struct_1(0i, ~vec2<i32>(-1i, min(0i, u_input.b.x)), vec2<i32>(-(~u_input.b.x), _wgslsmith_div_i32(1i, u_input.b.x)), -1i), u_input.c.x, Struct_1(firstTrailingBit(~(-2973i << (1u % 32u))), abs(-(~u_input.b.wx)), var_0 ^ ~var_0, select(-1i, firstLeadingBit(-47974i) | -u_input.b.x, true)), Struct_1(-45260i, min(abs(var_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 20317i), u_input.b.zz) >> (u_input.c % vec2<u32>(32u))), vec2<i32>(70916i, -(i32(-1i) * -1i)), 1i));
    var var_2 = var_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1219f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_0.x, arg_0.x);
    var_2 = var_1;
    return Struct_3(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(round(1042f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -2568f)), arg_0.x, 367f), var_1, var_1.a, var_2.a);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -368f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1492f - -1396f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, -737f, 1000f, 1420f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -787f, 1346f, 281f), vec4<f32>(-1926f, 188f, -736f, -2639f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, -1058f, -507f, 1206f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, -141f, -993f, 679f)))), any(vec3<bool>(true, true, true)) | true))));
    let var_1 = true;
    let var_2 = ~min(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.b.xy), u_input.b.zy), vec2<i32>(var_0.c.d, u_input.b.x)) << (u_input.c % vec2<u32>(32u));
    var var_3 = abs(42768u);
    let var_4 = !any(!vec4<bool>(false, false && var_1, true, !var_1));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(138f));
    var var_1 = vec4<bool>(true, !((func_1(Struct_2(Struct_1(17138i, u_input.b.yy, u_input.b.xw, u_input.b.x), Struct_1(u_input.b.x, vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, -11819i), 38724i), u_input.d, Struct_1(1i, u_input.b.wz, vec2<i32>(-12217i, 41715i), 49194i), Struct_1(-1i, vec2<i32>(u_input.b.x, -8988i), u_input.b.zz, u_input.b.x)), -41672i) != true) & (_wgslsmith_div_u32(u_input.a, u_input.c.x) >= ~1u)), false, _wgslsmith_mult_i32(-1i, ~1i) == u_input.b.x);
    var var_2 = true;
    let var_3 = select(-2147483647i, u_input.b.x, all(vec3<bool>(true, var_1.x, false)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, 566f)))) * 384f);
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(abs(func_2(vec4<f32>(-242f, 1000f, 1498f, -816f)).b.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(93500u, u_input.c.x), ~vec2<u32>(21715u, u_input.a))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~min(vec2<u32>(u_input.c.x, 1u), u_input.c), firstTrailingBit(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(50189u, 1u)))), u_input.c), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, ~u_input.c.x), 4294967295u));
    var_4 = select(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_4.x, var_4.x), max(vec3<u32>(0u, var_4.x, var_4.x), vec3<u32>(4294967295u, u_input.a, u_input.c.x))) | vec3<u32>(var_4.x, (4294967295u >> (1u % 32u)) ^ var_4.x, u_input.c.x), ~(reverseBits(select(vec3<u32>(71924u, u_input.c.x, 0u), vec3<u32>(44635u, var_4.x, 4294967295u), var_1.ywz)) ^ ~(~vec3<u32>(77482u, u_input.c.x, 1u))), true);
    var var_5 = vec3<u32>(0u, 0u, ~var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + 813f) - _wgslsmith_f_op_f32(1398f - 1484f))) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(864f, 316f))), vec2<f32>(-1040f, 758f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, -376f))))))));
}

