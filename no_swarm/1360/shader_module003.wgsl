struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = ~vec4<u32>(~arg_0.x, arg_0.x ^ arg_0.x, ~(~u_input.a), firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a)));
    var var_1 = Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, arg_1, 0i, 1i), vec4<i32>(2733i, arg_1, arg_1, -28201i)), var_0, vec3<f32>(1f, 1f, 1f)), Struct_1(~70305i, vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.wyw, var_0.zzx), _wgslsmith_sub_vec3_u32(var_0.wxz, var_0.xzw)), arg_0.x, ~u_input.a), vec3<f32>(-1052f, _wgslsmith_f_op_f32(-952f - -1468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1661f - 1349f)))), Struct_1(~firstLeadingBit(arg_1), var_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-962f, -612f, 1510f), vec3<f32>(-277f, 1618f, -330f))))), abs(arg_1));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-383f, var_1.c.c.x) - var_1.c.c.yy))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(var_1.a.c.x + var_1.c.c.x)) * var_1.c.c.xx)));
    var var_3 = var_1.b;
    let var_4 = Struct_4(all(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, false), true)), -26544i);
    return arg_0.x;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(~(~32387u & ~u_input.a), ~_wgslsmith_div_u32(1u, 4294967295u)));
    let var_1 = u_input.a;
    var var_2 = Struct_2(Struct_1(1i, _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(arg_0.x, 0u, arg_0.x, var_1)), vec4<u32>(func_3(arg_0.xx, -20676i), 4294967295u & u_input.a, 60201u, 39153u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, -676f, 886f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2948f, 373f, 432f)))))), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-3377i, 45441i), vec2<i32>(-45824i, 12599i), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(21741i, -6761i))), _wgslsmith_add_vec2_i32(vec2<i32>(-17106i, 2147483647i), firstTrailingBit(vec2<i32>(-24282i, 1i)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_0.x), vec4<u32>(32804u, 9238u, u_input.a, 60265u)), min(~vec4<u32>(arg_0.x, arg_0.x, u_input.a, arg_0.x), ~vec4<u32>(36957u, var_1, 70399u, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2627f, 1829f, -1109f))) + vec3<f32>(_wgslsmith_f_op_f32(-1000f + -435f), _wgslsmith_f_op_f32(min(-916f, 715f)), _wgslsmith_f_op_f32(max(-1435f, -410f))))), Struct_1(firstTrailingBit(~23406i) | _wgslsmith_mult_i32(1i, countOneBits(38977i)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a | 46467u, _wgslsmith_mult_u32(18758u, 1u), 4294967295u), vec4<u32>(~1u, ~1u, ~u_input.a, ~u_input.a)), vec3<f32>(-739f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f - -1067f)))), 4018i >> (var_1 % 32u));
    return var_2.a.c.x;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0, 45598u, 63928u), vec3<u32>(var_0, 35491u, 54508u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-460f, 1192f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(546f - 196f), 1f)))));
    var var_2 = Struct_2(Struct_1(11476i, select(~(~vec4<u32>(1u, 1u, 4294967295u, var_0)), reverseBits(reverseBits(vec4<u32>(1u, 27929u, 1u, 4294967295u))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1074f, 2232f, -526f))))), Struct_1(_wgslsmith_add_i32(1i, -_wgslsmith_add_i32(0i, -4134i)), min(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 121842u), vec2<u32>(1u, 47574u)), u_input.a ^ 7828u, u_input.a, ~u_input.a), vec4<u32>(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_clamp_u32(u_input.a, 6808u, 80563u), 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1130f, -770f, true)), -308f, _wgslsmith_f_op_f32(sign(-2097f))))), Struct_1(firstTrailingBit(i32(-1i) * -1i), vec4<u32>(select(u_input.a, 1u, true), u_input.a, ~63027u, 0u ^ u_input.a) & vec4<u32>(~var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 25743u), vec3<u32>(4294967295u, u_input.a, 1u)), abs(u_input.a), 0u), vec3<f32>(-289f, -1835f, _wgslsmith_div_f32(1192f, 1025f))), 1i);
    var var_3 = _wgslsmith_f_op_f32(var_2.c.c.x * var_2.a.c.x);
    var var_4 = Struct_4(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), 242f > _wgslsmith_f_op_f32(floor(473f)))), var_2.c.a);
    return Struct_2(var_2.c, Struct_1(var_2.c.a, vec4<u32>(var_0, abs(u_input.a), u_input.a, 1u) ^ vec4<u32>(~var_2.c.b.x, countOneBits(18298u), 104837u, var_2.a.b.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.c.x, var_2.b.c.x, -151f)))), var_2.a, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.a.a), select(vec2<i32>(1i, 36485i), vec2<i32>(-1332i, 2147483647i), var_4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(-var_0.b.a, func_1().c.a, var_0.b.a, var_0.d) | ~(_wgslsmith_mult_vec4_i32(~vec4<i32>(-64950i, 2147483647i, var_0.d, -19671i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -9968i, 0i, var_0.d), vec4<i32>(-2669i, 1i, var_0.b.a, -1i))) >> (func_1().a.b % vec4<u32>(32u)));
    let var_2 = ~_wgslsmith_mod_vec3_u32(var_0.c.b.zzz, var_0.b.b.zzx);
    var_0 = func_1();
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)), -586f));
    let var_4 = Struct_3(abs(countOneBits(~vec4<i32>(-27645i, -19771i, var_0.a.a, 16916i)) << (max(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) | vec4<u32>(24236u, 63667u, u_input.a, 55089u), var_0.a.b) % vec4<u32>(32u))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_1.x), _wgslsmith_sub_vec2_i32(var_4.a.xy, vec2<i32>(-1i, var_0.a.a)))));
}

