struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(4294967295u, 49953u), vec2<u32>(15730u, 31069u), vec2<u32>(29849u, 97188u), vec2<u32>(1u, 0u), vec2<u32>(41702u, 34521u), vec2<u32>(33635u, 26134u), vec2<u32>(4294967295u, 15244u), vec2<u32>(4294967295u, 2304u), vec2<u32>(36366u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(6514u, 1u), vec2<u32>(35892u, 0u), vec2<u32>(71818u, 24833u), vec2<u32>(4294967295u, 86051u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    global3 = array<vec2<u32>, 15>();
    global0 = array<u32, 27>();
    let var_0 = arg_2;
    var var_1 = Struct_2(~_wgslsmith_add_vec4_u32(~select(vec4<u32>(0u, 56761u, var_0.b.x, 53947u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 27u)], arg_2.b.x, global0[_wgslsmith_index_u32(var_0.e, 27u)], var_0.e), arg_2.d.x), ~(vec4<u32>(arg_2.e, 4294967295u, 4294967295u, 1u) & vec4<u32>(1u, var_0.b.x, u_input.a, 0u))), !(any(vec4<bool>(arg_2.c, true, false, true)) == true), Struct_1(_wgslsmith_div_f32(1123f, var_0.a), abs(_wgslsmith_div_vec2_u32(vec2<u32>(8047u, 58681u) >> (u_input.e % vec2<u32>(32u)), u_input.e)), !((false | var_0.c) | all(vec3<bool>(false, false, false))), !select(vec3<bool>(arg_2.d.x, arg_2.d.x, true), var_0.d, select(vec3<bool>(false, false, false), vec3<bool>(var_0.d.x, false, arg_2.c), arg_2.c)), ~1u), var_0);
    let var_2 = firstTrailingBit(u_input.d.yx);
    return select(vec2<bool>(var_0.c, all(select(select(var_1.d.d, vec3<bool>(var_1.d.d.x, var_1.d.c, var_1.d.d.x), var_1.c.d.x), select(vec3<bool>(arg_2.c, var_0.c, var_1.c.d.x), vec3<bool>(true, arg_2.c, var_0.d.x), arg_2.c), all(arg_2.d.yz)))), arg_2.d.yy, all(!select(!arg_2.d, vec3<bool>(arg_2.c, var_1.b, false), !var_0.d)));
}

fn func_2() -> bool {
    global0 = array<u32, 27>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(376f - -1789f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f + -169f))) - _wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, 64731u), ~global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 24415u), 27u)], 52991u), 15u)], _wgslsmith_mult_vec2_u32(min(vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 1u), global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.e.x, 27u)], 15u)]), countOneBits(~vec2<u32>(u_input.e.x, u_input.e.x)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(func_3(vec2<i32>(u_input.d.x, -18618i), vec3<f32>(-492f, -1283f, -554f), Struct_1(1000f, u_input.e, false, vec3<bool>(true, true, false), 4294967295u))))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), !(_wgslsmith_f_op_f32(ceil(-1347f)) > _wgslsmith_f_op_f32(floor(198f)))), 38590u);
    global0 = array<u32, 27>();
    return !var_0.c;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global3 = array<vec2<u32>, 15>();
    global3 = array<vec2<u32>, 15>();
    let var_0 = select(vec4<bool>(!(false & arg_0.d.x), true, arg_0.d.x, arg_0.d.x), vec4<bool>(!((i32(-1i) * -2147483647i) < _wgslsmith_clamp_i32(-41537i, u_input.d.x, 34978i)), all(vec4<bool>(!arg_0.d.x, any(arg_0.d), false, arg_0.c)), func_2(), !(_wgslsmith_sub_u32(arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 27u)]) < global0[_wgslsmith_index_u32(max(arg_0.b.x, global0[_wgslsmith_index_u32(0u, 27u)]), 27u)])), !(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(1u, 27u)] == 0u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))), global3[_wgslsmith_index_u32(4294967295u, 15u)], any(vec4<bool>(func_2() || select(arg_0.c, arg_0.d.x, var_0.x), func_2(), var_0.x, true)), select(arg_0.d, vec3<bool>(arg_0.a <= arg_0.a, !all(vec2<bool>(true, true)), true), arg_0.d), arg_0.e);
    global3 = array<vec2<u32>, 15>();
    return Struct_2(vec4<u32>(var_1.b.x, ~(u_input.e.x & _wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(arg_0.b.x, arg_0.e))), _wgslsmith_div_u32(~36095u, _wgslsmith_add_u32(u_input.a, arg_0.b.x)) & u_input.a, ~countOneBits(_wgslsmith_sub_u32(58953u, 1u))), false, Struct_1(_wgslsmith_f_op_f32(step(828f, -869f)), abs(vec2<u32>(_wgslsmith_mult_u32(17743u, global0[_wgslsmith_index_u32(1u, 27u)]), ~global0[_wgslsmith_index_u32(u_input.a, 27u)])), arg_0.d.x, select(arg_0.d, var_1.d, select(arg_0.d, vec3<bool>(true, true, true), select(arg_0.d, vec3<bool>(arg_0.c, false, arg_0.d.x), var_1.d))), 1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(sign(arg_0.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-762f))))), ~vec2<u32>(19663u, var_1.e >> (55321u % 32u)), ~(~64652u) < (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 30643u, global0[_wgslsmith_index_u32(0u, 27u)], 39482u), vec4<u32>(arg_0.b.x, u_input.a, var_1.b.x, 74284u)) << (_wgslsmith_mult_u32(0u, 1u) % 32u)), !var_0.wyx, ~firstTrailingBit(1u & arg_0.e)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(~(~(~u_input.e)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.c.e, ~abs(global0[_wgslsmith_index_u32(39876u, 27u)])), 15u)]);
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.x, 34018u, 1u), vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u)) >> (~vec4<u32>(20168u, 19661u, 30894u, u_input.e.x) % vec4<u32>(32u)), countOneBits(~(~vec4<u32>(arg_0.d.e, 64303u, 1u, arg_0.a.x)))) & global0[_wgslsmith_index_u32(select(0u, ~1u, (var_0.x == arg_0.a.x) != !(arg_0.a.x <= var_0.x)), 27u)];
    let var_1 = func_1(func_1(Struct_1(func_1(Struct_1(arg_0.c.a, vec2<u32>(var_0.x, 6713u), true, vec3<bool>(arg_0.b, arg_0.c.c, true), u_input.e.x)).c.a, u_input.e, !(!arg_0.c.c), select(!vec3<bool>(arg_0.d.d.x, false, arg_0.d.d.x), arg_0.d.d, select(arg_0.d.d, vec3<bool>(false, arg_0.d.d.x, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), arg_0.c.b.x)).c).d;
    let var_2 = vec4<bool>(arg_0.d.d.x, 3924i > (_wgslsmith_mult_i32(2147483647i << (u_input.a % 32u), -18598i) & 1i), any(var_1.d), all(select(!func_1(Struct_1(arg_0.d.a, u_input.e, arg_0.d.d.x, var_1.d, global0[_wgslsmith_index_u32(arg_0.c.b.x, 27u)])).d.d, vec3<bool>(!var_1.d.x, true, var_1.d.x && true), arg_0.c.d)));
    var var_3 = select(countOneBits(max(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 2896u, 32526u), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.x)), max(var_0.x, var_1.b.x), var_1.c == var_1.c), 0u)), arg_0.c.b.x, var_2.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0[_wgslsmith_index_u32(u_input.e.x, 27u)];
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(275f, vec2<u32>(0u, u_input.e.x), true, vec3<bool>(true, false, false), 0u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1149f)))))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - _wgslsmith_f_op_f32(-458f - -1313f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1232f + 822f) - _wgslsmith_f_op_f32(min(-367f, 823f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1091f, 665f))))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 345f)), 865f, !func_3(u_input.d.yy, vec3<f32>(var_1, 1326f, var_1), Struct_1(var_1, u_input.e, false, vec3<bool>(true, false, false), 3419u)).x))), 807f));
    let var_3 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], ~u_input.e ^ ~u_input.e), ~((u_input.e.x >> (u_input.e.x % 32u)) >> (_wgslsmith_div_u32(25835u, 32460u) % 32u)), min(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(91629u, 0u, global0[_wgslsmith_index_u32(57077u, 27u)]), 27u)], 0u), 1u), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 27u)], global0[_wgslsmith_index_u32(20974u, 27u)], global0[_wgslsmith_index_u32(41027u, 27u)]), select(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 84350u), vec3<u32>(99699u, 1u, 19823u), true)), 45724u)), !(_wgslsmith_add_u32(firstLeadingBit(u_input.a), 1u) >= 0u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2149f), min(_wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(4294967295u, 13145u)), u_input.e) << (u_input.e % vec2<u32>(32u)), true, select(vec3<bool>(true, all(vec2<bool>(false, false)), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), u_input.e.x), func_1(Struct_1(_wgslsmith_f_op_f32(abs(-345f)), firstLeadingBit(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)])) | reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)])), !any(vec3<bool>(false, true, true)), vec3<bool>(true, true, true), u_input.e.x)).c);
    let var_4 = u_input.d.xx;
    let var_5 = func_1(var_3.c);
    var var_6 = ~vec2<i32>(-var_4.x, ~abs(var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2 * var_5.d.a), 713f, 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.d.a, 527f) * vec3<f32>(-787f, var_1, 1156f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_5.c.a, var_5.c.a, var_1)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.c.a), _wgslsmith_f_op_f32(353f - var_2), -526f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, var_3.d.a, var_3.d.a))))), vec2<i32>(u_input.d.x, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(786f, -725f, -274f, -469f) * vec4<f32>(var_1, 1085f, 1207f, -1192f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(140f, var_2, 636f, 360f) * vec4<f32>(-191f, 324f, var_5.c.a, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, 505f, var_1, var_2))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.d.a, _wgslsmith_f_op_f32(var_1 * var_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_3.a.x, 4294967295u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 27u)], u_input.e.x)), var_5.a.yxx) ^ vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(var_3.a.x, 27u)], ~select(46065u, 18688u, false)));
}

