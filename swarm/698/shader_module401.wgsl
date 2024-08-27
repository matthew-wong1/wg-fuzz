struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_5) -> Struct_3 {
    let var_0 = !all(vec3<bool>(arg_2.d.x, any(arg_2.d), true));
    let var_1 = select(vec2<bool>(!var_0, !(!arg_1.x)), arg_2.d.yx, true);
    var var_2 = arg_0;
    var_2 = -375f;
    var var_3 = arg_2.c.a;
    return arg_2.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_4(arg_1.a, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - _wgslsmith_f_op_f32(arg_0.a.a.x * -452f))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_mult_u32(arg_1.c, 4294967295u), ~25127u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17227u, u_input.b.x, u_input.a.x), u_input.b))), vec4<u32>(_wgslsmith_clamp_u32(u_input.d, 0u, 27438u) | _wgslsmith_sub_u32(arg_1.c, 23744u), _wgslsmith_mod_u32(~77560u, 1u), _wgslsmith_mult_u32(~arg_1.c, ~1u), 1u)));
    var var_1 = ~1u;
    var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(584f, _wgslsmith_f_op_f32(min(-180f, -560f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_0.a.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1330f, arg_0.d.x) - arg_1.a.a.a.a), !var_0.a.a.b.x)))))));
    var_1 = ~(~firstLeadingBit(_wgslsmith_div_u32(2107u, 1u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-991f, -491f, arg_0.a.d, arg_0.d.x), vec4<f32>(arg_1.b, arg_0.d.x, 1433f, arg_1.b)), vec4<f32>(276f, 611f, 872f, -893f), vec4<bool>(true, true, arg_1.a.a.b.x, true))) - vec4<f32>(-135f, _wgslsmith_f_op_f32(var_2.x * var_0.b), _wgslsmith_div_f32(var_2.x, -184f), _wgslsmith_f_op_f32(-var_0.b)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_4) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.a.a.x - arg_2.a.a.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * -1193f)))), !select(!(!vec3<bool>(arg_2.a.b.x, false, arg_2.a.b.x)), select(vec3<bool>(true, false, arg_2.a.b.x), vec3<bool>(arg_2.a.b.x, false, false), select(vec3<bool>(arg_2.a.a.a.e, arg_2.a.b.x, true), vec3<bool>(true, true, arg_2.a.a.a.e), vec3<bool>(false, arg_2.a.a.a.e, true))), true), Struct_5(-firstTrailingBit(select(u_input.e.zw, u_input.e.zw, vec2<bool>(arg_2.a.b.x, arg_2.a.b.x))), 46046i, arg_2.a, select(vec4<bool>(true, arg_2.a.a.a.e, !arg_2.a.b.x, true), select(!vec4<bool>(false, false, false, arg_2.a.a.b.x), !vec4<bool>(arg_2.a.b.x, arg_2.a.a.b.x, arg_2.a.b.x, arg_2.a.b.x), vec4<bool>(false, arg_2.a.b.x, arg_2.a.b.x, arg_2.a.a.a.e)), true))).a.a.a.x;
    let var_1 = true;
    let var_2 = arg_2.a.a.a;
    let var_3 = arg_2.a;
    var_0 = -320f;
    return 0i;
}

fn func_1() -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(279f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-163f - -458f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f + 642f))))), vec3<bool>(true, select(any(vec3<bool>(true, true, false)), true, true), any(vec4<bool>(true, true, true, true))), Struct_5(u_input.e.xx, 0i, Struct_3(Struct_2(Struct_1(vec2<f32>(-1074f, 1074f), u_input.e.x, vec2<bool>(false, true), 825f, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), 0i & u_input.e.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -272f))), 1641i), vec2<bool>(true, false)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, false, all(vec3<bool>(false, true, false))))));
    var var_1 = var_0.a;
    var var_2 = var_1.a;
    let var_3 = var_0.a;
    var_1 = Struct_2(var_1.a, select(vec2<bool>(true, true), !var_1.b, select(true, !(var_1.b.x | var_1.b.x), true)), abs(_wgslsmith_mult_i32(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_1.a, var_0.a.a.c, u_input.e.x, var_0.a.d, 16430i), Struct_4(var_0, 1662f, 38394u), var_2.c)), ~(-2147483647i), Struct_4(var_0, -1256f, u_input.b.x)), 2147483647i)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-1f)), abs(var_2.b));
    return var_0.a.c;
}

fn func_5(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1011f, -587f))), _wgslsmith_dot_vec2_i32(u_input.e.xw, u_input.e.xx >> (reverseBits(vec2<u32>(660u, 1u)) % vec2<u32>(32u))), vec2<bool>((u_input.b.x >> (~0u % 32u)) != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 25064u, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(7106u, u_input.b.x, 54348u))), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-588f, -1000f), 1000f, all(vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(-1386f + _wgslsmith_f_op_f32(f32(-1f) * -1222f))))), !((select(arg_0, 0i, false) ^ 2147483647i) <= _wgslsmith_sub_i32(-9154i, firstTrailingBit(-1i))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a))) * var_0.a), var_0.b, select(select(func_2(-110f, select(vec3<bool>(var_0.e, false, false), vec3<bool>(false, true, var_0.e), false), Struct_5(vec2<i32>(-7255i, u_input.e.x), -1i, Struct_3(Struct_2(Struct_1(var_0.a, -14453i, var_0.c, -395f, false), var_0.c, -2147483647i, var_0.a, 1340i), var_0.c), vec4<bool>(var_0.c.x, true, var_0.e, true))).a.a.c, vec2<bool>(true, var_0.c.x), var_0.c), !(!vec2<bool>(false, var_0.e)), true), var_0.a.x, select(var_0.c.x, true, _wgslsmith_f_op_f32(f32(-1f) * -386f) <= _wgslsmith_f_op_f32(-1000f * var_0.d)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -171f)))), 32732i, vec2<bool>(false, all(!vec4<bool>(var_0.e, var_0.e, var_0.c.x, true))), -280f, true);
    let var_1 = select(all(vec3<bool>(true, var_0.e, true)), all(vec4<bool>(any(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.e)), any(!var_0.c), _wgslsmith_dot_vec3_i32(u_input.e.xwx, vec3<i32>(var_0.b, var_0.b, arg_0)) != max(-1578i, u_input.e.x), false)), any(select(!(!var_0.c), select(vec2<bool>(true, var_0.c.x), select(var_0.c, var_0.c, false), func_2(1095f, vec3<bool>(true, var_0.e, false), Struct_5(u_input.e.xz, var_0.b, Struct_3(Struct_2(Struct_1(var_0.a, u_input.e.x, var_0.c, -1678f, false), vec2<bool>(false, var_0.e), 28748i, vec2<f32>(var_0.d, -453f), 2147483647i), var_0.c), vec4<bool>(false, var_0.c.x, false, true))).b), !all(vec3<bool>(false, var_0.e, var_0.c.x)))));
    var_0 = func_2(_wgslsmith_f_op_f32(-var_0.a.x), select(select(select(!vec3<bool>(var_1, false, false), select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, var_0.e, false), vec3<bool>(var_0.c.x, false, false)), select(vec3<bool>(false, var_0.c.x, var_1), vec3<bool>(true, var_1, var_1), true)), !vec3<bool>(var_0.e, false, var_0.c.x), vec3<bool>(true, !var_0.e, var_1)), vec3<bool>(!var_1, true, var_1), false), Struct_5(-u_input.e.zw, u_input.e.x, Struct_3(Struct_2(func_2(1266f, vec3<bool>(true, false, var_1), Struct_5(vec2<i32>(2147483647i, u_input.e.x), u_input.e.x, Struct_3(Struct_2(Struct_1(vec2<f32>(var_0.a.x, -1486f), var_0.b, vec2<bool>(var_0.e, var_1), -208f, false), vec2<bool>(var_0.e, var_1), arg_0, vec2<f32>(var_0.d, var_0.d), -1i), var_0.c), vec4<bool>(false, true, var_0.c.x, false))).a.a, !var_0.c, ~u_input.e.x, vec2<f32>(var_0.a.x, var_0.d), 34345i), var_0.c), vec4<bool>(var_1, true, false, false))).a.a;
    return Struct_3(Struct_2(func_2(var_0.d, !select(vec3<bool>(var_0.e, false, true), vec3<bool>(var_1, true, false), var_1), Struct_5(u_input.e.zw, 2147483647i, func_2(var_0.a.x, vec3<bool>(var_1, true, var_0.e), Struct_5(u_input.e.yz, arg_0, Struct_3(Struct_2(Struct_1(vec2<f32>(var_0.d, var_0.a.x), var_0.b, vec2<bool>(var_1, var_1), 1058f, false), vec2<bool>(true, var_1), arg_0, vec2<f32>(2044f, -821f), 1i), var_0.c), vec4<bool>(var_1, false, var_0.e, false))), vec4<bool>(true, true, true, true))).a.a, select(select(!vec2<bool>(false, var_1), var_0.c, all(vec4<bool>(var_1, true, var_0.c.x, var_1))), var_0.c, (i32(-1i) * -2147483647i) > (-2147483647i << (u_input.a.x % 32u))), u_input.e.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, vec2<bool>(false, var_1)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d, -1116f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(665f, 1000f) * var_0.a))), -2147483647i), !select(var_0.c, vec2<bool>(false, false), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-firstTrailingBit(u_input.e.zw | (u_input.e.zz << (u_input.a % vec2<u32>(32u)))), u_input.e.x, func_5(func_1()), select(select(vec4<bool>(true, true, false, all(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), false), vec4<bool>(false, !(u_input.e.x < 2147483647i), true, !any(vec2<bool>(false, true))), !any(vec3<bool>(true, true, true))));
    var var_1 = Struct_4(var_0.c, func_5(-2147483647i).a.d.x, max(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), reverseBits(u_input.c.x) >> (u_input.a.x % 32u)));
    let var_2 = var_0.d;
    let var_3 = u_input.e;
    let var_4 = var_0.c.a.a;
    let var_5 = var_0;
    var var_6 = select(var_0.d.yxw, var_2.wyw, !var_0.d.x);
    let var_7 = false;
    var var_8 = var_5.c.a.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.wxz, vec2<u32>(4294967295u, ~(~(~3432u))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(~var_1.c, var_1.c), _wgslsmith_mult_vec2_u32(u_input.a, firstTrailingBit(u_input.b.xy)))), vec3<u32>(reverseBits((var_1.c ^ var_1.c) & select(0u, var_1.c, var_6.x)), _wgslsmith_add_u32(abs(select(u_input.b.x, u_input.c.x, var_7)), 131078u), _wgslsmith_mod_u32(~var_1.c, firstTrailingBit(u_input.a.x) | 1u)));
}

