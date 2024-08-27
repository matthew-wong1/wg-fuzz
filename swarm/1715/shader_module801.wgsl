struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-1000f, 647f, 1900f, -1479f, 1370f, 2235f, -865f, 535f, -352f, 1487f, -425f, 574f, -355f, -320f, 1164f, 438f, -147f, -1645f, -1635f, 1002f, 702f, 1170f, 546f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 18320u, 1u, 80784u), vec4<u32>(3203u, 45598u, 0u, 54811u), vec4<u32>(36168u, 74385u, 64570u, 1u))), vec4<u32>(37278u, _wgslsmith_div_u32(5998u, 69561u), 16435u, 0u)), 60151u, _wgslsmith_sub_u32(~reverseBits(22205u), 72075u)), vec3<u32>(abs(119265u), select(max(~36427u, 21203u), ~firstTrailingBit(1u), _wgslsmith_div_f32(arg_0, arg_0) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(32965u, 23u)] + -702f)), abs(reverseBits(~51053u))));
    var var_1 = Struct_2(reverseBits(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 1u, var_0.x), ~vec3<u32>(70306u, 23155u, var_0.x)))), Struct_1(abs(select(~1u, firstTrailingBit(var_0.x), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_f_op_f32(select(528f, 3055f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-641f, arg_0)))))));
    var var_2 = Struct_2(vec3<u32>(~var_0.x, ~firstLeadingBit(var_1.b.a) & _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_1.a.x, var_0.x, 50055u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.a, 141034u, var_0.x, 1u), vec4<u32>(30615u, 1u, 4294967295u, var_1.b.a))), min(1u, max(0u, ~39161u))), var_1.b, -1000f);
    return var_0.xz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> u32 {
    global0 = array<f32, 23>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.a) >> (vec2<u32>(arg_1.b.a, 1u) % vec2<u32>(32u)), func_3(global0[_wgslsmith_index_u32(arg_0.a, 23u)])), _wgslsmith_add_u32(126700u, arg_0.a) | _wgslsmith_clamp_u32(0u, arg_1.a.x, arg_0.a)), 23u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(firstLeadingBit(1u), ~arg_1.a.x, true), arg_1.a.x & 1u), 23u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.b.a, 23u)] + global0[_wgslsmith_index_u32(arg_0.a, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-537f, arg_1.c, true)))))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(64275u, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-662f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)))));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = arg_1;
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec2<u32> {
    return _wgslsmith_add_vec2_u32(~arg_1.zw, ~vec2<u32>(func_2(Struct_1(1u), Struct_2(arg_1.xzy, Struct_1(4294967295u), -2028f), 0i), _wgslsmith_add_u32(reverseBits(557u), arg_1.x)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.b;
    var var_1 = vec2<i32>(1i, i32(-1i) * -34416i);
    var var_2 = Struct_2(arg_3.a | (_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_3.b.a, arg_3.a.x, arg_3.a.x), arg_3.a, vec3<bool>(false, true, false)), vec3<u32>(0u, var_0.a, arg_3.b.a)) ^ select(select(arg_3.a, arg_3.a, false), _wgslsmith_div_vec3_u32(arg_3.a, arg_3.a), any(vec3<bool>(true, false, false)))), Struct_1(~arg_3.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(616f)) * _wgslsmith_f_op_f32(min(arg_3.c, -1404f))), 831f)), -1000f)));
    var_1 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.yy, arg_2.yw, _wgslsmith_dot_vec2_i32(u_input.b, u_input.a) != u_input.a.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_2.xz, _wgslsmith_f_op_vec2_f32(max(arg_2.yx, arg_2.xy))))))));
    return Struct_2(~reverseBits(_wgslsmith_clamp_vec3_u32(var_2.a, vec3<u32>(0u, 66933u, var_0.a), vec3<u32>(var_2.a.x, 58282u, var_0.a))), Struct_1(_wgslsmith_sub_u32(4294967295u, ~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f - _wgslsmith_f_op_f32(abs(-1155f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-1111f, global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 23u)], vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(_wgslsmith_f_op_f32(-1525f + 1492f), vec4<u32>(1u, 15135u, 0u, 1u)), ~vec2<u32>(1u, 1u)), 23u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27624u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 10629u))), 23u)]), global0[_wgslsmith_index_u32(countOneBits(1u) << (1u % 32u), 23u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 23u)], 579f)), Struct_2(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 39574u, 0u, 2275u), vec4<u32>(0u, 24633u, 0u, 14976u))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 78909u), vec2<u32>(32221u, 0u)), 4294967295u), ~4294967295u), Struct_1(~10666u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - global0[_wgslsmith_index_u32(1u, 23u)]))))));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = func_4(-594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) * _wgslsmith_f_op_f32(min(460f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_0.b.a, var_0.b.a, true), firstTrailingBit(var_0.b.a)), 23u)], _wgslsmith_f_op_f32(-1135f + _wgslsmith_div_f32(895f, 1181f)), -859f, var_0.c)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f - var_0.c)), -487f), global0[_wgslsmith_index_u32(15468u, 23u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(53273u, 23u)], var_0.c, var_0.c, -935f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], var_0.c, -586f, var_0.c)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 23u)], 175f, -109f, global0[_wgslsmith_index_u32(71091u, 23u)])))))), Struct_2(var_0.a, Struct_1(1u), global0[_wgslsmith_index_u32(~var_0.b.a, 23u)]))).b;
    let var_2 = 1u;
    let var_3 = select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(false, false), false), vec2<bool>(any(vec4<bool>(false, false, true, true)) | true, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, any(vec4<bool>(false, false, true, true))), false)), select(select(vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(false, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, true))), false)), true);
    global0 = array<f32, 23>();
    var var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.c)))), 998f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 23u)], 721f, -1677f, -418f)), _wgslsmith_div_vec4_f32(vec4<f32>(-574f, 703f, -248f, global0[_wgslsmith_index_u32(var_1.a, 23u)]), vec4<f32>(var_0.c, -1191f, 1406f, -310f))), vec4<f32>(626f, _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.b.a, 23u)], 1000f, true))), var_0.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(12712u, var_2), 23u)])))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1496f + _wgslsmith_f_op_f32(f32(-1f) * -1660f))), _wgslsmith_f_op_f32(sign(var_4.c))));
}

