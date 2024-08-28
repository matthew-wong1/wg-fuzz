struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: f32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(960f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(436f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(343f)))))));
    let var_1 = true;
    let var_2 = 1f;
    var var_3 = Struct_2(vec4<bool>(!var_1, !select(true, false, var_1), any(!vec3<bool>(var_1, false, false)), any(vec4<bool>(var_1, var_1, var_2 > 281f, all(vec2<bool>(var_1, var_1))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, -633f, var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + -1551f), _wgslsmith_f_op_f32(306f * var_2)))))), vec3<bool>(false, var_1, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -319f), select(select(!vec3<bool>(false, var_1, var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_1, var_1)), !vec3<bool>(var_1, var_1, true)), vec3<bool>(var_1, any(vec2<bool>(true, var_1)), var_1 | true), !(!vec3<bool>(var_1, var_1, var_1)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.d.a, var_2) * -253f), select(select(var_3.c, select(select(vec3<bool>(true, var_3.d.b.x, var_3.c.x), var_3.a.wzy, true), var_3.c, var_1), var_3.d.b), select(var_3.c, var_3.a.zzw, (u_input.a.x <= u_input.a.x) | false), all(vec3<bool>(all(var_3.c), true, 4773i < u_input.a.x))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = Struct_3(func_2(), reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.wx, min(~u_input.a.yw, vec2<i32>(0i, 0i)))));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.a)))), select(!(!var_0.a.b), select(!vec3<bool>(var_0.a.b.x, arg_0.b.d.b.x, false), arg_0.b.a.yxw, !arg_0.b.a.xyw), !arg_0.b.c)), ~u_input.a.zz);
    let var_1 = Struct_4(~(~arg_0.a), Struct_2(arg_0.b.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.b.b), arg_0.b.b)), arg_0.b.c, Struct_1(var_0.a.a, arg_0.b.d.b)), 0u);
    let var_2 = func_2().a;
    var_0 = Struct_3(func_2(), select(vec2<i32>(abs(_wgslsmith_mult_i32(u_input.a.x, var_0.b.x)), ~select(-29340i, u_input.a.x, var_1.b.c.x)), (_wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(u_input.a.x, u_input.a.x)) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_0.b.x), vec2<i32>(-24377i, var_0.b.x))) >> (firstTrailingBit(vec2<u32>(arg_0.c, 0u)) % vec2<u32>(32u)), select(var_0.a.b.zx, !vec2<bool>(var_1.b.d.b.x, false), !(!arg_0.b.a.x))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.b.b.xwy, vec3<f32>(var_2, -439f, var_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1849f, var_0.a.a))))), var_1.b.b.wwz));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = 1i;
    let var_1 = _wgslsmith_sub_u32(firstLeadingBit(abs(_wgslsmith_mod_u32(~4294967295u, 1u))), min(_wgslsmith_mod_u32(1u, 4294967295u), 1u));
    var var_2 = Struct_3(func_2(), abs(u_input.a.zy));
    var var_3 = Struct_3(var_2.a, u_input.a.xw);
    var var_4 = Struct_4(var_1, Struct_2(!vec4<bool>(false, false, true, !var_3.a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.a.a - var_2.a.a), -373f, -1391f, 299f)), var_2.a.b, func_2()), (_wgslsmith_add_u32(~104754u, ~var_1) | 75120u) | 19490u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.a - arg_0.x), -1424f) - _wgslsmith_f_op_f32(221f - var_3.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x - -910f), arg_1.b.x, !var_2.a.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.a, -193f))), -797f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(0u, Struct_2(var_4.b.a, var_4.b.b, vec3<bool>(var_3.a.b.x, true, arg_1.d.b.x), Struct_1(816f, var_4.b.d.b)), 4294967295u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-742f, 186f, 1577f) - vec3<f32>(var_4.b.b.x, -1207f, var_4.b.b.x)) + _wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1624f, 539f, -660f), vec3<f32>(177f, 923f, -519f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, -1i);
    var var_1 = -(~(-2147483647i)) > ~(abs(var_0) | u_input.a.x);
    let var_2 = !(!(!arg_1));
    var_1 = false && (any(vec3<bool>(true, true, true)) || true);
    let var_3 = func_2().a;
    return Struct_2(select(vec4<bool>(var_2, true, true, var_2), vec4<bool>(var_2 != !arg_1, arg_1, true, true), vec4<bool>(arg_1, !select(arg_1, false, true), var_2, any(vec2<bool>(arg_1, var_2)) & true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1379f, arg_2.x, arg_0.x) + vec4<f32>(var_3, -1000f, 386f, 268f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1740f, -1404f, arg_2.x, arg_0.x) - vec4<f32>(arg_0.x, 426f, var_3, 818f)), vec4<f32>(1000f, -268f, arg_2.x, arg_2.x))))), !vec3<bool>(true, false | !var_2, true), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~794u, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-215f, _wgslsmith_f_op_f32(f32(-1f) * -241f), -483f) - _wgslsmith_div_vec3_f32(vec3<f32>(166f, -1000f, 1454f), _wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(-745f, 1263f, 1000f), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(1617f, -1244f, -1175f, 1920f), vec3<bool>(false, false, false), Struct_1(149f, vec3<bool>(false, true, false))))))), all(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, 1851f, 1573f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-502f, -391f, 227f))), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, 117f, -2384f)))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstTrailingBit(12813u) << (22055u % 32u), 1u), 46181u, _wgslsmith_div_u32(abs(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 42191u), vec2<u32>(36650u, 1u)) ^ 4294967295u)));
    var_0 = Struct_4(min(0u ^ max(1u, var_0.a), ~13594u), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1313f, 167f, var_0.b.b.x)))), !(!var_0.b.d.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b.www))), 1u);
    let var_1 = func_4(var_0.b.b.zxw, true, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f), 1176f), -1216f, -572f)).d;
    let var_2 = var_0.b.b.wxy;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * var_1.a) - 1290f), func_2().b);
    var var_4 = 0u;
    let var_5 = Struct_4(4294967295u, Struct_2(func_4(var_0.b.b.zxw, var_1.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.b.b.wxx - vec3<f32>(1457f, 164f, var_1.a)), _wgslsmith_f_op_vec3_f32(-var_0.b.b.zww)))).a, _wgslsmith_f_op_vec4_f32(select(var_0.b.b, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(var_0.b.d.a, 274f, var_1.a), Struct_2(var_0.b.a, var_0.b.b, vec3<bool>(false, false, var_3.b.x), Struct_1(-365f, vec3<bool>(var_3.b.x, false, var_1.b.x))))).x, var_3.a, _wgslsmith_f_op_vec3_f32(func_3(Struct_4(var_0.c, Struct_2(vec4<bool>(var_0.b.c.x, true, false, var_0.b.c.x), var_0.b.b, var_1.b, var_0.b.d), 10407u))).x, _wgslsmith_f_op_f32(var_1.a + var_1.a)), !func_4(vec3<f32>(var_1.a, 335f, 670f), true, vec3<f32>(var_3.a, var_3.a, var_1.a)).a)), vec3<bool>(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-328f, var_3.a, var_0.b.b.x))), func_4(var_0.b.b.xxw, false, vec3<f32>(1000f, 659f, var_3.a)).d.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, 995f, -810f))).a.x, all(func_2().b), var_1.a <= func_4(var_0.b.b.xzz, var_1.b.x, vec3<f32>(1246f, 837f, -168f)).d.a), func_2()), _wgslsmith_dot_vec3_u32(~(vec3<u32>(54839u, var_0.c, 52760u) | (vec3<u32>(4294967295u, 0u, 32790u) ^ vec3<u32>(8951u, var_0.a, var_0.a))), ~vec3<u32>(~var_0.c, ~1u, var_0.a)));
    var_4 = _wgslsmith_mult_u32(var_5.a, var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, select(u_input.a.x, -82601i, var_5.b.d.b.x)), _wgslsmith_mod_vec2_i32(abs(u_input.a.yz) << (~vec2<u32>(var_5.a, var_0.c) % vec2<u32>(32u)), vec2<i32>(~u_input.a.x, u_input.a.x))), 22470i, _wgslsmith_f_op_vec4_f32(-var_0.b.b), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_5.b.b.x - var_2.x))) + _wgslsmith_f_op_f32(func_4(vec3<f32>(var_3.a, 2277f, -1864f), true, vec3<f32>(var_0.b.b.x, var_2.x, -639f)).d.a - -229f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.d.a)) + -458f)));
}

