struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1082f - _wgslsmith_div_f32(1138f, -317f)), -1433f) * 185f)));
    let var_1 = Struct_3(Struct_2(Struct_1(110f, ~abs(vec2<i32>(u_input.e, u_input.a)), u_input.d.x, global0.x | true), -39826i, Struct_1(-543f, ~(-vec2<i32>(u_input.a, 1i)), u_input.d.x, !all(vec4<bool>(true, false, global0.x, false))), !(!(!vec4<bool>(false, global0.x, global0.x, global0.x))), global1[_wgslsmith_index_u32(~20925u | _wgslsmith_dot_vec3_u32(u_input.b.zyw, ~u_input.b.xyx), 10u)]), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(reverseBits(u_input.b.xxz), u_input.d.wxy), select(abs(countOneBits(vec3<u32>(15065u, 41518u, 32580u))), (vec3<u32>(u_input.d.x, 25853u, 34742u) | u_input.d.xwy) & _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, 76086u), vec3<u32>(4294967295u, 101573u, u_input.d.x)), vec3<bool>(global0.x, true, true))));
    var var_2 = all(!var_1.a.d.xy);
    global0 = !var_1.a.d.xz;
    global0 = vec2<bool>(!(global0.x && (global0.x && global0.x)), true);
    return !vec2<bool>(!(!(!global0.x)), !any(vec3<bool>(global0.x, true, global0.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = u_input.c;
    global0 = select(!select(!vec2<bool>(global0.x, false), vec2<bool>(all(vec4<bool>(global0.x, true, global0.x, false)), global0.x), func_3()), !(!select(func_3(), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), false), func_3())), vec2<bool>(any(vec4<bool>(global0.x, true, global0.x, false)), any(!select(vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(global0.x, true)))));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - _wgslsmith_f_op_f32(f32(-1f) * -291f)), ~(-vec2<i32>(u_input.e, 13496i)), ~(var_0.x & 4294967295u), global0.x), -2221i, global1[_wgslsmith_index_u32(121612u, 10u)], vec4<bool>(!global0.x, !(!global0.x), any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(false, global0.x, global0.x, global0.x))), false), global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), u_input.b.zww);
    var var_2 = 375f;
    let var_3 = firstLeadingBit(~((0u ^ u_input.b.x) & ~95344u) | 50075u);
    return Struct_3(var_1.a, select(firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2316u, var_1.a.a.c, var_3), vec3<u32>(53253u, 4294967295u, 4294967295u)), countOneBits(vec3<u32>(33579u, u_input.c.x, 65788u)))), ~vec3<u32>(var_1.a.e.c, var_3 | var_1.a.c.c, _wgslsmith_sub_u32(var_3, u_input.d.x)), vec3<bool>(true || var_1.a.a.d, !all(vec4<bool>(var_1.a.a.d, false, true, true)), all(!var_1.a.d.wz))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    global1 = array<Struct_1, 10>();
    let var_0 = arg_3;
    let var_1 = -1375i;
    return var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(-1764f, ~(~select(arg_0.e.b, abs(vec2<i32>(arg_1, u_input.a)), func_3().x)), countOneBits(~arg_2), !(!arg_0.a.d));
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_1 = Struct_2(func_4(-1i, u_input.b.yxw, Struct_1(_wgslsmith_f_op_f32(ceil(var_0.a)), ~func_2(vec4<i32>(81181i, arg_0.c.b.x, -843i, 1i)).a.e.b, 1u, all(!vec4<bool>(arg_0.d.x, arg_0.a.d, false, false))), Struct_3(arg_0, countOneBits(reverseBits(vec3<u32>(1u, 1u, 1u))))).c, -max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -12372i, -51803i), vec3<i32>(arg_0.e.b.x, -9520i, 1i)) | 15304i, u_input.e), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(67444u, ~_wgslsmith_div_u32(arg_2, 75507u)) | select(_wgslsmith_mod_u32(53332u, 4294967295u) << (~var_0.c % 32u), _wgslsmith_clamp_u32(~u_input.d.x, ~u_input.d.x, ~u_input.b.x), !(-1000f != arg_0.e.a)), 10u)], vec4<bool>(true, true, true, true), arg_0.a);
    var var_2 = u_input.d;
    return Struct_3(func_2(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -2147483647i, 51751i, 1i), vec4<i32>(-2147483647i, -4971i, var_1.b, -2147483647i)) & -vec4<i32>(-26578i, arg_1, arg_0.e.b.x, arg_0.b))).a, _wgslsmith_add_vec3_u32(select(~vec3<u32>(var_0.c, arg_2, 21827u) | (var_2.wyw & vec3<u32>(18892u, 61184u, arg_3)), ~vec3<u32>(0u, u_input.c.x, u_input.b.x) >> (vec3<u32>(arg_0.c.c, 3055u, 4294967295u) % vec3<u32>(32u)), var_0.d), vec3<u32>(select(arg_0.c.c, arg_3, true) << (0u % 32u), ~(~4294967295u), 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(1880f, ~(-firstTrailingBit(select(arg_1.zz, vec2<i32>(arg_0.b.x, 17216i), vec2<bool>(true, global0.x)))), countOneBits(arg_0.c), select(all(vec4<bool>(arg_0.a != arg_0.a, any(vec3<bool>(arg_0.d, false, true)), global0.x, !arg_0.d)), any(vec3<bool>(any(vec4<bool>(false, true, false, global0.x)), arg_0.d, !global0.x)), global0.x));
    global1 = array<Struct_1, 10>();
    var var_1 = var_0.a >= 1375f;
    var var_2 = func_5(func_4(~arg_0.b.x, _wgslsmith_add_vec3_u32(u_input.d.xyy, vec3<u32>(min(u_input.d.x, 89435u), ~u_input.d.x, var_0.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-22107i, -2147483647i), firstTrailingBit(var_0.b)), 57484u, !var_0.d), func_2(arg_1)), ~arg_0.b.x, ~abs(var_0.c), arg_0.c);
    return vec2<bool>(true, 1u == _wgslsmith_mod_u32(_wgslsmith_mod_u32(37992u, _wgslsmith_mod_u32(arg_0.c, 0u)), ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global0 = select(vec2<bool>(global0.x, true), vec2<bool>(true, 0u == ~firstLeadingBit(var_0.x)), !func_1(Struct_1(_wgslsmith_f_op_f32(-1014f * 1000f), ~vec2<i32>(u_input.a, u_input.a), 94763u, all(vec2<bool>(true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 1i, u_input.a, -15457i), vec4<i32>(u_input.e, -1i, -50696i, u_input.e)) & vec4<i32>(2147483647i, -36630i, 52582i, u_input.a)));
    global0 = func_4(2147483647i, abs(vec3<u32>(0u, func_4(u_input.a >> (var_0.x % 32u), ~var_0.xyw, Struct_1(-1158f, vec2<i32>(u_input.e, 1i), u_input.c.x, global0.x), Struct_3(Struct_2(Struct_1(1100f, vec2<i32>(u_input.e, u_input.e), u_input.d.x, false), u_input.a, global1[_wgslsmith_index_u32(25630u, 10u)], vec4<bool>(false, false, false, global0.x), Struct_1(1000f, vec2<i32>(-1i, u_input.a), u_input.d.x, global0.x)), var_0.xwz)).e.c, ~0u ^ ~u_input.b.x)), global1[_wgslsmith_index_u32(1u, 10u)], func_5(Struct_2(func_4(u_input.e, var_0.zxz, global1[_wgslsmith_index_u32(4294967295u, 10u)], func_2(vec4<i32>(u_input.a, u_input.e, u_input.e, -1750i))).e, -38001i, global1[_wgslsmith_index_u32(28535u, 10u)], !vec4<bool>(global0.x, global0.x, true, false), func_2(vec4<i32>(u_input.e, 2147483647i, u_input.a, -2147483647i) | vec4<i32>(u_input.e, u_input.a, -2147483647i, u_input.a)).a.a), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 36010i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 15861i, u_input.a)))), firstLeadingBit(~1u), var_0.x)).d.xw;
    global1 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(var_0.x, 29650u, u_input.c.x), ~(countOneBits(var_0.zww) | vec3<u32>(u_input.d.x, 23083u, u_input.b.x))), _wgslsmith_div_vec3_u32(~firstLeadingBit(countOneBits(u_input.b.yyz)), vec3<u32>(u_input.d.x >> (16754u % 32u), _wgslsmith_sub_u32(abs(u_input.d.x), 1u), var_0.x)));
    let var_2 = func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(19457i, u_input.a, u_input.e, u_input.a), vec4<i32>(u_input.e, 0i, 3245i, u_input.a)), -(~vec4<i32>(-26997i, u_input.a, -19375i, 22293i))), 28780i, -30582i, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(u_input.a, 10050i), 35868i))).a.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -9015i, -5318i, 1i) ^ vec4<i32>(33082i, u_input.e, 1i, -2147483647i), min(vec4<i32>(-1i, u_input.e, u_input.e, u_input.e), vec4<i32>(2147483647i, 75711i, 0i, u_input.e)))).a, u_input.e, _wgslsmith_mult_u32(func_4(-u_input.e, var_1, Struct_1(659f, vec2<i32>(u_input.e, u_input.e), 15160u, global0.x), Struct_3(Struct_2(Struct_1(var_2, vec2<i32>(u_input.e, -1i), u_input.c.x, global0.x), 3990i, global1[_wgslsmith_index_u32(24181u, 10u)], vec4<bool>(global0.x, global0.x, global0.x, true), Struct_1(var_2, vec2<i32>(-13686i, 1i), var_1.x, true)), u_input.b.wwy)).e.c, max(_wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(var_0.x, var_1.x)), _wgslsmith_sub_u32(var_0.x, var_1.x))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, 82688u)) | ~vec2<u32>(5346u, 41105u), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 37043u), vec2<u32>(4294967295u, var_0.x))))).a.e.b.x);
}

