struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = 1u;
    let var_1 = 12190u;
    return 33438u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = arg_0.a;
    var var_1 = Struct_3(Struct_2(~vec4<u32>(var_0.x, select(1u, 36381u, true), arg_0.a.x | u_input.b, 1u), arg_0, select(vec4<bool>(arg_0.c, true, true, arg_0.c), !select(vec4<bool>(true, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, true, true, false), arg_0.c), vec4<bool>(true, false, false, all(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false)))), arg_0.c), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.b, 1u), vec4<u32>(var_0.x, 4294967295u, 36899u, arg_0.a.x) & var_0), -1742f, select(true, arg_0.c & arg_0.c, true) || true));
    var var_2 = Struct_3(var_1.a, Struct_1(vec4<u32>(var_0.x, countOneBits(abs(var_1.a.a.x)), func_3(Struct_3(Struct_2(arg_0.a, Struct_1(var_0, arg_2.x, var_1.b.c), var_1.a.c, true), var_1.b)) ^ firstLeadingBit(var_0.x), ~var_1.a.b.a.x ^ var_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1753f))), !arg_0.c));
    var_1 = Struct_3(var_2.a, var_1.a.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, var_2.a.b.b, _wgslsmith_f_op_f32(step(var_1.b.b, 143f)), -700f), _wgslsmith_f_op_vec4_f32(floor(arg_2)))))));
    return Struct_3(Struct_2(~countOneBits(arg_0.a), Struct_1(select(var_2.a.b.a, vec4<u32>(var_0.x, 0u, 1u, arg_0.a.x), select(var_1.a.c, vec4<bool>(false, var_1.a.d, arg_0.c, false), var_2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f - var_2.a.b.b)), (var_2.b.c && true) | all(vec3<bool>(var_1.a.d, var_1.b.c, var_2.a.c.x))), !var_1.a.c, ~var_0.x >= _wgslsmith_clamp_u32(u_input.d, 39254u, ~u_input.d)), Struct_1(vec4<u32>(~var_1.b.a.x, (u_input.d ^ 50262u) >> (firstLeadingBit(1u) % 32u), var_2.a.a.x, select(~38611u, arg_0.a.x, true)), -242f, var_1.b.c));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2(arg_0.b, u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-719f, -450f, 670f, arg_0.b.b)) - vec4<f32>(arg_0.b.b, arg_0.b.b, -532f, 637f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(step(arg_0.b.b, arg_0.b.b)), _wgslsmith_f_op_f32(floor(-619f)))))));
    let var_1 = _wgslsmith_clamp_i32(1i, countOneBits(2147483647i), _wgslsmith_mod_i32(-29229i, 18247i));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -691f))));
    let var_3 = ~min(select(var_1, -(~2147483647i), var_0.a.b.a.x <= (u_input.d ^ 4294967295u)), 53558i);
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-666f - _wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b)))), arg_0.b.b, 370f, 1348f)));
    return Struct_1(var_0.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_f32(-arg_0.b.b))), false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = arg_3.b;
    let var_2 = Struct_3(arg_0, arg_0.b);
    let var_3 = 1u;
    let var_4 = !vec4<bool>(all(!(!vec4<bool>(var_1.c, arg_1.c, var_2.a.d, false))), func_2(func_2(func_2(var_2.b, u_input.a.x, vec4<f32>(arg_1.b, var_0.a.b.b, 372f, -1767f)).a.b, max(60094i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -1112f, -198f, var_1.b))).a.b, -select(u_input.a.x, -25894i, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, var_1.b, arg_1.b, -1000f)) + vec4<f32>(298f, -295f, 839f, -1243f))).a.b.c, true, arg_0.d);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_3(func_4(Struct_2(vec4<u32>(u_input.b >> (4294967295u % 32u), u_input.d, ~1u, u_input.b), func_1(Struct_2(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.d, 19701u), 275f, true), vec4<bool>(false, true, false, false), true)), select(func_2(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.d), -669f, true), -2147483647i, vec4<f32>(-123f, -830f, -490f, -770f)).a.c, vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true), func_2(Struct_1(abs(vec4<u32>(0u, 4294967295u, 21869u, u_input.d)), -1278f, false), -u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, -1376f, 282f, 1269f)) * vec4<f32>(234f, -738f, 564f, 109f))).a.b, -vec3<i32>(u_input.a.x, countOneBits(0i), select(u_input.c, u_input.a.x, false)), Struct_3(func_2(Struct_1(vec4<u32>(90183u, 4294967295u, u_input.d, 0u), 1327f, false), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1050f, 493f, -299f, 593f) - vec4<f32>(-480f, -1153f, -419f, 201f))).a, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d, 0u, u_input.d), vec4<u32>(4294967295u, u_input.d, 4294967295u, 7974u)), _wgslsmith_div_f32(3188f, 245f), any(vec3<bool>(true, false, true))))), func_1(func_4(func_4(func_2(Struct_1(vec4<u32>(41628u, 4294967295u, 4294967295u, 1u), 625f, true), u_input.c, vec4<f32>(-1061f, -1125f, -1332f, -1235f)).a, func_1(Struct_2(vec4<u32>(u_input.d, u_input.b, 59515u, u_input.d), Struct_1(vec4<u32>(u_input.b, 1u, 2192u, u_input.d), 1945f, false), vec4<bool>(true, false, false, true), true)), max(vec3<i32>(u_input.c, 69i, 2147483647i), vec3<i32>(0i, 8035i, -47268i)), Struct_3(Struct_2(vec4<u32>(u_input.d, u_input.b, 4294967295u, u_input.d), Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.d, 11476u), -1724f, true), vec4<bool>(true, false, false, false), false), Struct_1(vec4<u32>(0u, 1u, 0u, 36712u), -313f, false))), func_2(func_2(Struct_1(vec4<u32>(u_input.b, 86504u, u_input.d, 1u), 326f, true), 0i, vec4<f32>(-1142f, 524f, 452f, -486f)).b, select(u_input.a.x, u_input.c, true), vec4<f32>(1f, 1f, 1f, 1f)).a.b, firstLeadingBit(vec3<i32>(-1i, 0i, 1i) >> (vec3<u32>(u_input.d, 1u, 4294967295u) % vec3<u32>(32u))), func_2(Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.d, 35531u), -1000f, false), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, -1000f, -767f, 465f) + vec4<f32>(1000f, 394f, 400f, -1044f))))));
    let var_2 = var_1.a.c.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32((select(2147483647i, u_input.c, var_1.b.c) | abs(u_input.c)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 1u), var_1.b.a) % 32u), u_input.c));
}

