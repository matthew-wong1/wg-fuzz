struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    var var_0 = vec3<bool>(abs(abs(abs(-2147483647i))) >= u_input.a.x, false, !(false | !(arg_0.b.x | arg_0.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.d.b, arg_0.d.b))) * vec2<f32>(arg_0.d.b, 324f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-960f, _wgslsmith_f_op_f32(f32(-1f) * -668f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2027f, arg_0.d.b), vec2<f32>(-243f, arg_0.d.b)))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b)), _wgslsmith_f_op_f32(step(arg_0.d.b, 1495f)));
    let var_3 = arg_0;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-var_4.d.b);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(-587f, _wgslsmith_f_op_f32(step(-956f, 571f)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(ceil(-586f))) + _wgslsmith_f_op_f32(1000f * var_0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(0u, vec4<bool>(false, true, false, true), 2319f, Struct_1(4294967295u, -1252f, arg_1, vec4<u32>(arg_1, var_1, 1u, u_input.b), vec4<i32>(-2147483647i, 1i, 0i, -19832i))), vec3<u32>(var_1, var_1, var_1))))))));
    let var_3 = Struct_2(arg_1, !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), 1262f >= var_0), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, select(true, false, true), true, true)), 1841f, Struct_1(_wgslsmith_mult_u32(arg_1, 10746u), var_0, _wgslsmith_sub_u32(0u & arg_1, ~0u), abs(vec4<u32>(~u_input.b, ~u_input.b, 0u & arg_1, arg_1)), _wgslsmith_div_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1720i, arg_0.x, u_input.a.x), vec4<i32>(2147483647i, 1i, 2147483647i, -1i)), -vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 38867i, u_input.a.x, arg_0.x) ^ vec4<i32>(arg_0.x, arg_0.x, -2147483647i, 56061i), vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, -2147483647i)))));
    let var_4 = -(~arg_0);
    return _wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1396f, true))), var_3.d.b) + _wgslsmith_f_op_f32(-arg_2.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(arg_0.c + var_0.c), vec3<u32>(var_0.d.c, _wgslsmith_mod_u32(arg_0.d.d.x >> (u_input.b % 32u), 1u), 4294967295u), arg_2);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-107f - var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_1.c.e.wyz, 4294967295u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, -129f, arg_0.d.b, var_1.c.b))))), var_1.c.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 1f, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, arg_0.c, var_1.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1578f, 1233f, 637f) * vec3<f32>(arg_2.b, 302f, var_0.c)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1314f, arg_0.d.b, -286f)), vec3<f32>(1000f, 256f, 571f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-451f + -1859f), 335f, _wgslsmith_f_op_f32(485f - arg_0.d.b)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -1246f, -1263f) + vec3<f32>(113f, -572f, var_1.c.b)))))));
    var var_4 = arg_0.d.c;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(abs(arg_0.d.b))) * arg_0.d.b) - _wgslsmith_f_op_f32(arg_0.d.b * 147f)), _wgslsmith_f_op_f32(var_1.c.b * _wgslsmith_f_op_f32(f32(-1f) * -936f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-429f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837f * 638f) - -915f)), 649f)));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_2 = -629f;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(u_input.b, vec4<bool>(false, true, true, true), -664f, Struct_1(u_input.b, var_0.x, 25895u, vec4<u32>(u_input.b, 38260u, u_input.b, 0u), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<bool>(false, false, true, false), Struct_1(4294967295u, var_0.x, 1u, vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<i32>(23023i, -6916i, 2147483647i, 2147483647i)), vec3<i32>(-62115i, -18368i, 2147483647i)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 324f), vec2<f32>(-578f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -227f) + vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1440f, 1271f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1287f, var_0.x) - vec2<f32>(1804f, 1000f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = Struct_3(165f, min(~vec3<u32>(4294967295u, _wgslsmith_mod_u32(1u, 87042u), 68976u), select(~(~vec3<u32>(1u, 3940u, 466u)), select(max(vec3<u32>(u_input.b, 1u, 32826u), vec3<u32>(u_input.b, u_input.b, 83099u)), select(vec3<u32>(u_input.b, u_input.b, 25265u), vec3<u32>(u_input.b, 0u, u_input.b), false), vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, false)))), Struct_1(u_input.b, 1420f, _wgslsmith_clamp_u32(firstTrailingBit(~1u), ~_wgslsmith_mult_u32(9392u, u_input.b), u_input.b), vec4<u32>(u_input.b, u_input.b, ~max(u_input.b, u_input.b), u_input.b), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, -23150i, u_input.a.x), vec4<i32>(u_input.a.x, -1738i, u_input.a.x, 0i)) ^ firstLeadingBit(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22295u, 89668u, 1u), var_3.b), ~var_3.c.d.zxz)), max(~vec3<u32>(5196u, 53479u, 48591u), var_3.b)), firstTrailingBit(vec2<i32>(-2147483647i, -abs(2904i))));
}

