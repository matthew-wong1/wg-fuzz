struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: Struct_2;

var<private> global3: f32 = -315f;

var<private> global4: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(-134f, vec3<u32>(6452u, 18296u, 31683u), 1771f, 4294967295u, -44563i), Struct_1(1656f, vec3<u32>(4294967295u, 21463u, 0u), -825f, 1u, -15761i), true), Struct_3(Struct_1(-833f, vec3<u32>(4294967295u, 4294967295u, 17553u), 688f, 0u, 1i), Struct_1(-267f, vec3<u32>(4294967295u, 0u, 27766u), -916f, 1u, -1i), false), Struct_3(Struct_1(1000f, vec3<u32>(1u, 2967u, 56381u), 546f, 0u, 76352i), Struct_1(-312f, vec3<u32>(4294967295u, 1u, 4294967295u), -723f, 0u, i32(-2147483648)), true), Struct_3(Struct_1(-389f, vec3<u32>(28368u, 1u, 4294967295u), 598f, 63125u, i32(-2147483648)), Struct_1(-534f, vec3<u32>(1u, 17896u, 8572u), -212f, 65024u, -21592i), true), Struct_3(Struct_1(-685f, vec3<u32>(77177u, 3573u, 1u), 1000f, 73817u, 33895i), Struct_1(603f, vec3<u32>(4294967295u, 0u, 1u), -1135f, 80748u, 18406i), true), Struct_3(Struct_1(904f, vec3<u32>(11269u, 49136u, 0u), -1089f, 47920u, -6991i), Struct_1(-345f, vec3<u32>(1u, 0u, 1u), -1000f, 23360u, 1i), false), Struct_3(Struct_1(1467f, vec3<u32>(4294967295u, 4294967295u, 134938u), -1806f, 25687u, 0i), Struct_1(508f, vec3<u32>(55010u, 1545u, 33414u), -373f, 18169u, -104i), false), Struct_3(Struct_1(-387f, vec3<u32>(1233u, 0u, 4294967295u), 391f, 106745u, 0i), Struct_1(-565f, vec3<u32>(30914u, 0u, 56539u), 246f, 5992u, 0i), false), Struct_3(Struct_1(-1017f, vec3<u32>(8632u, 1u, 4294967295u), 1000f, 31673u, 1i), Struct_1(-617f, vec3<u32>(38019u, 4294967295u, 1u), -1000f, 7961u, i32(-2147483648)), false), Struct_3(Struct_1(-1013f, vec3<u32>(49177u, 65685u, 50143u), -123f, 6852u, 17266i), Struct_1(-102f, vec3<u32>(4294967295u, 1u, 15245u), -244f, 4294967295u, -59669i), false), Struct_3(Struct_1(-113f, vec3<u32>(1u, 4294967295u, 22385u), 292f, 0u, -46496i), Struct_1(474f, vec3<u32>(1153u, 0u, 4294967295u), -775f, 7657u, -43290i), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = countOneBits(vec4<u32>(~global0.a, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(global2.a, global0.a), global0.a ^ 48795u), 11909u, 51554u ^ _wgslsmith_mult_u32(_wgslsmith_add_u32(global2.a, global2.a), countOneBits(u_input.c.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global2.c)), vec3<u32>(firstLeadingBit(var_0.x), ~u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.zzy), var_0.xxy), countOneBits(global2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.e, global2.c)), _wgslsmith_div_f32(global0.e, _wgslsmith_f_op_f32(round(1421f)))), 35834u, countOneBits(firstLeadingBit(26854i)));
    var var_2 = true;
    let var_3 = Struct_3(var_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), (var_1.b ^ (vec3<u32>(global2.a, u_input.c.x, global0.a) << (vec3<u32>(var_0.x, 0u, var_1.d) % vec3<u32>(32u)))) >> (countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(35967u, 10541u, 1u), var_1.b)) % vec3<u32>(32u)), var_1.a, var_1.b.x, ~(max(u_input.b.x, var_1.e) & _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, 1i), vec2<i32>(global0.b.x, -35907i)))), global0.d.x);
    let var_4 = var_1.b;
    return all(!select(vec3<bool>(global0.d.x, all(global2.d), true), !global2.d, !global2.d));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = vec3<bool>(global2.d.x, func_3(), global2.d.x);
    let var_1 = u_input.a;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(-1688f)), ~(~vec3<u32>(83497u, 4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c)) - -1211f) + _wgslsmith_f_op_f32(sign(global2.e))), ~_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(53370u, global2.a)), abs(35108i)), Struct_1(_wgslsmith_f_op_f32(abs(-1000f)), select(~u_input.c, u_input.c, vec3<bool>(all(vec4<bool>(true, global2.d.x, true, global2.d.x)), false, arg_1.d.x || arg_1.d.x)), -416f, global2.a, 1i), _wgslsmith_clamp_u32(717u, 17974u, ~(u_input.c.x >> (58527u % 32u))) == _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c >> (reverseBits(u_input.c) % vec3<u32>(32u))));
    global2 = arg_1;
    var var_3 = var_2.a.e;
    return any(!global2.d);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global3 = global2.e;
    let var_0 = 1578f;
    var var_1 = _wgslsmith_f_op_f32(global2.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(758f)) + -1000f)) == _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))));
    let var_2 = global0.d.x;
    var var_3 = -(~5539i);
    return select(select(vec4<bool>(true, true, (u_input.c.x == global2.a) & select(false, false, false), global0.d.x), select(vec4<bool>(!global0.d.x, global2.d.x, u_input.b.x != 11190i, false), vec4<bool>(func_2(18245u, Struct_2(arg_0, vec3<i32>(global0.b.x, global2.b.x, 37803i), global0.c, global2.d, -1000f)), !global2.d.x, true, global2.d.x), select(!vec4<bool>(global0.d.x, true, false, global0.d.x), select(vec4<bool>(global2.d.x, false, true, global0.d.x), vec4<bool>(true, true, global2.d.x, global2.d.x), vec4<bool>(false, false, true, false)), global2.d.x)), _wgslsmith_f_op_f32(min(global2.c, 644f)) >= _wgslsmith_div_f32(1153f, _wgslsmith_f_op_f32(203f + global2.c))), !select(vec4<bool>(global0.d.x, true, func_2(arg_0, Struct_2(62165u, vec3<i32>(global0.b.x, -1i, global0.b.x), 1467f, global2.d, global2.c)), global0.d.x), vec4<bool>(!global2.d.x, var_0 > var_0, true || global0.d.x, global2.d.x), vec4<bool>(global0.d.x & global0.d.x, !global0.d.x, true, global2.d.x)), !(!vec4<bool>(true, global2.e <= global0.c, true, func_2(1u, Struct_2(u_input.c.x, global2.b, 286f, global2.d, global2.e)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(func_4(abs(vec4<u32>(global2.a, u_input.c.x, 26605u, u_input.c.x) ^ vec4<u32>(u_input.c.x, global2.a, global2.a, 0u)), func_1(global2.a), Struct_3(Struct_1(-284f, u_input.c, 393f, global0.a, -21719i), Struct_1(623f, vec3<u32>(global0.a, u_input.c.x, global0.a), global2.c, global0.a, global2.b.x), !global2.d.x), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(46730u, 0u, ~4294967295u), 11u)]), u_input.c.x), u_input.c.x, ~(min(select(4294967295u, global2.a, true), global2.a | 27526u) << ((~0u ^ _wgslsmith_mod_u32(97339u, global0.a)) % 32u)), abs(_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(global2.a, 1u)), u_input.c.x)));
    var var_1 = global4[_wgslsmith_index_u32(global2.a, 11u)];
    var var_2 = global4[_wgslsmith_index_u32(u_input.c.x, 11u)];
    var var_3 = select(vec3<bool>(all(global2.d.yx), false, true), vec3<bool>(min(select(u_input.b.x, 0i, var_1.c), ~var_2.a.e) >= ~2147483647i, false, global2.d.x), select(vec3<bool>(!(var_2.a.a <= -115f), false, global2.d.x), global2.d, global2.d));
    global1 = array<vec2<u32>, 10>();
    var var_4 = global4[_wgslsmith_index_u32(abs(u_input.c.x >> (55654u % 32u)), 11u)];
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c + global2.e), _wgslsmith_f_op_f32(var_1.b.a * 509f))), 1542f), vec3<u32>(max(_wgslsmith_add_u32(0u, global2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(32616u, var_2.b.b.x, 4294967295u), var_0.yzx)) | _wgslsmith_div_u32(var_1.b.d, var_2.b.b.x), 0u ^ ~var_1.a.b.x, 15696u));
}

