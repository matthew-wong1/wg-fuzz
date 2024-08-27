struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1386f, 291f, -205f, -537f, 806f, -423f, -2657f, -1054f, 815f);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(1u, 9846u, 49617u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(10043u, 35472u, 85806u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 62291u, 69445u), vec3<u32>(1u, 84039u, 0u), vec3<u32>(3415u, 27332u, 81221u), vec3<u32>(9720u, 4294967295u, 66777u), vec3<u32>(1u, 4294967295u, 23616u), vec3<u32>(1u, 1u, 36852u), vec3<u32>(0u, 16482u, 63040u), vec3<u32>(1u, 0u, 0u), vec3<u32>(16816u, 32613u, 64927u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 129270u, 1u), vec3<u32>(10577u, 4294967295u, 18059u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(37534u, 0u, 1u), vec3<u32>(35063u, 1u, 1u), vec3<u32>(21972u, 3302u, 1u), vec3<u32>(4294967295u, 4589u, 38980u), vec3<u32>(107746u, 62756u, 1u), vec3<u32>(20879u, 0u, 4294967295u));

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_1(true, ~u_input.b, -(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, -1i)) & (-1i | u_input.c.x)), arg_0);
    global0 = array<f32, 9>();
    var var_1 = Struct_1(true && any(vec2<bool>(true, true)), -1i, _wgslsmith_sub_i32(17254i, 1i), 1u);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(7788u, 9u)], 1201f, 234f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(710f, 1250f, 495f, arg_1), vec4<f32>(-1063f, -209f, arg_1, global1.x), true)), vec4<f32>(global1.x, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(41041u, 9u)], arg_1))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1, global1.x, -932f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, global1.x, global1.x, global0[_wgslsmith_index_u32(var_0.d, 9u)]) - vec4<f32>(482f, 883f, arg_1, -992f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.x, -663f, global0[_wgslsmith_index_u32(75071u, 9u)])) - vec4<f32>(arg_1, global0[_wgslsmith_index_u32(arg_0, 9u)], global1.x, 326f)), select(!vec4<bool>(var_0.a, var_0.a, var_1.a, var_0.a), select(vec4<bool>(true, false, var_0.a, var_1.a), vec4<bool>(var_0.a, var_0.a, var_1.a, false), vec4<bool>(var_1.a, false, true, true)), !vec4<bool>(var_1.a, false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 - 730f))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -173f), 1f))));
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)]), 874f, _wgslsmith_f_op_f32(594f + arg_1), _wgslsmith_f_op_f32(f32(-1f) * -539f)), vec4<f32>(global1.x, arg_1, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(46378u, 9u)]), _wgslsmith_f_op_f32(sign(arg_1))), !vec4<bool>(var_0.a, true, var_1.a, var_1.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(14452u, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], arg_1, -501f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.x, 1056f, 351f)) + vec4<f32>(global0[_wgslsmith_index_u32(var_1.d, 9u)], -2470f, 939f, -397f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -749f), -1000f, _wgslsmith_f_op_f32(select(arg_1, -396f, true)), -766f)));
    return abs(~reverseBits(firstTrailingBit(~(-28576i))));
}

fn func_2() -> bool {
    global0 = array<f32, 9>();
    let var_0 = func_3(~(u_input.e & u_input.e), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(min(21712u, ~(~u_input.a)), 9u)])));
    global3 = array<Struct_1, 10>();
    return !(!(!(!any(vec4<bool>(false, true, true, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(true, min(-10357i, ~(i32(-1i) * -2147483647i)), -19594i, arg_1.a.d);
    var var_1 = 1000f;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1648f - global0[_wgslsmith_index_u32(arg_0.a.d, 9u)]))), global1.x)), global1.x, global1.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~(~arg_1.b.d)), 9u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1783f)))));
    global0 = array<f32, 9>();
    let var_2 = arg_0;
    return arg_1;
}

fn func_1() -> vec3<bool> {
    let var_0 = 205f;
    let var_1 = func_4(Struct_2(Struct_1(func_2() & false, _wgslsmith_dot_vec2_i32(vec2<i32>(-56127i, -6992i), vec2<i32>(u_input.b, 0i) >> (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u))), i32(-1i) * -1i, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1918u, 0u, 0u), vec4<u32>(12572u, 89410u, 12898u, 1u))), global3[_wgslsmith_index_u32(u_input.e, 10u)], !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), true), Struct_1(true, -2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.c.x), vec3<i32>(u_input.c.x, 2147483647i, 45373i)), ~2147483647i, ~(~u_input.a))), Struct_2(Struct_1(true, firstLeadingBit(u_input.c.x), u_input.b, ~1u), global3[_wgslsmith_index_u32(u_input.e, 10u)], select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), global3[_wgslsmith_index_u32(max(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.e), vec3<u32>(4294967295u, 25555u, u_input.d)) % 32u), min(abs(u_input.e), u_input.a)), 10u)]), -1i);
    let var_2 = func_4(var_1, Struct_2(func_4(func_4(Struct_2(var_1.a, global3[_wgslsmith_index_u32(1702u, 10u)], var_1.c, Struct_1(false, -2147483647i, -1i, var_1.b.d)), var_1, u_input.b), Struct_2(Struct_1(false, u_input.b, u_input.b, var_1.b.d), Struct_1(var_1.a.a, -2147483647i, 14082i, 6988u), !var_1.c, var_1.a), -1i).b, func_4(Struct_2(func_4(Struct_2(Struct_1(var_1.b.a, -1i, 0i, 13298u), var_1.b, vec3<bool>(false, true, true), Struct_1(var_1.c.x, 10853i, 42876i, var_1.b.d)), Struct_2(global3[_wgslsmith_index_u32(1u, 10u)], Struct_1(false, -26298i, 5064i, 1u), var_1.c, Struct_1(var_1.d.a, var_1.a.b, u_input.c.x, 2153u)), -4066i).a, func_4(var_1, Struct_2(Struct_1(var_1.d.a, 34127i, 39074i, var_1.a.d), Struct_1(false, -2147483647i, var_1.b.b, 54472u), vec3<bool>(var_1.c.x, var_1.d.a, var_1.b.a), global3[_wgslsmith_index_u32(var_1.b.d, 10u)]), var_1.a.b).b, !vec3<bool>(var_1.a.a, var_1.c.x, var_1.b.a), var_1.b), Struct_2(func_4(Struct_2(global3[_wgslsmith_index_u32(23745u, 10u)], var_1.b, vec3<bool>(var_1.b.a, false, var_1.c.x), Struct_1(false, u_input.b, 60795i, var_1.b.d)), var_1, u_input.b).b, Struct_1(true, -6996i, u_input.b, u_input.e), vec3<bool>(var_1.d.a, var_1.d.a, var_1.c.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d, u_input.d, 89403u, u_input.a), vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.a)), 10u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.b, var_1.a.b, -30484i) | vec3<i32>(2147483647i, u_input.b, 0i), vec3<i32>(1i, u_input.c.x, 2147483647i))).b, vec3<bool>(all(!var_1.c.yz), true, var_1.b.a), global3[_wgslsmith_index_u32(var_1.d.d, 10u)]), abs(var_1.a.c)).a;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, var_2.d) >> ((8510u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.e, 42278u), reverseBits(18819u)), select(firstLeadingBit(vec2<u32>(4294967295u, var_2.d)), ~vec2<u32>(4294967295u, 80024u), global0[_wgslsmith_index_u32(119985u, 9u)] > -787f))) % 32u), 10u)];
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) * _wgslsmith_f_op_f32(-742f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(global1.x, -739f))), var_0)));
    return func_4(Struct_2(Struct_1(var_1.b.a, var_1.b.c, min(_wgslsmith_clamp_i32(-2147483647i, -30378i, u_input.b), ~u_input.c.x), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~var_3.d, 23u)], global2[_wgslsmith_index_u32(var_2.d, 23u)] ^ vec3<u32>(u_input.e, 26076u, var_2.d))), global3[_wgslsmith_index_u32(max(~(~var_3.d), u_input.a), 10u)], !(!vec3<bool>(var_1.d.a, false, var_3.a)), var_1.d), Struct_2(Struct_1(true, max(549i, 0i), abs(1i), abs(~0u)), func_4(Struct_2(func_4(Struct_2(global3[_wgslsmith_index_u32(33813u, 10u)], Struct_1(var_3.a, -5132i, 0i, 40876u), vec3<bool>(var_1.b.a, true, var_3.a), global3[_wgslsmith_index_u32(var_3.d, 10u)]), Struct_2(global3[_wgslsmith_index_u32(var_1.a.d, 10u)], global3[_wgslsmith_index_u32(u_input.e, 10u)], var_1.c, global3[_wgslsmith_index_u32(var_1.b.d, 10u)]), u_input.b).a, Struct_1(false, 44292i, var_1.d.b, var_1.d.d), !var_1.c, Struct_1(false, 2147483647i, -2147483647i, 45144u)), func_4(func_4(var_1, Struct_2(var_1.d, global3[_wgslsmith_index_u32(1u, 10u)], var_1.c, var_1.d), u_input.b), func_4(var_1, var_1, var_3.b), firstTrailingBit(34245i)), _wgslsmith_add_i32(var_3.b, var_1.a.c)).a, vec3<bool>(!any(vec4<bool>(true, var_1.c.x, var_1.b.a, var_3.a)), min(62364u, u_input.d) > ~var_1.d.d, any(vec4<bool>(true, var_3.a, true, true))), var_2), ~_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, -20473i)), firstTrailingBit(u_input.c), u_input.c | u_input.c))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 23>();
    var var_0 = select(func_1(), vec3<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), false, !func_4(Struct_2(global3[_wgslsmith_index_u32(33194u, 10u)], global3[_wgslsmith_index_u32(u_input.e, 10u)], vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(12602u, 10u)]), Struct_2(Struct_1(false, 0i, 49293i, u_input.a), global3[_wgslsmith_index_u32(u_input.e, 10u)], vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(21270u, 10u)]), u_input.c.x).b.a && func_2()), true);
    var var_1 = global3[_wgslsmith_index_u32(max(reverseBits(abs(u_input.e)), 78159u), 10u)];
    var var_2 = Struct_2(func_4(func_4(func_4(func_4(Struct_2(Struct_1(var_1.a, var_1.b, 0i, 0u), global3[_wgslsmith_index_u32(62857u, 10u)], vec3<bool>(false, var_1.a, var_0.x), Struct_1(var_0.x, u_input.c.x, -16996i, var_1.d)), Struct_2(Struct_1(false, -2147483647i, 21158i, var_1.d), global3[_wgslsmith_index_u32(u_input.e, 10u)], vec3<bool>(true, var_1.a, false), global3[_wgslsmith_index_u32(0u, 10u)]), u_input.b), Struct_2(Struct_1(true, var_1.c, 3061i, u_input.e), Struct_1(true, u_input.b, var_1.c, u_input.d), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(24932u, 10u)]), -81397i), Struct_2(func_4(Struct_2(global3[_wgslsmith_index_u32(var_1.d, 10u)], Struct_1(true, var_1.b, var_1.b, u_input.d), vec3<bool>(var_1.a, var_1.a, true), Struct_1(true, 30508i, 0i, 4294967295u)), Struct_2(global3[_wgslsmith_index_u32(var_1.d, 10u)], global3[_wgslsmith_index_u32(u_input.d, 10u)], vec3<bool>(false, var_1.a, var_0.x), global3[_wgslsmith_index_u32(4294967295u, 10u)]), 29016i).d, Struct_1(var_0.x, 6879i, var_1.c, 1u), !vec3<bool>(var_0.x, true, var_1.a), func_4(Struct_2(global3[_wgslsmith_index_u32(var_1.d, 10u)], Struct_1(true, -4701i, u_input.c.x, 63167u), vec3<bool>(true, true, true), Struct_1(var_0.x, u_input.c.x, 1i, var_1.d)), Struct_2(Struct_1(true, 27767i, var_1.c, u_input.a), Struct_1(true, u_input.c.x, var_1.c, 80701u), vec3<bool>(var_1.a, false, false), Struct_1(var_0.x, u_input.c.x, var_1.b, 1u)), 52798i).b), _wgslsmith_add_i32(4100i, u_input.c.x) ^ -447i), func_4(Struct_2(func_4(Struct_2(Struct_1(var_0.x, -15484i, u_input.b, u_input.e), Struct_1(var_1.a, 1i, -43199i, var_1.d), vec3<bool>(false, true, var_1.a), global3[_wgslsmith_index_u32(1u, 10u)]), Struct_2(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(var_1.d, 10u)], vec3<bool>(var_0.x, true, var_0.x), global3[_wgslsmith_index_u32(83802u, 10u)]), 1i).a, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(94685u, var_1.d), 10u)], vec3<bool>(false, false, var_1.a), Struct_1(var_0.x, var_1.b, var_1.b, 34089u)), func_4(Struct_2(Struct_1(var_1.a, -2147483647i, u_input.c.x, var_1.d), Struct_1(var_1.a, u_input.c.x, u_input.b, u_input.a), vec3<bool>(true, var_0.x, var_0.x), global3[_wgslsmith_index_u32(0u, 10u)]), func_4(Struct_2(Struct_1(var_0.x, u_input.b, 1i, 0u), Struct_1(var_0.x, 49339i, u_input.b, 8559u), vec3<bool>(false, true, var_1.a), Struct_1(var_0.x, 0i, u_input.b, 38612u)), Struct_2(Struct_1(true, -32446i, 14507i, u_input.d), global3[_wgslsmith_index_u32(var_1.d, 10u)], vec3<bool>(var_1.a, var_0.x, var_1.a), global3[_wgslsmith_index_u32(var_1.d, 10u)]), u_input.c.x), i32(-1i) * -46772i), u_input.c.x), var_1.b).a, Struct_1(false, var_1.b, _wgslsmith_add_i32(var_1.c, u_input.b), 1u), !(!(!(!vec3<bool>(var_1.a, false, var_1.a)))), Struct_1(true, min(firstLeadingBit(1i), var_1.c), ~((var_1.c | 29117i) >> (_wgslsmith_sub_u32(4294967295u, var_1.d) % 32u)), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2043f, -2025f, -361f)), vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, global0[_wgslsmith_index_u32(var_2.b.d, 9u)])), global0[_wgslsmith_index_u32(abs(1638u), 9u)], _wgslsmith_f_op_f32(min(740f, global0[_wgslsmith_index_u32(var_1.d, 9u)])))))), reverseBits(~1u), max(_wgslsmith_add_vec3_u32(select(~global2[_wgslsmith_index_u32(4294967295u, 23u)], vec3<u32>(0u, 66216u, var_2.b.d) & global2[_wgslsmith_index_u32(var_2.a.d, 23u)], var_2.c), vec3<u32>(var_1.d & u_input.d, firstLeadingBit(var_1.d), 3058u)), vec3<u32>(abs(firstLeadingBit(u_input.d)), ~u_input.a, _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.d, var_2.b.d, var_2.d.d, var_2.b.d), vec4<u32>(0u, 24672u, var_1.d, u_input.a)), vec4<u32>(19676u, var_1.d, u_input.e, 2350u) & vec4<u32>(1u, 15973u, 11161u, 62640u)))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(var_1.c, -6890i & var_2.b.c), _wgslsmith_sub_i32(abs(var_2.d.c), 0i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-23825i, var_1.b, -1i), vec3<i32>(-10281i, -17479i, -4029i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(34779i, 27781i, var_2.a.c), vec3<i32>(45399i, var_1.c, -2147483647i)), min(vec3<i32>(2147483647i, 1i, var_2.b.c), vec3<i32>(0i, var_1.c, var_2.b.c))))), _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(0u), _wgslsmith_div_u32(u_input.e, var_2.d.d), _wgslsmith_sub_u32(var_2.b.d, 0u)), vec3<u32>(9374u, abs(var_2.a.d), var_2.a.d)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(55244u, 23u)], select(global2[_wgslsmith_index_u32(var_1.d, 23u)], global2[_wgslsmith_index_u32(var_1.d, 23u)], false)), func_4(Struct_2(Struct_1(var_1.a, var_2.a.b, -71992i, var_1.d), var_2.a, var_2.c, Struct_1(var_0.x, var_2.a.b, var_2.d.b, 0u)), Struct_2(global3[_wgslsmith_index_u32(u_input.d, 10u)], Struct_1(var_2.d.a, 25793i, 18252i, var_2.d.d), var_2.c, global3[_wgslsmith_index_u32(4294967295u, 10u)]), firstLeadingBit(u_input.c.x)).a.d, _wgslsmith_div_u32(select(39996u, 4294967295u, true), var_2.a.d << (var_1.d % 32u))));
}

