struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_3(vec4<u32>(4294967295u, 3712u, 113449u, 42729u)), 51085u, vec2<i32>(52652i, 52315i), vec4<f32>(-554f, -367f, 595f, 1406f)), Struct_4(Struct_3(vec4<u32>(1u, 0u, 1u, 21864u)), 73825u, vec2<i32>(-26101i, -6245i), vec4<f32>(-665f, -825f, 1078f, 768f)), Struct_4(Struct_3(vec4<u32>(50854u, 1u, 0u, 0u)), 102464u, vec2<i32>(2147483647i, -995i), vec4<f32>(-1000f, 1407f, 2267f, 1432f)), Struct_4(Struct_3(vec4<u32>(56229u, 47518u, 15886u, 0u)), 0u, vec2<i32>(i32(-2147483648), -8690i), vec4<f32>(-1061f, -1273f, 1104f, -1141f)), Struct_4(Struct_3(vec4<u32>(56801u, 18193u, 41143u, 1u)), 28823u, vec2<i32>(i32(-2147483648), 56897i), vec4<f32>(124f, 644f, -2076f, -1254f)), Struct_4(Struct_3(vec4<u32>(18325u, 1u, 166418u, 5460u)), 1u, vec2<i32>(54781i, -17798i), vec4<f32>(1000f, 730f, 503f, -704f)), Struct_4(Struct_3(vec4<u32>(33079u, 46011u, 31790u, 1u)), 0u, vec2<i32>(46820i, 1i), vec4<f32>(-687f, 389f, -799f, 1313f)), Struct_4(Struct_3(vec4<u32>(0u, 1u, 1u, 34042u)), 19343u, vec2<i32>(0i, -1i), vec4<f32>(257f, -1492f, 1016f, 303f)), Struct_4(Struct_3(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), 50058u, vec2<i32>(-3501i, -17431i), vec4<f32>(834f, -273f, 1000f, -345f)), Struct_4(Struct_3(vec4<u32>(3126u, 13829u, 45670u, 18175u)), 42433u, vec2<i32>(1i, -38204i), vec4<f32>(-1532f, -1166f, -1000f, 1379f)));

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<f32, 25>;

var<private> global3: array<bool, 27>;

var<private> global4: vec2<u32> = vec2<u32>(40533u, 104647u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    return 66574u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4063u, firstTrailingBit(~(~arg_0.b))), 10u)];
    global3 = array<bool, 27>();
    global2 = array<f32, 25>();
    global1 = array<Struct_1, 8>();
    global3 = array<bool, 27>();
    return vec4<bool>(!global3[_wgslsmith_index_u32(4294967295u, 27u)], 1u >= ~arg_0.b, false, select(true, global3[_wgslsmith_index_u32(global4.x, 27u)], global2[_wgslsmith_index_u32(arg_0.b, 25u)] == 743f));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(global4.x, 8u)], 57080u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global4.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(95571u, 1u, global4.x), vec3<u32>(global4.x, global4.x, global4.x)) % 32u), ~5778u, ~global4.x ^ max(global4.x, global4.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(global4.x, global4.x, global4.x), vec3<u32>(4294967295u, 1u, global4.x))) & (~vec3<u32>(4294967295u, 59943u, 4294967295u) & reverseBits(vec3<u32>(58881u, global4.x, global4.x)))), 8u)], Struct_1(0i | u_input.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(global4.x, 25u)], 383f, global2[_wgslsmith_index_u32(1u, 25u)])))))), ~u_input.a.x));
    global4 = vec2<u32>(~(~firstTrailingBit(~0u)), ~firstLeadingBit(var_0.b));
    let var_1 = func_2(var_0, Struct_2(Struct_1(~countOneBits(var_0.c.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-216f, 290f, global2[_wgslsmith_index_u32(global4.x, 25u)], 381f)))), i32(-1i) * -14797i), 1u, global1[_wgslsmith_index_u32(global4.x, 8u)], Struct_1(max(_wgslsmith_mult_i32(15862i, var_0.a.a), i32(-1i) * -32969i), vec4<f32>(556f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_f32(exp2(var_0.a.b.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4710u, 25u)] - var_0.d.b.x)), u_input.a.x)), Struct_3(vec4<u32>(~var_0.b, func_1(vec3<f32>(global2[_wgslsmith_index_u32(41667u, 25u)], -317f, 237f), var_0.b, vec4<u32>(84297u, global4.x, 16070u, var_0.b), var_0) ^ (4294967295u << (global4.x % 32u)), ~var_0.b, ~1u))).x;
    global0 = array<Struct_4, 10>();
    var var_2 = select(func_2(Struct_2(Struct_1(-27349i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, 388f, -1605f, 179f) + var_0.a.b), var_0.a.c ^ -3598i), 1u, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 7974i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, var_0.a.c, var_0.c.a)), vec4<f32>(global2[_wgslsmith_index_u32(29458u, 25u)], var_0.a.b.x, var_0.a.b.x, global2[_wgslsmith_index_u32(1u, 25u)]), var_0.d.c << (0u % 32u)), var_0.a), var_0, Struct_3(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, var_0.b, 0u, var_0.b)), ~vec4<u32>(4294967295u, var_0.b, 28530u, 33205u)))).ww, select(!vec2<bool>(var_1, true), vec2<bool>(~var_0.b != ~4294967295u, !(var_0.a.c <= u_input.a.x)), global3[_wgslsmith_index_u32(1u, 27u)] | global3[_wgslsmith_index_u32(abs(~var_0.b), 27u)]), true);
    return 1210f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global4.x, 25u)], global2[_wgslsmith_index_u32(global4.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])), global4.x, vec4<u32>(0u, 0u, 49650u, 13625u), Struct_2(Struct_1(10165i, vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(global4.x, 25u)], -744f, 122f), 0i), global4.x, global1[_wgslsmith_index_u32(global4.x, 8u)], Struct_1(-2147483647i, vec4<f32>(global2[_wgslsmith_index_u32(global4.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], -1195f, 756f), -1i))), 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(27876u, 25u)]) * -2181f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, global2[_wgslsmith_index_u32(7773u, 25u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global4.x, 25u)], 429f) + vec2<f32>(-1075f, global2[_wgslsmith_index_u32(37689u, 25u)])), vec2<f32>(global2[_wgslsmith_index_u32(55380u, 25u)], -764f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], -174f) - vec2<f32>(global2[_wgslsmith_index_u32(7815u, 25u)], -1796f)))))));
    var var_1 = _wgslsmith_div_f32(414f, 835f);
    var var_2 = !all(select(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(43993u, 27u)], true), vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)]), true), select(func_2(Struct_2(global1[_wgslsmith_index_u32(5116u, 8u)], global4.x, global1[_wgslsmith_index_u32(global4.x, 8u)], Struct_1(u_input.a.x, vec4<f32>(804f, global2[_wgslsmith_index_u32(global4.x, 25u)], -1618f, var_0.x), 2147483647i)), Struct_2(Struct_1(u_input.a.x, vec4<f32>(-1167f, -1561f, var_0.x, var_0.x), u_input.a.x), global4.x, global1[_wgslsmith_index_u32(global4.x, 8u)], Struct_1(u_input.a.x, vec4<f32>(654f, global2[_wgslsmith_index_u32(global4.x, 25u)], -1203f, 163f), -1i)), Struct_3(vec4<u32>(63655u, 0u, 0u, 54878u))), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(72717u, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], false), true), !vec4<bool>(global3[_wgslsmith_index_u32(41436u, 27u)], false, true, global3[_wgslsmith_index_u32(4294967295u, 27u)])), global3[_wgslsmith_index_u32(min(global4.x, global4.x), 27u)]));
    let var_3 = global3[_wgslsmith_index_u32(~(~62075u | ~global4.x), 27u)];
    var var_4 = global0[_wgslsmith_index_u32(global4.x, 10u)];
    global1 = array<Struct_1, 8>();
    let var_5 = Struct_1(~(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) & 1i) >> ((3081u >> ((_wgslsmith_clamp_u32(63435u, 1u, global4.x) ^ ~var_4.a.a.x) % 32u)) % 32u), vec4<f32>(-1000f, _wgslsmith_div_f32(var_4.d.x, _wgslsmith_f_op_f32(round(-1971f))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1057f) - _wgslsmith_f_op_f32(func_3()))))), 0i);
    global2 = array<f32, 25>();
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1056f)) + _wgslsmith_f_op_f32(max(1000f, 994f))), -1019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b.x)))), var_4.d);
}

