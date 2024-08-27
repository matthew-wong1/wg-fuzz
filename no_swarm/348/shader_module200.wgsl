struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = arg_0.a;
    var var_1 = Struct_5(Struct_1(-12670i, ~(~(arg_2.b.b ^ arg_2.b.b)), !arg_0.c, 1f, all(select(vec3<bool>(false, arg_2.b.c, arg_0.c), vec3<bool>(arg_2.b.c, false, true), arg_0.e))), arg_0.e, arg_2.a, _wgslsmith_f_op_f32(arg_0.d * arg_2.b.d), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, arg_2.a.e.b, arg_2.a.a.b)), vec3<u32>(20310u, min(35424u, 5897u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 22712u, 56302u), vec4<u32>(1u, 112830u, 1u, 0u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1314f, 1030f, 1914f, arg_2.b.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.e.d, -2475f, var_1.d, 738f) * vec4<f32>(1000f, 998f, 154f, arg_2.b.d)))) - vec4<f32>(arg_2.b.d, -835f, -1000f, _wgslsmith_f_op_f32(-1480f + _wgslsmith_div_f32(-551f, -1752f)))));
    var_0 = 69443i;
    var var_3 = Struct_5(arg_0, (4294967295u < arg_2.b.b) | true, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-3378f))))) + -1140f), var_1.e);
    return vec3<f32>(arg_2.a.c.d, _wgslsmith_f_op_f32(110f - 1480f), 477f);
}

fn func_2() -> Struct_3 {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1537f, -1805f, -1095f) * vec3<f32>(-249f, -1000f, 617f)) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_0, 19110u, false, -1300f, false), vec4<i32>(36491i, 9584i, -10828i, u_input.d), Struct_3(Struct_2(Struct_1(0i, u_input.a, true, 799f, false), 56719i, Struct_1(u_input.e, 42603u, false, -1000f, false), false, Struct_1(var_0, 4294967295u, false, 1034f, true)), Struct_1(-2147483647i, 4294967295u, true, -179f, true)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -233f, _wgslsmith_f_op_f32(step(-173f, 500f))))));
    var var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(-1000f - -1775f);
    var var_3 = select(~(~vec3<u32>(u_input.b, firstLeadingBit(u_input.a), u_input.a)), vec3<u32>(1u, u_input.b >> (u_input.a % 32u), u_input.b) << (abs(~firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.b))) % vec3<u32>(32u)), !(_wgslsmith_f_op_f32(sign(555f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) - var_1.x)));
    return Struct_3(Struct_2(Struct_1(u_input.c, var_3.x | ~4294967295u, select(all(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, false)), 154f <= var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -686f), ~u_input.c >= var_0), reverseBits(-min(u_input.c, u_input.e)), Struct_1(i32(-1i) * -2147483647i, var_3.x, -248f < _wgslsmith_f_op_f32(select(var_1.x, -688f, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(2739i, u_input.a, false, var_1.x, true), vec4<i32>(var_0, -1i, u_input.d, u_input.c), Struct_3(Struct_2(Struct_1(var_0, 1u, false, -1474f, true), u_input.d, Struct_1(u_input.c, var_3.x, false, 160f, true), true, Struct_1(25144i, 0u, true, var_1.x, false)), Struct_1(var_0, 1u, false, var_1.x, false)))).x, _wgslsmith_div_f32(var_1.x, -556f), true)), true), true, Struct_1(var_0, _wgslsmith_div_u32(1u, u_input.a), any(vec4<bool>(true, true, true, true)), 1f, select(true, select(false, false, true), u_input.a <= 123679u))), Struct_1(var_0, ((u_input.a >> (u_input.b % 32u)) << (var_3.x % 32u)) & ~20520u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1202f)) + _wgslsmith_f_op_f32(select(-203f, -353f, false)))), true));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = !arg_0;
    let var_2 = all(select(vec3<bool>(_wgslsmith_f_op_f32(abs(arg_1.x)) >= var_0.a.a.d, any(vec4<bool>(var_0.a.c.e, var_0.a.c.c, false, arg_0)), true), select(select(!vec3<bool>(var_0.b.c, false, arg_0), vec3<bool>(false, true, true), true), vec3<bool>(true, arg_0, !var_0.b.c), !(!vec3<bool>(arg_0, arg_0, var_0.a.c.c))), all(vec3<bool>(all(vec4<bool>(arg_0, var_0.b.e, false, var_0.a.d)), arg_0 || arg_0, var_0.b.e))));
    var_1 = false;
    var var_3 = Struct_3(func_2().a, func_2().a.e);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(~u_input.d, reverseBits(u_input.d)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 20594u, 0u, u_input.a)), vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u), 1u, abs(u_input.b))), !(!all(vec2<bool>(false, false))), -1683f, !(!all(vec4<bool>(true, true, false, false)))), ~(-1i), func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1700f * -1155f), _wgslsmith_f_op_f32(trunc(-925f)), -783f) * vec3<f32>(295f, -399f, -1000f))), !(_wgslsmith_f_op_f32(round(1181f)) < 862f) == all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(u_input.e, _wgslsmith_add_u32(0u, select(4294967295u | u_input.a, 0u, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), true));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(select(select(vec3<i32>(u_input.d, 1i, 0i) & vec3<i32>(u_input.e, -69924i, -2147483647i), vec3<i32>(-37877i, 0i, 33911i), var_0.c.e), -abs(vec3<i32>(0i, -1i, u_input.d)), select(select(vec3<bool>(false, var_0.a.c, var_0.e.e), vec3<bool>(true, var_0.a.e, true), vec3<bool>(false, var_0.c.e, var_0.c.e)), vec3<bool>(var_0.a.c, var_0.c.e, var_0.a.c), var_0.d)), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(2147483647i, u_input.d, -37701i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, 0i, 0i), vec4<i32>(-2147483647i, 2147483647i, u_input.d, 28119i)), func_1(var_0.e.e, vec3<f32>(164f, -126f, var_0.c.d)).a, 20642i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.c, -3457i), ~vec3<i32>(var_0.c.a, var_0.b, 2147483647i)))), 0i);
    var var_2 = Struct_5(var_0.e, !var_0.a.e, var_0, _wgslsmith_f_op_f32(-727f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(ceil(var_0.c.d)))))), vec3<u32>(0u, (59277u << (var_0.c.b % 32u)) ^ u_input.b, 0u));
    var_1 = firstTrailingBit(vec2<i32>(firstTrailingBit(~max(-2147483647i, var_1.x)), -var_2.c.c.a));
    var_2 = Struct_5(func_1(!select(!var_0.c.c, -270f > var_2.a.d, !var_0.e.e), vec3<f32>(434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.a.d)), 241f)), true, Struct_2(var_2.a, u_input.e, func_1(var_2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1510f, var_2.d, -451f) * vec3<f32>(554f, var_0.a.d, var_0.e.d))), var_0.a.c, var_2.a), var_0.e.d, vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, abs(var_0.c.b ^ 0u)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, ~(~max(23338u & u_input.b, ~u_input.b)), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(33625u, 2311u, 22939u, 19540u))), vec4<u32>(func_1(var_0.c.c, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e.d, var_2.c.c.d, 867f), vec3<f32>(var_0.a.d, 404f, 197f))).b, 68774u, 14698u, var_2.c.a.b)), vec3<f32>(var_2.a.d, var_2.a.d, func_1(!var_0.c.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(262f, 1000f, -253f) + vec3<f32>(var_0.a.d, -120f, var_2.c.a.d)))).d));
}

