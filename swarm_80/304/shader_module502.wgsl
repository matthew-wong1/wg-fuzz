struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mult_vec2_u32(select(abs(~u_input.d.zw >> (u_input.c % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(4294967295u, 109454u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), vec2<u32>(u_input.a, 0u), u_input.c)), any(vec2<bool>(true, false))), _wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.c.x, 33638u) >> (_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(17637u, 1u)) % vec2<u32>(32u))), u_input.c));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(189f, -967f, 1423f, 1016f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1416f, -1237f, 1693f, -1044f)))))), vec4<f32>(-657f, _wgslsmith_f_op_f32(-1436f + _wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_div_f32(-1051f, _wgslsmith_f_op_f32(120f - -1000f)), -2080f), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_div_f32(-1365f, -415f), _wgslsmith_f_op_f32(1096f * 284f), _wgslsmith_f_op_f32(-219f - 1478f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1804f, 2057f, -560f, -272f) + vec4<f32>(854f, 1869f, 1619f, -186f)))))));
    var var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))) + var_1.b.x) <= var_1.c.x) & true;
    var_2 = var_1.a;
    let var_3 = !(var_1.a && ((_wgslsmith_mod_u32(var_0.x, 79380u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, var_0.x, 35841u), u_input.d) % 32u)) < (min(var_0.x, var_0.x) | _wgslsmith_add_u32(u_input.c.x, u_input.a))));
    return max(-abs(2147483647i & u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.e.zx, ~u_input.e.yx)) << (var_0.x % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = -1000f;
    var var_1 = -34649i;
    var_1 = firstTrailingBit(max(func_3() ^ max(_wgslsmith_add_i32(2147483647i, arg_0.x), u_input.b), min(arg_0.x, u_input.e.x)));
    let var_2 = Struct_1(true, vec4<f32>(-567f, -3122f, -1317f, -1382f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(select(var_0, var_0, true)), _wgslsmith_f_op_f32(round(-307f)), -244f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -1236f, -509f, var_0)))))));
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(arg_0.x) >> (~0u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.e.wzw, vec3<i32>(arg_0.x, 2147483647i, u_input.b)), 0i)), _wgslsmith_mod_i32(28519i, _wgslsmith_div_i32(-1i, arg_0.x) | u_input.e.x), ~firstTrailingBit(arg_0.x)) & _wgslsmith_sub_i32(1i, -countOneBits(arg_0.x >> (u_input.c.x % 32u)));
    return select(select(select(vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(var_2.a, true), vec2<bool>(true, true), select(false, true, var_2.a)), vec2<bool>(any(vec3<bool>(var_2.a, false, true)), any(vec3<bool>(false, true, false)))), vec2<bool>(~arg_0.x != countOneBits(-959i), true), select(vec2<bool>(true, !var_2.a), vec2<bool>(true, true), select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, true), u_input.c.x < u_input.d.x))), !vec2<bool>(var_2.a, true), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_1(all(select(vec2<bool>(any(vec2<bool>(arg_2.a, arg_2.a)), false != arg_2.a), !func_2(vec2<i32>(-3889i, 1i), arg_3.xx), !vec2<bool>(arg_2.a, arg_2.a))), vec4<f32>(-1518f, arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 412f)) * -301f), -474f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -264f, arg_1.x, -1242f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-283f, arg_2.b.x, -810f, -999f), arg_1))));
    let var_1 = ~(~arg_3.xxz);
    var var_2 = vec4<u32>(~(_wgslsmith_div_u32(arg_3.x, 1u) & ~_wgslsmith_mult_u32(0u, 11166u)), min(abs(max(_wgslsmith_mult_u32(u_input.a, arg_3.x), 987u)), arg_3.x), ~22364u, countOneBits(var_1.x));
    var var_3 = firstLeadingBit(u_input.e.x);
    let var_4 = var_0.c.x;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_4) - var_4))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)) + 770f)), -934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(971f - -2563f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-694f)), _wgslsmith_f_op_f32(497f + -406f)))), _wgslsmith_f_op_f32(var_0.c.x + 274f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(any(vec3<bool>(false, false, true)), false, u_input.c.x > _wgslsmith_sub_u32(u_input.d.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-426f)), _wgslsmith_f_op_f32(1476f + -766f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(270f, -558f)), _wgslsmith_f_op_f32(-831f + _wgslsmith_div_f32(-1550f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) * _wgslsmith_f_op_f32(f32(-1f) * -2189f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.e.yzy, vec4<f32>(-1000f, 303f, -1004f, 1263f), Struct_1(false, vec4<f32>(-596f, 505f, 2248f, -712f), vec4<f32>(286f, -718f, 398f, -1000f)), vec4<u32>(108773u, u_input.d.x, u_input.a, 14691u))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1117f, -1024f, 680f, 671f) * vec4<f32>(1482f, -625f, 120f, -1951f))) + vec4<f32>(-396f, -1000f, _wgslsmith_f_op_f32(ceil(-368f)), _wgslsmith_f_op_f32(-412f * -917f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(850f, 1990f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-659f * 1144f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(694f)) - -1636f), 1305f)));
    var var_1 = var_0;
    var var_2 = vec3<i32>(reverseBits(u_input.e.x ^ u_input.b), _wgslsmith_div_i32(u_input.e.x, u_input.e.x), ~max(countOneBits(u_input.e.x), 32249i)) << (~u_input.d.xyy % vec3<u32>(32u));
    var var_3 = Struct_1(all(select(vec3<bool>(select(var_1.a, var_1.a, false), true, true & var_1.a), select(vec3<bool>(false, var_0.a, false), select(vec3<bool>(var_1.a, true, var_0.a), vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_0.a, true)), select(vec3<bool>(var_1.a, var_0.a, var_1.a), vec3<bool>(var_0.a, var_0.a, true), var_1.a)), !select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, false, var_0.a), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))));
    var_1 = var_0;
    let var_4 = Struct_1(select(all(vec2<bool>(var_1.a, var_3.a)) && (var_0.a || !var_1.a), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(168f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1811f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.c.x)), -991f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1731f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(-1588f)), _wgslsmith_f_op_f32(exp2(var_4.c.x)), _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(631f, var_4.b.x, 682f, -848f)))), var_1.b, var_4.a)), _wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(abs(u_input.e), abs(u_input.e)), u_input.e, !func_2(var_2.yz, u_input.c).x), -select(u_input.e, u_input.e, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), -1154f)) + -1616f), _wgslsmith_f_op_f32(exp2(var_0.c.x)))));
}

