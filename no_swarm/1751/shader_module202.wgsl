struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = -(~(reverseBits(vec4<i32>(38986i, u_input.d.x, 0i, u_input.d.x)) | -vec4<i32>(u_input.a, u_input.b.x, 3397i, u_input.b.x)));
    let var_1 = any(select(select(vec4<bool>(true, true, true, u_input.c < 16114u), vec4<bool>(false, true, all(vec3<bool>(true, false, true)), -1560f < arg_1), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), select(vec4<bool>(true, false, true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f * -857f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) - var_2))), _wgslsmith_f_op_f32(ceil(var_2))) + _wgslsmith_div_vec2_f32(vec2<f32>(-596f, 703f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1481f)))));
    var var_4 = firstLeadingBit(arg_2 >> (~(_wgslsmith_clamp_u32(arg_2, 11945u, 3397u) | ~arg_0) % 32u));
    return 801f;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(func_3(u_input.c, _wgslsmith_f_op_f32(504f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1088f - -433f))), ~4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-603f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f + 742f)), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) - -1463f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -2200f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1647f, -376f, -1016f), vec4<f32>(993f, 336f, -1308f, 343f))), vec4<f32>(924f, -2973f, 1006f, -1296f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(692f, 865f, -799f, 1377f) + vec4<f32>(1000f, -880f, 1472f, -1884f)), vec4<f32>(972f, -1000f, 566f, 1647f)))))));
    var var_1 = _wgslsmith_sub_i32(~u_input.b.x, -2147483647i);
    let var_2 = ~_wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, 2999i, 0i, -14735i) & (vec4<i32>(58680i, u_input.b.x, u_input.d.x, 0i) ^ vec4<i32>(609i, u_input.a, u_input.a, -1i))) ^ ((vec4<i32>(2147483647i, 15164i, -2147483647i, u_input.a) >> (vec4<u32>(u_input.e, 15684u, u_input.e, u_input.e) % vec4<u32>(32u))) << (~vec4<u32>(20780u, 0u, u_input.c, u_input.e) % vec4<u32>(32u))), abs(vec4<i32>(-1i) * -vec4<i32>(27337i, u_input.b.x, -24617i, u_input.d.x)));
    var_1 = var_2;
    var var_3 = vec4<i32>(var_2, ~(-1i), 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, -37326i)), -u_input.d.yy), u_input.b.x)) | vec4<i32>(select(~(i32(-1i) * -2147483647i), i32(-1i) * -36628i, true), i32(-1i) * -13782i, (u_input.d.x >> (u_input.c % 32u)) ^ ~(-2147483647i), (~6230i | _wgslsmith_mult_i32(var_2, 0i)) ^ 1i);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(525f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f)) - _wgslsmith_f_op_f32(440f + _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_clamp_u32(firstLeadingBit(1u), max(u_input.e, 1u), ~u_input.c) != countOneBits(~23351u))), _wgslsmith_f_op_f32(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(4294967295u, func_1(), Struct_1(_wgslsmith_f_op_f32(1275f + _wgslsmith_f_op_f32(-187f * 231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f))), select(vec4<bool>(all(vec2<bool>(false, true)), false, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)))));
    let var_1 = true;
    var_0 = Struct_3(u_input.e, Struct_1(var_0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.a, var_0.c.b, u_input.c))))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f * var_0.c.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a + -334f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-436f)) - func_1().b))), select(vec4<bool>(false, !(var_0.d.x && var_0.d.x), all(var_0.d), false), !var_0.d, !select(var_0.d, select(var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d.x, false, true, true))));
    var_0 = Struct_3(_wgslsmith_div_u32(countOneBits(countOneBits(var_0.a)), 3728u), func_1(), func_1(), vec4<bool>(!var_0.d.x, all(var_0.d.wz), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 12781u), vec2<u32>(25955u, var_0.a)) < ~(6778u >> (var_0.a % 32u)), false));
    let var_2 = vec3<i32>(select(1i, min(~(-16299i), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1156f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(375f)))), countOneBits(abs(_wgslsmith_mult_i32(max(-48725i, u_input.b.x), -2174i))), -24037i);
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(~(vec4<u32>(var_0.a, u_input.c, var_0.a, 1u) ^ vec4<u32>(u_input.e, 710u, 1u, u_input.e))), vec4<u32>(1u, 0u, u_input.e, var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(83202u, var_0.c.a, u_input.c)) + var_3.a)), var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -954f)), i32(-1i) * -select(_wgslsmith_dot_vec4_i32(vec4<i32>(-19436i, u_input.d.x, var_2.x, 2147483647i), vec4<i32>(1019i, u_input.b.x, -2147483647i, var_2.x)), u_input.a, true));
}

