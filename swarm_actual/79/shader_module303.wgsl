struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec3<u32>(93697u, 17130u, 28789u), vec4<f32>(1286f, -170f, 687f, -1348f)), Struct_1(false, vec3<u32>(27312u, 12222u, 4294967295u), vec4<f32>(1138f, -187f, 198f, -1000f)), Struct_1(false, vec3<u32>(0u, 1u, 65242u), vec4<f32>(853f, -260f, 465f, 419f)), Struct_1(true, vec3<u32>(103462u, 1u, 77503u), vec4<f32>(-657f, -2056f, 711f, -645f)), Struct_1(false, vec3<u32>(52918u, 0u, 1u), vec4<f32>(-383f, -874f, -1503f, -462f)), Struct_1(true, vec3<u32>(69168u, 1u, 34362u), vec4<f32>(237f, 1273f, -413f, 730f)), Struct_1(false, vec3<u32>(101692u, 0u, 4294967295u), vec4<f32>(-1062f, 834f, 1712f, 619f)), Struct_1(false, vec3<u32>(1u, 4294967295u, 16360u), vec4<f32>(-1352f, -1204f, -113f, 372f)), Struct_1(false, vec3<u32>(4294967295u, 139167u, 32679u), vec4<f32>(-1000f, -1929f, 393f, -287f)), Struct_1(true, vec3<u32>(47196u, 4294967295u, 436u), vec4<f32>(538f, 329f, -356f, 1000f)), Struct_1(true, vec3<u32>(1u, 1u, 81602u), vec4<f32>(-253f, -952f, 193f, -1051f)), Struct_1(false, vec3<u32>(4294967295u, 45966u, 4294967295u), vec4<f32>(-2553f, -108f, 770f, -512f)), Struct_1(true, vec3<u32>(21794u, 26317u, 45233u), vec4<f32>(-695f, 1215f, 794f, -1393f)), Struct_1(false, vec3<u32>(0u, 32081u, 0u), vec4<f32>(-346f, 1000f, 1220f, -2662f)), Struct_1(true, vec3<u32>(41342u, 0u, 4294967295u), vec4<f32>(1020f, -371f, -930f, 1035f)), Struct_1(true, vec3<u32>(0u, 4294967295u, 73132u), vec4<f32>(-1980f, -580f, -831f, -899f)), Struct_1(false, vec3<u32>(4294967295u, 1u, 1u), vec4<f32>(-206f, -856f, -353f, -269f)), Struct_1(true, vec3<u32>(1926u, 14682u, 6399u), vec4<f32>(-446f, -1069f, 227f, -2605f)), Struct_1(true, vec3<u32>(14496u, 1u, 1u), vec4<f32>(1000f, -623f, 1163f, 1191f)), Struct_1(false, vec3<u32>(1u, 14089u, 3838u), vec4<f32>(-1000f, -1000f, 211f, 689f)), Struct_1(false, vec3<u32>(1u, 1u, 4294967295u), vec4<f32>(2033f, -1287f, 1297f, 1363f)), Struct_1(false, vec3<u32>(1u, 0u, 1u), vec4<f32>(680f, -112f, 2410f, 1479f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 22>();
    let var_0 = ~countOneBits(reverseBits(~(-8071i) >> (1u % 32u)));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_1 = !select(vec2<bool>(select(true, true, true), select(42740u, 4294967295u, arg_0) != _wgslsmith_div_u32(u_input.b.x, u_input.c)), !(!vec2<bool>(arg_0, false)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, true)), select(vec2<bool>(arg_1, true), vec2<bool>(false, true), vec2<bool>(arg_1, false))));
    return ~u_input.c;
}

fn func_2() -> bool {
    var var_0 = !(!(!any(vec2<bool>(false, false)) | true));
    let var_1 = Struct_3(select(true, !(-45968i >= u_input.d) || true, true), _wgslsmith_div_vec3_i32(-vec3<i32>(countOneBits(u_input.d), -2147483647i, u_input.a), -abs(min(vec3<i32>(u_input.d, -16851i, -2147483647i), vec3<i32>(2147483647i, u_input.a, -51636i)))), abs(u_input.b.zzy));
    var var_2 = vec4<u32>(0u, _wgslsmith_mod_u32(~u_input.b.x << (~u_input.b.x % 32u), _wgslsmith_mult_u32(u_input.e.x, ~0u)) << (_wgslsmith_mult_u32(1u << (func_3(var_1.a, false) % 32u), firstTrailingBit(25835u)) % 32u), abs(func_3(any(vec2<bool>(var_1.a, false)), var_1.a)) >> (~((u_input.b.x ^ 41379u) ^ _wgslsmith_mod_u32(0u, 49687u)) % 32u), 22241u);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, 829f, -262f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-666f)), _wgslsmith_f_op_f32(floor(2169f)), _wgslsmith_f_op_f32(select(-1142f, _wgslsmith_f_op_f32(sign(949f)), false && var_1.a))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1001f, 189f, -1733f), vec3<f32>(312f, 1131f, 1903f)))))));
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_3.x)))))) != _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, 1704f)) - _wgslsmith_f_op_f32(-294f - -1392f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> Struct_4 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.c.x, arg_0.b.x), 22u)];
    let var_1 = Struct_4(0u, var_0.a | true, min(arg_1.c, vec3<u32>(firstLeadingBit(var_0.b.x) << (1u % 32u), var_0.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 17765u), ~74875u))), any(select(arg_2, select(!arg_2, select(vec4<bool>(true, true, true, false), arg_2, vec4<bool>(true, arg_0.a, false, true)), arg_1.a), arg_2)));
    let var_2 = Struct_4(arg_0.b.x, !var_1.d, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 29570u), vec2<u32>(arg_0.b.x, 1u)), abs(abs(arg_0.b.x)), arg_0.b.x) | select(~var_1.c, vec3<u32>(var_1.c.x, _wgslsmith_div_u32(105314u, arg_1.c.x), arg_1.c.x >> (23683u % 32u)), !all(vec4<bool>(arg_1.a, true, var_0.a, arg_0.a))), true);
    var var_3 = ~0u;
    global0 = array<Struct_1, 22>();
    return Struct_4(~reverseBits(u_input.e.x), true, ~(~vec3<u32>(~var_0.b.x, countOneBits(7422u), var_1.c.x)), !arg_2.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = vec4<bool>(true, !(!(!arg_0.d | any(vec2<bool>(arg_0.b, false)))), !arg_0.b, arg_0.b);
    var var_1 = global0[_wgslsmith_index_u32(~(~(~4294967295u)), 22u)];
    global0 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(u_input.b.yw & (vec2<u32>(0u, u_input.c) ^ arg_0.c.zy)), ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.e.x, 14619u), arg_0.c.yz), arg_0.c.zy << (vec2<u32>(16065u, var_1.b.x) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.b, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.c, arg_0.c), u_input.b.zwz >> (var_1.b % vec3<u32>(32u)))), ~abs(~u_input.e.x)));
    global0 = array<Struct_1, 22>();
    return func_4(global0[_wgslsmith_index_u32(~arg_0.c.x, 22u)], Struct_3(true, max(arg_1.yxz, _wgslsmith_sub_vec3_i32(arg_1.zxx << (vec3<u32>(var_1.b.x, u_input.c, 0u) % vec3<u32>(32u)), vec3<i32>(23699i, -1i, -15956i))), vec3<u32>(var_1.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(57273u, 4294967295u), arg_0.c.zz), 9672u ^ u_input.b.x), var_1.b.x)), !select(select(select(vec4<bool>(var_1.a, var_0.x, false, arg_0.b), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(arg_0.d, false, var_0.x, var_1.a)), select(vec4<bool>(true, false, var_1.a, false), vec4<bool>(true, arg_0.b, var_0.x, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.a, var_0.x, var_1.a, var_0.x), vec4<bool>(var_1.a, var_1.a, arg_0.b, false))), select(!vec4<bool>(var_0.x, var_0.x, arg_0.d, true), select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(false, var_0.x, true, var_1.a), vec4<bool>(var_0.x, true, var_0.x, true)), var_1.a), !vec4<bool>(false, arg_0.d, var_1.a, false)), all(!(!vec4<bool>(true, var_1.a, false, var_1.a))));
}

fn func_1() -> bool {
    global0 = array<Struct_1, 22>();
    let var_0 = func_5(func_4(Struct_1(any(vec2<bool>(true, true)), ~u_input.b.yzx, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(265f, -1078f, 673f, 749f)))), Struct_3(true, ~abs(vec3<i32>(-1i, -1i, -2147483647i)), abs(u_input.b.xyz)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_2()), all(vec4<bool>(all(vec3<bool>(false, true, true)), true, -20852i >= u_input.d, true))), vec4<i32>(~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.a), reverseBits(vec2<i32>(-1i, u_input.a))), -5570i, -(u_input.d << (select(u_input.c, 1u, true) % 32u)), u_input.a));
    global0 = array<Struct_1, 22>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-494f * -1000f))));
    let var_2 = ~u_input.d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 49077u;
    var var_1 = _wgslsmith_sub_u32(u_input.b.x, 1u);
    let var_2 = vec4<bool>(false, true, !all(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), func_1())), func_1());
    var_1 = u_input.c;
    var var_3 = 4294967295u & _wgslsmith_div_u32(u_input.c, u_input.b.x);
    var_3 = firstLeadingBit(u_input.c);
    let var_4 = u_input.b.x;
    var_1 = _wgslsmith_mult_u32(u_input.e.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(3386f, -1697f, 2098f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), -2621f, 636f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(656f, -614f, -604f), vec3<f32>(1010f, -1000f, -506f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, 1029f, 175f) * vec3<f32>(661f, -840f, -850f)), true)))), -193f);
}

