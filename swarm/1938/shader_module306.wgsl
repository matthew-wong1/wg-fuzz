struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(357f, vec2<f32>(287f, -2060f), vec3<bool>(false, false, false), -267f), 32447u, vec3<bool>(false, true, false), Struct_1(-1509f, vec2<f32>(-319f, -418f), vec3<bool>(true, true, true), -1010f)), Struct_2(Struct_1(1279f, vec2<f32>(-779f, -1242f), vec3<bool>(false, true, false), 1255f), 52555u, vec3<bool>(true, false, false), Struct_1(-830f, vec2<f32>(-660f, 1041f), vec3<bool>(true, false, false), -356f)), Struct_2(Struct_1(1632f, vec2<f32>(379f, 203f), vec3<bool>(false, false, false), -1000f), 6911u, vec3<bool>(true, false, true), Struct_1(1498f, vec2<f32>(-389f, -1044f), vec3<bool>(false, true, false), 1441f)), Struct_2(Struct_1(818f, vec2<f32>(848f, 285f), vec3<bool>(true, true, true), 1000f), 13828u, vec3<bool>(false, false, false), Struct_1(-1520f, vec2<f32>(-2432f, 333f), vec3<bool>(true, true, false), 103f)), Struct_2(Struct_1(1092f, vec2<f32>(1333f, 844f), vec3<bool>(true, false, true), 1821f), 1u, vec3<bool>(true, true, true), Struct_1(165f, vec2<f32>(718f, -491f), vec3<bool>(true, true, true), -1618f)), Struct_2(Struct_1(877f, vec2<f32>(-1076f, 111f), vec3<bool>(true, false, true), 226f), 1u, vec3<bool>(false, true, false), Struct_1(-1020f, vec2<f32>(-1000f, -924f), vec3<bool>(false, false, true), 1000f)), Struct_2(Struct_1(1504f, vec2<f32>(359f, -273f), vec3<bool>(true, true, true), -159f), 0u, vec3<bool>(true, false, false), Struct_1(-937f, vec2<f32>(518f, 203f), vec3<bool>(false, true, true), -212f)), Struct_2(Struct_1(-516f, vec2<f32>(1000f, 1000f), vec3<bool>(true, true, false), 2027f), 1u, vec3<bool>(true, false, true), Struct_1(306f, vec2<f32>(-598f, -354f), vec3<bool>(false, false, true), 1317f)), Struct_2(Struct_1(1394f, vec2<f32>(1660f, 453f), vec3<bool>(false, true, false), -803f), 0u, vec3<bool>(true, false, true), Struct_1(297f, vec2<f32>(-1805f, -255f), vec3<bool>(false, false, true), -1325f)), Struct_2(Struct_1(1324f, vec2<f32>(1000f, -1250f), vec3<bool>(true, false, false), -981f), 4294967295u, vec3<bool>(true, true, true), Struct_1(-189f, vec2<f32>(-1791f, 1085f), vec3<bool>(false, true, false), -1131f)), Struct_2(Struct_1(948f, vec2<f32>(-277f, -1241f), vec3<bool>(true, false, true), 421f), 9825u, vec3<bool>(false, true, true), Struct_1(-201f, vec2<f32>(-2154f, 1468f), vec3<bool>(true, false, false), 3258f)), Struct_2(Struct_1(944f, vec2<f32>(-889f, 701f), vec3<bool>(true, true, true), -1000f), 65u, vec3<bool>(true, false, false), Struct_1(230f, vec2<f32>(2066f, -513f), vec3<bool>(true, false, false), 185f)));

var<private> global1: Struct_4;

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-44511i, 15905i, -123867i), vec3<i32>(-415i, -1i, -10690i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -93084i, 2147483647i), vec3<i32>(-56814i, -1i, -8730i), vec3<i32>(i32(-2147483648), 24856i, -24200i), vec3<i32>(-42558i, 1i, -24114i), vec3<i32>(69523i, 14823i, -6843i), vec3<i32>(-68364i, 35972i, -52198i), vec3<i32>(63379i, 26053i, 39185i), vec3<i32>(14982i, -10528i, 26555i), vec3<i32>(-12194i, 45308i, 0i), vec3<i32>(14371i, -33582i, -23630i), vec3<i32>(-89553i, 12546i, -49934i), vec3<i32>(-11119i, i32(-2147483648), -36121i), vec3<i32>(6776i, -1i, 0i), vec3<i32>(0i, -1i, -38120i), vec3<i32>(2147483647i, 15870i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -1026i), vec3<i32>(1i, 21950i, 10514i), vec3<i32>(i32(-2147483648), 73171i, 2969i));

var<private> global3: array<vec4<bool>, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = all(select(vec3<bool>(true, global1.a, select(global1.a, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(global1.a, global1.a, false), !vec3<bool>(true, global1.a, global1.a)), !(!vec3<bool>(global1.a, global1.a, false)), true), select(select(vec3<bool>(true, global1.a, false), select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, global1.a, true), global1.a), vec3<bool>(true, true, true)), !select(vec3<bool>(global1.a, true, false), vec3<bool>(false, global1.a, false), vec3<bool>(true, global1.a, global1.a)), false)));
    var var_1 = vec3<i32>(-u_input.a, _wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(select(-1i, u_input.a, global1.a), -19797i, u_input.a >> (33066u % 32u))), _wgslsmith_div_i32(u_input.c.x & u_input.a, reverseBits(u_input.a))), u_input.a ^ _wgslsmith_div_i32(select(15268i, -35813i, true), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, u_input.a, 1i, -18936i)), vec4<i32>(u_input.a, u_input.c.x, -26849i, u_input.c.x))));
    var var_2 = select(vec2<bool>(var_0, true), !select(!(!vec2<bool>(var_0, var_0)), select(!vec2<bool>(false, var_0), vec2<bool>(global1.a, var_0), vec2<bool>(true, true)), !vec2<bool>(var_0, true)), vec2<bool>(all(global3[_wgslsmith_index_u32(67105u, 10u)]) | true, true));
    var_2 = vec2<bool>(all(!vec3<bool>(any(global3[_wgslsmith_index_u32(u_input.d.x, 10u)]), all(vec4<bool>(var_0, false, false, global1.a)), false)), any(select(!(!vec2<bool>(var_2.x, true)), select(select(vec2<bool>(var_0, var_2.x), vec2<bool>(false, false), global1.a), vec2<bool>(var_0, var_2.x), var_0), !vec2<bool>(var_0, var_0))));
    let var_3 = vec4<f32>(-691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1318f)))) + 594f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f + _wgslsmith_div_f32(-765f, _wgslsmith_f_op_f32(max(-1957f, -778f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -977f))), -2042f))));
    return -247f;
}

fn func_2() -> vec2<f32> {
    let var_0 = 1u;
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1188f, 479f), _wgslsmith_f_op_f32(174f - -408f)))), abs(-2147483647i), global0[_wgslsmith_index_u32(~u_input.d.x, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -(-u_input.c.x >> (var_0 % 32u)));
    let var_2 = u_input.a | -var_1.b;
    global3 = array<vec4<bool>, 10>();
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1154f, var_1.c.d.d) - vec2<f32>(_wgslsmith_f_op_f32(406f * var_1.d), _wgslsmith_f_op_f32(-var_1.c.a.b.x))), var_1.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -3095f)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) * _wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(305f - _wgslsmith_f_op_f32(min(var_1.c.d.d, -1000f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> StorageBuffer {
    global3 = array<vec4<bool>, 10>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2())))), u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 12u)], -1352f, 0i);
    let var_1 = select(!var_0.c.d.c, vec3<bool>(any(vec3<bool>(any(vec2<bool>(arg_0.x, true)), true, true)), !select(arg_0.x, global1.a, var_0.c.a.c.x), any(!(!var_0.c.d.c))), false);
    let var_2 = arg_1;
    let var_3 = arg_0.x;
    return StorageBuffer(897u, firstLeadingBit(u_input.e) | vec4<u32>(firstLeadingBit(var_0.c.b), ~1u, firstTrailingBit(max(4294967295u, 1u)), select(firstTrailingBit(1u), _wgslsmith_sub_u32(2195u, var_0.c.b), !var_0.c.d.c.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c.a.d, 257f, arg_1))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, -917f, var_2))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 21>();
    let var_0 = Struct_4(true, ~global1.b);
    let var_1 = ~min(~min(91631u, global1.b) ^ global1.b, u_input.e.x);
    let var_2 = -1250f;
    global3 = array<vec4<bool>, 10>();
    global2 = array<vec3<i32>, 21>();
    let x = u_input.a;
    s_output = func_1(vec2<bool>(var_0.a, true), _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)), global1.a)));
}

