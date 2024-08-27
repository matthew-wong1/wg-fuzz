struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12562u;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(0u, 40089i, 45230u, vec2<u32>(32793u, 4294967295u)), Struct_2(4294967295u, i32(-2147483648), 57902u, vec2<u32>(1u, 19230u)), Struct_2(963u, i32(-2147483648), 53006u, vec2<u32>(4294967295u, 37798u)), Struct_2(0u, -1i, 10180u, vec2<u32>(1u, 4294967295u)), Struct_2(41097u, 48240i, 4294967295u, vec2<u32>(12040u, 7052u)), Struct_2(31928u, -18170i, 22099u, vec2<u32>(2433u, 4294967295u)), Struct_2(46896u, -1i, 5313u, vec2<u32>(4294967295u, 2412u)), Struct_2(27603u, -1i, 65814u, vec2<u32>(4294967295u, 0u)), Struct_2(4294967295u, 7038i, 1u, vec2<u32>(33284u, 1u)), Struct_2(47118u, -6473i, 1u, vec2<u32>(20281u, 1u)), Struct_2(30993u, 1i, 27728u, vec2<u32>(14454u, 1u)), Struct_2(1u, 0i, 1u, vec2<u32>(4294967295u, 1u)), Struct_2(4294967295u, 18172i, 0u, vec2<u32>(4294967295u, 0u)), Struct_2(0u, 30742i, 4294967295u, vec2<u32>(41409u, 7699u)), Struct_2(4294967295u, 891i, 24223u, vec2<u32>(10883u, 4294967295u)), Struct_2(33372u, 3454i, 17588u, vec2<u32>(4294967295u, 46042u)), Struct_2(7629u, 1i, 1u, vec2<u32>(4294967295u, 0u)), Struct_2(10890u, -13985i, 4294967295u, vec2<u32>(6333u, 1490u)), Struct_2(30809u, 42840i, 0u, vec2<u32>(11822u, 0u)), Struct_2(4721u, 0i, 4294967295u, vec2<u32>(32613u, 0u)), Struct_2(1u, 27140i, 14723u, vec2<u32>(75728u, 20885u)), Struct_2(88936u, 1i, 51901u, vec2<u32>(1u, 1u)));

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) + _wgslsmith_f_op_f32(-1818f - _wgslsmith_f_op_f32(f32(-1f) * -1416f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2633f)) * _wgslsmith_f_op_f32(f32(-1f) * -383f)), _wgslsmith_f_op_f32(-497f * 557f)), select(vec4<bool>(true, select(false, false, true), false, _wgslsmith_div_i32(u_input.a.x, 0i) >= (arg_0 & u_input.a.x)), vec4<bool>(~arg_0 > (i32(-1i) * -71705i), any(vec2<bool>(true, true)), !all(global4[_wgslsmith_index_u32(arg_1.x, 3u)]), true), -20475i <= (arg_0 ^ ~1i)), 1f, all(vec3<bool>(!all(vec4<bool>(false, true, true, true)), all(!global4[_wgslsmith_index_u32(arg_1.x, 3u)]), any(select(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(60682u, 2u)], vec3<bool>(true, true, true))))));
    global0 = ~(~arg_1.x);
    global1 = array<Struct_2, 22>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), -250f, var_0.b.x))), 318f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-871f, _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_0.b.x)), _wgslsmith_f_op_f32(select(var_0.a.x, 175f, any(global4[_wgslsmith_index_u32(28702u, 3u)])))))), select(select(global4[_wgslsmith_index_u32(arg_1.x, 3u)], !vec4<bool>(var_0.d, var_0.b.x, var_0.b.x, var_0.b.x), false), global4[_wgslsmith_index_u32(47237u, 3u)], var_0.d), var_0.c, any(global4[_wgslsmith_index_u32(min(arg_1.x, arg_1.x) ^ firstTrailingBit(arg_1.x), 3u)]));
    global4 = array<vec4<bool>, 3>();
    return -((i32(-1i) * -2147483647i) | _wgslsmith_mod_i32(arg_0, -27099i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = (~arg_1.b & func_3(arg_1.b, abs(vec3<u32>(arg_1.a, 71637u, 1u)) ^ arg_0)) & ~(-abs(-1i));
    let var_1 = 60338i;
    global1 = array<Struct_2, 22>();
    var var_2 = select(true, true, false);
    global0 = abs(_wgslsmith_mod_u32(4294967295u, arg_1.d.x));
    return vec2<i32>(-1i) * -u_input.a.zw;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = select(~_wgslsmith_dot_vec2_i32(func_2(vec3<u32>(arg_1, 24889u, arg_1), Struct_2(4294967295u, -1i, 0u, vec2<u32>(arg_1, 0u))), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))), u_input.a.x, false) <= -37657i;
    return all(vec4<bool>(-max(u_input.a.x, 2147483647i) != reverseBits(5495i), false, !(_wgslsmith_f_op_f32(f32(-1f) * -1174f) == _wgslsmith_f_op_f32(trunc(arg_2))), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 22>();
    return global1[_wgslsmith_index_u32(arg_2.c, 22u)];
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(countOneBits(13783u), 2147483647i, 1u, arg_0.d);
    let var_1 = vec2<bool>(select(!(firstLeadingBit(var_0.d.x) < max(var_0.d.x, arg_0.d.x)), true, true), !(!(select(false, true, true) & func_1(-858f, arg_0.a, 435f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(994f - 841f), _wgslsmith_f_op_f32(abs(-970f)), -728f))), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.a, firstTrailingBit(_wgslsmith_mult_u32(var_0.a, var_0.d.x)), ~reverseBits(~arg_0.c)), 3u)], -322f, true || var_1.x);
    let var_3 = var_0;
    global3 = array<vec3<bool>, 2>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a), !var_2.b, _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(trunc(-791f)))))), _wgslsmith_f_op_f32(exp2(var_2.c)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(step(3284f, var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(3463u), select(56854u, 24255u, true) << (~(~0u) % 32u), ~_wgslsmith_clamp_u32(8915u, 18266u, 4294967295u) << (_wgslsmith_mod_u32(3967u, 1u) % 32u)), abs(~reverseBits(vec3<u32>(89768u, 0u, 4294967295u))) >> (vec3<u32>(1u, select(0u, 0u, true), ~firstTrailingBit(0u)) % vec3<u32>(32u)));
    var var_1 = func_5(func_4(global3[_wgslsmith_index_u32(~(~reverseBits(var_0.x)), 2u)], func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1091f, 1786f)) + _wgslsmith_f_op_f32(f32(-1f) * -1804f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1485f, 929f)) - 129f)), global1[_wgslsmith_index_u32(4294967295u, 22u)]));
    global2 = !(!(!(!(u_input.a.x != -82602i))));
    var var_2 = func_5(Struct_2(var_0.x, reverseBits(1i), 0u, ~(var_0.xx ^ min(var_0.xz, var_0.yy))));
    let var_3 = func_5(global1[_wgslsmith_index_u32((0u << (_wgslsmith_sub_u32(21341u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))) % 32u)) & var_0.x, 22u)]);
    global0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.x, 65160u, var_0.x, 0u)), ~vec4<u32>(83399u, var_0.x, 2974u, var_0.x)), vec4<u32>(4294967295u, max(4294967295u, 4294967295u), 0u, var_0.x ^ 0u), ~vec4<u32>(96299u, 4294967295u, var_0.x, 0u)), vec4<u32>(~(~var_0.x), ~_wgslsmith_add_u32(24195u, 1u), ~(var_0.x << (18660u % 32u)), 1545u)));
    var var_4 = Struct_1(var_1.a, select(vec4<bool>(true || any(var_2.b), var_1.b.x, !all(var_3.b.wxx), all(func_5(global1[_wgslsmith_index_u32(20925u, 22u)]).b.zww)), func_5(global1[_wgslsmith_index_u32(~var_0.x, 22u)]).b, select(select(!global4[_wgslsmith_index_u32(var_0.x, 3u)], vec4<bool>(true, false, true, true), var_1.b), !select(vec4<bool>(false, false, false, var_1.b.x), vec4<bool>(var_2.b.x, var_2.d, true, true), var_1.d), vec4<bool>(var_1.d & var_3.d, false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f + -201f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - var_1.a.x) * _wgslsmith_f_op_f32(round(-230f)))))), !func_1(var_3.c, 51579u, var_3.c));
    let var_5 = global1[_wgslsmith_index_u32(~var_0.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(39858u | max(var_0.x, var_0.x))));
}

