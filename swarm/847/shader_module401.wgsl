struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-667f, -1000f), vec2<f32>(1927f, -617f), vec2<f32>(-1698f, -1049f), vec2<f32>(-286f, 103f), vec2<f32>(-1630f, -156f));

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(296f), Struct_3(-1000f), Struct_3(293f), Struct_3(-316f), Struct_3(-657f), Struct_3(662f), Struct_3(149f), Struct_3(1040f), Struct_3(816f), Struct_3(-1049f), Struct_3(-524f), Struct_3(-281f), Struct_3(678f), Struct_3(-545f), Struct_3(1125f), Struct_3(713f), Struct_3(-1278f), Struct_3(334f), Struct_3(-1101f));

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-271f, 632f, 988f, 857f), vec4<f32>(1207f, -841f, 1580f, -1072f), vec4<f32>(-868f, -775f, -114f, 1605f), vec4<f32>(1161f, 1566f, 488f, -134f));

var<private> global3: array<f32, 31>;

var<private> global4: f32 = -1288f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(firstLeadingBit(abs(0u)), _wgslsmith_sub_u32(~16460u, 7291u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5394u, 4294967295u), ~vec3<u32>(6632u, 80715u, 1u)), ~(~4294967295u))), _wgslsmith_div_u32(select(1u, 51352u, false), 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(~8480u, 1u, 1u), ~(~vec3<u32>(4294967295u, 1u, 41239u))), _wgslsmith_mod_u32(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(72398u, 0u, 0u, 4294967295u)))), ~reverseBits(74437u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(522f)), Struct_1(vec4<i32>(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-56508i, u_input.a, u_input.a), vec3<i32>(-15237i, u_input.a, -1i)), -2147483647i, -16295i, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -1i), -vec2<i32>(u_input.a, u_input.a))), vec4<i32>(~(~11683i), -_wgslsmith_sub_i32(u_input.a, u_input.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 27473i), vec2<i32>(-591i, 0i)), 2147483647i), global0[_wgslsmith_index_u32(var_0.x, 5u)], var_0.ww));
    global1 = array<Struct_3, 19>();
    let var_2 = _wgslsmith_dot_vec3_u32(var_0.xxz, var_0.yzx) >> (~_wgslsmith_div_u32(0u, var_1.b.d.x) % 32u);
    global3 = array<f32, 31>();
    return vec4<i32>(~u_input.a, ~0i, _wgslsmith_clamp_i32(~(-28004i), ~0i, firstTrailingBit(-(45480i | var_1.b.b.x))), 2147483647i);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> vec2<u32> {
    global0 = array<vec2<f32>, 5>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (abs(vec4<u32>(0u, 45512u, 35487u, 4294967295u)) % vec4<u32>(32u))), func_3()), vec4<i32>(1i, -15330i, _wgslsmith_sub_i32((u_input.a << (0u % 32u)) | ~u_input.a, u_input.a), ~5389i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, global3[_wgslsmith_index_u32(45479u, 31u)])))) + _wgslsmith_f_op_vec2_f32(arg_0.xw - arg_0.wy)), vec2<u32>(_wgslsmith_mult_u32(5639u, abs(70975u)), ~(~4294967295u)));
    let var_1 = max(~var_0.d.x, var_0.d.x) <= ~var_0.d.x;
    let var_2 = global1[_wgslsmith_index_u32(~var_0.d.x, 19u)];
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(-631f)), Struct_1(firstLeadingBit(abs(var_0.b)), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(var_0.c.x - arg_0.x))), ~vec2<u32>(var_0.d.x, var_0.d.x)));
    return ~var_3.b.d << (var_0.d % vec2<u32>(32u));
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -913f);
    global1 = array<Struct_3, 19>();
    global3 = array<f32, 31>();
    var var_1 = ~select(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, ~1u)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(314f, global3[_wgslsmith_index_u32(5056u, 31u)], 707f, global3[_wgslsmith_index_u32(0u, 31u)]))) * vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(28323u, 31u)], global3[_wgslsmith_index_u32(54579u, 31u)])), true), false);
    var var_2 = Struct_1(-vec4<i32>(~2147483647i, u_input.a, u_input.a & u_input.a, 2147483647i) | firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -3501i, 2147483647i) | vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), abs(u_input.a), ~(-9891i), countOneBits(18318i)), vec4<i32>(-2147483647i, abs(u_input.a), -44984i, -1i) << (firstTrailingBit(~vec4<u32>(var_1.x, var_1.x, 56974u, 29200u)) % vec4<u32>(32u))), vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, firstTrailingBit(0u)), 31u)], global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(105550u, var_1.x, var_1.x, var_1.x), vec4<u32>(0u, var_1.x, var_1.x, var_1.x))), 31u)]), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, _wgslsmith_mod_u32(0u, 31572u)), ~vec2<u32>(41445u, abs(var_1.x))));
    return _wgslsmith_div_vec2_f32(var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_1.x, 5u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.c.x, -1404f)), _wgslsmith_div_f32(1000f, var_2.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c) * _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(var_2.d.x, 5u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 4>();
    var var_0 = 35150u;
    var_0 = 9080u;
    let var_1 = Struct_1(~countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a, -15163i), vec4<i32>(u_input.a, u_input.a, u_input.a, 29852i)), -vec4<i32>(-38191i, -38384i, -2147483647i, -22966i))), select(vec4<i32>(-1i, u_input.a ^ reverseBits(u_input.a), 1i, -1i), vec4<i32>(-73607i, ~(-u_input.a), _wgslsmith_add_i32(-u_input.a, ~1i), -1i), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), vec2<u32>(1u, 1u));
    global1 = array<Struct_3, 19>();
    global3 = array<f32, 31>();
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-1i), -2147483647i), vec3<i32>(var_1.a.x, ~_wgslsmith_dot_vec2_i32(func_3().wx, var_1.a.xx), firstLeadingBit(~abs(22393i))), vec3<u32>(1u, var_1.d.x, 32586u) & ~min(~vec3<u32>(0u, var_1.d.x, var_1.d.x), ~vec3<u32>(var_1.d.x, 18317u, 0u)), _wgslsmith_dot_vec4_i32(select(var_1.a, var_1.a, vec4<bool>(true, true, true, true)), min(countOneBits(reverseBits(var_1.b)), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.a, -23159i, var_1.b.x, -29793i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i)), _wgslsmith_add_vec4_i32(var_1.a, var_1.a)))), ~(~countOneBits(~vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, 0u))));
}

