struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(4294967295u, 1u, vec3<f32>(-1000f, -899f, -1884f)), Struct_2(18545u, 34089u, vec3<f32>(352f, 785f, 1136f)), Struct_2(4294967295u, 0u, vec3<f32>(361f, -260f, 403f)), Struct_2(51341u, 1u, vec3<f32>(1332f, -353f, 1000f)), Struct_2(3020u, 43403u, vec3<f32>(-587f, -658f, -777f)), Struct_2(1u, 4294967295u, vec3<f32>(384f, -263f, -1000f)), Struct_2(0u, 6772u, vec3<f32>(961f, 879f, -188f)), Struct_2(1u, 1u, vec3<f32>(2155f, 929f, 747f)), Struct_2(4294967295u, 1914u, vec3<f32>(-1780f, -281f, -479f)), Struct_2(1u, 7377u, vec3<f32>(-147f, 124f, 1155f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<u32>) -> u32 {
    global0 = array<Struct_2, 10>();
    let var_0 = 18722u;
    let var_1 = -(min(vec4<i32>(22115i, 241i, _wgslsmith_sub_i32(1i, -12987i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 15982i), vec2<i32>(1i, -1i))), vec4<i32>(countOneBits(45869i), -15443i, min(28580i, -2147483647i), ~0i)) & vec4<i32>(~0i, -(~13715i), 15904i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(421i, 0i), vec2<i32>(0i, 2147483647i)))));
    var var_2 = Struct_2(countOneBits(~1u), ~(~var_0), _wgslsmith_f_op_vec3_f32(-arg_2.zww));
    var_2 = Struct_2(~(~(~(~0u))), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 55452u, arg_3.x), vec3<u32>(31784u, 30074u, 28296u)), max(~36361u, ~var_0)), ~(~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1247f, var_2.c.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(763f, 163f, var_2.c.x))))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 149f, arg_1.c.x)) * _wgslsmith_f_op_vec3_f32(max(var_2.c, var_2.c)))))));
    return select(~(~arg_3.x), ~(~_wgslsmith_mod_u32(u_input.a, 1u)), all(vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, false, true, true)), var_2.c.x == _wgslsmith_div_f32(arg_2.x, 685f))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(~1u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, ~32731u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1f), -768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1253f))))));
    let var_1 = Struct_1(any(!vec4<bool>(true, false, any(vec2<bool>(false, true)), true)));
    global0 = array<Struct_2, 10>();
    var var_2 = !select(vec2<bool>(true, var_1.a), !vec2<bool>(false, var_1.a), !select(select(vec2<bool>(var_1.a, true), vec2<bool>(false, var_1.a), vec2<bool>(false, false)), vec2<bool>(false, true), true));
    let var_3 = var_2.x | true;
    return var_0.a != reverseBits(_wgslsmith_clamp_u32(1u, func_3(min(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, var_0.a, var_0.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 4294967295u, var_0.b), vec3<u32>(0u, var_0.a, 37511u)), 10u)], _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1447f, -111f, var_0.c.x), vec4<f32>(var_0.c.x, 1581f, var_0.c.x, var_0.c.x)), select(vec2<u32>(91661u, u_input.a), vec2<u32>(u_input.a, u_input.a), true)), var_0.b));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(func_2());
    var var_1 = ~u_input.a & ~(~firstLeadingBit(0u));
    let var_2 = all(select(!select(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, false, false)), vec3<bool>(var_0.a, var_0.a, var_0.a), false), select(select(!vec3<bool>(false, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), var_0.a)), !(!vec3<bool>(var_0.a, true, var_0.a)), var_0.a), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a, var_0.a), false), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, var_0.a), true), false)));
    var_0 = Struct_1(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 34166u, 0u, u_input.a), vec4<u32>(9031u, u_input.a, u_input.a, u_input.a)) != u_input.a)));
    var_1 = firstLeadingBit(0u);
    return Struct_1(all(vec2<bool>(any(vec2<bool>(false, var_0.a)) || var_2, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_0 = firstTrailingBit(~(~max(_wgslsmith_div_u32(u_input.a, 22383u), ~0u)));
    let var_1 = global0[_wgslsmith_index_u32(27196u, 10u)];
    var var_2 = Struct_1(true & any(vec3<bool>(true, true, true)));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-17720i, 0i, -1006i), abs(-10608i)), _wgslsmith_div_i32(~(-27554i), 1i)) | select(-abs(vec2<i32>(3101i, 4989i)), reverseBits(reverseBits(vec2<i32>(1i, -38990i))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1444f), -521f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.x, 522f, -473f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -1277f, -575f), var_1.c))))), var_1.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(783f, 395f) + var_1.c.xz), _wgslsmith_f_op_vec2_f32(-var_1.c.zx)))));
}

