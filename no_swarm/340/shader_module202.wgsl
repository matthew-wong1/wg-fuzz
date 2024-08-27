struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 619f;

var<private> global1: array<vec2<i32>, 4>;

var<private> global2: bool = false;

var<private> global3: array<u32, 17>;

var<private> global4: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(16226i, -16767i, -38185i), vec3<i32>(48455i, 0i, -71574i), vec3<i32>(2147483647i, -16774i, 1551i), vec3<i32>(i32(-2147483648), -2958i, -13664i), vec3<i32>(i32(-2147483648), -4815i, 1i), vec3<i32>(47189i, 2147483647i, 5570i), vec3<i32>(-44740i, -11253i, 38094i), vec3<i32>(-32242i, 54536i, 2147483647i), vec3<i32>(14287i, -29797i, 11333i), vec3<i32>(-1i, 21539i, 1i), vec3<i32>(-18108i, 1i, 2147483647i), vec3<i32>(-14986i, 25420i, -4200i), vec3<i32>(i32(-2147483648), -31216i, 0i), vec3<i32>(0i, 1417i, -1i), vec3<i32>(6891i, 17864i, i32(-2147483648)), vec3<i32>(0i, -38542i, -1i), vec3<i32>(-1i, 24653i, -20090i), vec3<i32>(i32(-2147483648), -11417i, 1i), vec3<i32>(-8974i, -57909i, -12190i), vec3<i32>(-18467i, -64153i, 17590i), vec3<i32>(-36782i, 2147483647i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1871f - -772f), _wgslsmith_f_op_f32(f32(-1f) * -260f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1501f, -1000f), vec2<f32>(-635f, 195f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -135f), vec2<f32>(981f, -864f))))), -firstTrailingBit(-vec2<i32>(u_input.e, -26301i)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(1362u, 17u)], _wgslsmith_mod_u32(1u, 1u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62600u, 17u)] | global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], 4294967295u, global3[_wgslsmith_index_u32(0u, 17u)]), 17u)], 17u)], 17u)]), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -573f)), true), !vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)), true | all(vec4<bool>(true, true, false, true))), 4294967295u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)))) + var_0.a.d);
    var var_1 = Struct_2(var_0.a, !select(vec3<bool>(true, true, true), select(!var_0.b, var_0.b, !vec3<bool>(true, true, var_0.a.e)), !vec3<bool>(var_0.a.e, var_0.b.x, var_0.a.e)), 0u);
    let var_2 = var_0.a;
    global0 = _wgslsmith_f_op_f32(min(1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x - var_2.a.x) + -626f))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, var_1.a.d, 1164f, var_0.a.a.x) + vec4<f32>(-771f, var_1.a.d, var_0.a.d, var_1.a.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.d), -278f, _wgslsmith_f_op_f32(step(var_2.a.x, var_1.a.d)), var_1.a.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d - var_1.a.d), _wgslsmith_f_op_f32(148f + var_1.a.d), var_2.d, _wgslsmith_f_op_f32(-912f + var_2.a.x)) + vec4<f32>(var_2.d, _wgslsmith_f_op_f32(select(var_0.a.d, -1000f, var_2.e)), _wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_f_op_f32(floor(749f))))), vec4<f32>(_wgslsmith_f_op_f32(max(-307f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(549f - 993f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_0.a.a.x)))), _wgslsmith_f_op_f32(ceil(-303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(873f + 1000f))) * -1000f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = arg_1;
    let var_1 = ~var_0.a.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, var_0.a.a.x, 299f, -547f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3())))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-603f, var_0.a.a.x, arg_1.a.e)), _wgslsmith_f_op_f32(f32(-1f) * -1353f))), -1000f, var_0.a.d, arg_1.a.d) - vec4<f32>(arg_1.a.a.x, var_0.a.a.x, 792f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2187f), _wgslsmith_f_op_f32(1039f + arg_1.a.a.x)))));
    var var_3 = 1i;
    var var_4 = abs(~vec2<u32>(~4294967295u, var_1));
    return _wgslsmith_sub_u32(~(~var_0.a.c), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(var_0.c, arg_1.a.c, var_0.a.c, arg_0), reverseBits(vec4<u32>(var_0.c, 4294967295u, var_4.x, global3[_wgslsmith_index_u32(var_4.x, 17u)])))), ~vec4<u32>(1u, _wgslsmith_mult_u32(arg_0, var_1), arg_1.a.c >> (arg_1.c % 32u), abs(63778u))), 17u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1.a;
    global3 = array<u32, 17>();
    global4 = array<vec3<i32>, 22>();
    global1 = array<vec2<i32>, 4>();
    global0 = _wgslsmith_f_op_f32(-arg_2.a.a.x);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_f32(779f * 872f)) - arg_1.a.a.x)), -select(vec2<i32>(2147483647i, ~var_0.b.x), vec2<i32>(-1i) * -var_0.b, arg_1.b.x), 0u, _wgslsmith_div_f32(_wgslsmith_div_f32(-823f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.d))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_vec4_f32(func_3()).x)))), any(vec3<bool>(!arg_2.a.e, false, any(vec3<bool>(arg_2.a.e, arg_2.b.x, arg_1.a.e)))) && select((var_0.e & true) || select(false, false, true), firstTrailingBit(2147483647i) != u_input.c.x, select(select(false, arg_2.b.x, false), any(vec3<bool>(var_0.e, var_0.e, var_0.e)), arg_2.b.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec3<i32> {
    global1 = array<vec2<i32>, 4>();
    var var_0 = all(vec4<bool>(arg_1.e, arg_1.e | any(!vec2<bool>(arg_1.e, false)), arg_1.b.x > -2147483647i, true));
    let var_1 = countOneBits(_wgslsmith_mod_u32(7713u, 46857u) | _wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(0u, 17u)] >> (0u % 32u))) | ~arg_1.c;
    var var_2 = arg_1;
    var var_3 = func_4(0u, Struct_2(arg_1, !vec3<bool>(false, var_2.e, true), ~(~global3[_wgslsmith_index_u32(~1u, 17u)])), Struct_2(arg_1, select(select(!vec3<bool>(arg_1.e, false, var_2.e), vec3<bool>(true, var_2.e, var_2.e), vec3<bool>(true, true, true)), vec3<bool>(false, u_input.a > arg_1.b.x, all(vec2<bool>(true, true))), vec3<bool>(var_2.a.x == arg_1.d, arg_1.e, var_2.a.x <= var_2.d)), 64402u));
    return _wgslsmith_add_vec3_i32(~countOneBits(-firstTrailingBit(global4[_wgslsmith_index_u32(var_1, 22u)])), _wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8753i, var_2.b.x, 2147483647i), max(vec3<i32>(-27761i, var_3.b.x, var_2.b.x), u_input.b.wxz), vec3<i32>(-2147483647i, -1i, var_2.b.x)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-8780i, var_3.b.x, -1i)), _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(2147483647i, 2147483647i, -2147483647i))), arg_1.e), min(~vec3<i32>(-21876i, -1i, var_2.b.x), reverseBits(u_input.b.wyz))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_1.x));
    var var_1 = func_5(~(~(~11602u)), func_4(max(_wgslsmith_mod_u32(1u, ~97517u), func_2(~global3[_wgslsmith_index_u32(4294967295u, 17u)], Struct_2(Struct_1(vec2<f32>(-1000f, -208f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 4u)], 47582u, -174f, true), vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(11241u, 17u)]), vec4<i32>(-1623i, u_input.e, 1i, u_input.c.x), var_0)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.zy - vec2<f32>(-243f, var_0)), abs(u_input.b.wy), ~1u, 1000f, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), _wgslsmith_dot_vec2_u32(vec2<u32>(47603u, global3[_wgslsmith_index_u32(0u, 17u)]) ^ vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60792u, 17u)], 17u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(103824u, 17u)], 17u)], 17u)], 4294967295u), vec2<u32>(1u, global3[_wgslsmith_index_u32(54780u, 17u)])))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_1.wx, arg_1.zy, vec2<bool>(true, true))), u_input.b.zx, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68511u, 17u)], 17u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), u_input.c.x < 54321i), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)] >> (~31804u % 32u))));
    global0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(970f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + var_0) - _wgslsmith_f_op_f32(ceil(1000f)))));
    let var_2 = func_4(~72479u << (global3[_wgslsmith_index_u32(~4294967295u, 17u)] % 32u), Struct_2(Struct_1(arg_1.wy, var_1.xz, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10688u, 17u)], 17u)]), 1445f, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec3<bool>(false, true, false))), ~func_2(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], Struct_2(Struct_1(arg_1.xy, vec2<i32>(var_1.x, var_1.x), 1u, var_0, false), vec3<bool>(false, false, false), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)]), -vec4<i32>(21441i, -58843i, -13057i, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -511f))), Struct_2(func_4(global3[_wgslsmith_index_u32(func_2(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 17u)], 17u)], Struct_2(Struct_1(vec2<f32>(var_0, 967f), vec2<i32>(-12285i, 0i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], var_0, true), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(54980u, 17u)]), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-42767i, -15112i, var_1.x, -8881i)), -947f), 17u)], Struct_2(func_4(global3[_wgslsmith_index_u32(1u, 17u)], Struct_2(Struct_1(vec2<f32>(-1858f, var_0), global1[_wgslsmith_index_u32(51433u, 4u)], 1u, arg_1.x, true), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(65139u, 17u)]), Struct_2(Struct_1(vec2<f32>(arg_1.x, arg_0), vec2<i32>(-1i, -12585i), global3[_wgslsmith_index_u32(55073u, 17u)], arg_1.x, true), vec3<bool>(false, false, false), 0u)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), 71524u), Struct_2(func_4(79629u, Struct_2(Struct_1(arg_1.zw, vec2<i32>(u_input.e, u_input.d.x), global3[_wgslsmith_index_u32(4029u, 17u)], arg_1.x, false), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(4294967295u, 17u)]), Struct_2(Struct_1(vec2<f32>(var_0, arg_0), var_1.xx, global3[_wgslsmith_index_u32(1u, 17u)], var_0, true), vec3<bool>(false, false, false), 4294967295u)), vec3<bool>(true, true, true), 12885u & global3[_wgslsmith_index_u32(28789u, 17u)])), select(vec3<bool>(false, true, func_4(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 17u)], Struct_2(Struct_1(vec2<f32>(-571f, 112f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 4u)], 33192u, arg_1.x, false), vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(37596u, 17u)]), Struct_2(Struct_1(vec2<f32>(124f, -783f), vec2<i32>(-12070i, 1i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], var_0, true), vec3<bool>(false, false, true), 22279u)).e), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(1877u, 17u)]), 17u)]));
    var var_3 = var_1.zz;
    return func_4(global3[_wgslsmith_index_u32(1u, 17u)], Struct_2(func_4(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 4294967295u), Struct_2(var_2, !vec3<bool>(false, true, var_2.e), 1u), Struct_2(func_4(0u, Struct_2(Struct_1(var_2.a, vec2<i32>(var_1.x, var_2.b.x), var_2.c, arg_1.x, var_2.e), vec3<bool>(false, false, var_2.e), var_2.c), Struct_2(Struct_1(vec2<f32>(1000f, var_2.a.x), vec2<i32>(u_input.d.x, 21313i), global3[_wgslsmith_index_u32(1u, 17u)], arg_0, true), vec3<bool>(true, true, var_2.e), var_2.c)), !vec3<bool>(true, var_2.e, var_2.e), ~4294967295u)), !(!select(vec3<bool>(var_2.e, false, var_2.e), vec3<bool>(var_2.e, true, true), var_2.e)), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 20420u, 1u, global3[_wgslsmith_index_u32(17096u, 17u)]), vec4<u32>(18418u, global3[_wgslsmith_index_u32(0u, 17u)], var_2.c, var_2.c)), _wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(1u, 17u)]), var_2.c), 17u)]), Struct_2(Struct_1(arg_1.wz, var_1.xx, global3[_wgslsmith_index_u32(9197u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-555f * 328f) + _wgslsmith_f_op_f32(-arg_0)), !(var_3.x <= u_input.d.x)), vec3<bool>(true, false, var_2.e), global3[_wgslsmith_index_u32(select(~28811u, ~4294967295u, var_2.e), 17u)])).e;
}

fn func_6(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = abs(~u_input.d.x);
    var var_1 = ~((~(~vec4<u32>(9182u, global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 110629u)) & vec4<u32>(global3[_wgslsmith_index_u32(24140u, 17u)] & 1u, global3[_wgslsmith_index_u32(20398u, 17u)], ~4294967295u, _wgslsmith_div_u32(85611u, global3[_wgslsmith_index_u32(0u, 17u)]))) << (countOneBits(vec4<u32>(~global3[_wgslsmith_index_u32(39412u, 17u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 6538u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69597u, 17u)], 17u)], 10739u, global3[_wgslsmith_index_u32(0u, 17u)], 13756u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 4294967295u)))) % vec4<u32>(32u)));
    let var_2 = func_4(4261u, Struct_2(func_4(func_4(~4294967295u, Struct_2(Struct_1(vec2<f32>(-1492f, 1139f), u_input.b.xz, 15176u, 217f, true), vec3<bool>(arg_0.x, false, false), 0u), Struct_2(Struct_1(vec2<f32>(-1014f, 728f), vec2<i32>(var_0, -22684i), 28669u, 672f, true), vec3<bool>(true, false, arg_0.x), 32597u)).c, Struct_2(Struct_1(vec2<f32>(-1286f, -108f), global1[_wgslsmith_index_u32(4294967295u, 4u)], 11079u, -2036f, arg_0.x), arg_0.wyx, ~1u), Struct_2(Struct_1(vec2<f32>(-1231f, 675f), u_input.d.xz, global3[_wgslsmith_index_u32(95111u, 17u)], -191f, arg_0.x), select(arg_0.xzz, vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), global3[_wgslsmith_index_u32(~1u, 17u)])), !select(select(arg_0.yxw, arg_0.yxw, false), !arg_0.zzz, true), select(1u, ~abs(0u), arg_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, -201f) + vec2<f32>(-252f, -431f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1714f) - vec2<f32>(-551f, 1563f))), reverseBits(vec2<i32>(var_0, 1i)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.xw, vec2<u32>(global3[_wgslsmith_index_u32(0u, 17u)], 4294967295u)), 17u)], 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f + 308f) * _wgslsmith_div_f32(-1534f, 2083f)), false), select(arg_0.wwz, vec3<bool>(true, true || arg_0.x, arg_0.x), select(arg_0.ywx, arg_0.zzx, true)), reverseBits(~36201u)));
    var var_3 = vec4<i32>(39146i ^ _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0, 2147483647i, var_2.b.x), vec4<i32>(var_2.b.x, var_2.b.x, u_input.a, -1i)), -1i)), reverseBits(firstLeadingBit(0i)), -2147483647i, firstTrailingBit(var_2.b.x));
    var var_4 = !arg_0.yw;
    return Struct_2(func_4(1u, Struct_2(Struct_1(var_2.a, -var_3.zy, ~39259u, _wgslsmith_f_op_f32(374f - 1422f), var_4.x & arg_0.x), select(vec3<bool>(var_2.e, true, true), !vec3<bool>(false, false, arg_0.x), select(vec3<bool>(arg_0.x, var_2.e, true), arg_0.yzy, var_2.e)), global3[_wgslsmith_index_u32(var_2.c, 17u)]), Struct_2(var_2, !select(vec3<bool>(arg_0.x, false, var_4.x), vec3<bool>(true, true, false), false), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.x, var_1.x, var_2.c), ~vec4<u32>(4294967295u, var_1.x, var_2.c, 0u)))), select(vec3<bool>(true, !(-29229i < var_0), true), arg_0.wxw, vec3<bool>(var_4.x, var_4.x, false)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), all(vec3<bool>(true, false, true)), func_1(_wgslsmith_f_op_f32(-348f + 1000f), vec4<f32>(220f, -1054f, 1315f, -564f)), true)));
    global1 = array<vec2<i32>, 4>();
    global2 = !(all(!select(var_0.b.yz, var_0.b.xy, vec2<bool>(true, var_0.a.e))) || false);
    global1 = array<vec2<i32>, 4>();
    global2 = true;
    var var_1 = var_0.a.c;
    global4 = array<vec3<i32>, 22>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(-1f))) * -438f);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1549f, ~(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_2.c, var_0.a.c, 0u)), firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(0u, 17u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)]))) | ~(~vec3<u32>(4294967295u, var_2.c, 52690u))));
}

