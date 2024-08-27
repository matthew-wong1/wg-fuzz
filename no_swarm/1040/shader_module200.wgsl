struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(select(min(arg_1.xz, vec2<u32>(~78273u, arg_1.x << (43195u % 32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.wx, u_input.a.yz | vec2<u32>(u_input.a.x, 0u)), _wgslsmith_div_vec2_u32(arg_0.xw, _wgslsmith_add_vec2_u32(arg_1.yx, vec2<u32>(4294967295u, 1u)))), !arg_3), vec2<u32>(~35365u | (arg_1.x | arg_1.x), 0u) ^ arg_0.wx);
    var var_1 = ~arg_0.x;
    let var_2 = select(!(!vec3<bool>(true, arg_3, true)), vec3<bool>(true, !(all(vec3<bool>(arg_3, arg_3, arg_3)) != (arg_3 && arg_3)), all(vec4<bool>(true, arg_3 || arg_3, true, arg_3))), false);
    var_1 = 3943u;
    var_1 = ~(~(~_wgslsmith_mod_u32(1u, arg_0.x)));
    return select(!vec3<bool>(true, true, var_2.x), !(!vec3<bool>(true, any(vec3<bool>(false, arg_3, arg_3)), arg_3)), select(_wgslsmith_clamp_i32(u_input.c, reverseBits(u_input.c), reverseBits(-31539i)) <= ~(-arg_2), true, any(select(select(vec4<bool>(true, arg_3, false, arg_3), vec4<bool>(var_2.x, true, true, true), vec4<bool>(var_2.x, false, arg_3, arg_3)), select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(arg_3, arg_3, var_2.x, arg_3), vec4<bool>(var_2.x, arg_3, var_2.x, true)), true))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_2(arg_0.a, func_3(u_input.a, abs(_wgslsmith_mult_vec3_u32(u_input.a.wzz, u_input.a.zyx) >> (~vec3<u32>(4294967295u, arg_0.a.e, 11146u) % vec3<u32>(32u))), _wgslsmith_sub_i32(~1i, ~(-20993i)) << (~4294967295u % 32u), arg_0.c.b), arg_0.c, any(arg_0.b.yx));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_0.a.a.x));
    var var_2 = Struct_3(var_0.a.b, arg_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a.a.x) * var_0.a.c) * -1319f), var_0.c.c) + _wgslsmith_f_op_vec2_f32(abs(var_2.b.a.a.yx)));
    var_1 = _wgslsmith_f_op_f32(-var_0.c.a.x);
    return false;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = -326f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1796f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1098f))))), -439f);
    let var_2 = arg_0.b;
    let var_3 = Struct_3(!arg_0.b.c.b, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -1040f, 1110f)))), var_2.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.b.a.c))), u_input.c, 37057u), var_2.b, arg_0.b.c, all(select(arg_0.b.b, vec3<bool>(var_2.d, true, false), var_2.b))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.a.x))), 1305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -470f), all(select(vec2<bool>(true, arg_0.d.b), var_2.b.xx, false))))));
    return var_3.b;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c - _wgslsmith_f_op_f32(max(arg_0.c.a.x, arg_0.a.a.x)))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.c), -1677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)), false)), func_4(Struct_4(arg_0.b.zx, arg_0, Struct_3(true, Struct_2(arg_0.a, vec3<bool>(arg_0.b.x, true, true), arg_0.c, arg_0.a.b)), arg_0.a), vec2<bool>(all(arg_0.b.yx), _wgslsmith_f_op_f32(f32(-1f) * -793f) >= _wgslsmith_f_op_f32(sign(359f))), vec4<u32>(func_4(Struct_4(arg_0.b.xy, arg_0, Struct_3(true, Struct_2(Struct_1(arg_0.c.a, arg_0.b.x, 2151f, -1i, 1u), vec3<bool>(arg_0.b.x, arg_0.c.b, false), Struct_1(vec3<f32>(-1084f, arg_0.c.a.x, 1000f), arg_0.d, arg_0.a.c, u_input.c, u_input.b.x), true)), Struct_1(vec3<f32>(963f, 1152f, arg_0.a.a.x), true, 128f, arg_0.a.d, 45105u)), !arg_0.b.xy, abs(u_input.a), -arg_0.c.d).a.e, 7784u, _wgslsmith_div_u32(u_input.b.x, arg_0.a.e) << (~arg_0.c.e % 32u), 53795u), -1i));
    var_0 = Struct_3(arg_0.c.b, var_0.b);
    let var_1 = vec3<bool>((((arg_0.a.c != var_0.b.c.a.x) || any(arg_0.b)) && true) && (var_0.b.c.c < arg_0.a.c), false, func_4(Struct_4(!arg_0.b.zy, arg_0, Struct_3(true, func_4(Struct_4(vec2<bool>(false, true), arg_0, Struct_3(arg_0.c.b, var_0.b), Struct_1(vec3<f32>(-125f, arg_0.a.a.x, arg_0.c.a.x), var_0.a, 1627f, u_input.c, arg_0.c.e)), vec2<bool>(var_0.b.a.b, arg_0.b.x), vec4<u32>(0u, 1u, 4487u, arg_0.a.e), var_0.b.c.d)), func_4(Struct_4(vec2<bool>(false, arg_0.c.b), Struct_2(var_0.b.c, var_0.b.b, Struct_1(vec3<f32>(-1557f, -2660f, arg_0.a.c), true, -887f, var_0.b.a.d, u_input.b.x), false), Struct_3(false, Struct_2(Struct_1(vec3<f32>(arg_0.c.c, -1000f, -1000f), true, var_0.b.c.a.x, -1i, 1u), vec3<bool>(false, true, true), Struct_1(vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, 305f), arg_0.a.b, var_0.b.c.a.x, arg_0.a.d, 4294967295u), false)), Struct_1(arg_0.c.a, true, arg_0.a.c, 29719i, arg_0.a.e)), func_4(Struct_4(arg_0.b.zx, Struct_2(var_0.b.a, vec3<bool>(true, arg_0.a.b, var_0.b.a.b), arg_0.a, true), Struct_3(var_0.b.c.b, Struct_2(arg_0.c, vec3<bool>(true, arg_0.d, false), Struct_1(arg_0.a.a, true, var_0.b.a.a.x, -1i, var_0.b.a.e), arg_0.a.b)), Struct_1(var_0.b.a.a, false, 1953f, -21737i, 1u)), vec2<bool>(false, false), vec4<u32>(arg_0.c.e, u_input.a.x, 4294967295u, 26751u), u_input.c).b.zz, u_input.a, _wgslsmith_mod_i32(-1i, u_input.c)).c), select(select(vec2<bool>(true, true), arg_0.b.yx, 108687u > arg_0.a.e), !var_0.b.b.zy, !(!var_0.a)), vec4<u32>(arg_0.c.e, _wgslsmith_clamp_u32(min(39171u, u_input.b.x), _wgslsmith_add_u32(arg_0.c.e, 0u), u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_0.a.e, 8768u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.c.e, var_0.b.a.e, 60689u, u_input.b.x), vec4<u32>(28080u, 70267u, var_0.b.c.e, u_input.a.x)), vec4<u32>(var_0.b.c.e, 27247u, var_0.b.a.e, 0u) >> (u_input.a % vec4<u32>(32u)))), arg_0.c.d).b.x);
    return Struct_3(all(!select(select(vec2<bool>(var_0.a, false), vec2<bool>(arg_0.b.x, var_0.a), arg_0.b.xx), !var_0.b.b.zz, func_3(vec4<u32>(23937u, var_0.b.c.e, 14610u, arg_0.a.e), vec3<u32>(0u, 0u, 47757u), 40839i, var_0.b.d).zx)), func_4(Struct_4(vec2<bool>(any(var_0.b.b), false), var_0.b, Struct_3(!var_1.x, Struct_2(Struct_1(vec3<f32>(var_0.b.a.c, var_0.b.c.a.x, -528f), false, arg_0.a.a.x, var_0.b.a.d, var_0.b.c.e), vec3<bool>(false, var_1.x, true), Struct_1(var_0.b.c.a, arg_0.a.b, arg_0.c.a.x, var_0.b.a.d, 1699u), true)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.c, var_0.b.c.a.x, -2036f), vec3<f32>(-1357f, arg_0.a.c, -516f), var_1)), 633i <= arg_0.a.d, var_0.b.c.c, 1i, 3968u)), var_1.xz, u_input.a, arg_0.c.d));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(func_4(Struct_4(vec2<bool>(func_2(Struct_2(Struct_1(vec3<f32>(-827f, -1000f, 1286f), true, -770f, -65858i, u_input.a.x), vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1228f, 213f, 337f), true, 801f, u_input.c, u_input.b.x), true), vec3<i32>(u_input.c, 32928i, u_input.c)), true), Struct_2(Struct_1(vec3<f32>(-1702f, 436f, -144f), true, -731f, 23597i, 10984u), vec3<bool>(true, false, true), Struct_1(vec3<f32>(347f, 3116f, 585f), true, 553f, 13902i, u_input.a.x), true), Struct_3(false, Struct_2(Struct_1(vec3<f32>(-685f, -208f, 570f), true, -521f, u_input.c, u_input.b.x), vec3<bool>(false, false, true), Struct_1(vec3<f32>(417f, 1811f, 1153f), false, 1739f, -15715i, u_input.b.x), false)), Struct_1(vec3<f32>(300f, -1180f, -363f), func_3(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), u_input.a.zww, u_input.c, true).x, _wgslsmith_f_op_f32(-841f + -279f), abs(-1i), ~4294967295u)), vec2<bool>(true, !all(vec3<bool>(false, true, true))), ~vec4<u32>(20413u, ~0u, 4294967295u, 63083u), 1i));
    var var_1 = 181f;
    var_0 = Struct_3(var_0.a, func_4(Struct_4(vec2<bool>(var_0.b.d, true), var_0.b, func_5(func_4(Struct_4(vec2<bool>(true, var_0.b.b.x), var_0.b, Struct_3(var_0.b.c.b, var_0.b), Struct_1(var_0.b.c.a, false, 1878f, 2147483647i, 4294967295u)), vec2<bool>(true, var_0.b.a.b), vec4<u32>(1u, 0u, 0u, u_input.a.x), -1i)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-161f, -149f, var_0.b.c.c))), true, _wgslsmith_f_op_f32(trunc(var_0.b.c.a.x)), ~0i, 36498u)), var_0.b.b.xz, u_input.a, u_input.c));
    let var_2 = abs(vec2<i32>(0i, -(~(-29040i))));
    var var_3 = Struct_1(var_0.b.a.a, -7802i >= ~(var_2.x | -6744i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f), 529f)) * _wgslsmith_f_op_f32(-var_0.b.a.a.x)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, abs(u_input.c)), _wgslsmith_sub_i32(~(u_input.c ^ u_input.c), -2147483647i)), _wgslsmith_dot_vec2_u32(u_input.b, ~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(404u, 64982u), u_input.b, vec2<bool>(var_0.a, var_0.a)), u_input.a.yw, max(u_input.a.xw, vec2<u32>(u_input.b.x, u_input.b.x)))));
    return func_5(var_0.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = arg_0.b.c;
    var var_1 = arg_0.b.a;
    let var_2 = Struct_2(arg_0.b.c, arg_1.b.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, arg_0.b.c.a.x, arg_0.b.a.a.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1409f, arg_1.b.a.c, var_0.c), var_1.a)), func_3(vec4<u32>(arg_1.b.c.e, var_1.e, 12666u, arg_1.b.c.e), vec3<u32>(u_input.a.x, u_input.a.x, 32813u), -2147483647i, var_0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, arg_0.b.a.c, 327f))))), !var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-378f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(403f + -1252f)))), _wgslsmith_mod_i32(1i, firstLeadingBit(-u_input.c)), 4294967295u), var_1.b);
    let var_3 = arg_0;
    var var_4 = ~(~1u);
    return vec2<bool>(_wgslsmith_f_op_f32(arg_0.b.a.a.x - -615f) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(-var_2.c.c)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), u_input.c > -31433i), select(func_6(Struct_3(true, Struct_2(Struct_1(vec3<f32>(-1070f, -530f, -471f), true, -441f, u_input.c, 0u), vec3<bool>(false, true, false), Struct_1(vec3<f32>(566f, 407f, 290f), true, -1000f, u_input.c, u_input.b.x), false)), func_1()), vec2<bool>(true, 20240u != u_input.a.x), func_5(func_5(Struct_2(Struct_1(vec3<f32>(300f, 698f, 1043f), true, -558f, 0i, 8847u), vec3<bool>(true, true, false), Struct_1(vec3<f32>(-952f, -1447f, -1000f), false, -728f, -2147483647i, u_input.b.x), true)).b).b.b.yz), func_5(Struct_2(func_5(Struct_2(Struct_1(vec3<f32>(297f, 507f, -173f), false, 1912f, -2147483647i, 4294967295u), vec3<bool>(true, true, true), Struct_1(vec3<f32>(1625f, -534f, -672f), true, -1282f, u_input.c, 35601u), true)).b.a, vec3<bool>(true, true, false), func_4(Struct_4(vec2<bool>(true, false), Struct_2(Struct_1(vec3<f32>(901f, -258f, -2643f), false, 1752f, u_input.c, 18193u), vec3<bool>(true, true, false), Struct_1(vec3<f32>(-340f, 1774f, -1079f), false, 677f, u_input.c, u_input.b.x), true), Struct_3(false, Struct_2(Struct_1(vec3<f32>(-459f, 1302f, 1756f), true, 523f, u_input.c, 11556u), vec3<bool>(true, false, true), Struct_1(vec3<f32>(-2472f, 212f, -1695f), true, 1790f, -24377i, 26607u), true)), Struct_1(vec3<f32>(-1005f, 1081f, -162f), false, -936f, u_input.c, 103459u)), vec2<bool>(true, false), u_input.a, 1i).c, all(vec2<bool>(true, false)))).b.b.yx);
    var var_1 = Struct_4(!func_3(abs(u_input.a) & min(u_input.a, u_input.a), vec3<u32>(~0u, ~u_input.b.x, _wgslsmith_add_u32(68606u, 47100u)), -1i, false).zy, func_4(Struct_4(!vec2<bool>(true, var_0.x), Struct_2(Struct_1(vec3<f32>(-307f, -1000f, 1870f), false, -711f, 69356i, u_input.b.x), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec3<f32>(1208f, -1408f, -1349f), true, 191f, u_input.c, 42714u), false), Struct_3(var_0.x, Struct_2(Struct_1(vec3<f32>(365f, -136f, 1000f), true, 924f, u_input.c, u_input.a.x), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec3<f32>(527f, 930f, 763f), false, -933f, -2147483647i, u_input.b.x), true)), func_5(Struct_2(Struct_1(vec3<f32>(274f, 1226f, -413f), var_0.x, -866f, u_input.c, u_input.a.x), vec3<bool>(false, var_0.x, false), Struct_1(vec3<f32>(-1338f, 2668f, -270f), false, -552f, u_input.c, 52780u), var_0.x)).b.a), func_3(vec4<u32>(u_input.a.x, min(25568u, u_input.b.x), u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a.x)), ~max(u_input.a.zzx, u_input.a.wwz), -1i, var_0.x).xx, _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_div_vec4_u32(u_input.a, u_input.a)), (vec4<u32>(u_input.a.x, 26987u, 4294967295u, 0u) | u_input.a) >> (u_input.a % vec4<u32>(32u)), countOneBits(u_input.a)), u_input.c), Struct_3(true || var_0.x, Struct_2(func_1().b.c, vec3<bool>(!var_0.x, true, all(vec2<bool>(var_0.x, var_0.x))), func_5(func_5(Struct_2(Struct_1(vec3<f32>(256f, 1000f, -362f), true, 1000f, u_input.c, 69373u), vec3<bool>(true, true, false), Struct_1(vec3<f32>(1000f, 375f, 626f), true, -219f, 22888i, 9898u), var_0.x)).b).b.a, var_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(120f, -1000f, -1610f) - vec3<f32>(1073f, -587f, 1000f))))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f * -1094f)), _wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(floor(-1009f)))), u_input.c, abs(49898u) ^ u_input.a.x));
    let var_2 = var_1.b.a.e;
    let var_3 = func_4(Struct_4(!vec2<bool>(all(vec4<bool>(false, var_0.x, true, var_0.x)), var_1.a.x), Struct_2(func_5(func_4(Struct_4(vec2<bool>(false, var_0.x), Struct_2(Struct_1(vec3<f32>(-2098f, -210f, -2220f), false, -1094f, u_input.c, 4294967295u), var_1.b.b, var_1.d, var_1.d.b), var_1.c, Struct_1(vec3<f32>(-1000f, -669f, -586f), false, 383f, u_input.c, var_1.d.e)), var_1.a, u_input.a, 14628i)).b.a, func_3(u_input.a, _wgslsmith_clamp_vec3_u32(u_input.a.yxx, u_input.a.yyw, vec3<u32>(u_input.b.x, u_input.b.x, 1u)), u_input.c, var_1.a.x), func_5(Struct_2(var_1.c.b.a, var_1.c.b.b, Struct_1(var_1.c.b.c.a, var_0.x, var_1.b.a.a.x, u_input.c, 4294967295u), false)).b.c, var_1.d.b), var_1.c, func_1().b.a), func_5(func_4(Struct_4(func_4(Struct_4(vec2<bool>(false, var_1.b.a.b), Struct_2(Struct_1(vec3<f32>(-451f, var_1.b.a.a.x, var_1.c.b.a.c), var_1.a.x, -1951f, 20703i, 1761u), vec3<bool>(var_1.b.d, var_0.x, var_0.x), var_1.b.a, true), Struct_3(true, var_1.b), Struct_1(var_1.c.b.a.a, var_1.b.c.b, var_1.d.a.x, var_1.c.b.c.d, 35268u)), var_1.a, vec4<u32>(719u, var_1.b.a.e, var_1.b.a.e, 1u), u_input.c).b.xz, var_1.b, func_1(), func_4(Struct_4(vec2<bool>(var_1.c.a, true), var_1.b, var_1.c, Struct_1(vec3<f32>(var_1.d.a.x, var_1.b.a.c, var_1.d.a.x), var_0.x, -558f, 0i, u_input.a.x)), var_1.c.b.b.yz, vec4<u32>(0u, var_1.d.e, 1u, 0u), u_input.c).a), var_1.a, u_input.a, 0i)).b.b.zz, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, var_1.c.b.c.e) ^ u_input.a) | ~u_input.a, (u_input.a & _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)) ^ vec4<u32>(u_input.b.x, ~u_input.a.x, ~u_input.a.x, _wgslsmith_mult_u32(85741u, 1u))), ~(0i << (_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % 32u))).a;
    var_0 = func_5(func_1().b).b.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.b.c.a.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.b.c.a.xy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(308f, var_3.a.x) - vec2<f32>(616f, var_3.c)))), vec3<i32>(_wgslsmith_sub_i32(16606i, var_3.d), 2147483647i, max(var_1.c.b.a.d, var_1.c.b.a.d ^ (25368i >> (u_input.a.x % 32u)))));
}

