struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(293f, 694f) * _wgslsmith_f_op_f32(min(-397f, 467f))) + -264f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1199f) - -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-874f, -1000f, global0.a.x))))))));
    let var_1 = Struct_1(!(!vec2<bool>(false, arg_2.a.x)));
    var var_2 = ~(~vec3<u32>(arg_1.x, 10278u, ~reverseBits(1u)));
    var var_3 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x | 1u, max(var_2.x, 0u)), vec2<u32>(_wgslsmith_sub_u32(56762u, arg_1.x), ~var_2.x)) | var_2.xy, 66612u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 553f, -499f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 610f, var_0), vec3<f32>(var_0, var_0, var_0)))) * vec3<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, true)), -1875f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -809f), var_0)))), Struct_1(!(!(!arg_2.a))));
    let var_4 = global0.a.x;
    return arg_1.x;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, arg_0.c.x) + vec2<f32>(638f, arg_0.c.x)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -649f) * vec2<f32>(505f, -1000f)), vec2<f32>(arg_0.c.x, -192f)))) - _wgslsmith_f_op_vec2_f32(-arg_0.c.xz));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.c.yz, arg_0.c.xy)) + arg_0.c.xz);
    return firstLeadingBit(max(func_3(firstLeadingBit(u_input.b.xz & u_input.b.wx), vec2<u32>(countOneBits(4294967295u), select(arg_0.b, arg_0.b, true)), Struct_1(vec2<bool>(true, false))), arg_0.a.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1622f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 901f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(319f, -765f) - -316f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f - -228f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.zy)) - _wgslsmith_f_op_vec2_f32(var_0.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.zy, vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    global0 = arg_1;
    var var_2 = vec3<bool>(!(!any(vec4<bool>(false, arg_0, arg_0, arg_3.x))), !all(select(vec4<bool>(arg_1.a.x, arg_2, arg_0, true), vec4<bool>(arg_2, arg_0, global0.a.x, arg_1.a.x), true)) & !(select(arg_0, true, arg_1.a.x) && false), select(any(vec3<bool>(arg_0, true, arg_2)) & select(false, true, arg_3.x), true, true) & true);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 862f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x, true)), any(select(vec2<bool>(!global0.a.x, arg_1.a.x && true), arg_3.yy, true & any(vec4<bool>(global0.a.x, false, false, arg_3.x))))));
    return Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u) | select(~vec2<u32>(0u, 57683u), vec2<u32>(0u, 1u), arg_2), select(vec2<u32>(18969u, 4294967295u), vec2<u32>(25267u, 11476u), true) >> (~vec2<u32>(74674u, 69400u) % vec2<u32>(32u))), ~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_3)) + vec3<f32>(var_1.x, var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), Struct_1(select(vec2<bool>(true, true), select(select(arg_1.a, global0.a, var_2.zy), vec2<bool>(false, arg_0), false), select(global0.a, vec2<bool>(arg_1.a.x, false), all(var_2.yy)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = func_4(~(_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a) ^ arg_0.b) < (~arg_0.b << (~func_2(Struct_2(arg_0.a, 61114u, arg_0.c, arg_0.d)) % 32u)), Struct_1(vec2<bool>(true & (55900i <= var_0), global0.a.x)), global0.a.x, vec3<bool>(any(vec4<bool>(true, all(vec3<bool>(false, arg_0.d.a.x, false)), arg_0.d.a.x & false, arg_0.d.a.x)), all(!select(vec4<bool>(false, true, arg_0.d.a.x, global0.a.x), vec4<bool>(false, true, global0.a.x, arg_0.d.a.x), vec4<bool>(true, false, true, false))), !any(global0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(467f)));
    var_1 = arg_0;
    var var_3 = firstTrailingBit(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, var_0) & u_input.b.wzz, u_input.b.wzy)));
    return func_4(var_1.d.a.x, func_4(false, Struct_1(!var_1.d.a), var_1.d.a.x, vec3<bool>(false, !(var_1.c.x > arg_0.c.x), arg_0.d.a.x)).d, true, vec3<bool>(any(!select(vec4<bool>(global0.a.x, false, true, arg_0.d.a.x), vec4<bool>(false, false, true, var_1.d.a.x), global0.a.x)), true, var_1.d.a.x | !all(vec2<bool>(true, arg_0.d.a.x)))).d;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(557f, -520f))) + vec2<f32>(2047f, 772f))) + vec2<f32>(-274f, -545f)), vec2<f32>(1f, _wgslsmith_f_op_f32(max(-1233f, _wgslsmith_f_op_f32(func_4(false, arg_1, global0.a.x, vec3<bool>(false, false, global0.a.x)).c.x + -1416f))))));
    let var_1 = 1354f;
    global0 = func_4(-766f != _wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(-311f * var_0.x)), func_4(-u_input.a >= 34772i, func_1(func_4(all(vec4<bool>(global0.a.x, false, true, false)), func_4(false, arg_1, true, vec3<bool>(arg_1.a.x, arg_1.a.x, false)).d, true, vec3<bool>(arg_1.a.x, false, arg_1.a.x))), !global0.a.x, vec3<bool>(true, (arg_0.x & arg_0.x) <= arg_0.x, global0.a.x)).d, arg_1.a.x, !(!select(select(vec3<bool>(true, true, global0.a.x), vec3<bool>(arg_1.a.x, false, false), true), vec3<bool>(global0.a.x, false, false), vec3<bool>(true, true, true)))).d;
    global0 = Struct_1(arg_1.a);
    global0 = arg_1;
    return Struct_2(~max(select(countOneBits(arg_0.yz), ~arg_0.yw, arg_1.a), _wgslsmith_div_vec2_u32(arg_0.zy, arg_0.wy)), ~(countOneBits(~arg_0.x) & ~71887u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))), _wgslsmith_f_op_f32(ceil(func_4(arg_0.x <= arg_0.x, arg_1, true, !vec3<bool>(global0.a.x, global0.a.x, true)).c.x)), _wgslsmith_f_op_f32(min(-728f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(999f)), _wgslsmith_f_op_f32(ceil(var_1)))))), Struct_1(!arg_1.a));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = func_3(-(~vec2<i32>(-1i, u_input.a) >> (arg_0.a % vec2<u32>(32u))), vec2<u32>(~0u, _wgslsmith_mult_u32(min(46476u, 37393u), _wgslsmith_mult_u32(arg_3, 1u))), arg_0.d) << (20089u % 32u);
    var var_1 = max(_wgslsmith_mod_i32(u_input.b.x, 25595i), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 0i, 2147483647i)), u_input.a)), -2147483647i));
    var var_2 = u_input.b;
    var var_3 = vec3<bool>(global0.a.x, arg_2, false);
    var_2 = ~vec4<i32>(select(u_input.a | _wgslsmith_div_i32(u_input.b.x, var_2.x), _wgslsmith_add_i32(37822i, 733i >> (arg_0.a.x % 32u)), false), ~min(i32(-1i) * -1i, var_2.x), _wgslsmith_mult_i32(u_input.a, 0i) ^ (_wgslsmith_div_i32(var_2.x, -54782i) ^ -2785i), u_input.b.x);
    return 27370u;
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    global0 = Struct_1(!vec2<bool>(arg_0.d.a.x | select(false, arg_0.d.a.x, global0.a.x), all(func_4(arg_0.d.a.x, arg_0.d, true, vec3<bool>(true, global0.a.x, arg_0.d.a.x)).d.a)));
    var var_0 = vec2<u32>(func_6(arg_0, Struct_1(!vec2<bool>(false, global0.a.x)), false, 1340u), 1730u);
    global0 = arg_0.d;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1556f - -229f), _wgslsmith_f_op_f32(-var_1.c.x), func_4(false, var_1.d, var_1.d.a.x, vec3<bool>(true, arg_0.d.a.x, var_1.d.a.x)).d.a.x & !global0.a.x))));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -29351i;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 24974u, 0u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u))), vec3<u32>(1u, 1u, 1u)), min(vec3<u32>(4294967295u, countOneBits(_wgslsmith_add_u32(24514u, 43172u)), 4294967295u), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u))));
    global0 = func_7(Struct_2(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(var_1, var_1)), reverseBits(vec2<u32>(4294967295u, 18260u) | vec2<u32>(4294967295u, var_1))), func_6(func_5(vec4<u32>(var_1, 26104u, 9097u, var_1), func_1(Struct_2(vec2<u32>(var_1, var_1), var_1, vec3<f32>(361f, 498f, -598f), Struct_1(vec2<bool>(global0.a.x, false))))), Struct_1(select(vec2<bool>(global0.a.x, true), vec2<bool>(true, global0.a.x), global0.a.x)), true, var_1), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1139f, -1112f, 219f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(860f, 1235f, 2218f))), vec3<f32>(-628f, -228f, -720f))))), Struct_1(!func_1(Struct_2(vec2<u32>(1u, 30418u), var_1, vec3<f32>(-1904f, -491f, -1060f), Struct_1(global0.a))).a)));
    let var_2 = vec3<bool>(true, func_5(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_1, 36690u, var_1)), ~vec4<u32>(15328u, var_1, var_1, 1u)), ~(~vec4<u32>(118431u, 69418u, var_1, var_1))), func_4(!(var_1 == var_1), Struct_1(select(vec2<bool>(false, global0.a.x), vec2<bool>(true, global0.a.x), global0.a.x)), ~1i <= ~u_input.a, vec3<bool>(true, true, global0.a.x)).d).d.a.x, -310f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(311f, -1188f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1323f, 496f) - func_5(vec4<u32>(var_1, 34056u, var_1, 32242u), Struct_1(global0.a)).c.x), false)));
    global0 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-901f);
}

