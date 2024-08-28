struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1062f - 1447f), 342f, _wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, -563f, -294f)) + vec3<f32>(-1000f, 651f, 255f))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(sign(-366f)), _wgslsmith_f_op_f32(-2760f - 964f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(546f, -1064f, -771f), vec3<f32>(-731f, -1774f, -975f), vec3<bool>(true, arg_0, false))))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f + _wgslsmith_f_op_f32(var_0.x + 772f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) * -1000f), -141f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * -127f);
    var_1 = _wgslsmith_f_op_f32(374f * -918f);
    let var_2 = ~vec2<u32>(u_input.a, min(~0u, u_input.c.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -240f)))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.e;
    var var_1 = -334f;
    var var_2 = _wgslsmith_sub_vec2_i32(u_input.b.yy, u_input.d) ^ u_input.d;
    var var_3 = u_input.c.x;
    var var_4 = max(u_input.b.zxx, u_input.b.yxw);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.x)), arg_1.x, _wgslsmith_f_op_f32(844f * _wgslsmith_f_op_f32(375f * arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 1136f, -137f), vec3<f32>(arg_1.x, -767f, 587f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))) - vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-732f, 644f)))), -1000f)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = select(!vec4<bool>(false, any(vec2<bool>(true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), select(vec4<bool>(all(vec4<bool>(true, false, true, false)) && true, true, false, true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)), all(vec4<bool>(false, false, false, false)))), false);
    var var_1 = arg_2;
    var var_2 = reverseBits(~(~(~vec3<u32>(4294967295u, 4294967295u, u_input.a))));
    var_1 = arg_2;
    var var_3 = 4294967295u;
    return select(~(-(max(vec4<i32>(-14353i, u_input.d.x, 1i, u_input.d.x), vec4<i32>(0i, -69361i, u_input.d.x, -34964i)) ^ u_input.b)), abs(-(~vec4<i32>(u_input.e, -63016i, u_input.e, 1i))), var_0);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) + _wgslsmith_f_op_f32(select(-358f, 833f, true)))), _wgslsmith_clamp_u32(arg_0, _wgslsmith_add_u32(~u_input.c.x, _wgslsmith_clamp_u32(52748u, u_input.c.x, 52387u)), u_input.c.x), func_2(vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1032f), 189f))), u_input.b, select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), u_input.e != u_input.b.x, all(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, false)))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) - _wgslsmith_div_f32(1403f, -444f))) + _wgslsmith_div_f32(2045f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1270f, 985f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1593f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) + -719f)))));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~arg_1, arg_1, min(u_input.b.x, u_input.e)), 543i), _wgslsmith_dot_vec3_i32(~u_input.b.wwy, ~vec3<i32>(arg_1, arg_1, var_0.x)), _wgslsmith_div_i32(-arg_1, -50794i), arg_1), _wgslsmith_clamp_vec4_i32(~(u_input.b | vec4<i32>(var_0.x, var_0.x, arg_1, -2147483647i)), select(~u_input.b, _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(2147483647i, var_0.x, arg_1, u_input.e)), all(vec4<bool>(false, true, true, true))), _wgslsmith_mod_vec4_i32(u_input.b, -u_input.b)) & vec4<i32>(-1i, var_0.x, _wgslsmith_sub_i32(~49284i, ~u_input.d.x), 0i));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -880f))), 466f)));
    var_0 = vec4<i32>(var_0.x, select(~_wgslsmith_sub_i32(u_input.e, func_4(var_2.x, u_input.a, Struct_1(vec3<f32>(var_2.x, -996f, 646f), vec3<f32>(-197f, var_2.x, -778f))).x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, min(-27875i, 17782i), ~u_input.d.x, i32(-1i) * -7379i), vec4<i32>(arg_1, 1i >> (u_input.c.x % 32u), max(-12568i, 0i), -2147483647i)), false), _wgslsmith_dot_vec2_i32(select(max(vec2<i32>(arg_1, var_0.x), vec2<i32>(1i, 22803i)), reverseBits(u_input.d), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))) | ((vec2<i32>(arg_1, -50513i) << (vec2<u32>(0u, 9774u) % vec2<u32>(32u))) & ~vec2<i32>(u_input.e, var_0.x)), -_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(arg_1, arg_1)) | var_0.wx), -(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.yyw, u_input.b.yyy), abs(u_input.b.x)) >> (arg_0 % 32u)));
    return Struct_2(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - -379f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, var_2.x))))), func_2(vec3<bool>(false, -u_input.e > _wgslsmith_mult_i32(u_input.d.x, arg_1), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, -1000f), vec3<f32>(var_2.x, 347f, -147f), any(vec2<bool>(false, true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-294f)), _wgslsmith_f_op_f32(floor(402f))), -430f, var_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 700f, -322f) + vec3<f32>(-488f, 1055f, 1982f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, -986f, var_2.x)) * vec3<f32>(var_2.x, var_2.x, 505f)))), func_2(vec3<bool>(any(vec2<bool>(false, true)), false, false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1132f, 1066f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_u32(u_input.a, u_input.c.x), _wgslsmith_clamp_i32(u_input.e, -12700i, -u_input.d.x));
    let var_1 = (firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 8657u, u_input.a, 6142u), vec4<u32>(1u, u_input.c.x, u_input.a, 45502u))) << ((abs(firstLeadingBit(vec4<u32>(0u, 49110u, 10312u, 1u))) | ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, 14896u, u_input.a, u_input.a))) % vec4<u32>(32u))) << (vec4<u32>(0u, ~(u_input.c.x >> (11450u % 32u)), 4294967295u, u_input.c.x) % vec4<u32>(32u));
    var var_2 = 0u;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(1980f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.e.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f + _wgslsmith_f_op_f32(select(var_0.a, var_0.b.a.x, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.b.x, var_0.e.b.x)))))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(select(reverseBits(u_input.c.x), ~u_input.a, true), 30928u >> (firstLeadingBit(u_input.a) % 32u)));
}

