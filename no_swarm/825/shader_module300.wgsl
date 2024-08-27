struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = ~(~u_input.b);
    let var_1 = 2147483647i;
    var var_2 = Struct_1(select(reverseBits(u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.d, ~u_input.d, 0u, 1u), vec4<u32>(max(u_input.d, u_input.a.x), ~u_input.a.x, countOneBits(4729u), 0u)), vec4<bool>(any(vec2<bool>(false, true)), true, -var_1 >= -2147483647i, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f + -1337f)))));
    var var_3 = Struct_2(Struct_1(vec4<u32>(max(26856u, u_input.d), u_input.a.x, 28237u, ~u_input.a.x), var_2.b), 318f, min(~vec2<u32>(48434u, 34241u) & ~reverseBits(vec2<u32>(27627u, u_input.a.x)), vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(var_2.a.xzw, var_2.a.wxy))), select(select(true, false && all(vec2<bool>(true, false)), !any(vec2<bool>(false, true))), !all(vec2<bool>(false, true)) && !all(vec3<bool>(true, false, false)), any(vec4<bool>(select(true, true, true), true, true, true))), Struct_1(reverseBits(_wgslsmith_mult_vec4_u32(var_2.a, firstLeadingBit(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1733f, -405f))));
    var_2 = var_3.a;
    return -361f;
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = 1f;
    var_0 = _wgslsmith_div_f32(-107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -475f)));
    var_0 = 147f;
    let var_1 = Struct_3(Struct_2(Struct_1(vec4<u32>(~1u, _wgslsmith_div_u32(4294967295u, u_input.d), u_input.a.x, 2772u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + -793f)), -1144f, firstTrailingBit(u_input.a.xw), all(!vec4<bool>(arg_0, false, true, false)), Struct_1(vec4<u32>(1u, min(16065u, 4294967295u), abs(0u), 54728u), 242f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1090f - 1139f), 206f)), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wyz, vec3<u32>(u_input.a.x, u_input.d, 5376u), vec3<u32>(4294967295u, u_input.a.x, u_input.d)), u_input.a.zwx >> (u_input.a.zzx % vec3<u32>(32u))), 1u, u_input.d, 44481u), -935f));
    var_0 = -1000f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.b, var_1.b, var_1.a.a.b))))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1991f)) - _wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_f_op_f32(-var_1.b)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), u_input.e >= -arg_0);
    let var_1 = max(vec2<i32>(abs(_wgslsmith_add_i32(44565i, -arg_0)), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.c.zy | vec2<i32>(u_input.e, u_input.b), _wgslsmith_add_vec2_i32(u_input.c.zz, u_input.c.xz)))), max(vec2<i32>(abs(firstLeadingBit(0i)), countOneBits(u_input.b)), ~u_input.c.wx));
    var_0 = vec2<bool>(true, (~countOneBits(u_input.c.x) >> (22160u % 32u)) > _wgslsmith_add_i32(var_1.x, min(~(-2147483647i), ~(-13042i))));
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = Struct_3(Struct_2(Struct_1(vec4<u32>(_wgslsmith_div_u32(var_2.a.x, 59906u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(2217u, 40095u, var_2.a.x), var_2.a.wwz), ~var_2.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_2(true)).x, -244f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) - _wgslsmith_f_op_f32(-arg_1.x)), u_input.a.ww ^ ~vec2<u32>(u_input.a.x, 37107u), true, Struct_1(u_input.a ^ ~u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - 433f), _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -551f)), Struct_1(max(abs(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, 5328u, 30808u, u_input.a.x))), select(min(var_2.a, var_2.a), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), var_0.x)), _wgslsmith_f_op_f32(min(arg_1.x, var_2.b))));
    return Struct_1(~vec4<u32>(var_3.c.a.x, var_2.a.x, 99897u & var_3.a.a.a.x, ~_wgslsmith_clamp_u32(5044u, var_3.c.a.x, var_2.a.x)), arg_1.x);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(false))));
    var_0 = func_4(-(max(u_input.e, 1i) >> (reverseBits(19972u << (u_input.d % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-458f, var_0.b, var_0.b))))) - vec3<f32>(575f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(min(-1463f, var_0.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1000f, -2097f)))));
    let var_1 = Struct_2(Struct_1(min(var_0.a, vec4<u32>(var_0.a.x, arg_0 >> (var_0.a.x % 32u), ~9710u, u_input.d << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1368f)))), var_0.b, (vec2<u32>(var_0.a.x, var_0.a.x & 4294967295u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 119300u), var_0.a.xx), ~var_0.a.yx)) | vec2<u32>(reverseBits(_wgslsmith_div_u32(arg_0, 51673u)), arg_0), false, func_4(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(70540i, u_input.c.x, u_input.b), u_input.c.yxz), 1i), vec3<f32>(_wgslsmith_f_op_f32(696f + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.b)), var_0.b)));
    var var_2 = vec2<f32>(-515f, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a.b, -1377f)), _wgslsmith_f_op_f32(select(214f, var_1.e.b, var_1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b * -1183f)))))));
    var var_3 = func_4(-(~(u_input.b << (44729u % 32u))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(var_2.x))), var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_1.a.b) + var_2.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.b, var_1.e.b, var_1.a.b)))))))));
    return Struct_2(func_4(_wgslsmith_div_i32(u_input.b, 1i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_3.b, -609f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1448f, var_0.b, -1167f)), u_input.d != var_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), var_3.a.zw & _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_0.a.x, 4294967295u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 50070u), u_input.a.xx, var_1.c)), !var_1.d | true, Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(var_0.b - -1000f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = -45i;
    var var_1 = !select(select(vec2<bool>(arg_0.d, all(arg_3.yw)), vec2<bool>(arg_0.d, arg_0.d || arg_0.d), any(select(arg_3, arg_3, vec4<bool>(arg_3.x, true, true, false)))), !vec2<bool>(!arg_3.x, arg_0.d), all(!vec2<bool>(arg_3.x, arg_0.d)));
    var_1 = arg_3.yw;
    var var_2 = !(!arg_3.xzy);
    let var_3 = arg_0.b;
    return StorageBuffer(abs(countOneBits(u_input.c)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), arg_0.a.a.x, arg_0.c.x, 0u), u_input.a, vec4<u32>(arg_0.c.x, arg_0.c.x, firstLeadingBit(~4294967295u), ~arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-735f))));
    let var_1 = reverseBits(countOneBits(u_input.a.x)) & 0u;
    let x = u_input.a;
    s_output = func_5(func_1(~1u), func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.wz, u_input.a.ww), ~u_input.a.zw), var_1 & func_1(4294967295u).a.a.x)).e, -55214i, !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
}

