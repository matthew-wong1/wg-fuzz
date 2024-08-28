struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(f32(-1f) * -2011f)), _wgslsmith_f_op_f32(var_0 * var_0)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(-(~vec2<i32>(1i, arg_1)), vec2<i32>(-2147483647i, 35787i) | vec2<i32>(1i, arg_1)), ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, arg_2), vec2<i32>(arg_1, 1i)), reverseBits(vec2<i32>(-1i, 1i))), firstTrailingBit(~vec2<i32>(arg_2, arg_1))));
    let var_1 = u_input.c.xy;
    let var_2 = var_0;
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(f32(-1f) * -429f))), _wgslsmith_f_op_f32(-718f - 2205f)));
    var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.a.x + 918f)))))));
    return vec2<f32>(var_3.a.x, var_3.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + 1150f);
    var var_1 = Struct_1(any(vec4<bool>(all(vec3<bool>(false, true, false)) == false, true, any(vec4<bool>(true, true, true, true)), 50057i < _wgslsmith_clamp_i32(-37810i, 2147483647i, 1i))));
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-521f, arg_1.x))))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1151f, -1503f), arg_1, false)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(643f + arg_0), -375f)))));
    var var_4 = ~u_input.c.x;
    return Struct_1(true);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = func_4(arg_2, _wgslsmith_f_op_vec2_f32(func_2(arg_0, 0i, -1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -282f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -219f), vec2<f32>(-778f, -516f)))) + vec2<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 * arg_2)))));
    var var_2 = Struct_2(var_1.a);
    let var_3 = u_input.c.yy;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, var_2.a.x))) + var_1.a));
    return !select(select(vec2<bool>(arg_1, -690f >= var_1.a.x), !(!vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(true, false))), select(vec2<bool>(all(vec2<bool>(arg_1, arg_0)), !arg_1), vec2<bool>(true && arg_1, arg_1), vec2<bool>(var_0.a, true)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-177f * 1939f)))) < 1962f, true, 1218f);
    var var_1 = func_4(1019f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1645f, 650f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(412f)), 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-513f, -797f))), vec2<f32>(-1000f, 1377f), !vec2<bool>(var_0.x, var_0.x))))));
    let var_2 = vec2<i32>(-1i) * -reverseBits(max(~vec2<i32>(1i, -1i), ~vec2<i32>(46311i, -46906i)));
    var var_3 = _wgslsmith_f_op_f32(func_3());
    var var_4 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -293f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_0.x, var_2.x, 1i)).x + _wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f + -614f)))));
    var var_5 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(933i, ~17035i, _wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x), -31252i), vec4<i32>(var_2.x, _wgslsmith_add_i32(countOneBits(32296i), i32(-1i) * -18443i), var_2.x, ~(var_2.x | 0i))), firstTrailingBit(vec4<i32>(var_2.x, var_2.x, 0i & var_2.x, select(6896i, var_2.x, var_4.a))) & vec4<i32>(1257i, abs(4717i), _wgslsmith_sub_i32(~36225i, ~var_2.x), ~(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(select(select(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -11693i), var_0.x), vec2<i32>(var_2.x, var_2.x) & vec2<i32>(-1i, var_2.x), all(vec3<bool>(true, var_4.a, true))), max(vec2<i32>(var_2.x, var_2.x), var_2 & var_2)), vec3<i32>(var_2.x >> (0u % 32u), 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, -13218i), vec4<i32>(var_2.x, var_2.x, 64347i, 2147483647i)) << (vec4<u32>(u_input.c.x, 34006u, 21672u, 54360u) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-8053i, var_2.x, -2147483647i, var_2.x), vec4<i32>(var_2.x, 77687i, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2007f, -649f, -1296f, 111f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-959f, 2370f, -1644f, 1191f))), select(vec4<bool>(false, var_0.x, var_0.x, var_1.a), vec4<bool>(var_0.x, false, false, false), var_4.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1600f, 1391f, 1490f, -1155f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, 1087f, 2447f, -1413f)))))));
}

