struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-34507i, 8350u, false, false, -46547i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(firstLeadingBit(arg_3), u_input.b.x), ~(~(~arg_0.a.b)), arg_1.c, true, 17515i), Struct_1(~(-2147483647i), u_input.a.x, !(!arg_0.a.c && true), true, abs(-_wgslsmith_mod_i32(arg_3, u_input.b.x))));
    let var_1 = -1356f;
    let var_2 = arg_0.b;
    global0 = array<Struct_1, 1>();
    var_0 = Struct_2(Struct_1(arg_3, ~select(arg_1.b & arg_0.a.b, 9734u, arg_0.b.c), !var_2.d & ((arg_3 >> (arg_1.b % 32u)) > _wgslsmith_add_i32(-2147483647i, -1i)), false, firstLeadingBit(_wgslsmith_mod_i32(arg_0.b.e, i32(-1i) * -22566i))), var_0.a);
    return _wgslsmith_f_op_f32(ceil(-1108f));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(9792i, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 0u, 12041u, 10241u), ~u_input.a), true, true, _wgslsmith_clamp_i32(u_input.b.x | arg_1, -arg_1 << ((0u & u_input.a.x) % 32u), u_input.b.x)), Struct_1(-25060i, 75833u, !(7724u >= ~arg_0), select(true, true, !all(vec3<bool>(false, true, true))), arg_1));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 1u, 79250u), u_input.a.yxz) | ~vec3<u32>(1u, var_0.b.b, 17819u), vec3<u32>(~14099u, 1u, arg_0)), _wgslsmith_dot_vec3_u32(~vec3<u32>(9963u, var_0.a.b, 1u), u_input.a.xwx >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), arg_0, abs(1u));
    var var_2 = 2147483647i;
    global0 = array<Struct_1, 1>();
    var var_3 = vec2<bool>(any(vec3<bool>(select(var_0.a.c, false, true), var_0.a.d, !any(vec4<bool>(var_0.a.d, true, false, var_0.b.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f + 1471f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1448f)))));
    return Struct_1(arg_1, 54481u, _wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(func_3(Struct_2(var_0.a, Struct_1(u_input.b.x, 72408u, var_3.x, true, -7447i)), Struct_1(arg_1, arg_0, var_0.a.c, true, 0i), vec2<u32>(arg_0, 1u), u_input.b.x))) >= _wgslsmith_f_op_f32(func_3(var_0, Struct_1(~arg_1, abs(24197u), !var_3.x, var_0.a.d, -6915i), var_1.zz, u_input.b.x << (53405u % 32u))), any(select(vec2<bool>(var_3.x, false), select(vec2<bool>(var_0.b.c, var_0.b.d), vec2<bool>(false, var_0.b.d), true), select(vec2<bool>(false, var_0.a.c), vec2<bool>(true, var_0.b.c), true))) || false, -85743i);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> f32 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = func_2(arg_2.b | 9681u, arg_2.e);
    var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-(1i | u_input.b.x), min(func_2(1u, 45033i).a, var_0.a)), u_input.b.x, u_input.b.x ^ -14541i), 35838u, var_0.d, true, arg_2.e);
    var var_1 = Struct_1(func_2(arg_3, ~arg_2.a).a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, ~u_input.a), u_input.a), !(_wgslsmith_add_u32(~u_input.a.x, 1u) != _wgslsmith_div_u32(~var_0.b, arg_1 >> (arg_3 % 32u))), all(select(!select(vec4<bool>(var_0.d, true, false, var_0.c), vec4<bool>(var_0.c, var_0.c, arg_2.c, arg_2.c), vec4<bool>(false, false, false, arg_2.d)), vec4<bool>(true, all(vec2<bool>(false, false)), true, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, var_0.c, true), select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, arg_2.d)), true))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.a, var_0.a), _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(~u_input.b.x, firstTrailingBit(arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-15303i, 1i, arg_0.x), arg_0)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1283f))) - _wgslsmith_f_op_f32(f32(-1f) * -1277f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-503f, 1000f, false & var_1.c)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = -150f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0 + 420f), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), true)), var_0);
    var var_2 = arg_1;
    var_1 = vec4<f32>(_wgslsmith_div_f32(1034f, -957f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-u_input.b, ~4294967295u, func_2(21624u, arg_0), var_2.b.b)), var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))), var_1.x);
    return Struct_1(-firstTrailingBit(~arg_0), _wgslsmith_add_u32(var_2.b.b, _wgslsmith_add_u32(arg_1.b.b, arg_1.a.b)), true & !any(vec4<bool>(var_2.a.c, arg_1.a.d, false, true)), (u_input.b.x ^ _wgslsmith_sub_i32(max(arg_1.a.e, arg_0), -arg_0)) > _wgslsmith_add_i32(~96584i, _wgslsmith_dot_vec2_i32(~u_input.b.xy, abs(vec2<i32>(-19068i, -22857i)))), -1i);
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(2147483647i, 4294967295u | abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 1u, 45982u), u_input.a.wwx)), arg_0.d, false, u_input.b.x);
    let var_1 = Struct_2(Struct_1(var_0.a, func_2(abs(1u), arg_0.e).b >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(92236u, var_0.b, arg_0.b, 9908u))) % 32u), arg_0.c, any(vec3<bool>(true, arg_0.c, true)), 2147483647i), func_1(var_0.a, Struct_2(arg_0, func_2(57127u | var_0.b, arg_0.e & var_0.a))));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return all(select(vec3<bool>(arg_0.c, arg_0.d, !var_1.b.d), select(vec3<bool>(true, !var_0.c, arg_0.b < 1u), select(vec3<bool>(var_0.c, arg_0.d, var_1.a.c), !vec3<bool>(true, arg_0.d, true), !vec3<bool>(true, true, var_0.d)), !select(vec3<bool>(var_1.b.d, true, arg_0.c), vec3<bool>(arg_0.d, var_0.d, arg_0.d), false)), select(true, -1i > abs(u_input.b.x), var_0.c | all(vec3<bool>(var_0.c, var_1.b.c, arg_0.c)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> vec4<f32> {
    let var_0 = select(vec3<u32>(~u_input.a.x, min(~1u, 1u), ~(~(~19912u))), vec3<u32>(75948u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(30360u, u_input.a.x, 49893u), u_input.a.zxx), min(_wgslsmith_sub_u32(95079u, arg_0.a.b), _wgslsmith_add_u32(arg_0.b.b, u_input.a.x)) | ~_wgslsmith_mult_u32(arg_0.b.b, 0u)), !select(!vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.d), select(select(vec3<bool>(arg_0.b.c, false, arg_0.b.d), vec3<bool>(true, true, arg_0.a.c), vec3<bool>(arg_0.b.d, true, true)), select(vec3<bool>(arg_0.b.c, arg_0.b.d, arg_0.a.d), vec3<bool>(arg_0.b.d, false, true), true), !vec3<bool>(false, true, arg_0.a.c)), !vec3<bool>(arg_0.a.d, arg_0.b.c, true)));
    var var_1 = _wgslsmith_sub_u32(func_1(2147483647i, Struct_2(Struct_1(1i, var_0.x, arg_0.a.d, arg_0.b.c, -88632i), Struct_1(countOneBits(u_input.b.x), 58652u ^ arg_0.b.b, false, true, ~arg_2))).b, var_0.x);
    let var_2 = 365f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -720f))))) + var_2);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<i32>(arg_2, 20068i, arg_1.x), arg_0.b.b, Struct_1(arg_1.x, u_input.a.x, arg_0.a.c, false, arg_1.x), 0u)), -1053f)), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1390f))) - var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_mod_u32(countOneBits(u_input.a.x | u_input.a.x), 12924u);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_6(Struct_2(Struct_1(-(i32(-1i) * -1i), _wgslsmith_mod_u32(46985u, u_input.a.x | 74615u), true, _wgslsmith_div_u32(1u, 4294967295u) != var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 8333i, -2147483647i), select(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, 40461i, u_input.b.x, u_input.b.x), true))), Struct_1(5744i, 1u & (u_input.a.x ^ var_0), func_5(func_1(u_input.b.x, Struct_2(Struct_1(-2147483647i, 76252u, true, true, 1i), global0[_wgslsmith_index_u32(0u, 1u)]))), true, u_input.b.x)), vec2<i32>(~9903i, u_input.b.x) & -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.yx, u_input.b.zy, u_input.b.zx), vec2<i32>(u_input.b.x, u_input.b.x)), func_1(-(u_input.b.x & u_input.b.x), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(firstTrailingBit(max(u_input.a.x, 1488u)), 1u)])).e));
    var var_2 = false;
    let var_3 = func_2(~(~15013u) & var_0, ~_wgslsmith_mult_i32(u_input.b.x, 0i));
    var var_4 = abs(countOneBits(4294967295u));
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(var_3, Struct_1(33968i, 48814u ^ var_3.b, var_3.c || var_3.c, true, _wgslsmith_sub_i32(1i, var_3.a))), Struct_1(1i, max(_wgslsmith_mod_u32(3879u, var_3.b), 1u), var_3.c, var_3.c, firstLeadingBit(firstTrailingBit(16485i))), ~(~firstTrailingBit(u_input.a.wx)), 23150i)), 846f));
    let x = u_input.a;
    s_output = StorageBuffer(46762u, u_input.a.xw, 542f, vec3<u32>(min(var_3.b, ~var_3.b), _wgslsmith_clamp_u32(10791u << (0u % 32u), ~var_3.b, 1u), 1u) | vec3<u32>(_wgslsmith_add_u32(~93003u, ~4294967295u), 15015u, ~var_0));
}

