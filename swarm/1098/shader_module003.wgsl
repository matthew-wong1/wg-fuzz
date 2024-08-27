struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    var var_0 = 3756i | _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(arg_1.b, arg_0.b & vec2<i32>(u_input.a, arg_1.b.x)), vec2<i32>(i32(-1i) * -2147483647i, -27491i));
    var var_1 = abs(firstLeadingBit(~58853u)) >= _wgslsmith_div_u32(select(~(0u & arg_1.c.x), _wgslsmith_div_u32(abs(49829u), arg_0.c.x | 1u), false), firstTrailingBit(~1u));
    return arg_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1117f);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(2177f * var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-168f * _wgslsmith_f_op_f32(step(var_0, var_0)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-209f * 150f), _wgslsmith_f_op_f32(-573f - -2006f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, -2215f, 1857f)), !arg_2.e.yyy))))));
    var var_2 = Struct_4(var_1.yx);
    var var_3 = var_1.x;
    var var_4 = arg_2;
    return -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstTrailingBit(0i), max(arg_2.c, 1i), i32(-1i) * -1i), -_wgslsmith_mod_i32(-1i, arg_1), arg_1 & var_4.c), ~(~var_4.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32) -> vec3<bool> {
    let var_0 = firstTrailingBit(~vec4<u32>(~(~1u), 1u, _wgslsmith_clamp_u32(1u, ~0u, 4294967295u), abs(_wgslsmith_mod_u32(0u, 4294967295u))));
    let var_1 = Struct_2(true, arg_2 >= select(1i, -12203i, false == (u_input.a > -40987i)), arg_2, ~func_4(Struct_3(true, -vec2<i32>(u_input.a, u_input.a), abs(vec2<u32>(var_0.x, var_0.x))), select(~20620i, _wgslsmith_div_i32(u_input.a, u_input.a), false), Struct_2(arg_1.a.x == -1207f, true, _wgslsmith_mult_i32(arg_2, u_input.a), _wgslsmith_mod_i32(u_input.a, 1i), vec4<bool>(false, true, true, true)), Struct_3(func_3(Struct_3(true, vec2<i32>(u_input.a, 14881i), vec2<u32>(var_0.x, var_0.x)), Struct_3(true, vec2<i32>(68934i, arg_2), var_0.ww), vec4<bool>(false, false, false, false)), firstLeadingBit(vec2<i32>(arg_2, 2147483647i)), ~var_0.yw)), vec4<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) >= arg_1.a.x));
    var var_2 = false;
    var var_3 = var_1;
    let var_4 = abs(~vec3<i32>(var_1.d, arg_2 | var_3.d, arg_2)) | abs(vec3<i32>(u_input.a, -63069i, -(~35486i)));
    return !select(vec3<bool>(var_3.e.x, all(!var_1.e), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(select(var_3.e.xyw, vec3<bool>(true, true, false), true), vec3<bool>(any(var_1.e), true, var_1.e.x & var_1.b), select(40492u > var_0.x, any(var_1.e.xw), false & var_3.b)), !(!var_3.e.yzw));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_2(!(!all(vec4<bool>(true, true, false, true))), !(_wgslsmith_mult_i32(arg_1.x, arg_1.x) < _wgslsmith_mult_i32(max(-2147483647i, 1i), -25369i)), -26095i, arg_1.x, !(!(!vec4<bool>(true, true, arg_0.x, true))));
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(~1u, firstTrailingBit(1u)), ~abs(11227u)) ^ (_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, 10571u)), 1u) & 14651u);
    var_1 = 0u;
    var_0 = Struct_2(func_3(Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1906f, -580f, -271f, 128f)), Struct_4(vec2<f32>(230f, 195f)), 1i ^ arg_1.x).x, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_1, vec2<i32>(u_input.a, arg_1.x)), arg_1, ~arg_1), ~vec2<u32>(13306u, 25180u)), Struct_3(any(var_0.e), reverseBits(arg_1), vec2<u32>(~23024u, ~4294967295u)), !vec4<bool>(!arg_0.x, false, arg_0.x, select(true, true, arg_0.x))), var_0.a, select(~(max(arg_1.x, arg_1.x) << (1u % 32u)), select(~arg_1.x, -(var_0.c << (59448u % 32u)), var_0.b), false), -2147483647i, !var_0.e);
    var var_2 = u_input.a;
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(807f, -280f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, -207f)), vec2<bool>(arg_0.x, false))))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = func_5(!func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1097f, 478f, arg_0.x, 2501f))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, -331f) * vec2<f32>(1061f, arg_0.x))), u_input.a), select(firstLeadingBit(select(vec2<i32>(u_input.a, 48312i), vec2<i32>(0i, -67536i), vec2<bool>(true, true))), firstTrailingBit(vec2<i32>(-34806i, u_input.a)) ^ ~vec2<i32>(u_input.a, 5623i), any(vec3<bool>(true, any(vec3<bool>(false, true, false)), true))));
    let var_1 = -663f;
    var var_2 = all(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))) | (-1079f != var_1);
    let var_3 = Struct_5(Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, arg_0.x) - var_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(-658f, 367f), arg_0.yy))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_1) * arg_0.xx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 517f)))))), Struct_2(true | func_3(Struct_3(true, vec2<i32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u)), Struct_3(false, vec2<i32>(u_input.a, 11836i), vec2<u32>(1u, 1u)), vec4<bool>(true, true, true, false)), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true))), abs(~(~70165i)), u_input.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_4(arg_0.xx));
    var var_4 = ~39932u;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(-483f)), _wgslsmith_f_op_f32(330f - -611f), -197f))));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~1u, 4294967295u), ~4294967295u);
    var var_3 = Struct_2(0i > _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(2147483647i, 0i, -35742i)), vec3<i32>(var_1.c.c, -var_1.c.d, _wgslsmith_sub_i32(1i, u_input.a))), var_1.c.b, u_input.a | ~(-20435i), 0i, !vec4<bool>(true, false, func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, var_1.b.x, 1175f, -1259f))), Struct_4(var_1.b), 8453i).x, any(!vec4<bool>(true, var_1.c.b, true, var_1.c.a))));
    var_0 = var_1.c.b;
    let var_4 = !var_3.e;
    var_3 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(235f)), var_1.b.x, _wgslsmith_f_op_f32(-1391f + 193f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.a.x, var_1.d.a.x, 1013f)) - vec3<f32>(_wgslsmith_f_op_f32(max(176f, -1899f)), 1259f, _wgslsmith_f_op_f32(step(var_1.b.x, -450f)))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(u_input.a, -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.a.x, 1230f, false)) + 230f), _wgslsmith_f_op_f32(-var_1.b.x), var_1.a.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a.x, _wgslsmith_f_op_f32(ceil(-535f)), _wgslsmith_div_f32(-363f, -202f), var_1.d.a.x) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-623f, var_1.b.x, 144f, var_1.d.a.x))))))), vec4<u32>(min(4524u, 1u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, var_2.x), vec2<u32>(0u, var_2.x)) & vec2<u32>(var_2.x, 1u), ~(~vec2<u32>(var_2.x, 4294967295u))), _wgslsmith_add_u32(min(17966u << (var_2.x % 32u), _wgslsmith_sub_u32(var_2.x, var_2.x)), 39080u), 45093u), var_1.c.c);
}

