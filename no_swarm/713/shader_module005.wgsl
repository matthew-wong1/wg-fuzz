struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = ~(i32(-1i) * -1i);
    var_0 = Struct_1(~arg_3.x, ~vec4<u32>(~1u, 1u, 0u, var_0.b.x));
    return arg_3.zw;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_2.a.b.wy;
    var_0 = max(~func_3(arg_2.b.x, Struct_4(vec2<bool>(arg_0, arg_0)), Struct_2(arg_2.a, vec2<i32>(arg_2.b.x, arg_3.x)), vec4<u32>(arg_2.a.a, ~0u, arg_2.a.b.x, ~arg_2.a.a)), vec2<u32>(206u, firstLeadingBit(var_0.x)));
    var_0 = abs(vec2<u32>(func_3(arg_3.x, Struct_4(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0))), arg_2, ~(~arg_2.a.b)).x, 1u));
    return u_input.b;
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~48943u, max(44342u, u_input.a.x)), 83482u, 1960u, 1u), vec4<u32>(0u ^ func_2(false, vec3<i32>(43002i, 2147483647i, -2147483647i), Struct_2(Struct_1(2590u, vec4<u32>(0u, u_input.a.x, u_input.b, 4294967295u)), vec2<i32>(23156i, 46739i)), vec3<i32>(-4631i, 1i, 15062i)), abs(1955u), 4294967295u, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))) << (vec4<u32>(~_wgslsmith_mod_u32(select(1u, u_input.b, false), 37962u), ~_wgslsmith_div_u32(~25829u, u_input.a.x ^ 41568u), u_input.a.x << (30431u % 32u), _wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u)) % vec4<u32>(32u));
    let var_1 = -69157i;
    let var_2 = select(vec3<bool>(0u <= var_0.x, false, !(!any(vec2<bool>(false, false)))), vec3<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(486f, 143f)), -349f)) == _wgslsmith_f_op_f32(select(-1733f, _wgslsmith_f_op_f32(486f - -1626f), any(vec2<bool>(false, false)))), true), ~var_0.x != u_input.b);
    let var_3 = countOneBits(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(12767i, var_1), -1i, min(var_1, 2147483647i), ~var_1));
    var var_4 = all(vec2<bool>(true, true));
    return var_0.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~vec3<u32>(u_input.b, abs(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 20025u)) | ~(func_1() >> (~vec3<u32>(4294967295u, 0u, u_input.a.x) % vec3<u32>(32u))), Struct_1(func_1().x, countOneBits(vec4<u32>(107412u, ~u_input.b, 16378u | u_input.b, u_input.b))), Struct_2(Struct_1(u_input.a.x << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), max(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b) >> (vec4<u32>(u_input.b, 4803u, 0u, 0u) % vec4<u32>(32u)), select(vec4<u32>(8433u, u_input.b, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 55014u, u_input.a.x, u_input.b), true))), ~select(min(vec2<i32>(2147483647i, -41904i), vec2<i32>(9436i, -2147483647i)), -vec2<i32>(-19034i, -1i), u_input.a.x < u_input.b)), Struct_2(Struct_1(u_input.b, vec4<u32>(func_2(true, vec3<i32>(28056i, 31922i, 27279i), Struct_2(Struct_1(50498u, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26898u)), vec2<i32>(2147483647i, 26618i)), vec3<i32>(-1i, 52634i, -34616i)), 0u, 762u, ~44731u)), countOneBits(vec2<i32>(1i, ~2147483647i))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-33476i), 1i, 1i), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1861i, -35143i, 1i), vec3<i32>(2147483647i, 1i, -1i)), _wgslsmith_add_i32(2147483647i, -1i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1764f, -869f, 1317f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(163f * 1928f), -636f)), -691f, -1099f, _wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(abs(-1366f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, _wgslsmith_f_op_f32(f32(-1f) * -680f), -463f, -2106f)))));
    var var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.xzw - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-688f, -659f, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.yzx)))))) - _wgslsmith_f_op_vec3_f32(-var_1.zxz));
    var var_4 = Struct_3(var_0.a, Struct_1(min(var_0.d.a.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), min(~var_2.a.b, vec4<u32>(u_input.a.x, var_0.d.a.a, u_input.b, var_0.a.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1829u, 1u, var_0.b.a), vec4<u32>(u_input.b, var_2.a.a, var_2.a.b.x, 1854u)) % vec4<u32>(32u)))), Struct_2(Struct_1(9561u, firstTrailingBit(abs(var_0.b.b))), var_0.c.b), var_0.d, var_0.e);
    var_3 = _wgslsmith_f_op_vec3_f32(min(var_1.yww, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f - 777f) - -924f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * var_3.x)) * vec3<f32>(_wgslsmith_f_op_f32(floor(926f)), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-360f, var_3.x))))))));
    var var_5 = ~firstTrailingBit(max(_wgslsmith_add_vec4_i32(-vec4<i32>(var_4.c.b.x, var_0.e.x, var_2.b.x, var_2.b.x), ~vec4<i32>(-31066i, var_0.d.b.x, -54653i, 1i)), vec4<i32>(-6894i, ~3011i, _wgslsmith_mod_i32(var_2.b.x, 1i), var_4.e.x)));
    let var_6 = vec4<i32>(_wgslsmith_add_i32(2147483647i, ~(-2147483647i >> (var_4.a.x % 32u)) >> (var_0.c.a.a % 32u)), var_4.c.b.x, var_5.x, _wgslsmith_add_i32(71896i, var_2.b.x));
    let var_7 = vec2<bool>(true, select(false, false, any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(var_6, firstTrailingBit(vec4<i32>(var_4.d.b.x, var_6.x, var_0.d.b.x, 0i) & countOneBits(vec4<i32>(-1i, var_0.e.x, 1632i, 36689i)))));
}

