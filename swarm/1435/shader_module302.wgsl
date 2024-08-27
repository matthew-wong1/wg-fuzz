struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~select(select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 49296u), arg_2.yx), vec2<u32>(1u, 0u), vec2<bool>(true, arg_2.x)), select(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_1.a), vec2<u32>(0u, 65470u), vec2<u32>(30732u, 28530u)), arg_2.ww) & ~select(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.a, 45626u), vec2<bool>(arg_3.x, arg_3.x))), _wgslsmith_mod_u32(u_input.a << (55288u % 32u), u_input.a));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(sign(133f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f * arg_1.d.b.x) * _wgslsmith_f_op_f32(step(arg_1.c.a, -189f))), arg_1.d.a)), (~vec3<u32>(39501u, 47767u, 131407u) ^ ((vec3<u32>(30615u, var_0.x, u_input.c) << (vec3<u32>(u_input.c, var_0.x, 10048u) % vec3<u32>(32u))) >> (~vec3<u32>(1u, 0u, 22879u) % vec3<u32>(32u)))) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, var_0.x) & max(vec3<u32>(1u, 22530u, arg_1.a), vec3<u32>(u_input.a, 4294967295u, 22965u)), vec3<u32>(firstTrailingBit(0u), _wgslsmith_add_u32(var_0.x, arg_1.a), _wgslsmith_clamp_u32(arg_1.a, 0u, u_input.c))) % vec3<u32>(32u)), Struct_3(firstLeadingBit(vec3<u32>(4294967295u, firstLeadingBit(var_0.x), arg_1.a ^ u_input.a)), vec4<bool>(arg_2.x, any(arg_3.wz), _wgslsmith_f_op_f32(875f + -509f) >= _wgslsmith_f_op_f32(672f + arg_1.d.a), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, _wgslsmith_f_op_f32(-arg_1.d.a)))), Struct_1(arg_1.d.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(831f, arg_1.c.a)), -1000f, _wgslsmith_f_op_f32(ceil(arg_1.c.b.x))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.b.x * arg_1.d.a), _wgslsmith_f_op_f32(-602f + arg_1.c.b.x), _wgslsmith_f_op_f32(max(arg_1.c.b.x, -994f))))), arg_2.x);
    var var_2 = 1u;
    var_0 = vec2<u32>(u_input.c, ~u_input.c);
    var_2 = ~(~abs(1u));
    return vec2<bool>(~(-1i) >= (arg_1.b & min(firstTrailingBit(arg_1.b), firstLeadingBit(arg_1.b))), arg_2.x);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(!vec2<bool>(true, any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), func_3(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), Struct_2(~4294967295u, 2147483647i, Struct_1(790f, arg_0.b), arg_0), select(vec4<bool>(false, arg_0.b.x == arg_0.a, true, true), vec4<bool>(select(false, true, true), true, true, true), true), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(arg_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f - -503f), 166f, _wgslsmith_f_op_f32(round(arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, 727f, -1480f)))), all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1679f))))));
    var var_2 = !(!vec4<bool>(true, select(var_0.x, var_0.x, true) | false, false & (arg_0.a < -414f), true));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) * _wgslsmith_f_op_f32(-var_1.a)))))) == -276f;
    var_2 = select(vec4<bool>(var_2.x, !(!all(var_2.xwx)), var_0.x, !all(!vec4<bool>(true, var_3, var_0.x, var_3))), select(select(!(!vec4<bool>(true, var_2.x, var_2.x, var_3)), select(!vec4<bool>(false, var_3, false, var_3), vec4<bool>(true, true, false, var_3), select(true, var_3, var_3)), var_2.x), !(!select(vec4<bool>(var_2.x, var_3, var_2.x, var_0.x), vec4<bool>(false, false, var_0.x, var_3), var_0.x)), !var_2.x), !(!(!(!vec4<bool>(true, true, var_0.x, false)))));
    return select(vec4<bool>(true & !select(true, true, var_0.x), var_2.x, u_input.a == (_wgslsmith_dot_vec4_u32(vec4<u32>(33725u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.a, 0u, u_input.b, u_input.a)) | u_input.b), true), select(select(select(!vec4<bool>(true, false, var_2.x, false), select(vec4<bool>(true, var_3, false, var_3), vec4<bool>(var_0.x, true, false, var_3), vec4<bool>(false, var_0.x, true, false)), any(vec2<bool>(false, var_0.x))), vec4<bool>(true, any(var_2.yx), true | var_0.x, var_2.x), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_2.x, false, var_3, var_3), vec4<bool>(false, false, var_0.x, true)), !vec4<bool>(true, var_3, false, true), true), !select(select(vec4<bool>(true, var_2.x, false, var_0.x), vec4<bool>(var_3, var_2.x, var_3, false), var_2.x), !vec4<bool>(false, var_3, var_2.x, var_2.x), arg_0.a < 1297f)), vec4<bool>(var_2.x && (-28858i <= _wgslsmith_dot_vec3_i32(vec3<i32>(24172i, -13625i, -1i), vec3<i32>(-6709i, 2188i, 22564i))), !func_3(var_2.zx, Struct_2(u_input.c, 39824i, Struct_1(arg_0.b.x, vec3<f32>(-482f, var_1.b.x, 1462f)), var_1), vec4<bool>(true, false, var_0.x, var_3), vec4<bool>(var_0.x, true, var_2.x, false)).x == true, any(!vec4<bool>(true, false, var_2.x, true)), select((17964u ^ u_input.b) >= u_input.a, any(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, var_3, var_3))), !any(vec4<bool>(var_0.x, var_3, false, true)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = !all(vec3<bool>(all(vec3<bool>(false, false, false)), true, true));
    var var_1 = Struct_3(~vec3<u32>(select(1u | u_input.a, ~1u, true & var_0), u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c | 4294967295u)), select(select(!func_2(Struct_1(arg_0.x, vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), func_2(Struct_1(arg_0.x, vec3<f32>(882f, arg_0.x, arg_0.x))), !any(vec2<bool>(false, false))), vec4<bool>(true, !(!var_0), !var_0, -445f != _wgslsmith_div_f32(arg_0.x, 799f)), select(!func_2(Struct_1(arg_0.x, arg_0)), vec4<bool>(true, false, select(var_0, true, var_0), !var_0), !var_0 | any(vec4<bool>(var_0, false, var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-arg_0.yx));
    var var_2 = Struct_4(false, vec3<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a << (1u % 32u), ~var_1.a.x, ~57668u)), var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.a.xy, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x, u_input.a), var_1.a.xz) & ~vec2<u32>(var_1.a.x, var_1.a.x))), Struct_3(min(vec3<u32>(u_input.a, 75003u, 16204u) << (~var_1.a % vec3<u32>(32u)), vec3<u32>(u_input.a, ~2262u, u_input.b)), !vec4<bool>(true, true, true, func_3(var_1.b.wy, Struct_2(4294967295u, 2147483647i, Struct_1(-903f, vec3<f32>(118f, 417f, arg_0.x)), Struct_1(1000f, vec3<f32>(-110f, var_1.c.x, 1000f))), vec4<bool>(var_0, var_1.b.x, false, true), vec4<bool>(false, false, true, var_1.b.x)).x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_1.c.x)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-701f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(733f * -1665f), -577f))), var_0);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -842f)));
    let var_4 = Struct_2(var_2.b.x, firstLeadingBit(-(~22725i) >> (var_2.b.x % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1814f, var_2.d.b.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(floor(arg_0))), true))), Struct_1(var_2.d.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.x, 1000f, 599f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1635f, -1921f, var_2.c.c.x)))), _wgslsmith_f_op_vec3_f32(var_2.d.b * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, 1206f, var_2.d.b.x), vec3<f32>(var_1.c.x, 1340f, 195f))))));
    return Struct_1(244f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.d.b))) + vec3<f32>(973f, _wgslsmith_div_f32(462f, -922f), _wgslsmith_f_op_f32(select(-1594f, _wgslsmith_f_op_f32(exp2(arg_0.x)), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -27950i), select(vec2<i32>(-1i, 46475i), vec2<i32>(0i, -56229i), vec2<bool>(true, true)) | max(vec2<i32>(-17892i, -31824i), vec2<i32>(1i, -2147483647i))), 48503i), _wgslsmith_add_i32(-11122i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~21952i, select(-1i, -1i, false)), ~countOneBits(vec3<i32>(-9105i, 0i, -10898i)))));
    var var_1 = Struct_2(~1u, -(~(0i >> (~4294967295u % 32u))), func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1088f, -713f, -758f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, -566f, -577f))))))), func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, 743f, 800f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1093f, -572f, 124f)))))));
    var_1 = Struct_2(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(var_1.a, ~(~40579u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_0, -(~var_0)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0, var_1.b) ^ (-1i & var_1.b), -2147483647i, countOneBits(_wgslsmith_mult_i32(19489i, var_0)))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.a, 1000f, 1294f) + var_1.c.b)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-267f, 942f, 287f))))), var_1.c);
    var_1 = Struct_2(var_1.a, var_0 & var_0, Struct_1(638f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c.b.x))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(492f, 345f, var_1.c.a) + var_1.d.b)).a, -1000f)), func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.d.b + vec3<f32>(-786f, var_1.d.a, var_1.d.b.x))))));
    var var_2 = min(select(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(1i, var_0)), countOneBits(vec2<i32>(1i, 0i)), vec2<bool>(true | (1195f >= var_1.c.b.x), !func_2(Struct_1(-375f, var_1.d.b)).x)), -((-vec2<i32>(var_0, 284i) >> ((vec2<u32>(24651u, u_input.c) ^ vec2<u32>(28762u, var_1.a)) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a) ^ vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, var_1.a)) % vec2<u32>(32u))));
    let var_3 = Struct_4(!(!any(vec2<bool>(false, false)) & (all(vec3<bool>(true, true, true)) && all(vec4<bool>(false, true, true, true)))), select(~vec3<u32>(0u, var_1.a, 1u) | abs(vec3<u32>(32012u, 15842u, 23567u)), abs(vec3<u32>(0u, var_1.a, u_input.c)), vec3<bool>(false, all(vec4<bool>(false, false, true, false)), true)) >> (select(vec3<u32>(var_1.a, _wgslsmith_div_u32(var_1.a, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(33405u, u_input.a, u_input.b, 62491u), vec4<u32>(u_input.b, u_input.c, 27615u, 2817u))), vec3<u32>(u_input.b, 1u, ~var_1.a), true) % vec3<u32>(32u)), Struct_3(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 50725u), reverseBits(u_input.b), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 58010u, var_1.a), vec3<u32>(1u, 0u, u_input.b), vec3<u32>(51070u, 1u, 0u)), vec3<u32>(u_input.a, 1872u, u_input.b))), func_2(var_1.d), var_1.c.b.zz), func_1(vec3<f32>(328f, _wgslsmith_div_f32(252f, 784f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1008f + var_1.d.b.x))))), !(_wgslsmith_f_op_f32(-var_1.d.a) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.b.x, -638f))));
    let var_4 = _wgslsmith_mult_u32(~var_1.a, 17879u);
    var var_5 = -(-min(vec2<i32>(-2147483647i, 1i), vec2<i32>(-17175i, -2147483647i) << (var_3.b.xx % vec2<u32>(32u))) >> (~_wgslsmith_add_vec2_u32(var_3.c.a.zy, ~var_3.b.xz) % vec2<u32>(32u)));
    var var_6 = abs(countOneBits(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_5.x, var_5.x, var_0, -39726i), vec4<i32>(var_0, -1i, 15125i, 13142i)), vec4<i32>(2147483647i ^ var_2.x, var_5.x, var_1.b, -var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -abs(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.b, 20029i, var_0, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_1.b, var_2.x, var_1.b), vec4<i32>(var_1.b, 0i, var_1.b, 0i)))));
}

