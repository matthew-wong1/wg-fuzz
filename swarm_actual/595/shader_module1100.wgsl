struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = arg_1.e;
    var var_1 = vec2<i32>(1i, ~(~max(0i, var_0)));
    let var_2 = arg_1;
    var var_3 = any(vec2<bool>(var_2.d, arg_1.c));
    let var_4 = vec2<i32>(~_wgslsmith_mult_i32(-1648i, abs(var_2.e)), ~var_2.e);
    return _wgslsmith_f_op_vec4_f32(min(arg_1.a, var_2.a));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1821f, -100f, -1285f, 473f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1219f, 654f, 942f, -1208f) * vec4<f32>(-436f, 410f, -1793f, 467f)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, 1000f, 1111f)), Struct_1(vec4<f32>(1000f, 296f, -788f, 474f), 99335u, false, false, u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -806f), u_input.c.zww))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 584f, 1000f, 253f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, -2739f, -887f, -485f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1378f, var_0.x) * vec4<f32>(1494f, 144f, var_0.x, var_0.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1790f, var_0.x, 521f, 392f))), vec4<f32>(1646f, 1840f, -382f, 2017f)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, 124f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-408f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x), var_0.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)), var_0.x, 231f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_0.x, -254f))))), ~u_input.b, _wgslsmith_clamp_u32(~14251u, _wgslsmith_mod_u32(u_input.b, 111432u) & (0u ^ u_input.b), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_sub_u32(u_input.b, 0u))) <= u_input.b, false, 30062i);
    let var_2 = Struct_1(vec4<f32>(var_0.x, var_1.a.x, 986f, _wgslsmith_f_op_f32(step(-112f, _wgslsmith_f_op_f32(trunc(var_1.a.x))))), (~_wgslsmith_add_u32(var_1.b, var_1.b) ^ select(countOneBits(54881u), var_1.b, var_1.c)) << (18343u % 32u), var_1.d, var_1.c, 1i);
    let var_3 = select(select(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 94251u, 0u), ~vec3<u32>(var_2.b, var_2.b, 24599u))), ~vec3<u32>(~1u, ~var_2.b, var_2.b << (14349u % 32u)), vec3<bool>(any(!vec2<bool>(false, var_1.c)), false, false)), vec3<u32>(~41249u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(17430u, 8212u, 36245u), vec3<u32>(var_2.b, 4294967295u, var_1.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.b, var_2.b), vec3<u32>(1u, 4294967295u, 16944u))), var_1.b) >> (~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 7410u), vec3<u32>(21940u, var_1.b, 65674u))) % vec3<u32>(32u)), false);
    return max(var_3, reverseBits(select(~var_3, vec3<u32>(var_3.x, 4294967295u, firstTrailingBit(var_2.b)), !(!vec3<bool>(var_2.c, true, true)))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(37653u, 4294967295u, 53487u, 1u)) << (~vec4<u32>(u_input.b, u_input.b, 6899u, u_input.b) % vec4<u32>(32u)), vec4<u32>(1u, _wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.b, 17802u >> (u_input.b % 32u)) & _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 13912u, u_input.b, 23661u), vec4<u32>(78561u, 57936u, 1u, 4294967295u), vec4<u32>(13334u, 113022u, u_input.b, u_input.b)), select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 48656u, 25446u), arg_0))), vec4<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(func_2(), ~vec3<u32>(5864u, u_input.b, 37082u)), 63382u), u_input.b, u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(311f, 2251f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))) - vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(176f, 795f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 306f, var_2.x) + vec4<f32>(926f, var_2.x, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1541f, -442f, var_2.x, 1324f))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x * -557f), -257f, _wgslsmith_f_op_f32(ceil(599f)), -1777f))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 0u, u_input.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(34372u, 0u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, u_input.b, 0u))), u_input.b == (1u >> (~_wgslsmith_sub_u32(25391u, u_input.b) % 32u)), u_input.a >= 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(65359i, u_input.d))), max(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.e.x, u_input.a)) & (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, u_input.a), vec2<i32>(u_input.d, u_input.c.x)) << (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))));
    var_0 = true;
    return ~(~(27460u | _wgslsmith_mod_u32(4294967295u, u_input.b | 69127u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(vec2<bool>(true, all(vec2<bool>(false, false))))) == _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b), 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-577f, 1622f, -1000f, 1000f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(220f, 811f, -340f, -1380f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-582f, -1397f, -2341f, 526f), vec4<f32>(-1547f, -160f, -1036f, 813f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1862f, 633f, 659f, -246f))), true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), true)))), ~(~(~u_input.b) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(34305u, u_input.b, u_input.b, u_input.b)), vec4<u32>(4294967295u, 56464u, 1u, 79108u)) % 32u)), !(any(vec4<bool>(false, false, false, false)) & (-2147483647i < u_input.c.x)) | true, select(~0u >= (u_input.b >> (u_input.b % 32u)), false, u_input.a <= _wgslsmith_mod_i32(2147483647i, -24996i)) == all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b != u_input.b)), -_wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(_wgslsmith_mod_i32(-36344i, u_input.a), u_input.a)));
    var_0 = var_1.c;
    var var_2 = u_input.a;
    let var_3 = Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(abs(575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) + var_1.a.x), var_1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, var_1.b, ~u_input.b), vec3<u32>(1u, 37006u, 0u)), any(!vec3<bool>(all(vec2<bool>(true, var_1.d)), all(vec2<bool>(var_1.c, true)), true)), (true & (_wgslsmith_div_f32(359f, -1818f) < var_1.a.x)) | all(select(vec4<bool>(true, true, false, false), !vec4<bool>(var_1.d, true, false, var_1.c), !vec4<bool>(var_1.d, true, var_1.c, false))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(countOneBits(14146u), 1u), var_1.b ^ ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 32112u), var_1.b));
}

