struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(1155f, 1000f, -1086f, 423f), vec4<f32>(-147f, 799f, 1124f, 301f), vec4<f32>(-1000f, -747f, -501f, -1175f), vec4<f32>(-811f, -481f, 475f, 756f), vec4<f32>(1177f, 970f, 1186f, 906f), vec4<f32>(-515f, 1042f, 394f, -1386f), vec4<f32>(-362f, 272f, -1484f, 329f), vec4<f32>(1298f, -275f, 797f, 390f), vec4<f32>(3237f, -1303f, -971f, 201f), vec4<f32>(-519f, -1068f, -288f, -326f), vec4<f32>(1203f, -1184f, -456f, 849f), vec4<f32>(-982f, -602f, 664f, -889f), vec4<f32>(196f, -1217f, 1672f, 1366f), vec4<f32>(279f, 310f, -530f, -1226f), vec4<f32>(-895f, -767f, 406f, -181f), vec4<f32>(1170f, 854f, -906f, 766f), vec4<f32>(561f, -529f, 1000f, 339f), vec4<f32>(-732f, 269f, -229f, -501f), vec4<f32>(1385f, 315f, 815f, -1000f), vec4<f32>(-939f, 205f, -2722f, 1000f), vec4<f32>(652f, -233f, 1000f, 1742f), vec4<f32>(424f, 205f, 406f, -2272f), vec4<f32>(-806f, -746f, 707f, -875f), vec4<f32>(783f, 1644f, -216f, -355f), vec4<f32>(992f, 271f, 1422f, -1685f), vec4<f32>(687f, 611f, -359f, -222f), vec4<f32>(-1376f, -1116f, 2200f, -321f), vec4<f32>(1629f, 492f, -523f, 1019f));

var<private> global1: f32 = -544f;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(76028i, vec2<f32>(-1476f, 371f), -1083f, vec2<i32>(-59366i, -9139i), vec2<f32>(826f, 1339f)), Struct_1(1413i, vec2<f32>(-2582f, 1367f), 136f, vec2<i32>(-1i, 0i), vec2<f32>(-1651f, -1244f)), Struct_1(5256i, vec2<f32>(252f, -1500f), -989f, vec2<i32>(17168i, 1857i), vec2<f32>(1000f, 630f)));

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(u_input.d.x, abs(26120u), select(max(_wgslsmith_mod_u32(0u, firstTrailingBit(arg_0)), arg_1.x << (~0u % 32u)), _wgslsmith_dot_vec4_u32(arg_1, arg_1), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))));
    return 33375u;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(func_1(func_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d.x, 4294967295u, 0u, arg_1.x) >> (vec4<u32>(arg_1.x, 0u, 0u, 4294967295u) % vec4<u32>(32u))), abs(vec4<u32>(18908u, arg_1.x, u_input.d.x, u_input.d.x))), reverseBits(~(~vec4<u32>(u_input.d.x, arg_1.x, 1u, arg_1.x))), arg_0), ~vec4<u32>(16569u, min(0u, arg_1.x) >> (1u % 32u), u_input.d.x, _wgslsmith_sub_u32(countOneBits(arg_1.x), ~arg_1.x)), 358f), 3u)];
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1805f);
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-410f * var_0.c), _wgslsmith_f_op_f32(var_0.e.x - arg_0))), 923f)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) - _wgslsmith_f_op_f32(var_0.c + arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + var_0.e.x), -1000f, false))));
}

fn func_2(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_1(81880i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(169f, 583f), -1292f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(896f, -122f) - vec2<f32>(547f, 863f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(abs(341f)), vec3<u32>(52500u, 0u, 4294967295u), u_input.c)))), 475f, vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-160f, 204f)))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -216f);
    let var_2 = -((-vec2<i32>(u_input.a, 0i) | -vec2<i32>(u_input.a, u_input.a)) << (vec2<u32>(1u, ~arg_0.x) % vec2<u32>(32u))) << ((abs(abs(countOneBits(vec2<u32>(0u, 1u)))) & _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(76245u, u_input.d.x)), u_input.d.xz, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, arg_0.x), vec2<u32>(0u, arg_0.x)), ~vec2<u32>(u_input.d.x, 7329u)))) % vec2<u32>(32u));
    var var_3 = abs(select(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_2.x, 13471i), vec3<i32>(u_input.b, -2147483647i, 8157i)), -47872i, min(u_input.c, 9614i)), firstTrailingBit(~vec3<i32>(-1i, -2147483647i, var_0.d.x)) ^ (~vec3<i32>(var_0.a, -1i, var_0.d.x) >> (firstLeadingBit(u_input.d) % vec3<u32>(32u))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false)));
    global2 = array<Struct_1, 3>();
    return StorageBuffer(var_3.x, vec2<u32>(_wgslsmith_add_u32(39507u | arg_0.x, _wgslsmith_sub_u32(arg_0.x, u_input.d.x & 0u)), ~u_input.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(591f, _wgslsmith_f_op_f32(f32(-1f) * -1436f)) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), arg_0, 0i))), select(var_3.xy, vec2<i32>(var_2.x, -2147483647i), vec2<bool>(true, all(vec4<bool>(true, false, true, false)))) << (~(~abs(u_input.d.xz)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<vec4<f32>, 28>();
    global3 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~func_1(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_sub_u32(69427u, 0u)), max(select(vec4<u32>(4294967295u, 31792u, u_input.d.x, var_0), vec4<u32>(var_0, 51495u, var_0, u_input.d.x), vec4<bool>(false, true, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 4294967295u, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, u_input.d.x, 32151u, var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -881f), 1064f))), 28u)]);
    let x = u_input.a;
    s_output = func_2(~countOneBits(vec3<u32>(var_0, u_input.d.x, 33997u)) >> (select(u_input.d, firstLeadingBit(firstLeadingBit(u_input.d)), !all(vec2<bool>(false, false))) % vec3<u32>(32u)));
}

