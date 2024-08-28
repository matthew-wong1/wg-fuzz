struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<f32>(-304f, -293f, -1000f, -101f), 0i), Struct_1(vec4<f32>(1435f, -269f, 1000f, -226f), -29632i), Struct_1(vec4<f32>(-379f, 1065f, 432f, 583f), -1i), Struct_1(vec4<f32>(398f, -704f, -353f, -293f), 0i), Struct_1(vec4<f32>(-923f, 1138f, 1000f, -1288f), 1i), Struct_1(vec4<f32>(-985f, 1646f, -890f, 550f), -39075i), Struct_1(vec4<f32>(-542f, 914f, 303f, 325f), 2147483647i), Struct_1(vec4<f32>(-1108f, -862f, -900f, -253f), 0i), Struct_1(vec4<f32>(547f, 1221f, 118f, 1822f), 0i), Struct_1(vec4<f32>(-1237f, 250f, 1173f, -870f), i32(-2147483648)), Struct_1(vec4<f32>(1000f, 700f, 953f, -1266f), i32(-2147483648)), Struct_1(vec4<f32>(209f, -1193f, -2505f, -2032f), 1i), Struct_1(vec4<f32>(1216f, -464f, -1802f, 1591f), 26972i));

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(760f, -1000f, -193f, -262f), 2147483647i), Struct_1(vec4<f32>(219f, -262f, 1003f, 709f), 1i), Struct_1(vec4<f32>(1000f, -213f, 353f, -306f), 1i), vec4<i32>(-21507i, 14673i, 2147483647i, 0i), -356f);

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.a + vec4<f32>(-1197f, global3.b.a.x, 158f, -272f)))), -u_input.b), global0[_wgslsmith_index_u32(16119u, 13u)], Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.a.x, global2.a.a.x, _wgslsmith_f_op_f32(global3.e - -255f), _wgslsmith_f_op_f32(-global2.e)) + global2.c.a), 7693i), min(vec4<i32>(global3.a.b, global2.d.x, global3.d.x, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, global2.c.b) >> (max(0u, 4294967295u) % 32u)), _wgslsmith_mod_vec4_i32(global2.d, vec4<i32>(global2.a.b, u_input.b, -26499i, global2.d.x))), -616f);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 176f, -939f, -1144f) - global3.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.b.a.x, -1653f, global2.e, 678f)))))), -2147483647i), Struct_1(global3.a.a, ~(_wgslsmith_div_i32(-1i, global3.d.x) & ~(-56862i))), Struct_1(_wgslsmith_f_op_vec4_f32(-global3.b.a), global3.d.x), ~(~(~global2.d) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), global3.a.a.x);
    var var_1 = global0[_wgslsmith_index_u32(~select(~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(64721u, 80725u), select(0u, 43284u, true)), ~(~17814u)), !any(vec3<bool>(true, true, true))), 13u)];
    global1 = 4294967295u;
    var var_2 = countOneBits(1u);
    return vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-45669i >> (1u % 32u), 2147483647i, min(-2147483647i, -1i)), u_input.a, vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), (select(u_input.a, global2.d.zww, vec3<bool>(false, true, false)) & ~vec3<i32>(global3.b.b, global3.d.x, u_input.b)) | vec3<i32>(1i, global2.d.x, global2.d.x)), _wgslsmith_div_i32(min(-2147483647i, 1i), -19734i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.d.x, 7644i, -1i, firstLeadingBit(var_1.b)), -vec4<i32>(global2.a.b, u_input.a.x, -34235i, var_1.b) ^ vec4<i32>(1i, -18600i, u_input.b, var_0.d.x), vec4<bool>(false, true, true, true)), global2.d), _wgslsmith_mod_i32(max(~_wgslsmith_mod_i32(-612i, -2147483647i), _wgslsmith_dot_vec3_i32(~global3.d.wxx, ~vec3<i32>(1i, -50273i, 6191i))), _wgslsmith_clamp_i32(i32(-1i) * -1i, global3.d.x, global2.a.b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> vec3<f32> {
    let var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1321f * global3.e), -215f))) + arg_2) * -741f);
    global3 = Struct_2(Struct_1(global3.a.a, (firstLeadingBit(0i) << (~4294967295u % 32u)) | firstLeadingBit(var_0.b)), global2.c, global3.c, reverseBits(func_3()), arg_2);
    global2 = Struct_2(global3.c, global2.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-global2.b.a.x)), global3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.b.a.x, 1332f)) * _wgslsmith_f_op_f32(-global2.a.a.x)), 653f), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1246i, u_input.a.x, 1i), ~vec3<i32>(2147483647i, var_0.b, global3.c.b))), _wgslsmith_add_vec4_i32(~global2.d >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(10536u, 1u, 33568u, 4294967295u), firstTrailingBit(vec4<u32>(0u, 1u, 1736u, 4294967295u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(17888i, global2.c.b, global2.a.b, u_input.b), vec4<i32>(var_0.b, u_input.b, 23630i, var_0.b))), _wgslsmith_f_op_f32(-740f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(arg_2 + -106f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.x)))));
    var var_2 = global2.a;
    return vec3<f32>(global2.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(563f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x)) * arg_2));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_div_f32(-1000f, 1130f);
    global1 = ~(~2572u);
    let var_1 = ~vec2<u32>(select(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(18407u, 21610u, 7000u), vec3<u32>(1u, 1u, 1u)), false), (_wgslsmith_dot_vec2_u32(vec2<u32>(80336u, 21824u), vec2<u32>(0u, 23051u)) & 1u) | ~max(41599u, 37557u));
    global0 = array<Struct_1, 13>();
    return Struct_2(global0[_wgslsmith_index_u32(~(~var_1.x), 13u)], Struct_1(vec4<f32>(-721f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, arg_2.e, false)) + 192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), 850f), _wgslsmith_div_i32(select(~(-32485i), 42070i, true), 18685i)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global3.c.a, global3.a.a)) * _wgslsmith_f_op_vec4_f32(-global2.b.a)))), countOneBits(~22128i)), global3.d, -1915f);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global1 = 0u;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -399f);
    var var_1 = vec3<u32>(arg_0, ~(4294967295u << (_wgslsmith_mult_u32(arg_0, arg_0) % 32u)), abs(362u)) << (firstTrailingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(44225u, arg_0, arg_0), vec3<u32>(arg_0, 4294967295u, 4294967295u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 38880u), vec3<u32>(arg_0, 112955u, arg_0)), ~vec3<u32>(arg_0, arg_0, 0u) | (vec3<u32>(arg_0, 4294967295u, arg_0) | vec3<u32>(40114u, arg_0, 1u)), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    let var_2 = func_4(global2.e, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), global2.c.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.a.x, global2.e, global2.a.a.x) + global2.a.a.xzw))))), Struct_2(global3.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global2.c.a)), _wgslsmith_f_op_vec4_f32(trunc(global2.b.a)), vec4<bool>(true, true, false, true))), u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b.a * vec4<f32>(655f, global3.e, -1323f, -2302f)))), -u_input.b), -(_wgslsmith_add_vec4_i32(vec4<i32>(global3.d.x, global3.d.x, global2.c.b, -18981i), vec4<i32>(-76492i, global3.a.b, 2147483647i, 2147483647i)) << (min(vec4<u32>(0u, 416u, 4294967295u, arg_0), vec4<u32>(arg_0, 0u, arg_0, arg_0)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-global3.c.a.x)));
    let var_3 = Struct_2(func_4(351f, _wgslsmith_f_op_vec3_f32(global2.c.a.www - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.b.a.yyy)) * _wgslsmith_f_op_vec3_f32(global3.c.a.zxy + vec3<f32>(global2.b.a.x, global3.e, 1291f)))), Struct_2(Struct_1(global2.b.a, 1i), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, var_2.e, global3.b.a.x, global3.c.a.x)), global3.a.b >> (4388u % 32u)), var_2.c, -var_2.d, var_2.c.a.x)).a, func_4(func_4(_wgslsmith_f_op_f32(abs(-873f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.a.x * global3.e), global2.c.a.x, _wgslsmith_f_op_f32(min(1052f, global3.c.a.x))), Struct_2(Struct_1(var_2.a.a, u_input.b), Struct_1(vec4<f32>(354f, var_2.b.a.x, -2514f, -550f), var_2.c.b), Struct_1(vec4<f32>(global2.a.a.x, var_2.c.a.x, global3.c.a.x, -1338f), var_2.a.b), vec4<i32>(46232i, 22560i, var_2.b.b, var_2.a.b), _wgslsmith_f_op_f32(round(-746f)))).e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.a.xzy) * _wgslsmith_f_op_vec3_f32(var_2.b.a.zzw - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.a.x, 1201f, 1602f), var_2.b.a.yzx))), Struct_2(global0[_wgslsmith_index_u32(1u, 13u)], func_4(_wgslsmith_f_op_f32(global2.a.a.x - global2.e), vec3<f32>(-610f, -829f, var_2.c.a.x), Struct_2(Struct_1(var_2.b.a, -2147483647i), Struct_1(vec4<f32>(var_2.c.a.x, global3.e, global2.e, -265f), var_2.b.b), global2.b, vec4<i32>(0i, 2147483647i, global3.d.x, -55955i), -537f)).a, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, var_2.a.a.x, -180f, 800f)), 25090i), _wgslsmith_mod_vec4_i32(-global3.d, ~global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(false, true, false), vec4<bool>(false, true, true, true), global3.a.a.x)).x))).c, Struct_1(vec4<f32>(-1000f, -1430f, _wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, true, false), vec4<bool>(true, true, false, false), 1158f)).x, global2.e), -(firstTrailingBit(-39543i) | -9916i)), vec4<i32>(var_2.a.b, _wgslsmith_dot_vec2_i32(max(vec2<i32>(global3.c.b, -39028i), u_input.a.yz), vec2<i32>(-global2.a.b, ~2147483647i)), _wgslsmith_dot_vec3_i32(select(global2.d.yzx, ~vec3<i32>(global3.c.b, var_2.b.b, -2147483647i), vec3<bool>(false, false, false)), -vec3<i32>(-42167i, var_2.c.b, global3.d.x)), 2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(851f + 1059f), 269f));
    return !(!vec4<bool>(~(-1i) == (var_2.c.b ^ global3.d.x), true, true, all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = min(0i, 0i ^ global3.b.b);
    let var_2 = any(!vec4<bool>(all(func_1(10583u)), !all(vec4<bool>(false, false, true, false)), select(any(vec3<bool>(false, true, false)), true, true), any(vec2<bool>(true, true)) && true));
    let var_3 = func_4(_wgslsmith_f_op_f32(min(187f, global3.c.a.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global2.b.a.x + global2.e)) - _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x)), _wgslsmith_f_op_f32(-global3.e)), Struct_2(global3.a, global0[_wgslsmith_index_u32(0u, 13u)], func_4(global3.a.a.x, vec3<f32>(_wgslsmith_f_op_f32(min(global2.e, -1484f)), _wgslsmith_f_op_f32(-global2.c.a.x), _wgslsmith_f_op_f32(round(1257f))), func_4(global2.b.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1669f, -518f, global3.c.a.x))), Struct_2(global3.a, global0[_wgslsmith_index_u32(1u, 13u)], global3.b, vec4<i32>(1i, -6379i, -1i, global3.d.x), 182f))).a, func_3() << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 52635u, 1u), vec3<u32>(14245u, 43435u, 4294967295u)), _wgslsmith_mod_u32(0u, 4294967295u), abs(9785u), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(808f - global2.b.a.x))) * global2.b.a.x)));
    var var_4 = var_3.b;
    global2 = func_4(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.a.yyx * vec3<f32>(global3.a.a.x, 888f, -914f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.x, 1000f, var_3.a.a.x)))), func_4(global2.a.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b.a.x, global2.e, -779f), vec3<f32>(1133f, 587f, -1239f), true)) * _wgslsmith_f_op_vec3_f32(global2.c.a.xyx + _wgslsmith_f_op_vec3_f32(floor(var_3.a.a.zww)))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_3.a.a.www, global3.a.a.www), _wgslsmith_div_vec3_f32(var_4.a.xwx, global2.b.a.xzz))), func_4(_wgslsmith_div_f32(1055f, global2.b.a.x), var_3.c.a.xzy, Struct_2(var_3.a, Struct_1(global2.b.a, -68946i), global2.c, global3.d, -824f)))));
    global0 = array<Struct_1, 13>();
    var_1 = -36173i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(abs(reverseBits(global3.d.yxx)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.b, -8374i, var_4.b), var_3.d.zxw), ~(-1i), global3.c.b)) & (~(-var_4.b) >> (1u % 32u)));
}

