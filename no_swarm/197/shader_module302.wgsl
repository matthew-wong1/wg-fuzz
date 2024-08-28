struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f - -440f)))), 1f, _wgslsmith_div_f32(-751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-533f, 1078f)) - -570f))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1497f, 1483f))))), _wgslsmith_f_op_f32(abs(2111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1129f - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-214f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(767f, 253f, -122f))) + vec3<f32>(-507f, -907f, var_0.x)) * vec3<f32>(-1669f, _wgslsmith_f_op_f32(var_0.x * 807f), _wgslsmith_div_f32(621f, -1000f))))));
    var var_1 = Struct_1(u_input.a, select(-u_input.a.x, 25285i, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * 1358f))) + -555f), u_input.e, 57529u);
    var_1 = Struct_1(-var_1.a, _wgslsmith_clamp_i32(0i, firstTrailingBit(~var_1.a.x), var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), countOneBits(4294967295u | var_1.e), 54508u);
    let var_2 = vec3<f32>(-1009f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2396f)) - var_1.c), _wgslsmith_f_op_f32(var_0.x - var_1.c));
    return -542f;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1) + arg_1);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-725f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + 1858f), _wgslsmith_f_op_f32(arg_1.x - -1611f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -202f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1739f, -215f)))));
    var_0 = arg_2.x;
    let var_2 = Struct_1(~(~vec2<i32>(min(2147483647i, 2147483647i), arg_2.x)), -1i, _wgslsmith_f_op_f32(func_3()), 1u, 9293u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - _wgslsmith_f_op_f32(-1990f + var_1.x)))))) * 1f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1022f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 2180f)), -u_input.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(366f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))));
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(min(u_input.b.yx, u_input.b.xx), vec2<i32>(0i, u_input.b.x)), _wgslsmith_mult_vec2_i32(u_input.b.zz, u_input.a) & _wgslsmith_add_vec2_i32(u_input.b.yy, vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f + -420f)))) * _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(step(690f, -129f)))), 34776u, u_input.d);
    var var_2 = true;
    var var_3 = _wgslsmith_div_vec3_i32(u_input.b, u_input.b) >> ((~(~(~vec3<u32>(0u, u_input.c.x, 41134u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(5773u, 1u, var_1.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.e, 1u), vec3<u32>(u_input.e, var_1.d, var_1.e), vec3<u32>(u_input.d, var_1.e, u_input.c.x))), firstTrailingBit(vec3<u32>(12351u, 10875u, u_input.d)) << (vec3<u32>(0u, u_input.e, 37558u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_3 = max(vec3<i32>(firstLeadingBit((-5012i | var_3.x) & 0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-16486i, var_1.b, -28337i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, 18578i, 0i), vec3<i32>(var_3.x, var_3.x, 52942i))), -1i), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b));
    return Struct_1(u_input.b.zz, 38549i, -280f, _wgslsmith_sub_u32(u_input.c.x, 15241u), abs(countOneBits(abs(18160u << (var_1.d % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-899f, -269f) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1965f, _wgslsmith_f_op_f32(-2141f + 1649f))), _wgslsmith_add_i32(u_input.b.x, u_input.a.x) <= 1544i)));
    var var_1 = Struct_1(vec2<i32>(u_input.a.x, u_input.b.x), firstLeadingBit(firstTrailingBit(~(-u_input.b.x))), _wgslsmith_f_op_f32(-var_0.c), ~1u, ~(~countOneBits(~var_0.d)));
    var var_2 = Struct_1(select(vec2<i32>(u_input.a.x, 1i), var_1.a, false), ~(-var_0.a.x), _wgslsmith_f_op_f32(func_2(false, vec2<f32>(_wgslsmith_f_op_f32(floor(-528f)), var_1.c), u_input.b)), ~(~4294967295u), 4294967295u);
    let var_3 = -238f;
    var var_4 = func_1(var_2.c).a.x;
    var var_5 = ((u_input.e != 89627u) != (true & all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)))) | all(select(vec3<bool>(false, true, false), vec3<bool>(-3205i >= u_input.a.x, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), true, false)));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

