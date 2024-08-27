struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(i32(-2147483648), i32(-2147483648), 16778i, 25967i, -38776i, 2147483647i, -14860i, 2147483647i, -1468i, 0i, 8876i, 13010i, 23035i, 1i, -8220i, -40859i, 1i, 1i, 35324i, i32(-2147483648), -38945i, -14244i, 1i, 174i, i32(-2147483648));

var<private> global1: array<f32, 29> = array<f32, 29>(-929f, -1092f, -251f, 991f, -1528f, -2254f, 1000f, -195f, -1291f, 1808f, 239f, -442f, -1943f, 1000f, -918f, 1041f, -880f, 1629f, -340f, 653f, 829f, 862f, 493f, 1355f, -182f, 415f, -2039f, -320f, 920f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = array<f32, 29>();
    var var_1 = -(~vec3<i32>(countOneBits(1i), max(-2147483647i, global0[_wgslsmith_index_u32(13216u, 25u)]), ~(-1348i))) ^ vec3<i32>(countOneBits(reverseBits(-2147483647i)), 0i, ~(~countOneBits(-16068i)));
    var var_2 = vec4<i32>(u_input.d.x & var_1.x, reverseBits(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(-11820i, 1i)), ~_wgslsmith_div_i32(-19833i, 2147483647i))), abs(-(~var_1.x) << (~firstTrailingBit(0u) % 32u)), abs(u_input.b));
    var var_3 = ~1u;
    return ~u_input.d.x;
}

fn func_2(arg_0: bool) -> bool {
    global0 = array<i32, 25>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2233f, 500f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x), 29u)])));
    var var_1 = vec3<i32>((func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)), Struct_1(vec4<u32>(77264u, u_input.a, u_input.a, 0u), 48453i), u_input.c, all(vec4<bool>(arg_0, arg_0, arg_0, true))) << (14031u % 32u)) | 1740i, u_input.d.x, reverseBits(15779i));
    global0 = array<i32, 25>();
    var var_2 = Struct_1(select(u_input.c, vec4<u32>(~_wgslsmith_mult_u32(1u, 50604u), countOneBits(u_input.c.x) & min(0u, u_input.c.x), u_input.c.x, 1u << (~u_input.a % 32u)), select(select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, true, arg_0), select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, arg_0, arg_0, arg_0), false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, true)), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, true, true, true), false), any(vec2<bool>(false, arg_0))))), -_wgslsmith_add_i32(_wgslsmith_sub_i32(-5376i, -48004i), var_1.x));
    return all(!vec2<bool>(true, !arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22423u, arg_0.a.x, arg_0.a.x), arg_0.a.yxw), _wgslsmith_mult_u32(arg_2.a.x, 7956u)), 29u)], global1[_wgslsmith_index_u32(arg_2.a.x, 29u)]) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(728f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(92237u, 1u), u_input.c.zx), 29u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1523f, global1[_wgslsmith_index_u32(45419u, 29u)]) - vec2<f32>(3547f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]))))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(44356u, 29u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_2.a.x, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)])))), func_2(!any(vec3<bool>(false, false, false))))));
    let var_1 = arg_0;
    let var_2 = arg_2;
    let var_3 = 1u;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1806f, 520f) - vec2<f32>(global1[_wgslsmith_index_u32(30547u, 29u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~15424u, 29u)] * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_2.a.x, 29u)])))))));
    return countOneBits(var_1.a.x) | 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(u_input.c.x, 682u, u_input.a | func_1(Struct_1(u_input.c, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), global0[_wgslsmith_index_u32(u_input.c.x, 25u)], Struct_1(u_input.c, 1841i), vec4<i32>(global0[_wgslsmith_index_u32(60307u, 25u)], u_input.d.x, -23442i, -1i)), 0u), abs(-2147483647i));
    var var_1 = Struct_1(vec4<u32>(4294967295u, firstLeadingBit(~1u), ~abs(0u), _wgslsmith_sub_u32(4294967295u, var_0.a.x)) << (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(8713u, 40905u, u_input.a, 35248u), var_0.a) | ~vec4<u32>(1u, u_input.c.x, var_0.a.x, var_0.a.x)) % vec4<u32>(32u)), -49088i);
    var var_2 = Struct_1(firstTrailingBit(~u_input.c), 1i);
    let var_3 = Struct_1(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(var_2.a, select(var_1.a, u_input.c, vec4<bool>(true, true, false, false)), var_0.a)), ~var_1.b);
    global1 = array<f32, 29>();
    let var_4 = Struct_1(vec4<u32>(~94404u, ~(_wgslsmith_mod_u32(59593u, 4294967295u) >> (~var_1.a.x % 32u)), ~22032u, var_2.a.x), -4333i);
    let x = u_input.a;
    s_output = StorageBuffer(~80068u, (min(var_0.a.wxw & vec3<u32>(92549u, var_3.a.x, var_2.a.x), ~vec3<u32>(1u, 4294967295u, 0u)) ^ _wgslsmith_mult_vec3_u32(~var_3.a.zxx, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.a.x, var_4.a.x), vec3<u32>(4294967295u, var_2.a.x, 1u)))) | (~_wgslsmith_mult_vec3_u32(var_3.a.wyz, u_input.c.zww) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_0.a.x, 4294967295u), max(vec3<u32>(var_2.a.x, 1u, var_3.a.x), vec3<u32>(99250u, var_4.a.x, 4294967295u))) % vec3<u32>(32u))), min(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 60546u), _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(474u, 4294967295u, 21673u, var_3.a.x)), ~94483u), reverseBits(var_2.a.x << (0u % 32u)), min(_wgslsmith_sub_u32(50728u, var_3.a.x), 51696u), 40488u), ~vec4<u32>(u_input.c.x, 7382u, _wgslsmith_mult_u32(var_1.a.x, var_4.a.x), 34627u)));
}

