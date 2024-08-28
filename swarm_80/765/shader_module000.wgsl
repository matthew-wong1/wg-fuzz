struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_4(Struct_2(vec3<i32>(u_input.b.x >> (1u % 32u), ~(-u_input.b.x), -67501i)), min(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 58106u), u_input.c.xx) << (~u_input.c.yy % vec2<u32>(32u)))), 0u);
    var var_1 = true;
    var_1 = 154f <= _wgslsmith_f_op_f32(arg_1 * arg_1);
    let var_2 = Struct_4(var_0.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 4294967295u), ~var_0.b), reverseBits(~61249u >> ((var_0.b.x ^ 16937u) % 32u)) >> (65278u % 32u));
    let var_3 = vec2<bool>(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)) && any(vec4<bool>(true, true, true, true)), true);
    return vec2<bool>(!(var_3.x && false), false);
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(23125i, 2147483647i, -25449i), vec3<i32>(-1i, 0i, u_input.b.x), u_input.b.xxy))), arg_0.x);
    let var_1 = 32779u;
    var var_2 = u_input.c.xwx;
    var_2 = ~(~(~vec3<u32>(~var_2.x, 4294967295u, ~4294967295u)));
    let var_3 = select(vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, any(vec4<bool>(!arg_0.x, arg_0.x, !var_0.b, !var_0.b))), vec4<bool>(var_0.b, (func_3(vec2<i32>(-1i, -13998i), -501f).x || true) || true, any(select(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, var_0.b, true), arg_0.x), vec3<bool>(true, false, arg_0.x), vec3<bool>(false, true, false))), all(vec3<bool>(any(vec4<bool>(var_0.b, false, arg_0.x, false)), any(vec3<bool>(var_0.b, arg_0.x, arg_0.x)), true))), !(!all(vec2<bool>(true, var_0.b))) & !(!arg_0.x || (arg_0.x & var_0.b)));
    return var_1;
}

fn func_2() -> vec2<u32> {
    var var_0 = func_4(!func_3(countOneBits(-vec2<i32>(32550i, -1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(131f + 504f)))));
    var_0 = u_input.a;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.d)) & u_input.a, 1u) >> (4294967295u % 32u);
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(min(u_input.b.zyw, _wgslsmith_clamp_vec3_i32(u_input.b.zxy, u_input.b.zxw, u_input.b.xxz)) | (u_input.b.xxy & max(u_input.b.xyy, u_input.b.zww)), -vec3<i32>(31849i, i32(-1i) * -1i, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1562f, -2660f)) * 368f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-237f, 1291f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-646f)))) - -1240f));
    return u_input.c.zy;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_4 {
    var var_0 = ~_wgslsmith_mult_u32(u_input.e, 62908u);
    var var_1 = _wgslsmith_mod_vec2_u32(func_2(), max(~(max(u_input.c.wx, u_input.c.wz) & u_input.c.wx), reverseBits(~vec2<u32>(u_input.c.x, 8076u) << (u_input.c.yy % vec2<u32>(32u)))));
    var var_2 = select(2147483647i, arg_1, false);
    var_2 = 6059i;
    var var_3 = Struct_1(min(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, -1i) << (~1u % 32u), -1i, 0i), u_input.b.xxz), u_input.b | ~vec4<i32>(1i & u_input.b.x, ~u_input.b.x, i32(-1i) * -2147483647i, -1i), 27407u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(541f))), -208f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1295f, -106f) * vec2<f32>(-333f, 2361f)))));
    return Struct_4(Struct_2(~(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, var_3.a.x, -92672i), u_input.b.wzz) ^ vec3<i32>(6959i, var_3.a.x, u_input.b.x))), reverseBits(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(17182u, 4294967295u), u_input.c.zy), ~vec2<u32>(var_1.x, u_input.c.x), arg_0.x)), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(vec2<bool>(-13156i <= u_input.b.x, !all(vec3<bool>(false, true, true))), vec2<bool>(true, true), true), max(~u_input.b.x, abs(u_input.b.x)));
    let var_1 = var_0.b.x;
    var var_2 = -(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b) | u_input.b) & vec4<i32>(u_input.b.x, var_0.a.a.x, 21791i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, -13854i, var_0.a.a.x)), reverseBits(var_0.a.a)));
    var_2 = vec4<i32>(func_1(vec2<bool>(true, false), countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x ^ 34861i))).a.a.x, firstTrailingBit(22437i) | -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32((vec2<i32>(u_input.b.x, 54427i) ^ vec2<i32>(var_2.x, u_input.b.x)) << (select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.d), false) % vec2<u32>(32u)), vec2<i32>(0i, _wgslsmith_sub_i32(-30986i, var_2.x))), vec2<i32>(func_1(vec2<bool>(true, false), 2147483647i).a.a.x & abs(-1i), 0i)), _wgslsmith_mult_i32(-28792i, ~var_0.a.a.x) | _wgslsmith_dot_vec4_i32(select(u_input.b, vec4<i32>(-4015i, var_2.x, -11345i, -2147483647i), vec4<bool>(false, true, false, false)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), ~vec4<i32>(2147483647i, 11686i, 0i, var_2.x))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-338f, 1098f)), u_input.b.x, Struct_1(_wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(var_0.a.a, vec3<i32>(2147483647i, u_input.b.x, var_0.a.a.x)), vec3<i32>(var_0.a.a.x, firstLeadingBit(var_2.x), -26202i)), select(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, var_0.a.a.x, 1i, u_input.b.x)) >> (vec4<u32>(u_input.e, var_0.b.x, 28919u, 11698u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), u_input.b), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), _wgslsmith_sub_u32(abs(var_1), u_input.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-103f, -329f)))), Struct_1(firstLeadingBit(max(var_2.yzx, var_2.wyx) & var_0.a.a), vec4<i32>(_wgslsmith_mult_i32(var_0.a.a.x, u_input.b.x), 2147483647i << (u_input.c.x % 32u), 0i, func_1(vec2<bool>(true, true), func_1(vec2<bool>(false, false), var_0.a.a.x).a.a.x).a.a.x), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -422f)))))));
    var_2 = var_3.d.b;
    var_2 = var_3.c.b;
    var var_4 = true;
    let var_5 = Struct_2(-(var_0.a.a << (~(vec3<u32>(var_3.d.c, 0u, var_0.c) & u_input.c.wxy) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c, -(~_wgslsmith_div_i32(11233i, u_input.b.x)) ^ -_wgslsmith_sub_i32(var_2.x, _wgslsmith_mod_i32(-459i, 6474i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, _wgslsmith_f_op_f32(var_3.a * var_3.c.d.x), 1630f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.d.d.x, 266f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a, var_3.a, var_3.a))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a, var_3.c.d.x, var_3.c.d.x)))))), ~vec4<u32>(4294967295u, 1u, ~1u, func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), false), -21595i).b.x), firstTrailingBit(~vec4<u32>(4294967295u, var_3.c.c, 49474u >> (0u % 32u), _wgslsmith_mod_u32(4294967295u, var_0.b.x))));
}

