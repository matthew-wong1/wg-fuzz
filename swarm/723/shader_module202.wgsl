struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(i32(-2147483648), i32(-2147483648), 11309i), vec3<i32>(-41778i, -1i, i32(-2147483648)), vec3<i32>(-1i, 0i, 5140i));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, -1786f, vec3<f32>(817f, 1635f, -243f));

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, -814f, vec3<f32>(-1108f, -1043f, 607f)), Struct_1(true, 288f, vec3<f32>(721f, 280f, -475f)), Struct_1(false, -517f, vec3<f32>(-516f, -274f, 177f)), Struct_1(false, 1167f, vec3<f32>(-1506f, 2162f, -797f)), Struct_1(false, 719f, vec3<f32>(928f, 241f, -194f)), Struct_1(true, 1000f, vec3<f32>(1000f, -529f, 961f)), Struct_1(false, -1716f, vec3<f32>(1303f, -1000f, -754f)), Struct_1(false, 738f, vec3<f32>(387f, 369f, 631f)), Struct_1(true, 850f, vec3<f32>(-1529f, 429f, 363f)), Struct_1(false, 1062f, vec3<f32>(210f, -450f, -340f)), Struct_1(false, 478f, vec3<f32>(-1186f, 2040f, -454f)), Struct_1(false, -816f, vec3<f32>(-1000f, 1406f, -225f)), Struct_1(false, -749f, vec3<f32>(1000f, -425f, -756f)), Struct_1(true, 439f, vec3<f32>(-583f, 139f, -944f)), Struct_1(false, -439f, vec3<f32>(-133f, -442f, 1285f)), Struct_1(true, 215f, vec3<f32>(141f, 995f, 551f)), Struct_1(true, 983f, vec3<f32>(1351f, 1748f, 206f)), Struct_1(false, -1014f, vec3<f32>(-1830f, -392f, 1199f)), Struct_1(true, 366f, vec3<f32>(-165f, 1729f, -1416f)), Struct_1(true, -1308f, vec3<f32>(1339f, -543f, -139f)), Struct_1(true, -1476f, vec3<f32>(-2573f, 511f, 873f)), Struct_1(true, 1000f, vec3<f32>(-189f, -963f, -132f)), Struct_1(false, -111f, vec3<f32>(1204f, -734f, -2436f)));

var<private> global4: array<i32, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = global3[_wgslsmith_index_u32(1u, 23u)];
    global3 = array<Struct_1, 23>();
    global3 = array<Struct_1, 23>();
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(4294967295u, 57147u))), ~select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 7597u), true)), select(_wgslsmith_mult_u32(u_input.a, firstLeadingBit(~u_input.a)), firstTrailingBit((26609u << (u_input.a % 32u)) >> (11879u % 32u)), all(vec2<bool>(var_0.a, any(vec3<bool>(global2.a, global2.a, false))))), u_input.a >> (59271u % 32u), countOneBits(u_input.a));
    var var_2 = !vec3<bool>(global1.a, any(!select(vec3<bool>(true, global1.a, true), vec3<bool>(true, false, true), global2.a)), any(vec2<bool>(select(var_0.a, var_0.a, true), global2.a)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> bool {
    var var_0 = u_input.a;
    let var_1 = global1.b;
    return func_3() & arg_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = ~abs(~(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    global2 = Struct_1(all(vec4<bool>(any(!vec4<bool>(global1.a, true, false, global2.a)), global2.a, func_2(Struct_1(true, global2.c.x, global2.c), global1.c, _wgslsmith_div_f32(731f, global2.c.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1884f * global2.b)))), global2.c);
    var var_1 = global1.c.yz;
    var var_2 = global3[_wgslsmith_index_u32(var_0.x, 23u)];
    var_1 = _wgslsmith_f_op_vec2_f32(-global1.c.xy);
    return global3[_wgslsmith_index_u32(1u, 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.x, 9920u, u_input.a)), ~arg_1)), _wgslsmith_mult_u32(u_input.a, ~arg_1.x), ~u_input.a, 1u), vec4<u32>(320u, u_input.a, ~(~u_input.a), u_input.a), select(vec4<bool>(_wgslsmith_f_op_f32(564f - 1296f) >= global1.c.x, any(!vec2<bool>(global2.a, arg_0.a)), !arg_0.a, any(!vec3<bool>(false, global2.a, true))), !vec4<bool>(true, global2.a, arg_1.x <= 0u, true | arg_0.a), select(vec4<bool>(2147483647i > arg_2, true, any(vec2<bool>(true, global2.a)), true), select(vec4<bool>(arg_0.a, true, arg_0.a, global2.a), !vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), true), vec4<bool>(global2.a, all(vec4<bool>(true, false, global1.a, false)), false, false & arg_0.a))));
    global2 = Struct_1(func_3(), _wgslsmith_f_op_f32(floor(-922f)), global1.c);
    var var_1 = true;
    global4 = array<i32, 21>();
    var_1 = !(_wgslsmith_f_op_f32(-arg_0.b) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f)));
    return Struct_1(func_3(), 467f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(floor(global2.b)), _wgslsmith_f_op_f32(-105f * -1000f)), global1.c, true))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2.a;
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a, 0u) ^ select(vec2<u32>(56368u, 0u), vec2<u32>(u_input.a, 31864u), global2.a)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a) & vec2<u32>(0u, u_input.a), min(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(u_input.a, u_input.a)));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(-2147483647i, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(8036u, var_1), 21u)], i32(-1i) * -1i), select(i32(-1i) * -34958i, -1i, false)), vec2<i32>(-3383i, ~abs(-2147483647i)), vec2<i32>(2147483647i, ~(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(38105u, u_input.a, var_1), vec3<u32>(var_1, u_input.a, u_input.a)), 21u)] & ~(-7241i))));
    let var_3 = ~(~vec3<i32>((var_2.x ^ 1i) ^ _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(var_1, 21u)], 0i, global4[_wgslsmith_index_u32(0u, 21u)]), 3670i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, global4[_wgslsmith_index_u32(var_1, 21u)]), var_2), var_2.x)));
    var var_4 = !arg_0.a;
    return !global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), firstLeadingBit(vec3<u32>(~78840u, abs(u_input.a), ~1u)), _wgslsmith_dot_vec2_i32(~max(vec2<i32>(1i, global4[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<i32>(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)])), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(10116u, 21u)], 27664i), vec2<i32>(13342i, global4[_wgslsmith_index_u32(1907u, 21u)]))))), func_4(Struct_1(1i <= (global4[_wgslsmith_index_u32(u_input.a, 21u)] << (u_input.a % 32u)), -2387f, _wgslsmith_div_vec3_f32(global1.c, vec3<f32>(553f, 1120f, global1.c.x))), ~(firstTrailingBit(vec3<u32>(0u, u_input.a, u_input.a)) << ((vec3<u32>(0u, 35918u, u_input.a) & vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u))), _wgslsmith_add_i32(~select(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(1u, 21u)], false), global4[_wgslsmith_index_u32(u_input.a, 21u)])), func_4(func_4(global3[_wgslsmith_index_u32(~u_input.a, 23u)], select(~vec3<u32>(8612u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a), global2.a), global4[_wgslsmith_index_u32(~u_input.a, 21u)]), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, u_input.a, 1u)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), true) ^ (vec3<u32>(1u, 0u, 48120u) & vec3<u32>(u_input.a, u_input.a, u_input.a))), global4[_wgslsmith_index_u32(76768u, 21u)] | (firstTrailingBit(global4[_wgslsmith_index_u32(0u, 21u)]) << (~4294967295u % 32u))), func_4(Struct_1(!global2.a, global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(551f, 1000f, global2.c.x) * global2.c))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(74132u, 23066u, u_input.a))), 1i));
    global4 = array<i32, 21>();
    let var_1 = ((_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(36340u, u_input.a), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(1288u, 4294967295u)) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 87781u), vec2<u32>(u_input.a, 16540u))) | (vec2<u32>(u_input.a | 59742u, u_input.a << (u_input.a % 32u)) | vec2<u32>(u_input.a, reverseBits(u_input.a)))) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), ~(~(~vec2<u32>(4055u, 35175u))));
    var var_2 = firstTrailingBit(1i);
    var var_3 = 79120i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_clamp_u32(var_1.x, u_input.a, 89472u)), 26967u), _wgslsmith_sub_u32(~(var_1.x & 0u), 4294967295u)), ~vec2<u32>(4294967295u, ~min(var_1.x, 0u)), _wgslsmith_div_vec2_i32(-(~vec2<i32>(0i, -4541i)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(var_1.x, 21u)]), -vec2<i32>(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(1u, 21u)]))) | (~select(vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(var_1.x, 21u)]), vec2<i32>(1i, 12798i), global2.a) << (firstLeadingBit(firstLeadingBit(vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u))), _wgslsmith_clamp_vec4_u32(abs(abs(max(vec4<u32>(var_1.x, var_1.x, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.a, 7924u, 4294967295u)))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.x, 1u) | vec4<u32>(u_input.a, var_1.x, 4294967295u, u_input.a), firstTrailingBit(vec4<u32>(u_input.a, 0u, 1u, var_1.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, 5242u), vec4<u32>(1u, u_input.a, var_1.x, var_1.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 56613u, u_input.a, var_1.x) ^ vec4<u32>(0u, 34995u, var_1.x, u_input.a), vec4<u32>(41792u, 43832u, var_1.x, u_input.a) >> (vec4<u32>(u_input.a, var_1.x, 5512u, 1u) % vec4<u32>(32u))), var_1.x, max(select(1u, 4294967295u, true), ~11989u), var_1.x)));
}

