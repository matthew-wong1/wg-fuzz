struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_2(929f, 0u, vec2<bool>(false, true)), 1693f, Struct_1(741f), vec4<u32>(1u, 0u, 93691u, 20368u), Struct_2(1339f, 1u, vec2<bool>(true, true))), Struct_4(Struct_2(1000f, 10562u, vec2<bool>(true, false)), 207f, Struct_1(501f), vec4<u32>(57024u, 28514u, 1u, 4294967295u), Struct_2(1322f, 4294967295u, vec2<bool>(true, false))), Struct_4(Struct_2(-837f, 15486u, vec2<bool>(true, false)), -1421f, Struct_1(1144f), vec4<u32>(21817u, 59175u, 4294967295u, 4294967295u), Struct_2(-741f, 1u, vec2<bool>(false, false))), Struct_4(Struct_2(418f, 4294967295u, vec2<bool>(false, true)), -640f, Struct_1(1000f), vec4<u32>(103785u, 3374u, 4294967295u, 1u), Struct_2(1294f, 46717u, vec2<bool>(true, false))), Struct_4(Struct_2(352f, 1u, vec2<bool>(false, false)), -1559f, Struct_1(-263f), vec4<u32>(1u, 0u, 4294967295u, 0u), Struct_2(-1066f, 37589u, vec2<bool>(false, true))), Struct_4(Struct_2(891f, 0u, vec2<bool>(true, true)), 2258f, Struct_1(656f), vec4<u32>(48281u, 18836u, 1u, 4294967295u), Struct_2(-1309f, 3728u, vec2<bool>(false, true))), Struct_4(Struct_2(1000f, 2614u, vec2<bool>(false, false)), 1424f, Struct_1(1392f), vec4<u32>(71536u, 0u, 1u, 4294967295u), Struct_2(464f, 0u, vec2<bool>(false, true))), Struct_4(Struct_2(-241f, 0u, vec2<bool>(true, true)), -1000f, Struct_1(-1000f), vec4<u32>(1u, 64103u, 0u, 1u), Struct_2(-1865f, 1u, vec2<bool>(true, false))), Struct_4(Struct_2(310f, 0u, vec2<bool>(true, true)), -1414f, Struct_1(418f), vec4<u32>(14394u, 47821u, 64413u, 4294967295u), Struct_2(1553f, 26279u, vec2<bool>(true, false))), Struct_4(Struct_2(476f, 60420u, vec2<bool>(true, true)), -339f, Struct_1(-1613f), vec4<u32>(0u, 99601u, 0u, 0u), Struct_2(404f, 63980u, vec2<bool>(false, true))), Struct_4(Struct_2(-934f, 10793u, vec2<bool>(true, false)), 194f, Struct_1(-650f), vec4<u32>(29494u, 30911u, 4294967295u, 4294967295u), Struct_2(552f, 11157u, vec2<bool>(false, false))), Struct_4(Struct_2(248f, 4294967295u, vec2<bool>(false, false)), 1665f, Struct_1(-2002f), vec4<u32>(35460u, 6419u, 7167u, 1u), Struct_2(1038f, 1u, vec2<bool>(true, true))), Struct_4(Struct_2(-1000f, 25269u, vec2<bool>(false, false)), 711f, Struct_1(-758f), vec4<u32>(12342u, 1u, 0u, 20609u), Struct_2(1660f, 1u, vec2<bool>(false, true))), Struct_4(Struct_2(1083f, 88489u, vec2<bool>(true, false)), 2706f, Struct_1(218f), vec4<u32>(1u, 0u, 4294967295u, 34669u), Struct_2(-558f, 53827u, vec2<bool>(false, true))), Struct_4(Struct_2(1000f, 1u, vec2<bool>(true, false)), 413f, Struct_1(1765f), vec4<u32>(1u, 1u, 1u, 0u), Struct_2(464f, 26206u, vec2<bool>(true, true))), Struct_4(Struct_2(-816f, 4294967295u, vec2<bool>(false, false)), 386f, Struct_1(-237f), vec4<u32>(1575u, 4294967295u, 0u, 88197u), Struct_2(-587f, 0u, vec2<bool>(true, false))), Struct_4(Struct_2(-535f, 4294967295u, vec2<bool>(true, false)), 737f, Struct_1(649f), vec4<u32>(0u, 48305u, 27566u, 73012u), Struct_2(-946f, 4294967295u, vec2<bool>(true, false))), Struct_4(Struct_2(-327f, 21574u, vec2<bool>(false, true)), -1087f, Struct_1(-131f), vec4<u32>(1u, 4294967295u, 22003u, 1u), Struct_2(-324f, 1u, vec2<bool>(true, false))), Struct_4(Struct_2(1776f, 4294967295u, vec2<bool>(true, true)), 946f, Struct_1(-870f), vec4<u32>(4294967295u, 523u, 1u, 0u), Struct_2(-271f, 14833u, vec2<bool>(true, false))), Struct_4(Struct_2(-106f, 4294967295u, vec2<bool>(false, false)), 344f, Struct_1(-1582f), vec4<u32>(0u, 0u, 43965u, 0u), Struct_2(-860f, 1u, vec2<bool>(true, false))), Struct_4(Struct_2(2150f, 6722u, vec2<bool>(true, false)), -1000f, Struct_1(-844f), vec4<u32>(0u, 68232u, 1u, 7388u), Struct_2(103f, 1u, vec2<bool>(true, false))));

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<u32, 32> = array<u32, 32>(4294967295u, 8757u, 4294967295u, 6331u, 9111u, 4294967295u, 4294967295u, 143661u, 141856u, 35127u, 1u, 11004u, 4294967295u, 4294967295u, 6685u, 37816u, 4294967295u, 0u, 0u, 4294967295u, 17986u, 1u, 36229u, 1u, 42610u, 30657u, 4294967295u, 3796u, 1u, 0u, 2116u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, u_input.a, abs(u_input.a), u_input.a << (~_wgslsmith_add_u32(arg_2.e.x, 4294967295u) % 32u)), ~arg_2.e);
    global0 = array<Struct_4, 21>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(887f)), 4294967295u, arg_2.c.c);
    global2 = array<u32, 32>();
    var var_2 = countOneBits(vec2<i32>(~abs(49631i) ^ u_input.b.x, 20915i));
    return !vec3<bool>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b | vec4<i32>(1i, arg_2.d, var_2.x, var_2.x)) != reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-13649i, -1i, 9970i, var_2.x), vec4<i32>(-9740i, 1i, 54902i, var_2.x))), false, all(vec2<bool>(true, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: vec2<bool>) -> f32 {
    global0 = array<Struct_4, 21>();
    let var_0 = vec2<u32>(arg_2.a.x, countOneBits(u_input.a & _wgslsmith_div_u32(max(13749u, 0u), countOneBits(43541u))));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(33520u) >> (_wgslsmith_mod_u32(arg_2.a.x, 0u) % 32u), 21u)];
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(~reverseBits(u_input.b) >> (~(var_1.d & vec4<u32>(global2[_wgslsmith_index_u32(arg_2.a.x, 32u)], var_1.d.x, 70973u, u_input.a)) % vec4<u32>(32u)), min(max(u_input.b, ~u_input.b), u_input.b)), arg_3.x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b * 527f), 670f))), 18235u, !vec2<bool>(true, !arg_0.x)), u_input.b.x, ~abs(var_1.d));
    var var_3 = ~41169u;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -762f), 1081f)))), -815f));
}

fn func_2() -> u32 {
    global2 = array<u32, 32>();
    global0 = array<Struct_4, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(623f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2346f), ~4294967295u, Struct_3(u_input.b.x, false, Struct_2(782f, 1u, vec2<bool>(true, false)), u_input.b.x, vec4<u32>(u_input.a, u_input.a, 0u, global2[_wgslsmith_index_u32(0u, 32u)])), -2147483647i), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, 2147483647i), ~u_input.b.wy), Struct_5(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 1u, global2[_wgslsmith_index_u32(u_input.a, 32u)])), func_3(-1741f, 4294967295u, global1[_wgslsmith_index_u32(min(u_input.a, 0u), 28u)], min(u_input.b.x, u_input.b.x)).zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), u_input.b.zz, Struct_5(vec3<u32>(39093u, u_input.a, u_input.a)), vec2<bool>(true, true)))), false)));
    let var_1 = Struct_1(595f);
    let var_2 = 1i;
    return 0u;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    var var_1 = var_0.e.c.x;
    let var_2 = var_0.e;
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1199f), 1u, !select(select(vec2<bool>(arg_1.x, arg_1.x), var_0.a.c, arg_1), !var_2.c, select(vec2<bool>(arg_1.x, false), vec2<bool>(var_0.a.c.x, arg_1.x), vec2<bool>(true, true)))), -986f, var_0.c, vec4<u32>(arg_2.x | var_0.d.x, 1u, global2[_wgslsmith_index_u32(~func_2(), 32u)] | arg_2.x, ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(49493u, arg_2.x), 34817u), 32u)]), Struct_2(801f, ~(~firstTrailingBit(var_0.e.b)), select(select(vec2<bool>(true, true), vec2<bool>(var_0.e.c.x, true), vec2<bool>(true, var_2.c.x)), var_2.c, !vec2<bool>(arg_1.x, var_2.c.x))));
    let var_3 = vec3<bool>(any(select(vec2<bool>(false, true), !func_3(-785f, 4294967295u, global1[_wgslsmith_index_u32(var_0.d.x, 28u)], -15333i).xy, vec2<bool>(true, var_0.e.b > var_2.b))), false, true);
    return var_0.e;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> bool {
    global0 = array<Struct_4, 21>();
    var var_0 = global1[_wgslsmith_index_u32(25720u, 28u)];
    var var_1 = var_0.e.zyw;
    var var_2 = arg_0.x;
    var var_3 = Struct_5(min(var_0.e.xzy, ~(~vec3<u32>(25711u, global2[_wgslsmith_index_u32(2062u, 32u)], 23061u))) | (~var_0.e.xwy | var_0.e.wxw));
    return true || any(select(select(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, var_0.b, false, arg_0.x), true), vec4<bool>(false, arg_0.x, arg_1, arg_1), vec4<bool>(true, arg_2.c.x, true, false)), vec4<bool>(any(vec2<bool>(arg_1, false)), !var_0.c.c.x, !arg_0.x, arg_0.x), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))) | !func_5(vec3<bool>(true, true, true), true, func_1(-2147483647i, vec2<bool>(false, true), vec3<u32>(73419u, global2[_wgslsmith_index_u32(4294967295u, 32u)], 1u), vec2<f32>(1626f, -1986f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(39489u, 32u)], 0u, 21450u, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))), ~0u), firstLeadingBit(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], u_input.a)), max(abs(vec3<u32>(u_input.a, u_input.a, 0u)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(20323u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)]), false))))), 28u)];
    global0 = array<Struct_4, 21>();
    var_0 = true;
    var var_2 = ~vec3<u32>(u_input.a, 54809u, 35135u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(vec2<i32>(1i, u_input.b.x))), -u_input.b.x);
}

