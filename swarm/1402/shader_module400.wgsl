struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-1000f, 750f, -237f), vec3<f32>(-1352f, -886f, -434f), vec3<f32>(1895f, -562f, -591f), vec3<f32>(-239f, 1954f, 1903f), vec3<f32>(-350f, -401f, 1996f), vec3<f32>(-1004f, 132f, -1327f), vec3<f32>(681f, -1530f, 839f), vec3<f32>(321f, 108f, 961f), vec3<f32>(1173f, -1096f, 145f), vec3<f32>(-163f, -778f, -1445f), vec3<f32>(781f, -1000f, -614f), vec3<f32>(632f, 1000f, -1009f), vec3<f32>(1000f, -1806f, 1255f), vec3<f32>(-106f, 118f, -482f), vec3<f32>(287f, 314f, 511f), vec3<f32>(-864f, -804f, 226f), vec3<f32>(547f, 1778f, -1054f), vec3<f32>(-807f, -1273f, -1003f), vec3<f32>(123f, -1327f, 157f), vec3<f32>(1010f, -1248f, -1000f), vec3<f32>(-1000f, -2122f, -217f), vec3<f32>(227f, 1654f, -695f), vec3<f32>(293f, -1232f, 1107f), vec3<f32>(447f, 160f, 759f), vec3<f32>(-1000f, 184f, -236f));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(31322u, 16656u, 4801u), true), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(6952u, 48772u, 0u), false), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(99662u, 0u, 104483u), false), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(14071u, 1u, 30493u), true), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(1u, 4294967295u, 135499u), false), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(0u, 4294967295u, 49554u), true), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(0u, 39911u, 64846u), false));

var<private> global3: array<u32, 9> = array<u32, 9>(1u, 35870u, 4294967295u, 89887u, 53995u, 0u, 0u, 67533u, 14540u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)) || !any(vec3<bool>(false, false, true)), any(vec4<bool>(true, all(vec2<bool>(false, false)), false, true)) & true, true);
    let var_1 = !all(var_0.yy);
    var_0 = select(!vec3<bool>(true, var_1, true && var_1), !select(vec3<bool>(true, false, select(true, true, var_1)), select(select(vec3<bool>(true, var_0.x, var_1), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, var_0.x, var_1), vec3<bool>(var_1, false, var_1), var_1), select(vec3<bool>(var_1, var_0.x, var_1), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_1, false, var_0.x))), ~arg_1 > _wgslsmith_mod_i32(arg_1, u_input.c.x)), vec3<bool>(true, var_0.x, var_0.x));
    var var_2 = vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(-32236i), arg_1 >> (4294967295u % 32u)) ^ 1i, arg_2.x, ~arg_2.x);
    global3 = array<u32, 9>();
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, ~(~1568u), countOneBits(global3[_wgslsmith_index_u32(~u_input.e, 9u)])), firstTrailingBit(u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: u32) -> vec3<f32> {
    global1 = array<vec3<f32>, 25>();
    global1 = array<vec3<f32>, 25>();
    global0 = !any(vec2<bool>(any(!vec2<bool>(arg_0.a, arg_0.c)), all(vec2<bool>(false, true))));
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(~arg_2 << ((global3[_wgslsmith_index_u32(reverseBits(14350u), 9u)] >> (_wgslsmith_mult_u32(~30180u, 1u) % 32u)) % 32u), 7u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(countOneBits(u_input.e), 9u)], 7u)]);
    global1 = array<vec3<f32>, 25>();
    return global1[_wgslsmith_index_u32(u_input.e, 25u)];
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-756f, _wgslsmith_f_op_f32(trunc(-795f)), -220f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2469f, -1678f, 125f), vec3<f32>(1000f, 1620f, -208f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-249f, -550f, 373f))))))))));
    let var_1 = 59072i;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(false, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), all(vec3<bool>(false, false, true))), _wgslsmith_mod_vec3_u32(func_3(255f, u_input.c.x, vec3<i32>(1i, -1i, u_input.c.x)), vec3<u32>(21510u, 11703u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)])), true), !(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1886f, 356f, -535f, -406f)) - vec4<f32>(var_0.x, 460f, -542f, 1571f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-295f, 510f, var_0.x, -317f), vec4<f32>(121f, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, true, false))) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), 1035f, 41050u, ~23417u));
    var var_3 = u_input.a.yz;
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(1u ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29884u, 9u)], 9u)], u_input.e) << (~0u % 32u), ~(~var_3.x)), 25u)]));
    return Struct_2(global2[_wgslsmith_index_u32(countOneBits(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 29780u, 5080u, 1u), vec4<u32>(1u, u_input.e, 4294967295u, 4294967295u)) & u_input.d)), 7u)], Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), true), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true)), vec3<u32>(abs(_wgslsmith_sub_u32(var_3.x, 0u)), max(~arg_0, 4294967295u & global3[_wgslsmith_index_u32(95239u, 9u)]), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(var_3.x, global3[_wgslsmith_index_u32(var_3.x, 9u)])), countOneBits(4294967295u))), all(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))));
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 7>();
    global1 = array<vec3<f32>, 25>();
    global0 = !(!any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_0 = u_input.b.x;
    global1 = array<vec3<f32>, 25>();
    return func_2(~global3[_wgslsmith_index_u32(57047u, 9u)]);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~min(arg_0, arg_1 | reverseBits(min(arg_1, arg_2)));
    return func_1().a;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = any(func_5(~u_input.b, -(~vec2<i32>(u_input.b.x, 112i)), vec2<i32>(-32655i, -3513i), Struct_2(Struct_1(func_5(vec2<i32>(arg_1, u_input.c.x), u_input.c, vec2<i32>(arg_1, arg_1), Struct_2(global2[_wgslsmith_index_u32(5647u, 7u)], global2[_wgslsmith_index_u32(6620u, 7u)])).a, func_1().a.b, arg_2), Struct_1(!vec4<bool>(false, arg_2, arg_2, true), func_5(u_input.b, vec2<i32>(0i, arg_1), vec2<i32>(u_input.b.x, u_input.c.x), Struct_2(arg_0, arg_0)).b, false != arg_2))).a);
    global1 = array<vec3<f32>, 25>();
    var var_1 = func_2(~67295u).a.a.zw;
    var var_2 = func_2(arg_0.b.x).b.a;
    var var_3 = Struct_3(arg_2, Struct_1(select(arg_0.a, vec4<bool>(true, false, any(vec4<bool>(true, var_0, false, true)), select(var_1.x, false, false)), true), arg_0.b, var_1.x), !(all(arg_0.a) & true), vec4<f32>(461f, -1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2526f)), _wgslsmith_f_op_f32(-850f * 453f))) + _wgslsmith_f_op_f32(1524f - _wgslsmith_f_op_f32(ceil(927f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(700f)))))));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1264f)), _wgslsmith_f_op_f32(func_6(func_5(-vec2<i32>(-1i, u_input.b.x), u_input.c, vec2<i32>(-1i, u_input.c.x), func_1()), -35192i, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(step(var_0, -1174f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * var_0)), false, true, var_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), u_input.a, !(-2742f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 9u)], 7u)], true, vec4<f32>(234f, -2279f, -1212f, var_0)), 429f, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(23612u, 9u)])).x)));
    var var_2 = true;
    let var_3 = firstLeadingBit(_wgslsmith_div_i32(i32(-1i) * -(~u_input.b.x), ~16250i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x | ~21308u, -vec4<i32>(_wgslsmith_dot_vec2_i32(max(u_input.b, vec2<i32>(30764i, 1i)), firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x))), 2147483647i, u_input.b.x, -1i), ~(~(~vec4<u32>(0u, u_input.a.x, 53940u, 0u))) ^ vec4<u32>(var_1.b.x, global3[_wgslsmith_index_u32(~var_1.b.x | (u_input.a.x >> (u_input.e % 32u)), 9u)], ~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.e, 0u)), _wgslsmith_div_u32(~5813u, u_input.d)), -25197i);
}

