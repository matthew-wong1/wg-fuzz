struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = false;
    let var_1 = -935f;
    var var_2 = vec3<f32>(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(591f)))))), -1000f);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, var_1, 773f) - vec3<f32>(var_1, -878f, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, 1033f, var_1) + vec3<f32>(var_2.x, 1000f, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2090f, -950f, -128f), vec3<f32>(-490f, var_2.x, var_2.x), vec3<bool>(false, true, true)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_f_op_f32(abs(1576f))))));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)))), _wgslsmith_f_op_f32(max(var_2.x, 382f)), _wgslsmith_f_op_f32(abs(449f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_div_f32(var_2.x, -165f), _wgslsmith_f_op_f32(-1174f - 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_2.x, -803f), vec3<f32>(-415f, -1122f, -2888f))), vec3<f32>(var_1, var_1, var_1))))));
    return !any(select(vec3<bool>(true, u_input.c.x < -1i, u_input.c.x < -973i), vec3<bool>(var_0, !var_0, true), !(true && var_0)));
}

fn func_2() -> vec4<bool> {
    let var_0 = all(select(vec4<bool>(func_3(), true, 1i < u_input.a.x, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 21251u, 4294967295u), vec3<u32>(3799u, 1u, 4718u)), ~vec3<u32>(1u, 98030u, 1u))), _wgslsmith_mult_u32(73198u, firstTrailingBit(abs(38820u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, -1296f, 152f)))), select(!vec3<bool>(select(var_0, false, false), any(vec2<bool>(true, true)), all(vec4<bool>(var_0, var_0, false, false))), !(!(!vec3<bool>(var_0, true, var_0))), select(vec3<bool>(true, var_0, true), vec3<bool>(!var_0, var_0, true), true)), -960f);
    var_1 = Struct_1(~var_1.a, var_1.b, !(!var_1.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-689f, var_1.d)) * var_1.b.x)))));
    var var_2 = Struct_2(select(var_1.c.zx, vec2<bool>(!(var_0 | false), _wgslsmith_div_u32(var_1.a, 1790u) == var_1.a), var_1.c.yx));
    var var_3 = Struct_3(Struct_2(select(select(select(var_1.c.yx, var_2.a, false), var_2.a, select(vec2<bool>(var_2.a.x, var_1.c.x), var_1.c.zy, true)), vec2<bool>(false, true), vec2<bool>(54478u >= var_1.a, 1u < var_1.a))), Struct_1(_wgslsmith_sub_u32(min(1u, ~var_1.a), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2063f, var_1.d, 587f)))), select(var_1.c, var_1.c, !vec3<bool>(false, false, var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + var_1.d)), Struct_1(_wgslsmith_mult_u32(select(var_1.a, var_1.a, false), 55249u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.b.x, var_1.d)))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(var_1.d + 1214f)) + _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_div_f32(1206f, var_1.b.x)))), Struct_1(_wgslsmith_add_u32(var_1.a, _wgslsmith_add_u32(~var_1.a, _wgslsmith_sub_u32(var_1.a, var_1.a))), var_1.b, var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-213f)), _wgslsmith_f_op_f32(select(-1217f, _wgslsmith_f_op_f32(f32(-1f) * -1082f), false | var_1.c.x))))), Struct_2(var_1.c.zx));
    return !select(vec4<bool>(var_2.a.x, all(var_1.c), -2147483647i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -50422i, u_input.c.x), u_input.b.wyw), var_0), select(!vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(all(vec4<bool>(false, false, false, false)), false, var_1.c.x, var_0), !func_3()), any(vec2<bool>(true, var_1.c.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(vec2<bool>(!any(arg_0), true)), Struct_1(arg_3.c.a | arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, arg_3.d.b.x, arg_3.d.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.b.d)), _wgslsmith_f_op_f32(sign(316f)), _wgslsmith_f_op_f32(323f - 747f))), vec3<bool>(arg_3.e.a.x, true, true), _wgslsmith_f_op_f32(step(-237f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1533f, -561f)), _wgslsmith_f_op_f32(-arg_3.d.d))))), arg_3.b, arg_3.d, arg_3.e);
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, var_0.b.b.x, -1031f, -652f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, -363f, var_0.c.b.x, arg_3.d.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.d, arg_3.d.d, -1631f, arg_3.b.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b.x, arg_3.c.d, -1398f, var_1.b.d) + vec4<f32>(var_1.d.d, 405f, -996f, arg_3.d.b.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-474f, -1295f, -126f, 221f), vec4<f32>(592f, 354f, 1151f, var_0.d.d), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.b.x, -704f, var_0.d.b.x, arg_3.b.d))))));
    var var_3 = var_1.a;
    var_1 = arg_3;
    return arg_0.xwy;
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(44686u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, -321f, -331f) * vec3<f32>(-611f, 1982f, 402f)), vec3<f32>(1475f, -683f, -487f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(176f, -255f, -1434f))))), select(vec3<bool>(false, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)), true), func_4(func_2(), _wgslsmith_sub_u32(~14852u, abs(0u)), max(firstLeadingBit(2147483647i), _wgslsmith_add_i32(u_input.b.x, 37998i)), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_1(4294967295u, vec3<f32>(170f, -753f, -104f), vec3<bool>(false, true, false), 354f), Struct_1(1u, vec3<f32>(-436f, -1051f, 1811f), vec3<bool>(true, false, false), 190f), Struct_1(1u, vec3<f32>(-1054f, -155f, -122f), vec3<bool>(false, true, false), 293f), Struct_2(vec2<bool>(false, true)))), false), -530f);
    var var_1 = Struct_3(Struct_2(!vec2<bool>(all(var_0.c.yy), any(vec3<bool>(var_0.c.x, false, true)))), var_0, Struct_1(~7259u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b) + _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.d, 450f, var_0.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, var_0.d, var_0.b.x))), vec3<f32>(var_0.b.x, var_0.d, var_0.d)))), vec3<bool>(var_0.c.x, all(var_0.c), var_0.c.x), var_0.b.x), var_0, Struct_2(select(var_0.c.xy, vec2<bool>(true, true), var_0.c.xx)));
    var var_2 = u_input.a.x;
    var var_3 = u_input.b | select(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, firstLeadingBit(u_input.b) & min(vec4<i32>(-7176i, u_input.c.x, 0i, u_input.a.x), u_input.b), ~u_input.b), vec4<bool>(func_3(), any(select(vec4<bool>(var_1.a.a.x, var_0.c.x, false, var_0.c.x), vec4<bool>(false, true, false, true), vec4<bool>(var_1.b.c.x, true, var_1.e.a.x, false))), !var_1.c.c.x, var_1.e.a.x));
    var_1 = Struct_3(Struct_2(func_2().wz), Struct_1(0u, var_1.d.b, func_4(!select(vec4<bool>(var_1.e.a.x, true, true, var_1.e.a.x), vec4<bool>(false, false, false, var_1.e.a.x), vec4<bool>(true, var_1.a.a.x, var_0.c.x, true)), _wgslsmith_div_u32(abs(1u), _wgslsmith_clamp_u32(var_1.b.a, var_0.a, 14913u)), -6848i, Struct_3(Struct_2(var_0.c.xy), Struct_1(29496u, var_1.d.b, var_0.c, -802f), var_1.d, var_1.d, Struct_2(var_0.c.yy))), var_1.b.d), var_1.b, Struct_1(~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b.a, var_1.c.a), vec3<u32>(50559u, 1u, var_0.a)) ^ var_0.a), _wgslsmith_f_op_vec3_f32(-var_0.b), select(var_1.b.c, !(!var_0.c), var_0.c), 770f), Struct_2(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d, var_1.d.b.x, var_0.d, _wgslsmith_f_op_f32(-var_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = u_input.c.x;
    let var_2 = u_input.a.x;
    var var_3 = (abs(u_input.b.x) ^ (_wgslsmith_sub_i32(firstLeadingBit(1i), -4113i) << (1u % 32u))) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -_wgslsmith_sub_i32(u_input.b.x, -37934i), var_2, -2147483647i), vec4<i32>(u_input.b.x & u_input.a.x, var_2 >> (56528u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-8043i, -1i), u_input.c), u_input.b.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var_3 = u_input.b.x;
    var var_4 = Struct_1(31589u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.ywx), vec3<f32>(714f, 2080f, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, var_0.x, _wgslsmith_div_f32(var_0.x, -232f)))), !vec3<bool>(func_4(vec4<bool>(true, true, true, false), _wgslsmith_add_u32(30207u, 0u), i32(-1i) * -79683i, Struct_3(Struct_2(vec2<bool>(true, true)), Struct_1(27479u, var_0.xzx, vec3<bool>(false, true, true), var_0.x), Struct_1(25201u, vec3<f32>(-1637f, -653f, var_0.x), vec3<bool>(false, false, true), var_0.x), Struct_1(0u, var_0.xxz, vec3<bool>(true, false, false), var_0.x), Struct_2(vec2<bool>(false, true)))).x, all(vec4<bool>(false, false, false, false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_0.x))) - -1086f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(countOneBits(219u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, var_4.a, 1u, countOneBits(var_4.a)), max(vec4<u32>(25745u, var_4.a, 1u, var_4.a), vec4<u32>(0u, 58462u, 0u, 0u) >> (vec4<u32>(0u, 19405u, var_4.a, 1u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zw)), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, -662f, _wgslsmith_f_op_f32(trunc(-658f))));
}

