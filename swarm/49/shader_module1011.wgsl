struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: vec2<u32> = vec2<u32>(70394u, 1u);

var<private> global2: vec4<u32> = vec4<u32>(1u, 38343u, 17456u, 45254u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = -(arg_1.c.a.zxw << (firstLeadingBit(vec3<u32>(4294967295u, arg_1.b, select(30375u, global1.x, false))) % vec3<u32>(32u)));
    global2 = vec4<u32>(firstTrailingBit(~(1u | (arg_3.x | 15714u))), _wgslsmith_mod_u32((firstTrailingBit(global1.x) ^ (1u << (arg_3.x % 32u))) | 0u, global2.x), 0u, arg_1.b);
    return arg_0.a.b.x;
}

fn func_3() -> vec2<u32> {
    global1 = abs(u_input.b.zx | (~firstLeadingBit(vec2<u32>(global1.x, 4294967295u)) << (abs(abs(vec2<u32>(global2.x, 49392u))) % vec2<u32>(32u))));
    var var_0 = vec4<u32>(global2.x & _wgslsmith_add_u32(global2.x | ~u_input.b.x, u_input.c.x), abs(global2.x), 0u, global2.x);
    var var_1 = 0u;
    var_0 = abs(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(75198u, u_input.d.x)), _wgslsmith_dot_vec4_u32(u_input.c << (vec4<u32>(var_0.x, 1u, global2.x, global2.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, global1.x, global2.x, global1.x) | u_input.c)), _wgslsmith_sub_u32(1u & ~var_0.x, 4294967295u), _wgslsmith_mult_u32(abs(1098u), _wgslsmith_mod_u32(53226u, u_input.d.x) | (0u | global2.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.x) & vec2<u32>(4294967295u, var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(var_0.x, 83327u)))));
    var var_2 = select(!(!(!select(false, true, false))), true, all(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, global2.x != 55308u, true))));
    return u_input.d.yz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_0.a.x;
    global1 = func_3();
    let var_1 = vec2<u32>(max(~0u, global1.x), _wgslsmith_mod_u32(14727u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, arg_1.b), vec3<u32>(global2.x, arg_1.b, 35841u))) << (func_3().x % 32u));
    var var_2 = arg_1.c.a.wzz;
    global2 = reverseBits(u_input.b);
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> vec2<u32> {
    global0 = array<vec3<f32>, 18>();
    var var_0 = Struct_2(func_2(Struct_1(vec4<i32>(~arg_2, _wgslsmith_div_i32(arg_2, arg_2), _wgslsmith_add_i32(arg_2, arg_2), 10768i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -244f, arg_3, arg_3)), -1000f), Struct_4(vec4<bool>(all(vec2<bool>(true, arg_0)), true, arg_0, func_2(Struct_1(vec4<i32>(-2147483647i, arg_2, arg_2, 44490i), vec4<f32>(arg_3, arg_3, -1439f, arg_3), -840f), Struct_4(vec4<bool>(false, false, false, arg_0), global1.x, Struct_1(vec4<i32>(arg_2, -1i, arg_2, 2147483647i), vec4<f32>(1195f, -736f, arg_3, arg_3), 1470f), Struct_1(vec4<i32>(arg_2, arg_2, -5462i, -1i), vec4<f32>(1095f, arg_3, arg_3, -655f), -898f), Struct_1(vec4<i32>(-11249i, arg_2, -17200i, arg_2), vec4<f32>(583f, arg_3, arg_3, 377f), 457f))).a.x), ~u_input.c.x >> (u_input.a % 32u), func_2(Struct_1(vec4<i32>(2147483647i, arg_2, arg_2, arg_2), vec4<f32>(1381f, arg_3, arg_3, arg_3), 1677f), Struct_4(vec4<bool>(true, arg_0, true, arg_0), 41232u, Struct_1(vec4<i32>(-3614i, arg_2, 2147483647i, -18746i), vec4<f32>(982f, -434f, -1000f, -1124f), arg_3), Struct_1(vec4<i32>(arg_2, arg_2, arg_2, 2147483647i), vec4<f32>(arg_3, -375f, 416f, -1174f), arg_3), Struct_1(vec4<i32>(-1i, arg_2, 2147483647i, arg_2), vec4<f32>(arg_3, -1000f, -1607f, -244f), -582f))).e, func_2(Struct_1(vec4<i32>(-1i, arg_2, arg_2, arg_2), vec4<f32>(1649f, 1358f, -196f, arg_3), 120f), Struct_4(vec4<bool>(true, arg_0, arg_0, true), global1.x, Struct_1(vec4<i32>(8002i, arg_2, 2147483647i, arg_2), vec4<f32>(arg_3, 723f, arg_3, -193f), arg_3), Struct_1(vec4<i32>(arg_2, -2147483647i, arg_2, arg_2), vec4<f32>(1845f, -1018f, 1856f, 1754f), arg_3), Struct_1(vec4<i32>(arg_2, -1i, arg_2, arg_2), vec4<f32>(arg_3, arg_3, -377f, -831f), -947f))).d, func_2(Struct_1(vec4<i32>(arg_2, arg_2, arg_2, arg_2), vec4<f32>(861f, -1385f, -238f, arg_3), 206f), func_2(Struct_1(vec4<i32>(1i, -1i, arg_2, -2147483647i), vec4<f32>(arg_3, -1446f, arg_3, arg_3), 1269f), Struct_4(vec4<bool>(arg_0, false, arg_0, false), u_input.c.x, Struct_1(vec4<i32>(-79172i, arg_2, arg_2, arg_2), vec4<f32>(-496f, arg_3, arg_3, -482f), -225f), Struct_1(vec4<i32>(0i, -29216i, 1i, 2075i), vec4<f32>(-465f, arg_3, arg_3, 2348f), arg_3), Struct_1(vec4<i32>(arg_2, -54828i, arg_2, -1i), vec4<f32>(arg_3, 295f, 743f, -1005f), arg_3)))).c)).a);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(~u_input.b.x | 22413u, 18u)]));
    global2 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~(u_input.c | u_input.c), select(vec4<u32>(global2.x, u_input.a, 39279u, global2.x), vec4<u32>(0u, arg_1.x, 1u, global2.x) ^ vec4<u32>(1u, global2.x, 33083u, u_input.c.x), var_0.a))), countOneBits(vec4<u32>(global2.x, _wgslsmith_sub_u32(firstTrailingBit(0u), func_2(Struct_1(vec4<i32>(-1i, arg_2, 74248i, arg_2), vec4<f32>(1839f, arg_3, 678f, arg_3), -820f), Struct_4(vec4<bool>(var_0.a.x, true, var_0.a.x, false), global2.x, Struct_1(vec4<i32>(27295i, -1i, arg_2, arg_2), vec4<f32>(675f, var_1.x, arg_3, 1000f), -1531f), Struct_1(vec4<i32>(arg_2, arg_2, -15472i, 2147483647i), vec4<f32>(arg_3, 721f, 315f, -916f), 2369f), Struct_1(vec4<i32>(-124i, -1i, 8298i, -2147483647i), vec4<f32>(667f, -1136f, -816f, arg_3), 853f))).b), global2.x, min(reverseBits(1u), _wgslsmith_div_u32(33123u, 1u)))));
    let var_2 = true;
    return vec2<u32>(_wgslsmith_clamp_u32(~(~global1.x), global1.x, global2.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    let var_0 = vec4<u32>(_wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(77705u, firstTrailingBit(global1.x))), 29349u, reverseBits(global1.x), u_input.b.x);
    var var_1 = countOneBits(~select(u_input.c.xy, _wgslsmith_add_vec2_u32(abs(vec2<u32>(global2.x, u_input.a)), _wgslsmith_mult_vec2_u32(u_input.d.yz, vec2<u32>(global2.x, global2.x))), true));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(876f - 1000f)), _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(abs(1193f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-901f, _wgslsmith_f_op_f32(1289f + -971f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-145f, 527f)) * _wgslsmith_div_f32(-1081f, 927f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec4<i32>(19308i, -2147483647i, 51i, 21467i), vec4<f32>(-467f, 337f, 372f, 1044f), -798f), vec3<i32>(-43930i, 2147483647i, -1i), vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(9135u, 18u)], vec4<f32>(-1047f, 389f, 1195f, -1296f)), Struct_4(vec4<bool>(true, false, true, false), global2.x, Struct_1(vec4<i32>(2147483647i, 4388i, -3133i, -41233i), vec4<f32>(-871f, -190f, -1085f, 766f), 821f), Struct_1(vec4<i32>(-21073i, -1i, 2147483647i, -24067i), vec4<f32>(1241f, -346f, -192f, -417f), -559f), Struct_1(vec4<i32>(1i, 55779i, 0i, 28669i), vec4<f32>(2047f, -494f, 389f, -1536f), -1227f)), ~vec4<u32>(var_1.x, 1u, 1u, global1.x), vec2<u32>(var_1.x, 4294967295u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1510f + -1186f) - 1f));
    global1 = _wgslsmith_mult_vec2_u32(func_4(false, ~(~var_0.wzx), -1i, _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec4<i32>(29052i, 19359i, -1i, -2147483647i), var_2, 210f), vec3<i32>(43245i, 0i, 2147483647i), vec4<bool>(false, true, false, false), var_2.yxz, var_2), func_2(Struct_1(vec4<i32>(-4205i, 24084i, 0i, 2147483647i), var_2, var_2.x), Struct_4(vec4<bool>(false, true, true, false), global2.x, Struct_1(vec4<i32>(-2147483647i, -44180i, 0i, -21931i), var_2, var_2.x), Struct_1(vec4<i32>(13203i, -1i, -23553i, -50037i), vec4<f32>(var_2.x, -150f, -344f, var_2.x), 1277f), Struct_1(vec4<i32>(0i, -10917i, 12272i, 0i), vec4<f32>(var_2.x, var_2.x, var_2.x, -2487f), var_2.x))), u_input.b, vec2<u32>(1u, 0u)))), u_input.c.wz | u_input.b.zy) & vec2<u32>(global1.x, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(20899u, var_2.x, var_1.x, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(i32(-1i) * -2147483647i, min(20925i, 39447i), _wgslsmith_add_i32(61378i, 46209i))), countOneBits(vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 913f)) * vec2<f32>(_wgslsmith_div_f32(1079f, var_2.x), var_2.x))));
}

