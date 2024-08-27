struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(113098u);

var<private> global1: array<bool, 20>;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1961f, -973f, -1558f), vec3<f32>(497f, -1057f, 494f), vec3<f32>(-244f, -394f, 399f), vec3<f32>(-1091f, -935f, -1000f), vec3<f32>(-634f, -900f, -1345f), vec3<f32>(-1000f, -2157f, 492f), vec3<f32>(2034f, -804f, -739f), vec3<f32>(-493f, -1106f, -164f), vec3<f32>(1189f, 1295f, -190f), vec3<f32>(-435f, 791f, -1577f), vec3<f32>(-1000f, -577f, 267f), vec3<f32>(192f, 836f, 106f), vec3<f32>(612f, 640f, -257f), vec3<f32>(-1109f, 210f, 138f), vec3<f32>(155f, 635f, 598f), vec3<f32>(-1882f, -445f, 258f), vec3<f32>(-991f, 1024f, 1488f), vec3<f32>(-1163f, 178f, -710f), vec3<f32>(378f, -781f, -346f), vec3<f32>(-1783f, -454f, -428f), vec3<f32>(-240f, 1000f, 228f), vec3<f32>(1096f, -1463f, -1471f), vec3<f32>(1967f, 465f, -773f), vec3<f32>(-113f, -507f, 829f), vec3<f32>(-494f, 482f, -215f), vec3<f32>(591f, 1000f, 3371f), vec3<f32>(1206f, -1879f, 1822f), vec3<f32>(548f, 627f, -1246f), vec3<f32>(956f, 1303f, 1269f), vec3<f32>(1376f, 369f, -566f), vec3<f32>(-1731f, -471f, -1266f));

var<private> global3: vec4<f32>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    return !select(select(vec3<bool>(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25817u, 1u)], 20u)], true, false), vec3<bool>(true, !global1[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3148u, 1u)], 1u)] <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(48834u, 1u)], global0[_wgslsmith_index_u32(20025u, 1u)]), 1u)], ~global0[_wgslsmith_index_u32(0u, 1u)]), 20u)]), vec3<bool>(true, !global1[_wgslsmith_index_u32(0u, 20u)] || all(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], false, global1[_wgslsmith_index_u32(4294967295u, 20u)])), global1[_wgslsmith_index_u32(5349u, 20u)]), !select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17939u, 1u)], 1u)], 1u)], 1u)], 1u)], 20u)], false, false), global4.x != 20797i));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = !(!arg_1.x);
    global2 = array<vec3<f32>, 31>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_1 = Struct_5(global4.yxz);
    return 1u;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)] & _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(37866u, 1u)]), global0[_wgslsmith_index_u32(~16714u, 1u)]), func_4(_wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(61869u, 31u)])), func_3(), Struct_3(Struct_2(vec2<i32>(-1i, u_input.a.x), Struct_1(false, -7182i, vec2<f32>(-986f, -1040f), 4294967295u, global3.x), global3.x, vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 20u)], false, arg_0))))), global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(45078u, 1u)], 0u)), 1u)] >> (max(25030u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25850u, 1u)], 1u)]) % 32u)), 1u)], global0[_wgslsmith_index_u32(91255u, 1u)]), 20u)];
    let var_1 = Struct_1(true, _wgslsmith_div_i32(u_input.d.x, -2147483647i), vec2<f32>(global3.x, -824f), 4294967295u, -1369f);
    global0 = array<u32, 1>();
    let var_2 = Struct_2(~vec2<i32>(10012i, var_1.b >> (4294967295u % 32u)) | vec2<i32>(_wgslsmith_dot_vec3_i32(global4.zwz << (vec3<u32>(13199u, global0[_wgslsmith_index_u32(55815u, 1u)], 13822u) % vec3<u32>(32u)), ~global4.xyx), _wgslsmith_clamp_i32(reverseBits(var_1.b), abs(global4.x), var_1.b ^ global4.x)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f + -1721f) - _wgslsmith_f_op_f32(-814f * 1720f)), -1369f)), select(vec3<bool>(true, !any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], true, true)), var_1.d != 65843u), func_3(), func_3()));
    var var_3 = Struct_3(Struct_2(u_input.a.zx | -_wgslsmith_div_vec2_i32(var_2.a, vec2<i32>(0i, -1i)), Struct_1(global1[_wgslsmith_index_u32(~abs(22659u), 20u)], 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(max(-345f, -392f)), _wgslsmith_f_op_f32(global3.x + 1405f)), ~var_2.b.d | 0u, _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(round(-155f)))), _wgslsmith_f_op_f32(-1364f + global3.x), var_2.d));
    return var_3.a.b.d;
}

fn func_1() -> u32 {
    let var_0 = Struct_5(select(~(countOneBits(vec3<i32>(26242i, global4.x, 11904i)) ^ _wgslsmith_mod_vec3_i32(u_input.d, u_input.d)), firstLeadingBit(vec3<i32>(1i, abs(6058i), -1i)), !global1[_wgslsmith_index_u32(abs(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), 20u)]));
    global4 = vec4<i32>(_wgslsmith_add_i32(u_input.a.x, firstTrailingBit(global4.x)), u_input.d.x, 15227i, 1i);
    let var_1 = vec4<u32>(~(~(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_mod_u32(4294967295u, ~(global0[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(4294967295u, 20u)]), 1u)] ^ 9577u)), min(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(87218u, 1u)]), 1u)], ~func_4(global2[_wgslsmith_index_u32(53074u, 31u)], vec3<bool>(true, true, global1[_wgslsmith_index_u32(54205u, 20u)]), Struct_3(Struct_2(vec2<i32>(1i, -7955i), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55427u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 20u)], var_0.a.x, vec2<f32>(1826f, 899f), 23122u, global3.x), -544f, vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91995u, 1u)], 1u)], 20u)], global1[_wgslsmith_index_u32(795u, 20u)]))))), global0[_wgslsmith_index_u32(~(~(~max(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)]))), 1u)]);
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -266f))) != global3.x, true);
    return ~(~27049u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 933f;
    let var_1 = Struct_5(vec3<i32>(select(firstLeadingBit(u_input.d.x) & global4.x, 1i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(50975u, 1u)]), vec4<u32>(67641u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12962u, 1u)], 1u)], 0u)), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 1u)])), 20u)]), ~(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c) >> ((1u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]) % 32u)), -abs(_wgslsmith_clamp_i32(u_input.d.x, u_input.b, u_input.a.x))));
    let var_2 = 0u << ((global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(45386u, 1u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)]), 1u)], _wgslsmith_mod_u32(4294967295u, 4294967295u)), reverseBits(0u)), 1u)] ^ (~4294967295u << (_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), ~global0[_wgslsmith_index_u32(4158u, 1u)]) % 32u))) % 32u);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(997f + 148f)))));
    let var_3 = vec4<bool>(!global1[_wgslsmith_index_u32(0u, 20u)] & !all(!vec2<bool>(global1[_wgslsmith_index_u32(74662u, 20u)], global1[_wgslsmith_index_u32(var_2, 20u)])), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(22022u, 1u)], func_1(), 43192u >> (global0[_wgslsmith_index_u32(~(var_2 ^ 4294967295u), 1u)] % 32u)), 1u)], 20u)], global3.x < _wgslsmith_f_op_f32(f32(-1f) * -1095f), true);
    var_0 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>((65321u ^ ~global0[_wgslsmith_index_u32(var_2, 1u)]) & reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 1u)], 1u)]), 12471u, 1u));
}

