struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(4294967295u, vec2<f32>(209f, 977f)), Struct_2(1u, vec2<f32>(-1008f, -1229f)), Struct_2(84530u, vec2<f32>(1437f, 861f)), Struct_2(1u, vec2<f32>(-1068f, 171f)), Struct_2(87334u, vec2<f32>(1396f, -627f)), Struct_2(4294967295u, vec2<f32>(293f, -456f)), Struct_2(1u, vec2<f32>(-336f, 1152f)), Struct_2(71800u, vec2<f32>(824f, 1167f)), Struct_2(41823u, vec2<f32>(269f, -1195f)), Struct_2(0u, vec2<f32>(-1068f, 1138f)), Struct_2(28745u, vec2<f32>(-274f, 207f)), Struct_2(83098u, vec2<f32>(764f, 492f)), Struct_2(1u, vec2<f32>(936f, -166f)), Struct_2(1577u, vec2<f32>(-1239f, -524f)), Struct_2(0u, vec2<f32>(1126f, 120f)), Struct_2(1u, vec2<f32>(-755f, 1786f)), Struct_2(41224u, vec2<f32>(156f, -2366f)), Struct_2(338u, vec2<f32>(654f, 545f)), Struct_2(56249u, vec2<f32>(-1000f, -602f)));

var<private> global3: array<u32, 27> = array<u32, 27>(1u, 0u, 0u, 87629u, 12021u, 9726u, 1u, 4294967295u, 28340u, 1u, 4294967295u, 39562u, 38869u, 4294967295u, 4294967295u, 11635u, 14218u, 14942u, 50300u, 8134u, 4294967295u, 38264u, 69870u, 1u, 1u, 2308u, 41658u);

var<private> global4: vec4<u32> = vec4<u32>(21737u, 50582u, 34337u, 1u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    return vec4<u32>(firstTrailingBit(arg_0.a.x), 4294967295u, 1u, arg_0.a.x);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = global4.x | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(func_3(Struct_1(u_input.c, -641f), -334f), ~vec4<u32>(4294967295u, u_input.c.x, global4.x, 14178u), !vec4<bool>(false, false, arg_0.x, false)), ~(~vec4<u32>(16590u, u_input.b.x, global3[_wgslsmith_index_u32(23853u, 27u)], u_input.a))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5758u, global3[_wgslsmith_index_u32(0u, 27u)], u_input.c.x, global3[_wgslsmith_index_u32(global4.x, 27u)]) << (vec4<u32>(77510u, global4.x, 17921u, global3[_wgslsmith_index_u32(4294967295u, 27u)]) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 46620u, 45255u, global4.x)), 0u));
    global4 = abs(max(func_3(Struct_1(~vec2<u32>(1u, global4.x), global1.x), _wgslsmith_f_op_f32(global1.x * global1.x)), ~func_3(Struct_1(global4.yz, global1.x), _wgslsmith_div_f32(199f, 154f))));
    global2 = array<Struct_2, 19>();
    var_0 = countOneBits(firstLeadingBit(4512u));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-15683i ^ (-2147483647i >> (u_input.b.x % 32u)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(13479i, u_input.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(-15212i, u_input.d), vec2<i32>(0i, 9653i))), u_input.d), min(vec3<i32>(u_input.d, 0i, u_input.d) ^ vec3<i32>(u_input.d, u_input.d, 12241i), ~vec3<i32>(u_input.d, u_input.d, u_input.d)) | -vec3<i32>(u_input.d, u_input.d, 50097i), reverseBits(vec3<i32>(-2147483647i, 1i, -1i) & vec3<i32>(1i, u_input.d, u_input.d)) & -abs(vec3<i32>(-26522i, 34685i, u_input.d))) << (_wgslsmith_div_vec3_u32(func_3(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(14382u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 27u)], 27u)]), vec2<u32>(4294967295u, 58105u)), -1333f), 594f).yxz, ~global4.wxz) % vec3<u32>(32u));
    return !(true || !(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >= _wgslsmith_clamp_u32(30101u, 0u, 4294967295u)));
}

fn func_1(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    var var_1 = select(select(vec3<bool>(true, func_2(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)])), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), true), vec3<bool>(true, true, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), vec3<bool>(false, any(vec3<bool>(true, true, 45394u < global4.x)), global1.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    global0 = array<f32, 2>();
    var_0 = global1.x;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(global1.x, global1.x)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a ^ 1674u, 2u)], 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), 790f))))), _wgslsmith_f_op_f32(round(-1059f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-13880i, 2147483647i, 10578i, -13141i), vec4<i32>(u_input.d, u_input.d, 1i, 2147483647i), all(vec4<bool>(false, true, false, true))), select(vec4<i32>(-26466i, -2147483647i, 2147483647i, u_input.d), vec4<i32>(u_input.d, 19959i, -36157i, u_input.d), true) & _wgslsmith_clamp_vec4_i32(vec4<i32>(47006i, u_input.d, -24908i, u_input.d), vec4<i32>(u_input.d, -1i, -39112i, -2147483647i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21688u, 2u)]), _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(global4.x, 2u)]))) * -665f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(92909u, 27u)], 2u)], 1000f))))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 43293i, 0i, 0i), vec4<i32>(u_input.d, 41111i, 0i, u_input.d)) | vec4<i32>(1i, 1i, -1i, u_input.d))).x));
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-35871i, u_input.d, u_input.d, u_input.d), abs(vec4<i32>(u_input.d, 24906i, 57575i, -3872i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -2147483647i, -76627i), vec4<i32>(37156i, 1i, u_input.d, u_input.d))), -1i);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.c & vec2<u32>(u_input.a | global3[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_clamp_u32(47202u, 4294967295u, 11493u)), vec2<u32>(~u_input.b.x, u_input.b.x | 0u) & ~(vec2<u32>(4294967295u, 27929u) << (vec2<u32>(u_input.a, global4.x) % vec2<u32>(32u)))), -566f);
    global4 = vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], ~(~u_input.b.x), ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~global4.x >> (~var_1.a.x % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(2u, 7908u), global3[_wgslsmith_index_u32(~70089u, 27u)]), firstTrailingBit(_wgslsmith_div_u32(1101u, 17015u))), ~(~(vec4<u32>(1u, 21247u, global3[_wgslsmith_index_u32(global4.x, 27u)], global4.x) >> (vec4<u32>(u_input.c.x, global4.x, 622u, global4.x) % vec4<u32>(32u))))));
    var var_2 = _wgslsmith_div_vec2_u32(var_1.a, _wgslsmith_mod_vec2_u32(vec2<u32>(25129u, ~(u_input.a ^ 53808u)), vec2<u32>(var_1.a.x, 1u)));
    let var_3 = var_0;
    global4 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~var_1.a.x, _wgslsmith_dot_vec3_u32(global4.wzw, vec3<u32>(1u, global3[_wgslsmith_index_u32(0u, 27u)], u_input.c.x)), 98900u), ~vec4<u32>(26530u, global4.x, global3[_wgslsmith_index_u32(var_1.a.x, 27u)], 1u) | (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], var_2.x, var_2.x, 0u) << (vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, u_input.b.x) % vec4<u32>(32u)))), min(~(~vec4<u32>(global4.x, 0u, 43107u, u_input.a)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, global3[_wgslsmith_index_u32(var_2.x, 27u)]), global3[_wgslsmith_index_u32(~0u, 27u)], global4.x, 0u)), vec4<u32>(var_1.a.x, var_2.x, global3[_wgslsmith_index_u32(~(~0u), 27u)], var_2.x)), ~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(9635u, var_1.a.x, var_2.x, 1u)), vec4<u32>(59994u, u_input.c.x, abs(u_input.c.x), global3[_wgslsmith_index_u32(1u, 27u)])), !vec4<bool>(true, true, !(u_input.d >= -1i), true));
    let var_4 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec4<u32>(17704u, 41039u, var_2.x, 0u) & vec4<u32>(var_2.x, u_input.a, 0u, 1u)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.a, global3[_wgslsmith_index_u32(52225u, 27u)], var_1.a.x, 4294967295u), vec4<u32>(var_4.a, 0u, 4294967295u, var_2.x)), ~vec4<u32>(136270u, 0u, var_4.a, global4.x)) % vec4<u32>(32u))), u_input.b, ~0i, ~vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, 2147483647i) << (vec4<u32>(77564u, 5603u, 4294967295u, global4.x) % vec4<u32>(32u)), vec4<i32>(var_3.x, -1i, u_input.d, -1i) << (vec4<u32>(var_4.a, 4294967295u, var_2.x, 1u) % vec4<u32>(32u))), 10203i));
}

