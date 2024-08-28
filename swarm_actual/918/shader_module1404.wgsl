struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(true, 0i, false), Struct_3(true, -1i, true), Struct_3(false, -42214i, true), Struct_3(false, -57766i, false), Struct_3(false, -1i, true), Struct_3(false, 0i, true), Struct_3(true, i32(-2147483648), false), Struct_3(false, i32(-2147483648), false), Struct_3(false, i32(-2147483648), false), Struct_3(true, -1i, true), Struct_3(true, -1i, false), Struct_3(true, 0i, false), Struct_3(true, -1i, false));

var<private> global2: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<u32, 4> = array<u32, 4>(0u, 29767u, 92340u, 45004u);

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(min(firstTrailingBit(36753u), min(reverseBits(_wgslsmith_sub_u32(u_input.c, 1u)), ~reverseBits(1u)))), 13u)];
    global3 = array<u32, 4>();
    var var_1 = Struct_1(arg_1.yww, 0i);
    let var_2 = Struct_4(Struct_3(!var_0.c, 53606i, _wgslsmith_sub_i32(max(var_0.b, u_input.a), var_0.b) >= -u_input.d), Struct_1(vec3<bool>(!(true && var_0.c), var_1.a.x, false), -1i));
    global2 = array<vec2<bool>, 7>();
    return -1012f;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -406f, arg_3, arg_3)))), vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -3194f), _wgslsmith_f_op_f32(func_3(vec3<f32>(arg_0.x, -901f, arg_1), vec4<bool>(false, false, false, arg_2), 2257f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-637f, arg_1, -1350f, 2411f), vec4<f32>(145f, 1851f, arg_0.x, arg_1)))), vec4<f32>(-124f, 332f, arg_3, _wgslsmith_f_op_f32(select(arg_1, -2059f, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -2464f), 679f) + vec4<f32>(_wgslsmith_f_op_f32(select(657f, arg_1, arg_2)), 1f, _wgslsmith_f_op_f32(step(-472f, -1000f)), arg_0.x)), !select(vec4<bool>(false, true, arg_2, arg_2), select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(arg_2, false, arg_2, false), arg_2), select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(true, arg_2, arg_2, arg_2))))));
    global0 = any(vec4<bool>(any(select(select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, false, false)), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), !vec4<bool>(false, arg_2, false, true))), false && any(vec2<bool>(arg_2, arg_2)), all(vec2<bool>(true, true)), !arg_2));
    let var_1 = Struct_2(4294967295u, arg_2);
    var var_2 = -select(max(-u_input.a, -u_input.d), ~17117i << (~(u_input.b.x | global3[_wgslsmith_index_u32(7382u, 4u)]) % 32u), all(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(var_1.a, 4u)], 0u, var_1.a), vec3<u32>(var_1.a, u_input.b.x, 4294967295u)), 4u)], 4u)], 7u)]));
    let var_3 = vec4<bool>(false & any(!select(vec3<bool>(arg_2, var_1.b, true), vec3<bool>(var_1.b, var_1.b, true), false)), true, arg_2, any(!select(select(vec4<bool>(arg_2, true, var_1.b, var_1.b), vec4<bool>(var_1.b, false, arg_2, var_1.b), arg_2), vec4<bool>(false, var_1.b, false, false), vec4<bool>(false, false, true, var_1.b))));
    return _wgslsmith_clamp_i32(1i, countOneBits(_wgslsmith_mod_i32(-u_input.a, 0i)) ^ firstLeadingBit(2147483647i), countOneBits(~u_input.d));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(13548u, ~(~(reverseBits(1u) ^ (global3[_wgslsmith_index_u32(45299u, 4u)] | 22062u)))), 13u)];
    let var_1 = ~(-(_wgslsmith_add_vec3_i32(vec3<i32>(13593i, -2147483647i, -25629i), vec3<i32>(1i, u_input.a, -2147483647i)) & (_wgslsmith_mod_vec3_i32(vec3<i32>(-12083i, var_0.b, 1i), vec3<i32>(var_0.b, var_0.b, -37380i)) >> (_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(2703u, 0u, 0u)) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_1, -vec3<i32>(2147483647i, var_1.x, -2768i), ~vec3<i32>(var_0.b, -27841i, 2147483647i)), vec3<i32>(arg_1.b >> (24102u % 32u), u_input.a, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a | arg_1.b, -var_0.b), i32(-1i) * -arg_1.b, func_2(vec3<f32>(-1005f, 649f, 837f), 727f, arg_2.x, 323f) << (_wgslsmith_sub_u32(arg_0, u_input.c) % 32u)), firstTrailingBit(vec3<i32>(u_input.d, u_input.d, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-20419i, -46134i, var_1.x))))));
    let var_3 = global1[_wgslsmith_index_u32(~4294967295u, 13u)];
    let var_4 = any(select(arg_2, !vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), all(!vec3<bool>(false, arg_1.a.x, true)))) | var_0.a;
    return Struct_2(firstTrailingBit(arg_0), !(arg_1.b == countOneBits(~var_2.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = any(vec4<bool>(max(~arg_0.a.b, arg_0.b.b << (global3[_wgslsmith_index_u32(0u, 4u)] % 32u)) <= -_wgslsmith_add_i32(u_input.a, 53531i), arg_0.b.a.x, arg_1.b, all(vec4<bool>(709f >= arg_2, true, arg_0.b.a.x | false, true))));
    var var_1 = arg_0;
    return max(arg_1.a, countOneBits(~min(u_input.c, arg_1.a))) & max(abs(func_1(44909u, global4[_wgslsmith_index_u32(92908u, 7u)], vec4<bool>(false, true, var_1.a.a, true), vec3<bool>(false, var_1.b.a.x, false)).a) << (~(~u_input.b.x) % 32u), ~u_input.b.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    global0 = false;
    var var_0 = func_1(_wgslsmith_div_u32(func_4(Struct_4(Struct_3(true, u_input.d, arg_3), Struct_1(arg_0.a, arg_0.b)), Struct_2(1u, !arg_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1225f)), -1363f))), 1u), Struct_1(select(arg_2.a, !select(arg_2.a, arg_0.a, vec3<bool>(arg_2.a.x, true, false)), (u_input.a == arg_2.b) || !arg_2.a.x), 0i), select(select(select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_0.a.x, true), vec4<bool>(arg_3, true, arg_3, arg_3), false), select(vec4<bool>(arg_3, arg_0.a.x, true, false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_2.a.x, false, arg_3)), vec4<bool>(true, true, false, true)), !vec4<bool>(arg_2.a.x, arg_3, arg_2.a.x, false), !(!arg_2.a.x)), vec4<bool>(false, any(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_2.a, arg_2.a)), true, any(!arg_2.a)), !vec4<bool>(any(arg_2.a), func_1(46601u, Struct_1(vec3<bool>(false, arg_2.a.x, arg_0.a.x), -45453i), vec4<bool>(arg_2.a.x, arg_0.a.x, false, false), arg_2.a).b, arg_0.a.x != arg_2.a.x, true)), select(!(!vec3<bool>(arg_0.a.x, true, arg_3)), select(vec3<bool>(arg_2.a.x | true, false, true), select(select(arg_2.a, arg_0.a, false), select(vec3<bool>(arg_2.a.x, true, false), vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_2.a.x, true, false)), select(arg_2.a, arg_2.a, arg_2.a)), any(vec2<bool>(false, arg_3))), all(!select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_2.a.x, arg_3, arg_0.a.x), true))));
    let var_1 = vec4<i32>(firstLeadingBit(~(-u_input.d)), countOneBits(firstTrailingBit(min(u_input.a, -1i) ^ _wgslsmith_add_i32(-1i, arg_0.b))), -11854i, arg_0.b & -2147483647i);
    let var_2 = select(vec2<i32>(arg_2.b, 8390i), countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -7151i), vec2<i32>(2147483647i, 17075i)), -(~vec2<i32>(u_input.a, 1i)), vec2<i32>(0i, -4397i & var_1.x))), func_1(global3[_wgslsmith_index_u32(reverseBits(var_0.a) << (~(arg_1 ^ 31358u) % 32u), 4u)], Struct_1(select(vec3<bool>(var_0.b, arg_3, arg_0.a.x), !vec3<bool>(var_0.b, false, arg_0.a.x), !arg_2.a), i32(-1i) * -2147483647i), vec4<bool>(!(arg_2.a.x && arg_3), arg_0.b == (arg_2.b & u_input.d), false, true), select(vec3<bool>(arg_0.a.x, any(vec4<bool>(true, false, false, arg_3)), true), select(vec3<bool>(arg_3, arg_0.a.x, var_0.b), !arg_2.a, arg_0.a), !vec3<bool>(true, arg_2.a.x, true))).b);
    let var_3 = Struct_1(!(!arg_2.a), i32(-1i) * -2147483647i);
    return Struct_4(global1[_wgslsmith_index_u32(23106u, 13u)], Struct_1(var_3.a, _wgslsmith_mult_i32(arg_0.b, 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.a), u_input.b.zx) % 32u))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0.x, ~1i), abs(arg_0.xx), vec2<i32>(-_wgslsmith_mult_i32(~u_input.a, _wgslsmith_mod_i32(1i, -2147483647i)), func_5(global4[_wgslsmith_index_u32(~(~92071u), 7u)], _wgslsmith_div_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], ~0u), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(18235u | u_input.c, global3[_wgslsmith_index_u32(0u >> (global3[_wgslsmith_index_u32(25762u, 4u)] % 32u), 4u)]), 7u)], select(true, false, true)).b.b));
    var var_1 = arg_1.b;
    var var_2 = arg_1.b;
    return StorageBuffer(arg_0.x, ~(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 4u)], 47248u, 44632u, 4294967295u) >> ((vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u) >> (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], u_input.c, u_input.b.x, global3[_wgslsmith_index_u32(23462u, 4u)]) % vec4<u32>(32u))) % vec4<u32>(32u))) | firstLeadingBit(~min(vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.c, 4u)], u_input.b.x, 1u), vec4<u32>(29169u, 60725u, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 58241u))), ~_wgslsmith_add_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)]), 1482u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(-select(-vec4<i32>(-1i, -2147483647i, -33965i, 21540i), -vec4<i32>(u_input.a, -44251i, 1665i, u_input.a), select(false, false, true)) ^ vec4<i32>(-u_input.d, u_input.a, countOneBits(-1i), -u_input.d >> (_wgslsmith_sub_u32(u_input.b.x, 4294967295u) % 32u)), func_5(global4[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c << (global3[_wgslsmith_index_u32(u_input.c, 4u)] % 32u), u_input.c), 43203u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(~26659u, 4u)], ~global3[_wgslsmith_index_u32(u_input.c, 4u)])), global4[_wgslsmith_index_u32(abs(func_4(Struct_4(Struct_3(false, 34390i, false), global4[_wgslsmith_index_u32(16311u, 7u)]), func_1(62145u, global4[_wgslsmith_index_u32(4294967295u, 7u)], vec4<bool>(true, true, false, true), vec3<bool>(false, true, false)), 1764f)), 7u)], !any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))));
}

