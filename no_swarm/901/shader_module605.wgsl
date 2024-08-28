struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(sign(380f))), arg_1.a)), 703f, 152f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, -1439f, -265f, -2177f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1393f, _wgslsmith_f_op_f32(f32(-1f) * -717f), -624f, _wgslsmith_f_op_f32(floor(arg_1.a)))))), select(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), vec4<bool>(true, false, true, true & (-1i <= u_input.c)), u_input.a.x > u_input.a.x)));
    let var_1 = u_input.a.yw;
    let var_2 = u_input.d.x;
    var var_3 = u_input.b;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(floor(var_0.x)), u_input.d);
    return false;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1617f), vec4<u32>(4294967295u, ~65188u, min(u_input.a.x ^ 0u, u_input.a.x), _wgslsmith_mod_u32(u_input.d.x, ~u_input.a.x)));
    var var_1 = ~vec4<i32>(_wgslsmith_div_i32(-36692i, ~11680i & _wgslsmith_div_i32(-17044i, u_input.c)), ~1i, 42424i, -2147483647i);
    var_0 = Struct_2(var_0.a, var_0.b);
    var var_2 = func_3(select(var_1.x, 2147483647i, true), Struct_2(var_0.a, u_input.a));
    var var_3 = vec2<bool>(true, _wgslsmith_sub_i32(~var_1.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-32421i, u_input.c), var_1.yw))) == firstLeadingBit(u_input.e));
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, abs(6773u)) | ~u_input.a.x, ~7698u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> bool {
    var var_0 = ~vec4<u32>(arg_2.x, u_input.d.x, 0u, _wgslsmith_dot_vec3_u32(u_input.d.yxx ^ vec3<u32>(35066u, u_input.a.x, arg_2.x), u_input.a.zwy));
    var_0 = vec4<u32>(1u, ~abs((1u & arg_2.x) & ~var_0.x), 0u, 41588u);
    var var_1 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_2.x, 4294967295u, 4294967295u, 112656u), u_input.a, arg_1.x), u_input.a & vec4<u32>(54000u, 19084u, u_input.d.x, u_input.d.x)), max(u_input.a, u_input.d)) >> (abs(countOneBits(min(vec4<u32>(arg_2.x, arg_2.x, 0u, var_0.x), vec4<u32>(arg_2.x, var_0.x, 4294967295u, 1u)))) % vec4<u32>(32u)), u_input.a);
    var var_2 = vec2<u32>(1u, var_1.x);
    let var_3 = Struct_3(_wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(630f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(496f)), -493f))), _wgslsmith_mod_vec4_u32(abs(select(~u_input.a, countOneBits(vec4<u32>(44343u, var_1.x, var_0.x, 23618u)), !vec4<bool>(true, arg_1.x, false, arg_0.x))), countOneBits(_wgslsmith_clamp_vec4_u32(countOneBits(u_input.d), u_input.a, abs(vec4<u32>(1u, 48430u, arg_2.x, var_2.x))))), any(select(select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_1.x, arg_0.x), true), select(select(vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(arg_1.x, false, true, false), arg_1.x), !vec4<bool>(arg_0.x, false, arg_0.x, true), !arg_1.x), select(vec4<bool>(false, true, arg_1.x, false), !vec4<bool>(arg_0.x, true, false, arg_0.x), any(arg_0)))), _wgslsmith_f_op_f32(632f * -363f));
    return var_3.c;
}

fn func_1() -> u32 {
    var var_0 = func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), false), vec2<bool>(all(vec4<bool>(true, true, true, true)), !(false == (u_input.e != u_input.e))), vec2<u32>(~(abs(0u) ^ func_2()), 20261u));
    var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) + _wgslsmith_f_op_f32(select(var_1, -1096f, false)))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(~u_input.d), vec4<u32>(~u_input.d.x, _wgslsmith_clamp_u32(9703u, 9074u, 39384u), ~u_input.d.x, u_input.a.x)), u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(28210u, u_input.d.x), _wgslsmith_add_u32(51964u, 1u), u_input.a.x, u_input.a.x), u_input.a)));
    var var_3 = vec2<i32>(1i, -2147483647i);
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-952f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(336f, 1778f))) * -133f), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))), u_input.a, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)) - _wgslsmith_f_op_f32(min(-641f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(936f, 100f, true))))))));
    let var_1 = _wgslsmith_add_u32(~1u, ~(~firstTrailingBit(func_1())));
    let var_2 = !select(vec4<bool>(select(!var_0.c, var_0.c | var_0.c, true), func_4(vec3<bool>(var_0.c, var_0.c, var_0.c), select(vec2<bool>(true, var_0.c), vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c)), select(vec2<u32>(var_1, 3406u), vec2<u32>(80823u, var_0.b.x), var_0.c)), true, var_0.c), select(select(vec4<bool>(true, var_0.c, false, true), !vec4<bool>(true, true, var_0.c, var_0.c), true), select(!vec4<bool>(false, false, false, var_0.c), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.c, true, var_0.c, var_0.c), var_0.c), select(vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c), true)), false), vec4<bool>(true, all(vec2<bool>(true, var_0.c)), all(select(vec4<bool>(false, false, false, var_0.c), vec4<bool>(false, false, var_0.c, true), var_0.c)), var_0.c));
    var_0 = Struct_3(var_0.d, vec4<u32>(~33694u, _wgslsmith_dot_vec2_u32(~var_0.b.ww, var_0.b.yw), 46328u, ~select(var_0.b.x, abs(0u), func_3(-9975i, Struct_2(var_0.a, u_input.a)))), false, _wgslsmith_f_op_f32(-var_0.a));
    let var_3 = u_input.e;
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a - var_0.d), _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(281f + 505f))))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, var_1, max(1u, 4294967295u), min(var_0.b.x, u_input.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.b.x, 84651u), vec4<u32>(var_0.b.x, u_input.d.x, var_1, var_0.b.x)), u_input.d)), true, _wgslsmith_f_op_f32(step(433f, _wgslsmith_f_op_f32(-1720f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d)) - var_0.d)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-1129f)), vec4<u32>(~(~26034u), 0u, _wgslsmith_sub_u32(~4294967295u, var_0.b.x | 4294967295u), ~(~78617u)) << (~(~(~vec4<u32>(var_0.b.x, var_1, u_input.d.x, 1u))) % vec4<u32>(32u)), select(var_2.x, (20431i > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -1i, var_3), vec3<i32>(u_input.c, var_3, var_3))) && !(var_0.c | false), var_0.c), var_0.d);
    let var_4 = -181f;
    let var_5 = select(var_2.zy, !vec2<bool>(any(vec3<bool>(var_2.x, true, var_2.x)), any(!var_2.yxz)), !select(!select(var_2.xy, var_2.ww, false), !var_2.wz, vec2<bool>(all(var_2.xw), func_4(vec3<bool>(false, true, false), vec2<bool>(var_0.c, false), var_0.b.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~var_3, ~_wgslsmith_div_i32(var_3, var_3), -2147483647i), _wgslsmith_f_op_f32(trunc(688f)), var_0.b.xxy & ~(~u_input.a.wxz), -1i);
}

