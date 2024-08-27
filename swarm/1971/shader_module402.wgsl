struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 810f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -716f)))))));
    var_0 = 1174f;
    let var_1 = _wgslsmith_f_op_f32(step(564f, -1000f));
    var var_2 = arg_1;
    return 1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(2147483647i, countOneBits(_wgslsmith_clamp_i32(~arg_1, min(arg_1, 2147483647i), max(arg_1, -1i))), func_3(Struct_1(-vec3<i32>(1i, -8199i, arg_1)), u_input.e.x, Struct_1(u_input.a.yzx))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1878f, -340f, 898f), vec3<f32>(-1339f, -1000f, -851f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(926f, 422f, 550f))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-178f - 311f), -854f, _wgslsmith_f_op_f32(ceil(775f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2006f, 651f, -243f) * vec3<f32>(-983f, 1000f, -990f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)))));
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.a, countOneBits(abs(u_input.a) ^ ~(-u_input.a)));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2078f, _wgslsmith_f_op_f32(-1367f + -2352f))))), vec3<f32>(879f, 1012f, var_1.x), false));
    let var_3 = -1150f;
    return Struct_1(var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_2(vec3<u32>(1u & u_input.e.x, 0u, ~u_input.b.x), func_3(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -36189i, 7942i) & vec3<i32>(u_input.a.x, var_0.a.x, u_input.d.x), -var_0.a)), u_input.e.x, func_2(~(~u_input.c.zxx), reverseBits(-32765i) >> (u_input.e.x % 32u))));
    var_0 = func_2(_wgslsmith_div_vec3_u32(vec3<u32>(54076u, u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(3041u, 1u, u_input.b.x), max(u_input.b.zwx, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.e.x, 1u, 95842u | u_input.c.x), ~u_input.c.yyz)), var_0.a.x & func_3(var_1, u_input.b.x, Struct_1(vec3<i32>(u_input.a.x, -30243i, var_0.a.x))));
    var var_2 = Struct_2(true, arg_0, reverseBits((var_1.a.zy ^ -vec2<i32>(arg_1.a.x, var_0.a.x)) ^ (vec2<i32>(8511i, -1i) << (u_input.e % vec2<u32>(32u)))), Struct_1(max(~vec3<i32>(-10333i, u_input.a.x, 2147483647i), ~(var_1.a ^ arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f - -934f) * -460f));
    var var_3 = true;
    return var_2.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = ~(~(~u_input.b.wzy));
    var var_1 = func_4((var_0.x << (0u % 32u)) <= firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 26635u), vec3<u32>(var_0.x, var_0.x, var_0.x))), func_2(vec3<u32>(~_wgslsmith_clamp_u32(46857u, var_0.x, var_0.x), u_input.c.x, u_input.e.x), _wgslsmith_div_i32(countOneBits(-2147483647i), ~_wgslsmith_mod_i32(14100i, arg_0.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x >> (select(0u, 15682u, false) % 32u), max(-2147483647i, u_input.a.x), -13850i), u_input.a));
    var var_2 = Struct_1(countOneBits(min(vec3<i32>(countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(arg_0.zz, arg_3), _wgslsmith_add_i32(37455i, u_input.a.x)), u_input.d >> (max(vec3<u32>(u_input.b.x, var_0.x, u_input.e.x), var_0) % vec3<u32>(32u)))));
    let var_3 = all(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), var_0.x != 1u, var_2.a.x == arg_3.x)));
    var_2 = Struct_1(~_wgslsmith_add_vec3_i32(max(vec3<i32>(arg_3.x, var_2.a.x, 0i), vec3<i32>(-24944i, u_input.d.x, arg_3.x)), u_input.a.www) ^ ~_wgslsmith_sub_vec3_i32(~u_input.d, _wgslsmith_mod_vec3_i32(var_1.a, arg_0)));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2320f)))))), -552f, _wgslsmith_f_op_f32(sign(319f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(656f - _wgslsmith_f_op_f32(256f * 308f)), 2031f)));
    let var_1 = firstTrailingBit(~(~vec4<u32>(60076u, ~0u, ~u_input.b.x, ~45553u)));
    var_0 = vec4<f32>(-1108f, var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(~vec3<i32>(u_input.d.x, 0i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.a.x, -24717i) | vec3<i32>(-1i, -2147483647i, 115255i), vec3<bool>(false, true, true)), var_0.wx, vec4<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(round(-281f)), _wgslsmith_f_op_f32(-1000f * var_0.x)), -(u_input.d.xy | vec2<i32>(0i, -1i))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-554f * -1064f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, -264f)))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) - -481f)));
    var var_2 = u_input.e.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-579f + 811f), _wgslsmith_f_op_f32(f32(-1f) * -455f), var_0.x, -561f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -105f, var_0.x, var_0.x)))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, -267f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + 2162f)), _wgslsmith_f_op_f32(func_1(u_input.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -235f), vec2<f32>(144f, var_0.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, 248f, -542f, var_0.x)), ~vec2<i32>(u_input.a.x, -1i))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(-(~9369i), u_input.d.x, firstLeadingBit(abs(u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(250f, var_0.x) * vec2<f32>(352f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, 1152f)), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(var_0.yz * _wgslsmith_f_op_vec2_f32(-var_0.zy))), vec4<f32>(212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.xxy, var_0.yz, vec4<f32>(440f, -1904f, var_0.x, var_0.x), u_input.a.xz)) - -321f), 317f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(925f, 1391f)))), ~vec2<i32>(i32(-1i) * -7048i, 1i))), -216f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(-435f, _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-2087f * _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = 1f;
    var var_4 = func_4(false, Struct_1(-u_input.d), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.d), u_input.b.x, 1u << (u_input.e.x % 32u));
}

