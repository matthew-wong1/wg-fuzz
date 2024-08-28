struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49294u;

var<private> global1: i32;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(i32(-2147483648), -16978i, 1456f, false, vec4<f32>(1198f, -591f, -199f, 1211f)), Struct_1(0i, 0i, -1741f, true, vec4<f32>(1000f, 778f, 231f, -705f)), Struct_1(2147483647i, -29441i, -768f, false, vec4<f32>(-718f, 1524f, -452f, 759f)), Struct_1(2147483647i, 5515i, -1013f, false, vec4<f32>(-1633f, 1145f, -1844f, -1710f)), Struct_1(2147483647i, 33471i, 2021f, false, vec4<f32>(-731f, 1800f, -559f, 1764f)), Struct_1(1i, 0i, 1000f, false, vec4<f32>(-1133f, 515f, -615f, -865f)), Struct_1(0i, 2147483647i, 699f, true, vec4<f32>(-512f, -1000f, -1540f, -1387f)), Struct_1(40173i, -22292i, 1053f, false, vec4<f32>(777f, -1548f, -538f, 1000f)), Struct_1(0i, 64186i, 813f, false, vec4<f32>(459f, 360f, -165f, 180f)), Struct_1(-7759i, -8276i, 2111f, true, vec4<f32>(-1000f, -320f, -1575f, 237f)));

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(arg_1.e.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(global4.x * arg_3)))))));
    var var_1 = Struct_3(Struct_2(arg_1, Struct_1(~u_input.b, u_input.b, global4.x, any(select(vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, false, false), arg_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(769f, global4.x, global4.x, -454f), arg_1.e))), select(vec4<bool>(!arg_1.d, -55613i != u_input.b, any(vec4<bool>(false, arg_1.d, false, false)), var_0.x > global4.x), !select(vec4<bool>(true, true, arg_1.d, arg_1.d), vec4<bool>(false, false, arg_1.d, true), arg_1.d), !(arg_1.c >= -141f)), -795f), vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global2.x, u_input.a.x), u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(26253u, u_input.a.x, 0u), u_input.a, u_input.a)), u_input.a.x, firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, min(4294967295u, global2.x)))));
    global3 = array<Struct_1, 10>();
    var var_2 = ~vec4<u32>(min(min(20194u, global2.x), 0u), 0u, 43105u, ~u_input.a.x) << (var_1.b % vec4<u32>(32u));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.a, arg_1.a), ~vec3<i32>(u_input.b, abs(abs(37806i)), _wgslsmith_sub_i32(abs(arg_1.b), -1i)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, countOneBits(~var_3.x), ~(-1i), arg_2) & vec4<i32>(-39879i, var_3.x, abs(var_3.x), var_3.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(19999i, var_1.a.b.a, arg_1.a, 1i) & vec4<i32>(arg_2, -2147483647i, arg_2, var_3.x)), vec4<i32>(1i, ~arg_2, ~u_input.b, -2147483647i)), -_wgslsmith_add_vec4_i32(-vec4<i32>(var_3.x, arg_2, -37025i, -40591i), vec4<i32>(var_3.x, 62445i, 1i, var_1.a.a.b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_3 {
    global3 = array<Struct_1, 10>();
    let var_0 = ~((vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, 12999i, arg_0.b)), -15023i, max(u_input.b, -2147483647i)) >> (u_input.a % vec3<u32>(32u))) >> (reverseBits(abs(max(vec3<u32>(u_input.a.x, 11958u, 4294967295u), u_input.a))) % vec3<u32>(32u)));
    global2 = firstLeadingBit(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, u_input.a.x), u_input.a.xz)));
    global0 = 27013u;
    let var_1 = arg_1.x;
    return Struct_3(Struct_2(Struct_1(var_1, 2147483647i, -1000f, func_3(1054f, Struct_1(-1i, 58795i, -270f, true, arg_0.e), arg_1.x, global4.x) == -27126i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.e - vec4<f32>(-946f, 158f, 447f, -409f))))), Struct_1(_wgslsmith_mult_i32(1i, max(arg_0.a, arg_0.b)), var_1, -592f, !(!arg_0.d), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(866f, global4.x, global4.x, 356f), arg_0.e))))), select(select(select(vec4<bool>(false, false, true, arg_0.d), vec4<bool>(true, true, false, false), true), select(vec4<bool>(arg_0.d, false, false, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d), false), !vec4<bool>(true, arg_0.d, true, arg_0.d)), !vec4<bool>(true, arg_0.d, false, arg_0.d), select(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d)), vec4<bool>(false, false, arg_0.d, arg_0.d), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-575f + arg_0.c) - _wgslsmith_f_op_f32(-global4.x))))), abs(min(vec4<u32>(max(26245u, u_input.a.x), 0u, 1u, u_input.a.x), ~(~vec4<u32>(arg_2, 1u, 31959u, arg_2)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    global4 = arg_2.a.b.e.yw;
    let var_0 = !vec3<bool>(all(vec3<bool>(true, all(arg_2.a.c.wy), all(arg_2.a.c))), arg_2.a.c.x, any(func_2(arg_2.a.b, ~vec3<i32>(60553i, 2147483647i, arg_2.a.a.a), 0u ^ arg_2.b.x).a.c.yx));
    global0 = u_input.a.x;
    let var_1 = arg_2.a.a;
    global1 = 2147483647i;
    return vec4<u32>(firstTrailingBit(43648u), 0u, global2.x, abs(0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = u_input.a;
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-547f, _wgslsmith_f_op_f32(-global4.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1373f), arg_0.e.x)), -1168f))));
    global0 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 48274u), select(vec4<u32>(1u, global2.x, 31702u, 59551u), vec4<u32>(var_0.x, 0u, var_0.x, 48335u), true)) >> (func_4(true, select(arg_0.b, arg_1.b, arg_0.d), func_2(Struct_1(arg_1.b, 72010i, -1319f, arg_1.d, arg_1.e), vec3<i32>(arg_0.b, arg_0.a, arg_1.a), 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(26898u, 0u, global2.x, var_0.x))), 21750u, firstTrailingBit(global2.x) >= var_0.x);
    var_0 = u_input.a;
    var var_1 = Struct_1(u_input.b, ~abs(~18737i), global4.x, false, vec4<f32>(-263f, 144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.e.x - 515f), _wgslsmith_div_f32(global4.x, -511f))) - _wgslsmith_f_op_f32(step(366f, _wgslsmith_f_op_f32(-arg_0.e.x)))), _wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(global4.x + global4.x))));
    return 320u << (firstLeadingBit(12152u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 11197u;
    global0 = ~u_input.a.x;
    var var_0 = -vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b);
    let var_1 = select(0u, func_1(Struct_1(~17761i, _wgslsmith_div_i32(32212i, 2147483647i), global4.x, true, vec4<f32>(global4.x, global4.x, global4.x, global4.x)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, var_0.x), vec3<i32>(var_0.x, -2147483647i, u_input.b)), var_0.x << (1u % 32u), -648f, true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -2078f, -177f, global4.x), vec4<f32>(global4.x, global4.x, -549f, -833f))))) >> (u_input.a.x % 32u), all(vec3<bool>(true, select(false, true, true), true || all(vec3<bool>(true, false, true)))));
    var var_2 = func_2(global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(func_2(global3[_wgslsmith_index_u32(var_1, 10u)], vec3<i32>(12623i, 10865i, u_input.b), 4294967295u).b.zx ^ abs(vec2<u32>(var_1, global2.x)), (vec2<u32>(global2.x, 110463u) << (u_input.a.yx % vec2<u32>(32u))) << (countOneBits(u_input.a.xy) % vec2<u32>(32u))), 30806u, !any(vec4<bool>(true, true, true, true))), 10u)], select(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, 41864i), firstTrailingBit(vec3<i32>(u_input.b, 1i, u_input.b)))), _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.b, -25581i, u_input.b), select(vec3<i32>(var_0.x, 2147483647i, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b), vec3<bool>(false, true, false))), min(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(-74486i, -54504i, -27405i))), vec3<bool>(true, false, !any(vec4<bool>(false, false, false, true)))), ~(~_wgslsmith_mod_u32(~640u, ~var_1))).a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-262f * _wgslsmith_div_f32(var_2.e.x, -719f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(538f, _wgslsmith_f_op_f32(-var_2.c))), global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e.x))), vec2<i32>(var_0.x, select(min(u_input.b, 2147483647i), ~1i, true) | var_0.x));
}

