struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    let var_0 = !(arg_1.c.x & arg_1.c.x);
    var var_1 = Struct_2(vec3<i32>(u_input.b.x & (29869i << (1u % 32u)), 1i, 2147483647i), arg_2.x, Struct_1(vec4<i32>(u_input.d, 35694i, reverseBits(_wgslsmith_clamp_i32(-9970i, -8025i, u_input.b.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), arg_1.a.ww)), _wgslsmith_add_vec4_u32(arg_1.b, arg_1.b), vec2<bool>(!var_0, all(!vec3<bool>(true, var_0, false)))));
    var_1 = Struct_2(_wgslsmith_div_vec3_i32(~(~arg_1.a.zyw), abs(u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(ceil(var_1.b)))))), var_1.c);
    var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -var_1.c.a.xxz, -vec3<i32>(-1i, u_input.d, arg_1.a.x)), arg_1.a.yxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(round(-377f))) - _wgslsmith_f_op_f32(round(var_1.b)))), arg_1);
    var var_2 = arg_1;
    return 108508u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(_wgslsmith_sub_i32(10492i, u_input.d)), abs(-3567i), -56813i, ~_wgslsmith_clamp_i32(u_input.d, 19844i, u_input.b.x)), reverseBits(select(vec4<i32>(9691i, u_input.d, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a, 17208u, u_input.c, 8389u) % vec4<u32>(32u)), vec4<i32>(38308i, 0i, u_input.d, 1i), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))))), vec4<u32>(1u, ~(~min(1u, u_input.a)), 95059u, 4294967295u), vec2<bool>(true, true));
    let var_1 = Struct_1(var_0.a, vec4<u32>(max(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 8265u), var_0.b.wzw, vec3<u32>(50296u, 38279u, 798u)), Struct_1(var_0.a, var_0.b, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, -757f, 463f)), _wgslsmith_f_op_f32(f32(-1f) * -1180f)), max(_wgslsmith_mult_u32(49227u, var_0.b.x), 63842u)), ~(~(69451u | u_input.a)), var_0.b.x, ~(~max(u_input.c, var_0.b.x))), select(!(!select(var_0.c, var_0.c, var_0.c.x)), !select(!var_0.c, var_0.c, vec2<bool>(true, true)), !var_0.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-997f - _wgslsmith_f_op_f32(289f + -142f)))), -342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(876f + -1673f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1664f * 233f), _wgslsmith_f_op_f32(871f - -1596f))))), -1329f);
    let var_3 = Struct_2(var_1.a.zzz, 1684f, Struct_1(-(~(-vec4<i32>(8918i, var_1.a.x, u_input.d, 2147483647i))), var_1.b, select(!var_0.c, select(var_0.c, var_0.c, vec2<bool>(var_0.c.x, false)), !var_0.c)));
    var_0 = Struct_1(vec4<i32>(~19685i, _wgslsmith_mod_i32(var_3.a.x, select(_wgslsmith_mult_i32(12761i, u_input.d), firstLeadingBit(var_0.a.x), !var_0.c.x)), var_3.a.x, -min(-2147483647i, -43226i) ^ var_1.a.x), vec4<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.c.b.x, var_1.b.x), var_3.c.b.xx), _wgslsmith_mod_u32(52715u, ~0u), ~u_input.a) >> (~var_3.c.b % vec4<u32>(32u)), vec2<bool>(all(vec3<bool>(var_1.c.x, var_1.c.x, var_3.c.c.x)) && true, var_1.c.x));
    return Struct_2(vec3<i32>(-6620i, var_0.a.x, countOneBits(1i)) ^ var_0.a.zyy, var_3.b, var_1);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(arg_1.a.zwy, 1006f, arg_1);
    let var_1 = ~vec4<u32>(arg_1.b.x, arg_0, ~abs(0u), arg_1.b.x);
    var var_2 = 502f;
    var var_3 = ~(4294967295u | min(1u, var_1.x));
    var_0 = func_2();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))))), var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(_wgslsmith_mult_u32(~(~u_input.c), u_input.a), u_input.a, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(u_input.c, Struct_1(-reverseBits(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -13552i)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, u_input.c, u_input.c ^ 20389u), vec4<u32>(u_input.a, _wgslsmith_div_u32(39883u, 4294967295u), ~25694u, u_input.c)), vec2<bool>(true, true))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(330f)))), _wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1450f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 280f), _wgslsmith_f_op_f32(-var_1.x)))))));
    var var_2 = vec3<i32>(max(_wgslsmith_add_i32(10532i, u_input.d | firstLeadingBit(u_input.d)), 0i), u_input.d, -1i);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))))));
}

