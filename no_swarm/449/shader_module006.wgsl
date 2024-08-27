struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1000f, vec3<f32>(-480f, -990f, -1189f), -379f, vec4<i32>(-38164i, 2147483647i, i32(-2147483648), -5391i), -217f), Struct_1(-363f, vec3<f32>(-557f, -1260f, 250f), -684f, vec4<i32>(1i, 7999i, 2147483647i, i32(-2147483648)), 1000f), Struct_1(1261f, vec3<f32>(-259f, 1788f, -374f), 1998f, vec4<i32>(2147483647i, -18932i, 1i, -32398i), 3053f), Struct_1(378f, vec3<f32>(721f, -825f, 656f), 1458f, vec4<i32>(i32(-2147483648), 0i, 2147483647i, 1i), 1217f), Struct_1(-608f, vec3<f32>(-193f, -1378f, -997f), 502f, vec4<i32>(-6347i, -12921i, -78183i, 1i), 189f), Struct_1(157f, vec3<f32>(1308f, 1942f, -1237f), 821f, vec4<i32>(2147483647i, 0i, 1i, -38752i), 390f), Struct_1(866f, vec3<f32>(868f, 1599f, -507f), -403f, vec4<i32>(-8567i, 2257i, 0i, i32(-2147483648)), -143f), Struct_1(-261f, vec3<f32>(-1460f, 405f, -933f), -186f, vec4<i32>(75315i, 43900i, 0i, 34040i), -1002f), Struct_1(868f, vec3<f32>(1000f, 937f, -418f), 382f, vec4<i32>(1i, -1i, 25740i, 1i), 795f), Struct_1(-315f, vec3<f32>(-437f, -437f, 1676f), 529f, vec4<i32>(-1i, 1i, i32(-2147483648), 2147483647i), -541f), Struct_1(909f, vec3<f32>(1089f, -836f, -925f), 890f, vec4<i32>(2147483647i, -1i, -72615i, i32(-2147483648)), 286f), Struct_1(-417f, vec3<f32>(867f, -1860f, 596f), -877f, vec4<i32>(2147483647i, -18516i, -26395i, 0i), 336f), Struct_1(540f, vec3<f32>(-537f, -1000f, 960f), 1117f, vec4<i32>(-53962i, 1i, -1i, 1i), -1268f), Struct_1(-618f, vec3<f32>(-422f, -1907f, -449f), 689f, vec4<i32>(-22026i, i32(-2147483648), 2147483647i, 2147483647i), -509f), Struct_1(-1048f, vec3<f32>(-199f, -473f, -544f), -284f, vec4<i32>(-14959i, 696i, -1i, i32(-2147483648)), -919f), Struct_1(-956f, vec3<f32>(339f, -558f, -601f), 234f, vec4<i32>(0i, 24171i, 11324i, -8069i), -254f), Struct_1(332f, vec3<f32>(1479f, -1106f, -819f), 388f, vec4<i32>(19757i, -74194i, -3890i, 2147483647i), 234f), Struct_1(-469f, vec3<f32>(-1315f, -1825f, 2246f), -639f, vec4<i32>(0i, 32687i, -4595i, 4986i), 226f), Struct_1(906f, vec3<f32>(-380f, -238f, 108f), 795f, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), -764f), Struct_1(684f, vec3<f32>(-618f, -433f, 426f), -1421f, vec4<i32>(15644i, 122i, i32(-2147483648), -1i), 608f), Struct_1(286f, vec3<f32>(722f, -879f, -358f), 2198f, vec4<i32>(0i, 0i, i32(-2147483648), -15418i), 229f));

var<private> global1: array<i32, 9>;

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f * 484f)))) == _wgslsmith_f_op_f32(sign(-1801f));
}

fn func_3() -> vec4<bool> {
    let var_0 = 1i;
    global1 = array<i32, 9>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f + 982f) * -683f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1066f), -876f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-831f)))), -846f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, -108f, -1155f) - vec3<f32>(-515f, -336f, -789f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-334f, -868f, 133f) * vec3<f32>(834f, 1100f, 289f)), vec3<bool>(true, false, true))))));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return !select(select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, 91837u == u_input.d, false, true), true), !vec4<bool>(true, true, func_2(), var_1.x == -1000f), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 11086u), vec2<u32>(u_input.d, u_input.d)) < (u_input.d ^ u_input.d)) | select(select(true, true, true), true, all(vec2<bool>(true, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 335f)) + _wgslsmith_f_op_f32(f32(-1f) * -647f)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(min(-499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) + 1145f))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1065f - -1176f), _wgslsmith_f_op_f32(f32(-1f) * -1120f))) * 1000f)), vec3<bool>(true, true, true));
    let var_1 = 8477u;
    let var_2 = var_0.a.b.zx;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.c.x) ^ min(0i, global1[_wgslsmith_index_u32(22474u, 9u)]), max(~_wgslsmith_dot_vec3_i32(vec3<i32>(26465i, u_input.c.x, var_0.a.d.x), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.d.x, var_0.a.d.x)), ~(~0i)), max(1i, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(var_1, 7052u)), 9u)]), max(-16060i, ~(-var_0.a.d.x))), ~(-(~vec4<i32>(-6463i, -124i, var_0.a.d.x, u_input.b.x))));
    let var_4 = all(arg_0) | !(any(arg_0) | arg_0.x);
    return Struct_3(false, _wgslsmith_dot_vec2_u32(max(min(_wgslsmith_div_vec2_u32(vec2<u32>(2322u, arg_1.x), arg_1.wz), arg_1.xx), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), arg_1.wz)), arg_1.ww), _wgslsmith_f_op_f32(var_0.a.a * -615f), var_0.a, ~_wgslsmith_dot_vec4_u32(~arg_1, ~firstTrailingBit(arg_1)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    var var_0 = -arg_2;
    var var_1 = func_4(select(vec4<bool>(arg_1, func_2(), !arg_1, 21191i <= (u_input.b.x >> (u_input.a % 32u))), select(!select(vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, true, arg_1), false), vec4<bool>(arg_1 | arg_1, arg_1, true, !arg_1), true), select(func_3(), select(!vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, arg_1, arg_1, false), arg_1), true), _wgslsmith_clamp_i32(-13614i, 4768i, arg_2.x) > var_0.x)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.a, 9921u, u_input.d), vec4<u32>(0u, ~u_input.d, 1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 61761u)), vec4<u32>(u_input.d, ~2121u, select(u_input.a, u_input.a, false), 0u)));
    let var_2 = _wgslsmith_clamp_vec4_i32(u_input.b, firstTrailingBit(-_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -42233i, -1i, 0i)), -u_input.b)), firstTrailingBit(vec4<i32>(~43282i, ~(u_input.c.x >> (588u % 32u)), -1i, ~(-arg_2.x))));
    var var_3 = func_4(select(vec4<bool>(!arg_1, all(vec4<bool>(false, true, false, arg_1)) && func_4(vec4<bool>(true, arg_1, var_1.a, var_1.a), vec4<u32>(0u, 10644u, u_input.d, 0u)).a, true, any(!vec2<bool>(true, arg_1))), !select(vec4<bool>(var_1.a, true, true, false), !vec4<bool>(true, var_1.a, true, true), var_1.a), true), ~(~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.d) << (~vec4<u32>(0u, 74459u, var_1.b, 5275u) % vec4<u32>(32u))))).d;
    global2 = array<vec3<bool>, 16>();
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u, 4294967295u << (u_input.d % 32u), u_input.a >> (~(u_input.d << (u_input.d % 32u)) % 32u));
    let var_1 = -global1[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(173f)) * 261f), true, _wgslsmith_mult_vec4_i32(vec4<i32>(5953i, global1[_wgslsmith_index_u32(15096u, 9u)], u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.b.x, 4i, 2147483647i))), 9u)];
    let var_2 = !(global1[_wgslsmith_index_u32(u_input.a, 9u)] > firstLeadingBit(-var_1)) & any(vec4<bool>(false, true, (i32(-1i) * -2147483647i) >= u_input.c.x, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    var var_3 = global0[_wgslsmith_index_u32(var_0.x, 21u)];
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(14527u, u_input.a), ~(u_input.a & 0u)), max(~4294967295u, ~var_0.x) >> (min(~var_0.x, 27850u) % 32u), var_0.x), 21u)], global2[_wgslsmith_index_u32(16987u | u_input.a, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~vec4<u32>(4294967295u | u_input.a, abs(9547u), var_0.x, ~18466u), 0i);
}

