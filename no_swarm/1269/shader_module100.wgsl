struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(30598i, vec4<bool>(false, false, true, true), true, vec4<bool>(true, true, true, false));

var<private> global3: array<vec3<bool>, 6>;

var<private> global4: array<bool, 13> = array<bool, 13>(false, true, false, true, true, true, false, false, false, true, false, false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = select(select(vec4<bool>(any(!vec4<bool>(true, global2.b.x, arg_0.b.b.b.x, true)), !any(vec2<bool>(true, true)), true, (global4[_wgslsmith_index_u32(arg_0.a.x, 13u)] | arg_2) || (arg_1 >= 29555u)), !(!global2.b), true), global2.d, ~abs(min(-28506i, arg_0.b.e.a)) != -33196i);
    global1 = global2.a;
    global1 = 16116i;
    let var_1 = max(-2147483647i, global2.a);
    let var_2 = Struct_3(arg_0.b.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f))) + -1000f);
}

fn func_2(arg_0: Struct_4) -> bool {
    global2 = Struct_1(arg_0.b.a.a, select(!global2.d, !vec4<bool>(all(vec2<bool>(global2.c, global4[_wgslsmith_index_u32(arg_0.a.x, 13u)])), true, true, false), false), true, select(select(select(global2.d, vec4<bool>(true, global2.c, arg_0.b.a.b.x, false), !global2.d), global2.d, false), global2.b, true));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(333f)))) * -242f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_0, ~arg_0.a.x, global4[_wgslsmith_index_u32(arg_0.a.x, 13u)])), _wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(sign(379f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(u_input.a.xw, Struct_2(arg_0.b.b, Struct_1(arg_0.b.a.a, vec4<bool>(false, false, global4[_wgslsmith_index_u32(4294967295u, 13u)], global2.d.x), arg_0.b.a.d.x, global2.b), u_input.a.x, u_input.a.wwy, Struct_1(arg_0.b.e.a, global2.b, global2.d.x, global2.b))), ~arg_0.a.x, global2.c)))));
    var var_1 = Struct_4(_wgslsmith_clamp_vec2_u32(~reverseBits(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x))), reverseBits(vec2<u32>(1u, 4294967295u >> (arg_0.a.x % 32u))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.a.x, 1u), select(u_input.a.zy, arg_0.a, global4[_wgslsmith_index_u32(arg_0.a.x, 13u)]))), Struct_2(arg_0.b.a, Struct_1(reverseBits(~(-9825i)), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), true, vec4<bool>(true, true, true, true)), 1u, select(~vec3<u32>(1u, 4294967295u, arg_0.b.c), vec3<u32>(_wgslsmith_mod_u32(arg_0.b.c, 1711u), reverseBits(arg_0.b.d.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), !(2147483647i == global2.a)), Struct_1(-_wgslsmith_mod_i32(-12135i, 2147483647i), arg_0.b.e.d, arg_0.b.b.c, !arg_0.b.e.b)));
    global4 = array<bool, 13>();
    var var_2 = var_1.b;
    return select(!(!(var_2.e.b.x & var_2.b.c)), var_1.b.e.c, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20340u, ~u_input.a.x, 5031u), max(var_2.d, vec3<u32>(var_2.d.x, 6328u, var_2.c))), 13u)]) & false;
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~(-2147483647i), select(vec4<bool>(false, arg_1.b.e.a > 9650i, !arg_1.b.b.d.x, true), select(!global2.b, select(vec4<bool>(arg_1.b.b.b.x, false, global2.d.x, false), global2.d, vec4<bool>(global2.c, true, false, true)), !arg_1.b.e.d), false), !(!any(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 13u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 13u)], global4[_wgslsmith_index_u32(arg_1.b.c, 13u)]))), select(global2.b, vec4<bool>(!arg_1.b.a.c, func_2(Struct_4(arg_1.a, Struct_2(Struct_1(41321i, global2.b, arg_1.b.a.b.x, arg_1.b.e.b), arg_1.b.b, u_input.a.x, vec3<u32>(0u, 1u, 77674u), Struct_1(global2.a, vec4<bool>(global4[_wgslsmith_index_u32(1u, 13u)], true, true, global4[_wgslsmith_index_u32(47879u, 13u)]), global4[_wgslsmith_index_u32(arg_1.b.d.x, 13u)], global2.b)))), !global2.d.x, arg_1.b.e.d.x), (168f <= arg_0) && !global4[_wgslsmith_index_u32(1u, 13u)])), arg_1.b.b, 1u, abs(vec3<u32>(~45192u, arg_1.b.d.x, _wgslsmith_div_u32(4294967295u, ~1u))), Struct_1(-28021i, arg_1.b.b.d, true, global2.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, arg_0)) + vec3<f32>(-1000f, -644f, arg_0))))));
    let var_2 = select(select(vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(arg_0 - 2196f), !all(vec3<bool>(global2.d.x, true, true)), true), select(!(!global2.d), !var_0.b.d, global4[_wgslsmith_index_u32(2228u, 13u)] | true), arg_1.b.a.a != _wgslsmith_clamp_i32(1i, -8546i, -49014i)), select(global2.d, !(!arg_1.b.a.b), arg_1.b.b.b), select(!vec4<bool>(true, var_1.x >= var_1.x, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 65601u), 13u)], !global2.b.x), vec4<bool>(true, !all(var_0.a.d.wzw), any(select(arg_1.b.e.b.yxw, var_0.e.b.yxx, vec3<bool>(global4[_wgslsmith_index_u32(44153u, 13u)], arg_1.b.a.b.x, global4[_wgslsmith_index_u32(arg_1.a.x, 13u)]))), true), any(global2.b.zyy)));
    let var_3 = Struct_1(~_wgslsmith_clamp_i32(arg_1.b.b.a, ~1i, _wgslsmith_mult_i32(arg_1.b.a.a ^ arg_1.b.e.a, -838i)), vec4<bool>(!(!(global2.a > 2147483647i)), false, false, true), any(!select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 13u)], false, true), global2.d.xzw, arg_1.b.a.c)) != true, vec4<bool>(var_0.a.b.x, -firstLeadingBit(var_0.a.a) < 2147483647i, true, select(any(!vec4<bool>(var_0.a.d.x, var_0.b.c, false, global2.b.x)), _wgslsmith_f_op_f32(-1000f * 1812f) == _wgslsmith_f_op_f32(-var_1.x), !all(global2.d.xwz))));
    global2 = var_0.a;
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = 72081u;
    var var_1 = select(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-30402i, arg_1.x, global2.a, arg_0.a)) >> (~u_input.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(arg_0.a, global2.a), -54446i >> (1u % 32u), _wgslsmith_add_i32(0i, -6775i), global2.a)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-21723i, global2.a, global2.a, 18808i), vec4<i32>(global2.a, -2147483647i, -2147483647i, 17558i), vec4<i32>(-2147483647i, 32714i, -1i, 1i)), true || !global2.c) >> (~min(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0, u_input.a.x, 4294967295u)), u_input.a) % vec4<u32>(32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~1u, u_input.a.x);
    global0 = reverseBits(_wgslsmith_add_u32(~_wgslsmith_div_u32(~u_input.a.x, 4294967295u), func_4(func_1(_wgslsmith_f_op_f32(ceil(167f)), Struct_4(u_input.a.yx, Struct_2(Struct_1(56209i, vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(u_input.a.x, 13u)]), false, global2.d), Struct_1(global2.a, global2.b, true, vec4<bool>(global2.d.x, global2.d.x, false, true)), u_input.a.x, vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_1(2147483647i, global2.b, false, vec4<bool>(true, global4[_wgslsmith_index_u32(26116u, 13u)], global4[_wgslsmith_index_u32(u_input.a.x, 13u)], global4[_wgslsmith_index_u32(u_input.a.x, 13u)]))))), ~vec2<i32>(2147483647i, global2.a) & _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global2.a), vec2<i32>(global2.a, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, 2651f, -649f, -227f)))));
    let var_1 = Struct_4(~u_input.a.wx << (u_input.a.yy % vec2<u32>(32u)), Struct_2(func_1(1130f, Struct_4(vec2<u32>(4294967295u, 34302u), Struct_2(Struct_1(49826i, global2.d, global4[_wgslsmith_index_u32(24028u, 13u)], global2.b), Struct_1(8859i, global2.b, global2.d.x, vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], global4[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global2.c)), 0u, vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_1(global2.a, global2.b, global2.c, vec4<bool>(false, false, true, global2.d.x))))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -483f), Struct_4(vec2<u32>(1u, u_input.a.x), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, true), true, global2.b), Struct_1(global2.a, global2.b, true, vec4<bool>(global2.d.x, global4[_wgslsmith_index_u32(0u, 13u)], false, false)), u_input.a.x, u_input.a.zzw, Struct_1(-63360i, global2.d, false, global2.d)))), 1u, u_input.a.wwz, func_1(_wgslsmith_f_op_f32(round(172f)), Struct_4(~vec2<u32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(-17915i, global2.d, global4[_wgslsmith_index_u32(1u, 13u)], vec4<bool>(false, false, false, false)), Struct_1(global2.a, global2.d, global2.c, vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x)), u_input.a.x, vec3<u32>(1u, 1u, u_input.a.x), Struct_1(1i, global2.b, global2.b.x, vec4<bool>(global2.d.x, true, global4[_wgslsmith_index_u32(37614u, 13u)], global4[_wgslsmith_index_u32(34513u, 13u)])))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -935f);
    let var_3 = Struct_1(var_1.b.b.a, global2.d, true, vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(1u, 13u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(-1644f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(188f - 231f) * -896f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + 1000f))), vec3<f32>(1f, 673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(768f, -1032f)) - _wgslsmith_f_op_f32(f32(-1f) * -1154f)))), 3080i);
}

