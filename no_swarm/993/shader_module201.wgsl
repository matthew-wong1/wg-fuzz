struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_2(-3437i), vec4<u32>(0u, 4294967295u, 32331u, 4294967295u), -1094f, vec4<f32>(-355f, -1132f, -944f, 352f), vec4<i32>(-26556i, 8163i, 0i, i32(-2147483648))), Struct_5(Struct_2(-1i), vec4<u32>(19019u, 19112u, 13741u, 59323u), 708f, vec4<f32>(729f, -303f, 971f, -586f), vec4<i32>(1073i, 0i, i32(-2147483648), -1i)), Struct_5(Struct_2(-18646i), vec4<u32>(27838u, 1u, 0u, 27454u), -641f, vec4<f32>(-294f, 1000f, -802f, 746f), vec4<i32>(-1i, 0i, 0i, 1i)), Struct_5(Struct_2(2147483647i), vec4<u32>(0u, 8488u, 1u, 1u), 978f, vec4<f32>(1168f, -481f, -711f, -1000f), vec4<i32>(-53261i, -1i, i32(-2147483648), 2147483647i)), Struct_5(Struct_2(-15063i), vec4<u32>(2930u, 1u, 52903u, 4294967295u), -1000f, vec4<f32>(-796f, 1452f, 537f, 861f), vec4<i32>(2147483647i, i32(-2147483648), 31575i, i32(-2147483648))), Struct_5(Struct_2(43612i), vec4<u32>(4294967295u, 1u, 20259u, 0u), 1791f, vec4<f32>(441f, -2512f, 516f, -539f), vec4<i32>(-9688i, -46872i, -1i, 1i)), Struct_5(Struct_2(9808i), vec4<u32>(18990u, 0u, 76169u, 4294967295u), -749f, vec4<f32>(842f, 636f, -276f, 803f), vec4<i32>(292i, 75790i, i32(-2147483648), 10i)), Struct_5(Struct_2(39919i), vec4<u32>(4294967295u, 1u, 28549u, 18208u), -1955f, vec4<f32>(267f, -256f, -547f, -820f), vec4<i32>(1i, 0i, -21074i, -67828i)), Struct_5(Struct_2(1637i), vec4<u32>(4851u, 4294967295u, 61716u, 49095u), -916f, vec4<f32>(215f, 435f, 1042f, -2822f), vec4<i32>(-1i, 10818i, 0i, -1i)), Struct_5(Struct_2(-10771i), vec4<u32>(0u, 0u, 41524u, 12900u), 1425f, vec4<f32>(-1000f, 1401f, -1444f, -876f), vec4<i32>(2147483647i, 1i, -1i, 0i)), Struct_5(Struct_2(i32(-2147483648)), vec4<u32>(4294967295u, 4294967295u, 14652u, 61125u), 489f, vec4<f32>(1311f, -354f, -398f, -680f), vec4<i32>(i32(-2147483648), -1i, 1i, -2175i)), Struct_5(Struct_2(-1i), vec4<u32>(0u, 64438u, 10970u, 1689u), 124f, vec4<f32>(-464f, -1800f, 1474f, 258f), vec4<i32>(i32(-2147483648), 30183i, i32(-2147483648), 43102i)), Struct_5(Struct_2(62709i), vec4<u32>(0u, 0u, 3011u, 92459u), -408f, vec4<f32>(1536f, -205f, 537f, 1065f), vec4<i32>(-5407i, 40474i, -94075i, 11618i)), Struct_5(Struct_2(44061i), vec4<u32>(4294967295u, 1782u, 4294967295u, 43301u), -313f, vec4<f32>(-215f, -1000f, -200f, -987f), vec4<i32>(17543i, -9574i, 2147483647i, i32(-2147483648))), Struct_5(Struct_2(3570i), vec4<u32>(0u, 0u, 64320u, 65178u), -1000f, vec4<f32>(1000f, 2050f, -1514f, 685f), vec4<i32>(2147483647i, 45644i, 35685i, -58692i)), Struct_5(Struct_2(2147483647i), vec4<u32>(62674u, 2617u, 4294967295u, 4294967295u), -173f, vec4<f32>(-353f, 1000f, -114f, -577f), vec4<i32>(1i, -11646i, 17787i, -1i)), Struct_5(Struct_2(-12123i), vec4<u32>(6289u, 89605u, 4294967295u, 1u), 409f, vec4<f32>(-658f, -588f, 422f, -901f), vec4<i32>(0i, -59014i, 0i, -48001i)), Struct_5(Struct_2(41427i), vec4<u32>(1u, 0u, 0u, 27684u), 489f, vec4<f32>(174f, -652f, -772f, 1606f), vec4<i32>(-47574i, -1i, 39811i, i32(-2147483648))), Struct_5(Struct_2(-1i), vec4<u32>(1u, 1u, 0u, 4294967295u), 153f, vec4<f32>(1321f, 325f, -1038f, -378f), vec4<i32>(i32(-2147483648), -92461i, -1i, -3780i)), Struct_5(Struct_2(0i), vec4<u32>(75920u, 4294967295u, 4294967295u, 1u), 991f, vec4<f32>(343f, 324f, 838f, 828f), vec4<i32>(2147483647i, 13003i, 1i, 0i)), Struct_5(Struct_2(-1i), vec4<u32>(4294967295u, 49093u, 1u, 16837u), -183f, vec4<f32>(402f, 685f, -305f, 570f), vec4<i32>(0i, -1i, -17384i, -1i)), Struct_5(Struct_2(0i), vec4<u32>(3936u, 0u, 73497u, 1u), -597f, vec4<f32>(582f, -154f, 2322f, 926f), vec4<i32>(0i, 11213i, -61126i, -1i)), Struct_5(Struct_2(1i), vec4<u32>(1u, 1u, 4294967295u, 1u), -536f, vec4<f32>(2080f, 366f, 2016f, 625f), vec4<i32>(1i, i32(-2147483648), -32369i, 0i)), Struct_5(Struct_2(2147483647i), vec4<u32>(4294967295u, 4294967295u, 135535u, 0u), 999f, vec4<f32>(-321f, 1674f, 729f, -1558f), vec4<i32>(25776i, 2147483647i, 1i, 32308i)), Struct_5(Struct_2(2147483647i), vec4<u32>(21982u, 10220u, 25847u, 17885u), 156f, vec4<f32>(-1213f, 1984f, 1475f, 1386f), vec4<i32>(43741i, i32(-2147483648), 0i, 6453i)), Struct_5(Struct_2(i32(-2147483648)), vec4<u32>(10515u, 39879u, 24718u, 66923u), -2727f, vec4<f32>(1556f, -273f, -882f, 501f), vec4<i32>(-1i, -27939i, -1i, -87087i)), Struct_5(Struct_2(1i), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), -340f, vec4<f32>(1061f, -873f, -490f, -862f), vec4<i32>(-1i, -14564i, 1i, -1i)), Struct_5(Struct_2(67524i), vec4<u32>(1u, 1u, 37889u, 33711u), 407f, vec4<f32>(-1630f, -1664f, -2616f, -1383f), vec4<i32>(-18257i, -6804i, i32(-2147483648), 31172i)), Struct_5(Struct_2(1014i), vec4<u32>(10865u, 39057u, 4294967295u, 25431u), 1282f, vec4<f32>(1000f, 910f, -938f, 507f), vec4<i32>(-11318i, 1i, 23327i, -16306i)), Struct_5(Struct_2(-20245i), vec4<u32>(4294967295u, 78037u, 24527u, 0u), -104f, vec4<f32>(230f, -1000f, -687f, -1078f), vec4<i32>(-15982i, -40009i, i32(-2147483648), -1i)), Struct_5(Struct_2(-1i), vec4<u32>(658u, 8131u, 31268u, 1u), -1583f, vec4<f32>(800f, -783f, -1065f, -745f), vec4<i32>(1i, -11071i, 1i, -7631i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> f32 {
    global0 = Struct_5(Struct_2(reverseBits(_wgslsmith_clamp_i32(~arg_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.a.a, 3093i), arg_3.a.xzw), global0.a.a))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) + global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.c), vec4<f32>(global0.d.x, global0.d.x, global0.c, global0.c), arg_2)))), vec4<f32>(_wgslsmith_div_f32(-244f, -1000f), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(global0.c + global0.c)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c, global0.d.x, -397f, global0.d.x), _wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(global0.d.x, -492f, 1192f, 721f))))))), _wgslsmith_mult_vec4_i32(-firstLeadingBit(select(vec4<i32>(-2147483647i, -17499i, 23832i, 1i), global0.e, arg_2)), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-15601i, global0.a.a, arg_3.a.x, -3057i), min(global0.e, global0.e))));
    global1 = array<Struct_5, 31>();
    let var_0 = arg_1;
    let var_1 = ~vec2<u32>(1u, 7335u);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_sub_i32(global0.e.x, 49213i), 3673i, -75229i), countOneBits(~vec4<i32>(global0.e.x, 14752i, -2147483647i, arg_3.a.x))) | (~(-29494i << (global0.b.x % 32u)) >> (abs(arg_0.x) % 32u)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_add_i32(u_input.a, -global0.e.x)), arg_3.a.x), -3019i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, arg_3.a.x) << (vec4<u32>(0u, 58569u, arg_0.x, var_1.x) % vec4<u32>(32u)), global0.e) >> (~(80504u ^ global0.b.x) % 32u), max(arg_3.a.x, ~u_input.a | (arg_3.a.x >> (global0.b.x % 32u))), arg_1));
    return _wgslsmith_f_op_f32(step(240f, -1567f));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    var var_0 = false;
    let var_1 = Struct_2(-31387i);
    let var_2 = global0.c;
    let var_3 = _wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(func_3(~firstLeadingBit(vec2<u32>(49023u, 1u)), all(select(vec4<bool>(arg_2, false, arg_2, false), select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, false)), select(vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2)))), true, Struct_3(vec4<i32>(~(-1i), i32(-1i) * -25366i, _wgslsmith_mult_i32(global0.e.x, -27451i), 66965i)))), !arg_2));
    let var_4 = Struct_5(Struct_2(u_input.a), vec4<u32>(max(40884u, _wgslsmith_mod_u32(arg_3.x, 93936u) & 1u), ~88958u, arg_3.x ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.x, arg_3.x), ~15673u), (2117u << (_wgslsmith_mod_u32(0u, arg_1) % 32u)) ^ 64315u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.d.x, global0.d.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - -1275f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(select(arg_3, global0.b.wy, vec2<bool>(arg_2, false)), _wgslsmith_add_vec2_u32(global0.b.wz, arg_3)), all(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, false))), any(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_2, false), vec3<bool>(true, false, arg_2))), Struct_3(global0.e))), global0.d.x, global0.c), vec4<i32>(~var_1.a, ~var_1.a, global0.a.a, var_1.a));
    return arg_3.x;
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_5, 31>();
    global1 = array<Struct_5, 31>();
    var var_0 = vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), true);
    let var_1 = Struct_2(-u_input.a << (global0.b.x % 32u));
    var var_2 = var_0.x;
    return vec4<u32>(37108u, min(func_2(select(global0.e, vec4<i32>(1i, var_1.a, 3020i, 2147483647i), false), countOneBits(1u), false, ~global0.b.xw), global0.b.x), _wgslsmith_add_u32(global0.b.x, global0.b.x), global0.b.x) | global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1061f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f + -850f) - _wgslsmith_f_op_f32(-global0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - var_0.x), _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(global0.c - -2524f)), -466f)), min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(18986u, 4294967295u), ~global0.b.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(52802u, global0.b.x), 0u), _wgslsmith_dot_vec4_u32(func_1(), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.b.x, global0.b.x, 0u), global0.b))), global0.b.x), var_0.x);
}

