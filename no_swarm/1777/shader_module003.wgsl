struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: Struct_1 = Struct_1(false, 22650u, 57420u, vec3<f32>(-1955f, -200f, -1405f), vec4<f32>(-624f, -1430f, -1527f, 354f));

var<private> global2: i32;

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<vec3<i32>, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = -353f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.e.wx)))), global1.d.xy));
    var var_2 = global3[_wgslsmith_index_u32(min(45424u, global1.c), 11u)];
    var var_3 = Struct_1(true, 4294967295u, 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d.x, var_2.e.x, -206f))) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(1110f - var_1.x), _wgslsmith_f_op_f32(-var_2.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-984f, var_2.d.x, 884f) - _wgslsmith_f_op_vec3_f32(-var_2.e.xzx)))), vec4<f32>(_wgslsmith_f_op_f32(383f - -1756f), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-885f, global1.d.x), _wgslsmith_f_op_f32(round(var_1.x)))))), _wgslsmith_f_op_f32(step(-2284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))))));
    var var_4 = !(!(!any(!vec4<bool>(global1.a, true, global1.a, false))));
    return 56666u >> (var_3.c % 32u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1.a;
    global2 = -2147483647i;
    let var_1 = Struct_1(!arg_1.a, 2327u, func_3(~vec4<u32>(0u ^ u_input.b, firstLeadingBit(34668u), max(u_input.b, 1u), _wgslsmith_mod_u32(48903u, u_input.b))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1838f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-272f + 158f))), _wgslsmith_f_op_f32(-arg_1.d.x)))), arg_1.e);
    global2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, 423i) >> (1u % 32u), 114876i);
    let var_2 = ~vec4<u32>(~(~0u), 30901u, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(8167u, global1.c, 27515u, 40796u), ~vec4<u32>(16361u, 18284u, 0u, global1.c)), ~(~vec4<u32>(4294967295u, 4294967295u, u_input.b, var_1.c))), min(0u, firstLeadingBit(select(1u, 461u, arg_0))));
    return Struct_1(global1.a, 0u, max(~arg_1.c, func_3(var_2) ^ ~min(u_input.b, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-541f)), -603f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.e.x * 145f))))), vec4<f32>(var_1.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(global1.d.x, arg_1.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.x))))), arg_1.e.x, _wgslsmith_f_op_f32(select(var_1.d.x, _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_div_u32(var_2.x, var_1.c) >= select(17406u, u_input.b, arg_1.a)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    global2 = arg_1;
    var var_0 = arg_2.b;
    let var_1 = global3[_wgslsmith_index_u32(8628u, 11u)];
    let var_2 = func_2(!(!var_1.a), global3[_wgslsmith_index_u32(max(arg_2.c, global1.c), 11u)]);
    var var_3 = Struct_1(select(all(select(select(vec4<bool>(true, false, true, var_1.a), vec4<bool>(global1.a, arg_0.x, arg_0.x, true), false), !vec4<bool>(var_1.a, true, arg_2.a, false), !vec4<bool>(true, false, true, arg_2.a))), true, false), 0u, global1.c, _wgslsmith_f_op_vec3_f32(global1.d + vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-arg_2.d.x), 231f)), _wgslsmith_f_op_vec4_f32(arg_2.e - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(global1.e.x + 1000f), -976f, _wgslsmith_f_op_f32(-1318f - 844f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-411f, var_1.e.x, 120f, global1.d.x))) + vec4<f32>(2229f, -1154f, var_2.d.x, 1037f)))));
    return ~u_input.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x))), 1260f, func_2(true, Struct_1(false, global1.c, 1u, global1.e.yxy, vec4<f32>(global1.e.x, global1.e.x, global1.e.x, global1.d.x))).d.x, arg_1.d.x))));
    global3 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 20655u)), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, global1.b), ~(~vec2<u32>(48633u, 1u)))), ~(~81499u));
    var var_2 = vec4<u32>(~_wgslsmith_mult_u32(firstTrailingBit(min(global1.c, u_input.b)), ~1u), 3467u, ~35914u, 4294967295u);
    var var_3 = _wgslsmith_div_vec2_i32((firstLeadingBit(u_input.a.ww) >> (vec2<u32>(abs(0u), 4294967295u) % vec2<u32>(32u))) << ((((vec2<u32>(u_input.b, 0u) >> (vec2<u32>(4294967295u, global1.b) % vec2<u32>(32u))) | vec2<u32>(0u, 18131u)) & countOneBits(var_2.xy)) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.a.x));
    return func_2(global1.a, arg_1);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(global1.a, func_4(4294967295u, Struct_1(!func_4(4294967295u, Struct_1(global1.a, arg_2.b, 61662u, arg_3.e.wwy, arg_3.e), Struct_1(arg_2.a, 0u, 40120u, global1.e.xyw, global1.e), vec4<bool>(false, true, arg_2.a, global1.a)).a, func_3(~vec4<u32>(0u, global1.b, arg_2.b, u_input.b)), arg_1, arg_2.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, 793f, arg_3.d.x, -556f))))), arg_2, select(select(!vec4<bool>(false, false, true, global1.a), vec4<bool>(true, false, true, true), vec4<bool>(arg_3.a, arg_2.a, false, global1.a)), select(vec4<bool>(arg_2.a, arg_2.a, false, global1.a), vec4<bool>(arg_2.a, true, arg_2.a, global1.a), vec4<bool>(global1.a, global1.a, arg_2.a, false)), any(select(vec2<bool>(global1.a, arg_3.a), vec2<bool>(false, false), global1.a))))).e;
    var var_1 = arg_3;
    let var_2 = func_4(u_input.b, Struct_1(!all(vec4<bool>(arg_2.a, true, false, false)), var_1.c, u_input.b, arg_3.e.yxz, _wgslsmith_f_op_vec4_f32(-var_0)), func_4(0u, func_2(true, Struct_1(arg_2.a, global1.b | 0u, _wgslsmith_sub_u32(global1.c, 34206u), func_4(61090u, global3[_wgslsmith_index_u32(1273u, 11u)], Struct_1(arg_2.a, u_input.b, 7033u, arg_2.e.zyx, arg_2.e), vec4<bool>(global1.a, var_1.a, false, false)).d, _wgslsmith_div_vec4_f32(arg_3.e, var_1.e))), arg_2, select(!(!vec4<bool>(arg_2.a, arg_3.a, false, arg_3.a)), vec4<bool>(arg_2.a, false, !var_1.a, true), false)), vec4<bool>(false, true, arg_3.a, false));
    global3 = array<Struct_1, 11>();
    var var_3 = Struct_1(true, global1.c, arg_2.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(120f, 539f, arg_0), vec3<f32>(1000f, var_2.e.x, 425f))), _wgslsmith_f_op_vec3_f32(min(arg_3.e.xwx, func_4(4294967295u, arg_2, Struct_1(arg_2.a, arg_3.c, arg_1, vec3<f32>(-102f, 793f, var_2.e.x), vec4<f32>(arg_2.e.x, -684f, var_1.e.x, 432f)), vec4<bool>(false, false, true, arg_2.a)).e.zwy))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-774f, var_2.d.x, -1346f))), func_2(false, arg_2).d), vec3<f32>(_wgslsmith_div_f32(660f, var_1.d.x), var_1.d.x, _wgslsmith_f_op_f32(max(global1.e.x, var_2.d.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1276f, var_0.x)))), _wgslsmith_div_f32(func_4(_wgslsmith_sub_u32(arg_2.b, 4294967295u), func_2(arg_2.a, Struct_1(false, 0u, var_2.b, global1.e.zyx, vec4<f32>(-329f, var_1.d.x, var_1.e.x, -1000f))), func_2(global1.a, var_2), select(vec4<bool>(true, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, false, true), var_2.a)).e.x, _wgslsmith_f_op_f32(floor(1000f))), arg_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1001f)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))), global1.d.x));
    var var_1 = func_5(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(global1.c, global1.c, u_input.b, 4294967295u), vec4<u32>(40062u, 109664u, global1.b, global1.c)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(u_input.b, 91673u, 1u, 48244u)), vec4<u32>(~(~0u), abs(0u), u_input.b, 0u)), func_4(select(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 67263u), 9810u, func_1(vec3<bool>(global1.a, global1.a, false), u_input.a.x, global3[_wgslsmith_index_u32(0u, 11u)], true)), global1.a), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 11u)], Struct_1(false && any(vec2<bool>(true, global1.a)), _wgslsmith_add_u32(0u, u_input.b), 4294967295u, global1.e.zwy, vec4<f32>(-1257f, 635f, _wgslsmith_f_op_f32(max(104f, 879f)), func_2(global1.a, global3[_wgslsmith_index_u32(1u, 11u)]).d.x)), !(!select(vec4<bool>(global1.a, global1.a, true, false), vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(true, global1.a, global1.a, global1.a)))), Struct_1(true, _wgslsmith_add_u32(u_input.b >> (select(u_input.b, u_input.b, false) % 32u), 127858u), global1.b, func_2(true, global3[_wgslsmith_index_u32(1u, 11u)]).d, vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f + global1.d.x) * _wgslsmith_f_op_f32(var_0.x - var_0.x)), 1f)));
    let var_2 = func_2(false, func_5(var_0.x, firstTrailingBit(~func_5(-701f, u_input.b, Struct_1(false, 0u, global1.b, vec3<f32>(223f, -407f, var_0.x), vec4<f32>(188f, var_1.e.x, var_0.x, global1.e.x)), global3[_wgslsmith_index_u32(4294967295u, 11u)]).c), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x + -1000f) - 223f), _wgslsmith_mod_u32(~global1.c, 4294967295u << (var_1.b % 32u)), global3[_wgslsmith_index_u32(u_input.b << (~u_input.b % 32u), 11u)], Struct_1(true, ~4294967295u, 4294967295u, func_2(global1.a, global3[_wgslsmith_index_u32(8252u, 11u)]).e.zxz, func_5(-501f, global1.b, Struct_1(global1.a, 4294967295u, u_input.b, vec3<f32>(2115f, global1.e.x, var_1.e.x), global1.e), global3[_wgslsmith_index_u32(4294967295u, 11u)]).e)), Struct_1(all(!vec3<bool>(global1.a, var_1.a, var_1.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(27488u, var_1.c, 4294967295u) | vec3<u32>(78830u, var_1.c, global1.c), ~vec3<u32>(var_1.c, u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, 1u), vec2<u32>(var_1.b, 36399u)), firstLeadingBit(vec2<u32>(global1.c, 1u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(952f, -180f, global1.e.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -804f, global1.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e + vec4<f32>(var_0.x, var_1.d.x, var_1.d.x, var_0.x))))));
    var var_3 = ~min(~countOneBits(min(vec2<u32>(global1.c, u_input.b), vec2<u32>(var_2.b, 1u))), ~abs(vec2<u32>(27946u, 27739u)) >> (vec2<u32>(global1.c, ~4294967295u) % vec2<u32>(32u)));
    let var_4 = var_2;
    let var_5 = vec3<u32>(0u, ~35721u, ~9368u);
    let var_6 = _wgslsmith_div_i32(2980i, u_input.a.x) & u_input.a.x;
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) * _wgslsmith_div_f32(640f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d.x - -1343f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2618f, var_4.d.x)), _wgslsmith_f_op_f32(231f * _wgslsmith_f_op_f32(global1.e.x - 442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(537f, var_4.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_4.d.x, var_4.d.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, var_1.d.x, global1.d.x, -294f) * vec4<f32>(var_4.d.x, 901f, -232f, -197f))))));
}

