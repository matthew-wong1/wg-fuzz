struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(24557u, 21854u), vec2<u32>(35247u, 4294967295u), vec2<u32>(0u, 56241u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 26523u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 20686u), vec2<u32>(1985u, 5086u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 13851u), vec2<u32>(18070u, 3561u), vec2<u32>(4294967295u, 37078u), vec2<u32>(34857u, 21607u), vec2<u32>(4178u, 0u), vec2<u32>(0u, 24312u), vec2<u32>(0u, 0u), vec2<u32>(82171u, 0u));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(1u, 10990u, 16712u), false, vec2<u32>(4294967295u, 0u), -119f), Struct_1(vec3<u32>(32834u, 14098u, 4294967295u), false, vec2<u32>(0u, 17002u), -642f), Struct_1(vec3<u32>(0u, 44568u, 1u), true, vec2<u32>(55672u, 4294967295u), 2014f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, vec2<u32>(16829u, 6330u), 1000f), Struct_1(vec3<u32>(69678u, 35305u, 1479u), false, vec2<u32>(35674u, 17688u), -967f), Struct_1(vec3<u32>(0u, 1u, 0u), true, vec2<u32>(1u, 4294967295u), -446f), Struct_1(vec3<u32>(1u, 65534u, 14621u), true, vec2<u32>(33540u, 0u), 328f), Struct_1(vec3<u32>(0u, 19638u, 79610u), true, vec2<u32>(1u, 4294967295u), 1090f), Struct_1(vec3<u32>(15591u, 86520u, 69462u), true, vec2<u32>(1u, 77032u), -826f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, vec2<u32>(4294967295u, 0u), -1000f), Struct_1(vec3<u32>(24603u, 1u, 15769u), false, vec2<u32>(42835u, 1u), -412f), Struct_1(vec3<u32>(35112u, 13104u, 4294967295u), true, vec2<u32>(1u, 5878u), 845f), Struct_1(vec3<u32>(3376u, 2578u, 6512u), false, vec2<u32>(71580u, 0u), -500f), Struct_1(vec3<u32>(13068u, 4294967295u, 67366u), false, vec2<u32>(1u, 1u), -582f), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), true, vec2<u32>(58321u, 27126u), 289f), Struct_1(vec3<u32>(1u, 38497u, 799u), false, vec2<u32>(64029u, 20211u), 1000f), Struct_1(vec3<u32>(4294967295u, 4630u, 12118u), true, vec2<u32>(0u, 11733u), -1190f), Struct_1(vec3<u32>(9960u, 4294967295u, 1u), true, vec2<u32>(1u, 27533u), -1790f), Struct_1(vec3<u32>(26055u, 1u, 0u), true, vec2<u32>(4294967295u, 0u), -1499f), Struct_1(vec3<u32>(0u, 4294967295u, 23543u), false, vec2<u32>(44102u, 0u), 1956f), Struct_1(vec3<u32>(0u, 0u, 21511u), true, vec2<u32>(7059u, 1u), 149f), Struct_1(vec3<u32>(26838u, 4294967295u, 22163u), true, vec2<u32>(103993u, 101219u), 1208f), Struct_1(vec3<u32>(4294967295u, 26485u, 96378u), false, vec2<u32>(37648u, 0u), 1301f), Struct_1(vec3<u32>(69647u, 0u, 44706u), true, vec2<u32>(1u, 1u), 495f), Struct_1(vec3<u32>(14101u, 10050u, 27116u), true, vec2<u32>(4294967295u, 4294967295u), -114f), Struct_1(vec3<u32>(4432u, 1u, 4083u), false, vec2<u32>(14312u, 23255u), -1039f), Struct_1(vec3<u32>(0u, 66156u, 1u), false, vec2<u32>(78175u, 4294967295u), 997f), Struct_1(vec3<u32>(53494u, 20441u, 0u), true, vec2<u32>(1u, 0u), 552f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(453f, 1658f)))))))));
    var var_1 = u_input.c;
    global1 = array<Struct_1, 28>();
    let var_2 = 0u;
    var var_3 = ~firstTrailingBit(vec2<i32>(u_input.c, ~33907i) ^ reverseBits(vec2<i32>(u_input.c, -1i) & vec2<i32>(u_input.c, u_input.c)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1092f, -326f))), 1335f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-448f + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(392f)) - 1668f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(~u_input.d.xxz, !(true | any(vec2<bool>(true, true))), firstLeadingBit(~global0[_wgslsmith_index_u32(1u, 18u)]), -701f);
    global0 = array<vec2<u32>, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(~vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 16068u, ~17867u ^ arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec2<u32>, 18>();
    let var_2 = -_wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(-5014i, _wgslsmith_add_i32(18894i, u_input.c << (42168u % 32u))));
    return Struct_1(var_0.a, true, ~(~vec2<u32>(24921u, _wgslsmith_add_u32(15350u, arg_0.x))), 653f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d + arg_1.d))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d, 719f)) * _wgslsmith_f_op_f32(step(-358f, arg_1.d))))), arg_1.d)));
    var var_1 = max(-2147483647i, arg_0.x);
    let var_2 = reverseBits(max(firstTrailingBit(_wgslsmith_mult_i32(countOneBits(26346i), ~u_input.c)), (arg_0.x | -arg_0.x) >> (~arg_1.a.x % 32u)));
    global0 = array<vec2<u32>, 18>();
    return global1[_wgslsmith_index_u32(71030u, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    global1 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-818f - -478f) + 974f), -1366f, 1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(sign(-122f)))))));
    var var_2 = func_4(vec3<i32>(_wgslsmith_sub_i32(22567i, _wgslsmith_add_i32(-u_input.c, 41643i & u_input.c)), abs(-1i), u_input.c >> (countOneBits(abs(u_input.d.x)) % 32u)), func_1(vec3<u32>(~var_0 >> ((0u << (var_0 % 32u)) % 32u), 0u, 4294967295u)));
    let var_3 = countOneBits(vec3<i32>(u_input.c, min(u_input.c, max(-u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-31616i, u_input.c), vec2<i32>(u_input.c, u_input.c)))), -u_input.c));
    var_2 = func_1(_wgslsmith_div_vec3_u32(~(~u_input.d.xzy), vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.a, u_input.d.xxx ^ u_input.d.xzx), 31351u, var_2.a.x)));
    let var_4 = func_1(~firstLeadingBit(u_input.d.wwy));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, ~(-1758i), vec4<u32>(_wgslsmith_mod_u32(~29887u, var_0) >> ((65474u | abs(var_2.c.x)) % 32u), var_2.c.x, var_4.c.x, var_2.a.x | var_4.a.x), _wgslsmith_f_op_f32(1055f + var_1.x));
}

