struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(false, vec4<f32>(-2101f, -1157f, 594f, 1029f), vec3<i32>(10164i, 0i, 2147483647i)), 2147483647i, vec2<u32>(1u, 73947u), Struct_2(false, vec4<f32>(-627f, 1000f, -2072f, 1464f), vec3<i32>(1i, 2147483647i, 13273i)), false);

var<private> global1: array<u32, 18> = array<u32, 18>(28731u, 4294967295u, 35240u, 32338u, 33502u, 57734u, 1u, 24430u, 17107u, 21835u, 0u, 80676u, 0u, 0u, 1u, 106617u, 40105u, 57765u);

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(205f, 1139f, -233f, -612f), vec4<f32>(1000f, -402f, 114f, 358f), vec4<f32>(1000f, 443f, 1649f, -441f), vec4<f32>(1682f, 873f, -224f, 1000f), vec4<f32>(-528f, -792f, -1076f, -197f), vec4<f32>(1530f, 316f, -1378f, -206f), vec4<f32>(-634f, 372f, 1342f, -646f), vec4<f32>(843f, 1000f, -1000f, 1811f));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(false, vec4<f32>(176f, 723f, -493f, -438f), vec3<i32>(1i, -1i, i32(-2147483648))), Struct_2(false, vec4<f32>(1881f, 1976f, -1000f, 554f), vec3<i32>(9144i, -86959i, -1i)), Struct_2(false, vec4<f32>(141f, -230f, 933f, 203f), vec3<i32>(-48064i, i32(-2147483648), -1i)), Struct_2(true, vec4<f32>(1027f, -208f, 2239f, 143f), vec3<i32>(26200i, i32(-2147483648), i32(-2147483648))), Struct_2(false, vec4<f32>(-1000f, 877f, 548f, -1532f), vec3<i32>(2147483647i, -50041i, i32(-2147483648))), Struct_2(true, vec4<f32>(-1753f, 442f, 561f, 1262f), vec3<i32>(i32(-2147483648), 2147483647i, -16370i)));

var<private> global4: Struct_1 = Struct_1(683f, vec4<u32>(4294967295u, 39186u, 19396u, 30795u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    global3 = array<Struct_2, 6>();
    let var_0 = -461f;
    global0 = arg_2;
    global1 = array<u32, 18>();
    var var_1 = _wgslsmith_div_i32(arg_0.x, arg_0.x ^ u_input.c.x) == countOneBits(-1229i);
    return ~(~(~arg_1.b));
}

fn func_2() -> f32 {
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a * -907f) + 1032f)), global4.b);
    let var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(63681u, global1[_wgslsmith_index_u32(global0.c.x, 18u)], global0.c.x, global0.c.x) >> (global4.b % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(5744u, global4.b.x, global1[_wgslsmith_index_u32(23687u, 18u)], global0.c.x), global4.b), func_3(u_input.c, Struct_1(1579f, global4.b), Struct_3(Struct_2(global0.e, vec4<f32>(global4.a, -1000f, 719f, -1000f), global0.a.c), -2147483647i, global4.b.wy, global0.d, global0.a.a))))), _wgslsmith_sub_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(45169u, 32839u, global1[_wgslsmith_index_u32(global4.b.x, 18u)], 4294967295u), vec4<u32>(1u, global4.b.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], 1u)), countOneBits(vec4<u32>(u_input.a, 81016u, global0.c.x, global1[_wgslsmith_index_u32(11079u, 18u)])), true), vec4<u32>(49973u, u_input.a, 1u, 34419u)) & vec4<u32>(1u, ~(~u_input.a), global1[_wgslsmith_index_u32(u_input.a | 13878u, 18u)] ^ ~u_input.a, global0.c.x), reverseBits(~(~select(global4.b, vec4<u32>(4294967295u, global0.c.x, global1[_wgslsmith_index_u32(u_input.a, 18u)], 1u), vec4<bool>(false, global0.d.a, global0.d.a, global0.d.a)))));
    let var_1 = _wgslsmith_f_op_f32(round(1000f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global4.a)))) + -239f), max(~var_0, ~(var_0 ^ countOneBits(vec4<u32>(0u, 1u, var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 18u)], 18u)])))));
    let var_3 = 261f;
    return global0.a.b.x;
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    global1 = array<u32, 18>();
    let var_0 = global0.a.a | !((global0.a.c.x != _wgslsmith_sub_i32(global0.a.c.x, u_input.c.x)) || false);
    let var_1 = i32(-1i) * -54948i;
    let var_2 = i32(-1i) * -_wgslsmith_div_i32(-_wgslsmith_clamp_i32(1i, var_1, global0.d.c.x), var_1);
    global2 = array<vec4<f32>, 8>();
    return Struct_1(-195f, ~vec4<u32>(4294967295u, 13690u, 94923u, ~firstTrailingBit(58558u)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f - -622f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.b.x + _wgslsmith_f_op_f32(min(-605f, -994f))) + global4.a));
    let var_1 = max(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(global0.d.c.xx, vec2<i32>(u_input.d.x, arg_1.a.c.x)), firstLeadingBit(vec2<i32>(2147483647i, 43763i)) & (global0.d.c.xx ^ arg_1.a.c.yz)) << (max(vec2<u32>(global4.b.x, 4294967295u), vec2<u32>(18008u, _wgslsmith_div_u32(arg_0, arg_1.c.x))) % vec2<u32>(32u)), -u_input.d.yx);
    let var_2 = true;
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -232f))) * -777f), _wgslsmith_add_vec4_u32(vec4<u32>(~(~47220u), 40310u, u_input.a, global4.b.x), vec4<u32>(~(1u >> (global1[_wgslsmith_index_u32(0u, 18u)] % 32u)), 41930u, ~4294967295u, _wgslsmith_mult_u32(~arg_1.c.x, arg_0))));
    global4 = func_4(_wgslsmith_f_op_f32(func_2()), -380f);
    return vec3<bool>(all(vec4<bool>(any(!vec2<bool>(arg_2.x, false)), all(select(vec4<bool>(false, true, true, global0.e), vec4<bool>(true, arg_2.x, arg_2.x, arg_1.e), arg_2.x)), !select(global0.a.a, var_2, var_2), select(true, false, arg_1.e))), !all(vec4<bool>(true, !global0.e, any(vec4<bool>(false, false, true, false)), true)), any(select(select(!vec4<bool>(arg_2.x, false, arg_2.x, var_2), !vec4<bool>(true, var_2, false, false), all(vec3<bool>(var_2, false, false))), !select(vec4<bool>(arg_2.x, var_2, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_2.x, var_2, false, arg_2.x), global0.a.a), any(select(vec2<bool>(false, var_2), vec2<bool>(global0.a.a, false), var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global1[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(u_input.a, 18u)]), 18u)]) != _wgslsmith_mult_u32(firstLeadingBit(select(75515u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 18u)] % 32u), reverseBits(1u), global0.d.a)), reverseBits(~global4.b.x));
    let var_1 = global0.e;
    var var_2 = global0.b;
    let var_3 = ~global0.c.x;
    let var_4 = any(vec4<bool>(select(all(func_1(50840u, Struct_3(global0.d, 28991i, vec2<u32>(7589u, var_3), Struct_2(false, vec4<f32>(global4.a, global0.a.b.x, 177f, global0.a.b.x), vec3<i32>(1i, u_input.d.x, u_input.e)), global0.e), vec3<bool>(global0.d.a, global0.d.a, true))), global0.a.a, false), true, !(global0.e | global0.e), any(!func_1(u_input.a, Struct_3(global0.d, u_input.e, vec2<u32>(1u, var_3), global3[_wgslsmith_index_u32(26062u, 6u)], true), vec3<bool>(global0.e, false, false)))));
    let var_5 = any(func_1(min(min(var_3, u_input.a), ~3040u), Struct_3(Struct_2(false, global2[_wgslsmith_index_u32(26503u, 8u)], global0.d.c), u_input.b.x, vec2<u32>(35833u, 0u), global0.a, -1009f != global4.a), !func_1(31962u, Struct_3(Struct_2(false, vec4<f32>(-423f, global4.a, global4.a, -167f), u_input.d.xwy), u_input.e, vec2<u32>(global1[_wgslsmith_index_u32(global4.b.x, 18u)], global4.b.x), global0.d, global0.e), vec3<bool>(true, global0.e, global0.a.a)))) == false;
    let x = u_input.a;
    s_output = StorageBuffer(73587u, abs(_wgslsmith_sub_i32(2147483647i, u_input.e)), vec3<i32>(-min(global0.a.c.x, 19888i) >> (u_input.a % 32u), _wgslsmith_add_i32(-22790i, ~(i32(-1i) * -26931i)), _wgslsmith_clamp_i32(u_input.e, global0.a.c.x, global0.d.c.x)), global4.a, _wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(global0.c.x, 4294967295u)), firstTrailingBit(~vec2<u32>(u_input.a, var_3))));
}

