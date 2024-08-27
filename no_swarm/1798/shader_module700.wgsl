struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<i32> {
    return vec4<i32>(-21698i, -firstTrailingBit(arg_0.a), ~(-2147483647i) << (arg_0.b % 32u), ~select(~arg_0.a, -u_input.b, false) & arg_0.a);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -func_3(Struct_1(u_input.b, u_input.a, vec2<bool>(false, arg_0), 1u, 1894f), vec3<i32>(u_input.b, 2147483647i, 27114i), vec2<bool>(true, arg_0), vec3<bool>(arg_0, false, false))) ^ vec4<i32>(u_input.b, 1i, ~(-u_input.b), -2147483647i), Struct_1(max(_wgslsmith_add_i32(1i, -11748i), _wgslsmith_sub_i32(2147483647i, u_input.b) & abs(-1i)), 14090u, !vec2<bool>(true, all(vec2<bool>(true, false))), _wgslsmith_sub_u32(20382u >> (~u_input.c.x % 32u), _wgslsmith_div_u32(146993u, u_input.c.x) >> (u_input.a % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_f32(f32(-1f) * -1582f))))), Struct_1(-2147483647i, 1u & (4294967295u ^ u_input.a), !(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false)), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1196f)) - _wgslsmith_f_op_f32(select(-782f, 590f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-199f)) - _wgslsmith_f_op_f32(1155f - -1350f)))));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(var_0.a.xy), reverseBits(var_0.a.yx)), ~vec2<i32>(u_input.b, -2147483647i)), var_0.c.b, select(vec2<bool>(false, var_0.c.c.x && arg_0), !var_0.b.c, arg_0), ~(~(~48609u)), var_0.c.e), var_0.c);
    let var_1 = u_input.c.zyy;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(526f, var_0.b.e, 1381f, 114f), vec4<f32>(1290f, var_0.b.e, var_0.b.e, var_0.c.e)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e) + 458f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.e))), _wgslsmith_f_op_f32(-935f - 1072f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1061f))))))));
    var var_3 = 1u;
    return Struct_1(var_0.b.a, ~countOneBits(var_0.c.d), select(var_0.b.c, vec2<bool>(all(vec3<bool>(false, false, true)), !(!var_0.c.c.x)), select(select(vec2<bool>(var_0.c.c.x, arg_0), !vec2<bool>(arg_0, arg_0), false), vec2<bool>(true, true), var_0.b.c)), 43461u, _wgslsmith_f_op_f32(f32(-1f) * -113f));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(800f, 314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f - -490f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-210f, 1846f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2054f, 1445f) - vec2<f32>(1163f, -1103f)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 876f)), vec2<f32>(625f, 440f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(930f, -1453f) * vec2<f32>(162f, 528f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, 467f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-770f, -720f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, -771f) + vec2<f32>(-177f, 518f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1762f, 1553f))))))));
    let var_1 = 4294967295u;
    var var_2 = select(vec3<bool>(true, true, all(vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), 23467u == u_input.c.x))), vec3<bool>(true, true, !any(vec4<bool>(true, true, true, true))), true | (any(vec3<bool>(true, true, false)) == false));
    var var_3 = -1i;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) - var_0);
    return func_2(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(false, select(true, true, 522f < _wgslsmith_f_op_f32(sign(-497f))), _wgslsmith_add_u32(~u_input.a, u_input.a) >= ~52792u, false), func_1(), select(!((-1i > u_input.b) | true), true, _wgslsmith_sub_i32(u_input.b, u_input.b) < _wgslsmith_add_i32(u_input.b, 1i)), ~(~u_input.c.xz));
    let var_1 = ~(~(~(~4294967295u)) ^ var_0.b.b);
    var_0 = Struct_3(vec4<bool>(!any(vec2<bool>(var_0.a.x, var_0.c)), any(select(select(vec4<bool>(false, false, var_0.c, var_0.c), var_0.a, var_0.a), var_0.a, vec4<bool>(var_0.a.x, var_0.c, true, true))), var_0.c, all(!select(vec4<bool>(false, true, false, var_0.c), var_0.a, vec4<bool>(true, var_0.b.c.x, var_0.c, false)))), var_0.b, !(_wgslsmith_mult_u32(~var_1, max(60744u, 4294967295u)) != _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.xy), firstTrailingBit(var_0.d))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.zx), ~vec2<u32>(u_input.a, 39693u)), 9128u), _wgslsmith_dot_vec3_u32(u_input.c.xzx, vec3<u32>(u_input.c.x, 27017u << (0u % 32u), ~1u))));
    let var_2 = firstTrailingBit(~(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.b.a, u_input.b, u_input.b, var_0.b.a), vec4<i32>(var_0.b.a, var_0.b.a, -2147483647i, u_input.b), var_0.a), ~vec4<i32>(u_input.b, -12681i, -81324i, 1i))));
    var var_3 = var_0.d.x;
    var_0 = Struct_3(select(select(select(select(vec4<bool>(false, true, var_0.c, false), vec4<bool>(var_0.b.c.x, var_0.b.c.x, true, var_0.b.c.x), var_0.a), var_0.a, false), !var_0.a, var_0.a), select(var_0.a, vec4<bool>(false, true, 377f <= var_0.b.e, true), false), !vec4<bool>(var_0.b.c.x, func_1().c.x, false, 1u < u_input.c.x)), Struct_1(select(15608i, var_0.b.a, true), var_1 >> (1u % 32u), func_1().c, (~var_1 >> (u_input.a % 32u)) & var_1, _wgslsmith_f_op_f32(896f - _wgslsmith_f_op_f32(-var_0.b.e))), var_0.b.c.x || (var_0.b.a == ~u_input.b), abs(vec2<u32>(u_input.c.x, 21471u)) & firstLeadingBit(u_input.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~34606i, 13890i, -10378i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-92848i, -14018i), var_2.yz))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.d, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), firstTrailingBit(~firstLeadingBit(vec2<u32>(1u, var_0.d.x)))), ~_wgslsmith_mult_vec2_i32(select(_wgslsmith_sub_vec2_i32(var_2.ww, vec2<i32>(709i, -2782i)), select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, 0i), var_0.a.x), var_0.a.zy), (var_2.wy & vec2<i32>(-1i, 91216i)) ^ _wgslsmith_add_vec2_i32(var_2.zz, vec2<i32>(var_2.x, 0i))));
}

