struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(true, false, true)));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(608f, 988f, false, vec4<bool>(true, true, true, false), 1000f), Struct_1(-448f, -349f, true, vec4<bool>(true, false, true, false), 693f), Struct_1(1301f, -1000f, true, vec4<bool>(true, false, false, true), -159f), Struct_1(584f, 2333f, false, vec4<bool>(true, false, true, false), 1430f), Struct_1(1332f, -1180f, true, vec4<bool>(false, false, true, true), 795f), Struct_1(-374f, 581f, true, vec4<bool>(false, false, false, false), -280f), Struct_1(960f, -1193f, false, vec4<bool>(true, false, false, false), -140f), Struct_1(490f, -1027f, false, vec4<bool>(false, false, false, false), -453f), Struct_1(525f, 206f, true, vec4<bool>(false, false, true, false), -1602f), Struct_1(-625f, 1000f, true, vec4<bool>(true, true, false, true), -557f), Struct_1(111f, 1215f, true, vec4<bool>(true, false, false, true), -682f), Struct_1(382f, 1566f, false, vec4<bool>(false, false, false, false), 227f), Struct_1(145f, 464f, true, vec4<bool>(false, false, false, false), 396f), Struct_1(-1708f, 1000f, false, vec4<bool>(true, false, true, false), 309f), Struct_1(544f, -1038f, true, vec4<bool>(true, true, false, false), -1185f), Struct_1(2287f, 1790f, true, vec4<bool>(true, true, false, false), -140f), Struct_1(2109f, 851f, false, vec4<bool>(true, true, true, false), -811f), Struct_1(436f, -451f, true, vec4<bool>(true, false, true, true), 753f), Struct_1(1000f, -291f, true, vec4<bool>(true, false, true, true), -566f), Struct_1(1121f, 1281f, true, vec4<bool>(true, true, false, true), 769f), Struct_1(-1208f, 1280f, false, vec4<bool>(false, false, true, true), -826f), Struct_1(-1128f, -378f, true, vec4<bool>(false, false, false, true), -993f), Struct_1(-1816f, -1618f, false, vec4<bool>(false, false, true, true), 1160f), Struct_1(613f, -1000f, true, vec4<bool>(false, true, true, false), 1000f), Struct_1(895f, 851f, false, vec4<bool>(true, true, true, true), -504f), Struct_1(142f, 1901f, false, vec4<bool>(true, true, false, true), 925f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(2278f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(479f, -209f)))))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(1u, 28324u, u_input.a, 4294967295u)), (vec4<u32>(u_input.a, u_input.a, 56304u, 28904u) & vec4<u32>(u_input.a, 81234u, u_input.a, 5797u)) & (vec4<u32>(25228u, 0u, u_input.a, 11017u) ^ vec4<u32>(0u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_sub_u32(u_input.a, ~firstTrailingBit(~21758u)), reverseBits(~max(select(u_input.a, 4294967295u, arg_0.c), _wgslsmith_div_u32(6382u, 14743u))));
    global1 = array<Struct_1, 26>();
    let var_1 = all(arg_0.d.yzz);
    global0 = array<Struct_5, 4>();
    let var_2 = countOneBits(vec2<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(u_input.a, 0u)), u_input.a), 1u));
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(sign(arg_2)))))) + -409f);
    var var_1 = arg_0.x;
    global1 = array<Struct_1, 26>();
    var_1 = min(-12377i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, u_input.b)), arg_0), abs(-40923i)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(17120u, func_3(Struct_1(763f, _wgslsmith_f_op_f32(-arg_3), true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(select(arg_3, 115f, true)))))), 4u)];
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(max(vec4<u32>(func_2(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(-18525i, -35489i), 4294967295u, _wgslsmith_f_op_f32(584f * 1000f), _wgslsmith_f_op_f32(func_1())), firstTrailingBit(~104836u), countOneBits(select(75035u, 4294967295u, true)), u_input.a), vec4<u32>(u_input.a, ~abs(0u), u_input.a, u_input.a)), firstLeadingBit(vec4<u32>(6730u, 23271u, ~abs(39726u), ~_wgslsmith_div_u32(0u, 9063u))));
    var var_1 = vec2<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, true), false)), true);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1359f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(f32(-1f) * -1033f)), reverseBits(-16173i) >= ~u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2168f, -332f, true))), -494f));
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(568f + var_2)) * _wgslsmith_f_op_f32(min(-319f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 758f), Struct_1(2026f, _wgslsmith_f_op_f32(f32(-1f) * -716f), true && !(false & var_1.x), !vec4<bool>(var_1.x != var_1.x, var_1.x, !var_1.x, var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 530f)), _wgslsmith_f_op_f32(var_2 - var_2)))));
    var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a + vec2<f32>(-877f, var_3.b.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, 470f), var_3.a)) + _wgslsmith_f_op_vec2_f32(abs(var_3.a)))))), Struct_1(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) - var_2), var_2), ((34998u ^ var_0.x) == (var_0.x << (0u % 32u))) || true, !vec4<bool>(true, var_1.x, true, select(var_1.x, var_3.b.c, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1657f + _wgslsmith_div_f32(208f, var_3.b.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, var_0.x, var_0.x), vec4<i32>(min(min(u_input.b, 1i), u_input.b), -u_input.b, u_input.b ^ (u_input.b | u_input.b), abs(u_input.b)), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-369f)), _wgslsmith_f_op_f32(-var_2), 528f, 792f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.e, 679f, var_2, 442f))))));
}

