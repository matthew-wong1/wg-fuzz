struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = any(select(vec2<bool>(all(!vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x & arg_0.x), arg_0.xz, vec2<bool>(false, true || (2147483647i <= u_input.c.x))));
    var var_1 = Struct_2(~(~(abs(36868u) >> (abs(u_input.a.x) % 32u))), min(select(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, -1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 50456i)), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 28250i), vec4<bool>(true, arg_0.x, !arg_0.x, all(vec3<bool>(false, arg_0.x, arg_0.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, ~vec2<i32>(u_input.c.x, 21888i)), -(0i >> (u_input.d.x % 32u)), u_input.c.x, ~_wgslsmith_div_i32(u_input.c.x, u_input.c.x))), ~abs(arg_1.x));
    var var_2 = _wgslsmith_sub_vec3_u32(~u_input.d.zxy, u_input.d.wxw);
    var_1 = Struct_2(18470u, max(vec4<i32>(_wgslsmith_clamp_i32(~var_1.b.x, 41793i, i32(-1i) * -2147483647i), -u_input.c.x, u_input.c.x, _wgslsmith_add_i32(-var_1.b.x, reverseBits(31876i))), max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, 0i), countOneBits(var_1.b)), firstTrailingBit(var_1.b))), _wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec3_u32(~u_input.b, reverseBits(vec3<u32>(35357u, var_2.x, var_1.a) ^ vec3<u32>(var_2.x, var_1.c, 5107u)))));
    var_2 = ~(~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, var_1.a), u_input.b) | u_input.d.yyx)));
    return ~_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(8241u) >> (var_2.x % 32u), var_1.c, max(4294967295u, 1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1.x, u_input.b.x), min(u_input.b, vec3<u32>(74145u, var_1.c, 4294967295u))) ^ ~u_input.b);
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(~(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.d.zyz % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(4294967295u, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(21492i, 1i, 27093i)))) >> (func_3(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), vec2<u32>(u_input.b.x, abs(4294967295u >> (u_input.b.x % 32u)))) % vec3<u32>(32u));
    let var_1 = select(vec4<bool>(false, countOneBits(max(u_input.a.x, 1u)) <= 30762u, any(vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, true)))), any(vec2<bool>(true, all(vec3<bool>(true, false, true))))), vec4<bool>(true, true, true, true), vec4<bool>(false, true & (all(vec2<bool>(false, false)) | true), true, false));
    var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(select(1i, -1i, true), var_0.x), ~u_input.c.x, _wgslsmith_mult_i32(-17116i, -32112i) << (func_3(vec3<bool>(false, true, var_1.x), vec2<u32>(4294967295u, 20868u)).x % 32u)), max(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -2147483647i, 2147483647i), max(vec3<i32>(3145i, 33404i, -26645i), vec3<i32>(-13783i, 1i, -1i))) & vec3<i32>(-29286i, -1i, _wgslsmith_mult_i32(u_input.c.x, 16854i)), min(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(0i, 23482i, u_input.c.x), vec3<i32>(var_0.x, var_0.x, 0i)), vec3<i32>(25512i, 2147483647i, -11248i) ^ vec3<i32>(u_input.c.x, var_0.x, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 1i, 0i), vec3<i32>(-18597i, 4106i, -2147483647i), vec3<i32>(u_input.c.x, 38203i, 9251i))), min(vec3<i32>(16184i, -12205i, u_input.c.x) | vec3<i32>(u_input.c.x, var_0.x, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(941i, 23138i, 0i), vec3<i32>(u_input.c.x, var_0.x, -8878i))))));
    var var_2 = vec4<f32>(618f, -2223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1694f, -986f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f * -1000f) - _wgslsmith_f_op_f32(-401f - 1049f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1368f + -1053f)), _wgslsmith_f_op_f32(f32(-1f) * -1044f)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.xwy)))))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_2.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 249f) - vec2<f32>(var_2.x, 108f)))));
    return var_3.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = arg_2.a.x;
    let var_2 = arg_1.x;
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_f_op_f32(-func_2().a.x);
    return Struct_1(arg_2.b, arg_2.a);
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2141f, -213f, 1467f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1093f, -1497f, -2260f), vec3<f32>(-2178f, 175f, 149f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, 146f, -655f)), vec3<f32>(-165f, 685f, -1000f))))), func_4(u_input.c, max(select(~vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x), _wgslsmith_clamp_vec3_u32(u_input.b, u_input.d.yyx, vec3<u32>(4171u, 69149u, u_input.b.x)), false), u_input.b), func_2(), -_wgslsmith_mult_vec2_i32(u_input.c, ~vec2<i32>(u_input.c.x, 2147483647i))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-713f, -1303f, var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), _wgslsmith_f_op_vec3_f32(-var_0.a))), func_2());
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, -273f, -105f))))), func_2());
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(704f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2().b.x + 902f)))))));
    var_2 = var_1.a.x;
    return Struct_5(~_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -1i));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> vec2<f32> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2630f + -1023f)), _wgslsmith_f_op_f32(-1933f - _wgslsmith_f_op_f32(-1043f - 1874f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1011f, 103f, -777f)) * vec3<f32>(-1200f, -494f, 556f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(492f, 621f, -1000f) + vec3<f32>(-812f, -794f, -2382f)) + vec3<f32>(187f, 403f, 1111f))))), func_4(vec2<i32>(-28436i, arg_1.a), ~(_wgslsmith_mult_vec3_u32(u_input.d.zxx, vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x)) >> (_wgslsmith_div_vec3_u32(u_input.d.yxw, u_input.b) % vec3<u32>(32u))), func_4(select(vec2<i32>(arg_0.a, arg_1.a), u_input.c << (u_input.d.yx % vec2<u32>(32u)), vec2<bool>(false, var_0.x)), abs(u_input.b | u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-371f, 2239f))), vec2<f32>(-1214f, 544f)), u_input.c), vec2<i32>(0i, arg_1.a)));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1182f), -683f, var_1.b.a.x))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, var_0.x), var_0.x)))), func_2());
    var var_2 = vec2<bool>(var_0.x, false);
    var var_3 = vec4<bool>(true, !any(!select(vec2<bool>(false, var_2.x), vec2<bool>(false, false), true)), var_2.x, true);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1918f), 245f);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, 462f, -1578f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.x, arg_0.a.x) + vec3<f32>(arg_2.a.x, arg_2.a.x, 367f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_2.b.x))))))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(arg_2.b, arg_2.b)))), arg_2.b));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1069f - -1071f)) + arg_0.b.x), _wgslsmith_f_op_f32(ceil(func_2().a.x)), func_2().b.x), func_4(firstLeadingBit(~vec2<i32>(12913i, u_input.c.x)), ~u_input.d.wxw, func_4(reverseBits(u_input.c), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 107072u), u_input.b), u_input.d.yxz >> (u_input.d.xxz % vec3<u32>(32u))), var_0.b, ~firstTrailingBit(u_input.c)), firstTrailingBit(vec2<i32>(abs(arg_1), min(u_input.c.x, -2147483647i)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1407f)), _wgslsmith_f_op_f32(-250f * -278f), _wgslsmith_f_op_f32(select(arg_2.b.x, arg_0.a.x, true))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)))))), -2147483647i, func_2().b, Struct_2(1u, select(~(-vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x)), ~(vec4<i32>(u_input.c.x, arg_1, arg_1, u_input.c.x) ^ vec4<i32>(arg_1, arg_1, u_input.c.x, -1i)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), u_input.a.x), Struct_2(~(~u_input.d.x), vec4<i32>(-func_1().a, 0i, reverseBits(u_input.c.x ^ arg_1), u_input.c.x), 1u));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(floor(var_0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-683f, -729f, arg_0.b.x), var_0.a))))), Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(ceil(arg_0.b)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(148f)), _wgslsmith_f_op_f32(f32(-1f) * -657f))))));
    var_0 = Struct_3(var_0.a, var_0.b);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(func_5(Struct_5(~2147483647i), func_1())), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-582f, -309f)) - _wgslsmith_f_op_f32(max(243f, -1100f))), _wgslsmith_f_op_f32(f32(-1f) * -2086f))), u_input.c.x, func_4(u_input.c, vec3<u32>(u_input.d.x, max(u_input.b.x, u_input.d.x), u_input.d.x), func_2(), -max(~vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_add_vec2_i32(u_input.c, u_input.c))));
    var var_1 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, 584f))) * vec2<f32>(_wgslsmith_f_op_f32(-1180f - 644f), -1000f)), vec2<f32>(309f, _wgslsmith_f_op_f32(2758f + _wgslsmith_f_op_f32(f32(-1f) * -680f)))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2940i, 2147483647i, 1929i), vec4<i32>(0i, 37234i, -20428i, u_input.c.x)), u_input.c.x, ~6093i), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x) << (u_input.d.xzw % vec3<u32>(32u))), -(~u_input.c.x) >> (~_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.d.wy) % 32u)), func_2());
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1234f, _wgslsmith_f_op_f32(func_2().a.x - -1070f), 486f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-995f, 1000f, _wgslsmith_f_op_f32(sign(1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1679f, -932f, 371f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-888f, -175f, -499f)))))))));
    var_0 = 82213u;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -1188f), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec4<i32>(0i, countOneBits(-2147483647i), ~u_input.c.x, u_input.c.x & u_input.c.x), vec4<f32>(-766f, 447f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(916f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1799f)))), func_2().b.x), u_input.d);
}

