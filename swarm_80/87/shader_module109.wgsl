struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, false, vec4<i32>(2147483647i, -18211i, -47694i, -1i), 1244f), Struct_1(false, true, vec4<i32>(6227i, 1i, 27158i, 1i), -1601f), Struct_1(true, false, vec4<i32>(2147483647i, -1i, 376i, i32(-2147483648)), -215f), Struct_1(true, true, vec4<i32>(-24648i, 0i, -29566i, 0i), 904f), Struct_1(false, true, vec4<i32>(-46978i, 0i, i32(-2147483648), -85708i), 773f), Struct_1(false, true, vec4<i32>(-6279i, 5915i, i32(-2147483648), 16965i), 819f), Struct_1(false, true, vec4<i32>(-506i, 1i, -1i, -68294i), -150f), Struct_1(false, true, vec4<i32>(i32(-2147483648), -1i, 2147483647i, -21778i), -364f), Struct_1(false, true, vec4<i32>(-1i, 2147483647i, -91135i, i32(-2147483648)), -1000f), Struct_1(false, true, vec4<i32>(0i, 21704i, 1i, 21762i), -776f), Struct_1(true, true, vec4<i32>(1i, -50973i, 0i, 1i), -201f), Struct_1(false, true, vec4<i32>(-18687i, -18066i, -1i, -5465i), -445f), Struct_1(true, true, vec4<i32>(25588i, -7920i, 17443i, -26227i), 754f));

var<private> global1: array<f32, 24> = array<f32, 24>(963f, -762f, -1773f, 1248f, -1000f, -2496f, -423f, 890f, 1000f, -1622f, -647f, -1364f, -129f, 1319f, 429f, 1765f, -1702f, 724f, -114f, -585f, 1176f, -222f, 1326f, -737f);

var<private> global2: array<bool, 7> = array<bool, 7>(true, false, false, true, true, true, true);

var<private> global3: f32;

var<private> global4: u32 = 0u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    return global1[_wgslsmith_index_u32(1u, 24u)];
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1538f, _wgslsmith_f_op_f32(func_3(u_input.c.yy)))))));
    let var_0 = Struct_1(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(32387u), countOneBits(u_input.e.x)), 7u)], _wgslsmith_sub_vec4_i32(u_input.c, select(-firstLeadingBit(vec4<i32>(arg_1.x, 1i, arg_1.x, u_input.a)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 80306i, -51592i, -12065i), u_input.c), -vec4<i32>(u_input.c.x, arg_1.x, arg_1.x, arg_1.x)), !select(arg_0, global2[_wgslsmith_index_u32(u_input.b, 7u)], arg_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1838f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(59965u), 24u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], -144f)))))));
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global2 = array<bool, 7>();
    return 1u;
}

fn func_1() -> i32 {
    global4 = 84798u;
    var var_0 = Struct_1((~(19515u | u_input.e.x) & ~(~0u)) <= _wgslsmith_div_u32(u_input.b, 29305u), true, u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(962f - _wgslsmith_f_op_f32(-906f - global1[_wgslsmith_index_u32(74788u, 24u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2000f + global1[_wgslsmith_index_u32(90364u, 24u)])))));
    var_0 = global0[_wgslsmith_index_u32((_wgslsmith_clamp_u32(u_input.e.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(115799u, 96813u, 7747u, 8969u), vec4<u32>(30854u, u_input.b, 1u, u_input.e.x)), func_2(true, var_0.c.zz) << (~u_input.b % 32u)) >> (1904u % 32u)) & u_input.b, 13u)];
    global4 = firstLeadingBit(~(~(~_wgslsmith_mult_u32(u_input.e.x, 4294967295u))));
    global2 = array<bool, 7>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1());
    global3 = -167f;
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global2 = array<bool, 7>();
    global1 = array<f32, 24>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(u_input.a), max(-var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.c.ww)), var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(~u_input.b), 24u)], global1[_wgslsmith_index_u32(func_2(false, vec2<i32>(u_input.c.x, var_0)), 24u)]) + global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), _wgslsmith_f_op_f32(var_1.d + var_1.d), 136267u);
}

