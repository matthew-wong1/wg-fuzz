struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<f32, 24>;

var<private> global2: Struct_2 = Struct_2(-1i, vec3<u32>(17833u, 4294967295u, 1u), Struct_1(vec2<bool>(false, true), vec4<i32>(-53630i, 7431i, 0i, 20043i)), vec2<f32>(1000f, -422f));

var<private> global3: vec3<i32> = vec3<i32>(-1i, -35302i, -14870i);

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i)), Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -48447i, -4946i, 53296i)), Struct_1(vec2<bool>(false, false), vec4<i32>(-43790i, 0i, 1i, -2083i)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 9574i, 1i, -24316i)), Struct_1(vec2<bool>(false, true), vec4<i32>(-13102i, i32(-2147483648), -1i, -1i)), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -14844i, -23834i, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> bool {
    global4 = array<Struct_1, 6>();
    var var_0 = arg_0.a;
    global1 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_f32(881f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.d.x))))) == _wgslsmith_f_op_f32(select(970f, _wgslsmith_f_op_f32(-188f - -417f), arg_0.b.c.a.x));
    var var_2 = arg_0.a;
    return arg_1 && !(_wgslsmith_dot_vec3_i32(var_2.c.b.wxy, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_2.b.x, 2147483647i), u_input.a)) == _wgslsmith_clamp_i32(var_0.c.b.x, max(-558i, 23491i), 53288i));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = Struct_2(global2.c.b.x, vec3<u32>(~arg_2, 4294967295u, abs(abs(min(1u, global2.b.x)))), global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)) * _wgslsmith_f_op_vec2_f32(abs(arg_0))));
    var var_1 = all(vec4<bool>(false, var_0.c.a.x, false, true));
    let var_2 = Struct_3(var_0, select(!(!arg_1.a), vec2<bool>(arg_1.a.x, !func_3(Struct_4(Struct_2(48565i, vec3<u32>(0u, var_0.b.x, 39698u), global4[_wgslsmith_index_u32(85147u, 6u)], vec2<f32>(global1[_wgslsmith_index_u32(2634u, 24u)], -1064f)), var_0, arg_0.x, 1370f, u_input.b), global2.c.a.x, var_0.c)), vec2<bool>(true, func_3(Struct_4(var_0, var_0, arg_0.x, -922f, arg_2), !global2.c.a.x, global2.c))), var_0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global2.b.x, var_0.b.x), 1u), 24u)]), global2.b.zx);
    return 0u;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global4 = array<Struct_1, 6>();
    global4 = array<Struct_1, 6>();
    var var_0 = ~(~_wgslsmith_sub_i32(2147483647i, countOneBits(6977i))) << (((func_2(vec2<f32>(601f, global2.d.x), global2.c, ~global2.b.x) << (~(u_input.b & u_input.b) % 32u)) | 1u) % 32u);
    global3 = _wgslsmith_sub_vec3_i32(arg_0.a.c.b.zwx << (arg_0.a.b % vec3<u32>(32u)), arg_0.a.c.b.wzz);
    let var_1 = Struct_4(arg_0.b, arg_0.b, global1[_wgslsmith_index_u32(56160u, 24u)], arg_0.d, firstLeadingBit(u_input.b));
    return Struct_3(Struct_2(~min(-1506i, var_1.b.a | global3.x), var_1.a.b, Struct_1(vec2<bool>(var_1.a.b.x > 0u, true), vec4<i32>(-arg_0.a.c.b.x, global3.x, -22986i, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.d + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d, global0[_wgslsmith_index_u32(arg_0.a.b.x, 11u)])))))), arg_0.b.c.a, Struct_2(max(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.b.a, global3.x), _wgslsmith_add_i32(var_1.a.c.b.x, global2.a)), -2147483647i), var_1.a.b, Struct_1(vec2<bool>(var_1.e == arg_0.b.b.x, global2.b.x >= 4294967295u), firstLeadingBit(arg_0.b.c.b) ^ firstLeadingBit(var_1.a.c.b)), global2.d), arg_0.b.d.x, ~((var_1.a.b.yy ^ vec2<u32>(var_1.b.b.x, 6879u)) ^ select(vec2<u32>(15097u, 4294967295u), vec2<u32>(10875u, 1u) << (global2.b.yy % vec2<u32>(32u)), var_1.a.c.a.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> bool {
    var var_0 = arg_3;
    global0 = array<f32, 11>();
    global3 = _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(0i, i32(-1i) * -2147483647i), -78198i, u_input.a.x), vec3<i32>(-reverseBits(_wgslsmith_div_i32(-27118i, -2147483647i)), -_wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(global2.c.b.x, global3.x), abs(-15073i)), 36611i));
    let var_1 = arg_2.c.c;
    var var_2 = global3.x;
    return !((-_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, global3.x, global3.x), global2.c.b.xwz) ^ var_1.b.x) != _wgslsmith_div_i32(0i, func_1(Struct_4(Struct_2(var_1.b.x, arg_2.c.b, Struct_1(global2.c.a, vec4<i32>(arg_2.c.a, -9851i, -5013i, arg_2.a.c.b.x)), arg_2.a.d), Struct_2(-2147483647i, global2.b, Struct_1(vec2<bool>(false, true), vec4<i32>(29498i, var_1.b.x, 16007i, u_input.a.x)), vec2<f32>(global1[_wgslsmith_index_u32(54222u, 24u)], global2.d.x)), arg_2.d, arg_2.c.d.x, 13266u)).a.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: bool) -> Struct_4 {
    let var_0 = -vec2<i32>(~_wgslsmith_add_i32(~u_input.a.x, reverseBits(-2147483647i)), ~53844i);
    global3 = select(global2.c.b.zyw, firstLeadingBit(u_input.a ^ -vec3<i32>(global2.a, 0i, 1i)), func_1(Struct_4(Struct_2(global2.c.b.x, arg_1.yyy, global4[_wgslsmith_index_u32(99023u, 6u)], global2.d), Struct_2(-8753i, arg_1.yyz, Struct_1(vec2<bool>(false, true), global2.c.b), global2.d), global2.d.x, global2.d.x, global2.b.x)).a.b.x < (~0u & u_input.b)) & select(~abs(vec3<i32>(var_0.x, -40895i, 1i)) << (firstTrailingBit(global2.b) % vec3<u32>(32u)), ~select(select(u_input.a, vec3<i32>(var_0.x, 2147483647i, 0i), vec3<bool>(arg_2, false, arg_0.x)), vec3<i32>(9170i, -2147483647i, 2147483647i), vec3<bool>(global2.c.a.x, true, true)), vec3<bool>(arg_2, arg_0.x, global2.c.a.x));
    global1 = array<f32, 24>();
    let var_1 = ~arg_1.wzz;
    global0 = array<f32, 11>();
    return Struct_4(Struct_2(19835i, arg_1.zzx, global2.c, vec2<f32>(-1229f, -403f)), Struct_2(~_wgslsmith_dot_vec2_i32(~vec2<i32>(global3.x, global2.c.b.x), countOneBits(global3.zz)), global2.b, global4[_wgslsmith_index_u32(52921u, 6u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global2.d.x) - vec2<f32>(global2.d.x, global0[_wgslsmith_index_u32(71344u, 11u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~min(19135u, var_1.x), 24u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35950u, 24u)] + _wgslsmith_f_op_f32(min(589f, global1[_wgslsmith_index_u32(u_input.b, 24u)]))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.d.x * global1[_wgslsmith_index_u32(u_input.b, 24u)])))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]), !any(select(vec3<bool>(true, arg_2, arg_0.x), arg_0, vec3<bool>(arg_0.x, false, arg_0.x))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, arg_1.x, 68500u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, global2.b.x, 105509u, u_input.b), arg_1, arg_1)) << (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1163f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 24u)]))), func_4(!vec3<bool>(true, true, global2.c.a.x), -844f, func_1(Struct_4(Struct_2(u_input.a.x, vec3<u32>(global2.b.x, 23062u, 14021u), Struct_1(vec2<bool>(global2.c.a.x, false), vec4<i32>(21394i, 7782i, 2147483647i, 2147483647i)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 2000f)), Struct_2(41930i, vec3<u32>(u_input.b, 25093u, 12993u), Struct_1(global2.c.a, global2.c.b), global2.d), global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(13847u, 24u)], 0u)), any(!vec3<bool>(global2.c.a.x, false, true)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b.x, u_input.b, 22127u, global2.b.x), vec4<u32>(0u, 20999u, 1u, u_input.b))), !global2.c.a.x & all(select(global2.c.a, select(vec2<bool>(global2.c.a.x, true), global2.c.a, global2.c.a), true)));
    var var_1 = ~vec3<u32>((~13789u >> (_wgslsmith_mod_u32(1u, var_0.b.b.x) % 32u)) << (func_1(Struct_4(Struct_2(u_input.a.x, global2.b, Struct_1(vec2<bool>(global2.c.a.x, false), global2.c.b), vec2<f32>(-1111f, 1799f)), var_0.b, 1694f, global0[_wgslsmith_index_u32(u_input.b, 11u)], 4294967295u)).e.x % 32u), _wgslsmith_sub_u32(global2.b.x, u_input.b), u_input.b);
    let var_2 = select(!select(!vec3<bool>(global2.c.a.x, false, true), !vec3<bool>(var_0.a.c.a.x, var_0.b.c.a.x, global2.c.a.x), true), vec3<bool>(true, all(!select(vec4<bool>(false, true, var_0.b.c.a.x, false), vec4<bool>(global2.c.a.x, true, global2.c.a.x, var_0.b.c.a.x), false)), !all(select(global2.c.a, var_0.a.c.a, vec2<bool>(false, var_0.a.c.a.x)))), !(!vec3<bool>(func_3(var_0, var_0.a.c.a.x, var_0.a.c), var_1.x == u_input.b, func_5(vec3<bool>(false, true, global2.c.a.x), vec4<u32>(u_input.b, 1u, 50016u, 21400u), var_0.b.c.a.x).b.c.a.x)));
    let var_3 = vec2<u32>(4294967295u, func_5(vec3<bool>(var_0.a.c.a.x, all(select(vec4<bool>(false, global2.c.a.x, var_0.b.c.a.x, var_2.x), vec4<bool>(true, true, global2.c.a.x, var_0.b.c.a.x), var_0.a.c.a.x)), global2.c.a.x), select(~(~vec4<u32>(4294967295u, global2.b.x, u_input.b, 8424u)), vec4<u32>(func_1(var_0).a.b.x, 4294967295u, func_1(Struct_4(var_0.b, Struct_2(-2147483647i, global2.b, global2.c, vec2<f32>(global2.d.x, 2147f)), -409f, global1[_wgslsmith_index_u32(1673u, 24u)], global2.b.x)).e.x, 11980u >> (var_0.a.b.x % 32u)), all(select(vec4<bool>(true, global2.c.a.x, true, global2.c.a.x), vec4<bool>(false, global2.c.a.x, global2.c.a.x, true), vec4<bool>(true, global2.c.a.x, true, var_2.x)))), global2.c.a.x).b.b.x);
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global3 = ~_wgslsmith_sub_vec3_i32(func_1(Struct_4(Struct_2(2147483647i, vec3<u32>(var_1.x, 4294967295u, 0u), global2.c, vec2<f32>(1098f, -1652f)), func_5(var_2, vec4<u32>(52748u, 71248u, var_1.x, var_3.x), true).b, var_0.b.d.x, global0[_wgslsmith_index_u32(var_0.e ^ 4294967295u, 11u)], 1u)).a.c.b.yzy, reverseBits(vec3<i32>(i32(-1i) * -32974i, -2147483647i, firstLeadingBit(global3.x))));
    var var_4 = !((reverseBits(~global3.x) == global3.x) & var_0.b.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1001f, 63929i);
}

