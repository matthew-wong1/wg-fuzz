struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1203f, 461f, 135f, -719f), vec4<f32>(1587f, -560f, 1122f, -456f), vec4<f32>(456f, 1480f, 432f, 260f), vec4<f32>(1516f, -721f, -1000f, 1000f), vec4<f32>(-774f, 240f, -1179f, 657f), vec4<f32>(155f, -303f, 1418f, 1063f), vec4<f32>(1226f, 199f, 200f, 499f), vec4<f32>(1196f, 1035f, 103f, -529f), vec4<f32>(1398f, 940f, 458f, 124f), vec4<f32>(-750f, 118f, -700f, 300f), vec4<f32>(-1000f, -261f, -979f, 132f), vec4<f32>(-620f, 727f, 1221f, 762f), vec4<f32>(2533f, 1000f, -910f, 1396f), vec4<f32>(-1528f, 677f, -467f, -700f), vec4<f32>(1092f, -1319f, 965f, -904f), vec4<f32>(679f, -588f, -379f, -1000f), vec4<f32>(-1901f, 104f, 1315f, 714f), vec4<f32>(976f, 105f, -2077f, 1100f), vec4<f32>(-544f, 554f, -1000f, 1082f), vec4<f32>(1121f, -339f, -705f, -1429f), vec4<f32>(1057f, -904f, -521f, 839f), vec4<f32>(1210f, 658f, 589f, -323f), vec4<f32>(-1276f, 1509f, 229f, -369f), vec4<f32>(-373f, -201f, 2046f, 117f), vec4<f32>(1044f, -296f, 267f, 592f), vec4<f32>(-565f, -177f, -1498f, 310f), vec4<f32>(-1097f, -499f, 599f, 1129f), vec4<f32>(2588f, -297f, 1189f, -761f), vec4<f32>(2525f, -368f, -1000f, -321f), vec4<f32>(-287f, 172f, -1000f, 787f));

var<private> global1: array<bool, 26> = array<bool, 26>(false, false, true, true, true, false, true, false, false, true, true, false, false, false, false, false, true, true, true, true, true, true, false, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = ~(~max(~firstTrailingBit(4294967295u), _wgslsmith_div_u32(firstLeadingBit(0u), ~57024u)));
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-arg_1.x, 31682i, firstLeadingBit(_wgslsmith_add_i32(u_input.a, 1i))), reverseBits(vec3<i32>(arg_2.a.b, u_input.b.x, arg_2.a.b) ^ vec3<i32>(u_input.a, -1i, arg_2.a.b)) | vec3<i32>(~u_input.d, arg_2.a.b, -1i));
    global0 = array<vec4<f32>, 30>();
    let var_2 = select(vec3<bool>(true, (_wgslsmith_f_op_f32(floor(-1000f)) == _wgslsmith_f_op_f32(trunc(186f))) | (var_1.x > 0i), arg_2.a.a | true), vec3<bool>(_wgslsmith_div_u32(var_0, abs(var_0)) < abs(16812u), false, true), ~_wgslsmith_div_u32(~var_0, var_0) <= ~0u);
    var var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.a.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.x))))), Struct_2(Struct_1(any(select(vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(var_0, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0, 26u)], false, false), vec4<bool>(true, arg_2.a.a, false, false))), _wgslsmith_add_i32(i32(-1i) * -1i, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.xx, vec2<f32>(arg_2.a.c.x, arg_2.a.e), true))), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -984f))))), _wgslsmith_div_vec3_i32(var_1, var_1), select(select(vec3<u32>(~2402u, ~33936u, 42459u), vec3<u32>(20712u, _wgslsmith_mod_u32(var_0, var_0), var_0 | 4294967295u), !(!arg_2.a.d)), min(~vec3<u32>(1u, var_0, 0u), ~vec3<u32>(46334u, 4417u, 1u)) | ~select(vec3<u32>(33100u, var_0, 25438u), vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(var_2.x, false, false)), !select(!var_2, !var_2, global1[_wgslsmith_index_u32(~var_0, 26u)])), arg_2.a);
    return var_3.d.x;
}

fn func_2() -> Struct_3 {
    var var_0 = abs(4294967295u);
    var_0 = ~func_3(global0[_wgslsmith_index_u32(39612u, 30u)], u_input.b, Struct_2(Struct_1(true, u_input.a, vec2<f32>(534f, -535f), false, _wgslsmith_f_op_f32(trunc(1029f)))));
    let var_1 = !any(vec3<bool>(true, true, true));
    global0 = array<vec4<f32>, 30>();
    var var_2 = 381f;
    return Struct_3(-991f, Struct_2(Struct_1(true, u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1425f, -1500f), vec2<f32>(-1053f, 384f))), (true & var_1) && false, 1886f)), ~vec3<i32>(-_wgslsmith_mod_i32(-1i, u_input.d), -1i, -u_input.c), min(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), abs(vec3<u32>(1u, 16027u, 17320u))) ^ (vec3<u32>(reverseBits(4294967295u), 0u, 38091u) >> (vec3<u32>(_wgslsmith_add_u32(29413u, 18817u), _wgslsmith_clamp_u32(0u, 1u, 4294967295u), ~19831u) % vec3<u32>(32u))), Struct_1(any(!vec4<bool>(true, global1[_wgslsmith_index_u32(31060u, 26u)], false, global1[_wgslsmith_index_u32(0u, 26u)])), 1i, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1310f, 1429f))), _wgslsmith_f_op_f32(abs(-2237f))), !var_1, -150f));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = array<bool, 26>();
    var var_0 = func_2().b;
    var var_1 = Struct_5(arg_0.d.x);
    let var_2 = Struct_4(Struct_2(Struct_1(~u_input.a >= ~(-3219i), _wgslsmith_clamp_i32(var_0.a.b, _wgslsmith_mult_i32(arg_0.b.a.b, u_input.a), _wgslsmith_add_i32(var_0.a.b, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.a.c.x), arg_0.b.a.c, true)))), true, arg_0.a)), firstLeadingBit(~_wgslsmith_mult_i32(1i, -u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.d.x, 30u)] - global0[_wgslsmith_index_u32(arg_0.d.x, 30u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e, arg_0.b.a.c.x, arg_0.e.e, 205f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1196f, var_0.a.c.x, 187f, arg_0.a), vec4<f32>(186f, 739f, 134f, 344f))))))), func_2().b);
    let var_3 = var_2.c.x;
    return Struct_2(var_2.d.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_2 {
    return Struct_2(func_2().b.a);
}

fn func_1() -> vec3<u32> {
    var var_0 = func_5(func_4(func_2()), min(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 2590u, 8684u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(51759u, 1u, 1u))), func_2().d), Struct_4(Struct_2(func_2().b.a), -32153i, _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 30u)] * global0[_wgslsmith_index_u32(firstTrailingBit(~23205u), 30u)]), Struct_2(Struct_1(func_2().e.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 27250i), vec4<i32>(60139i, 34836i, u_input.a, u_input.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(325f, -1380f) + vec2<f32>(-715f, -1000f)), any(vec4<bool>(true, false, false, true)), 1308f))));
    var_0 = func_2().b;
    var var_1 = Struct_2(func_4(func_2()).a);
    var var_2 = vec3<u32>(63756u, ~abs(0u), _wgslsmith_add_u32(firstTrailingBit(1u), ~firstLeadingBit(_wgslsmith_mult_u32(4776u, 6727u))));
    var_1 = Struct_2(func_2().e);
    return ~vec3<u32>(abs(~max(var_2.x, var_2.x)), var_2.x, 1u << (0u % 32u));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global0 = array<vec4<f32>, 30>();
    global1 = array<bool, 26>();
    var var_0 = all(select(vec2<bool>(-11087i < -u_input.c, !(!global1[_wgslsmith_index_u32(arg_0.x, 26u)])), select(select(select(vec2<bool>(false, false), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, false)), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 26u)], arg_1.d), select(vec2<bool>(false, arg_1.d), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 26u)], arg_1.d), false)), vec2<bool>(true, func_4(Struct_3(arg_1.e, Struct_2(arg_1), vec3<i32>(u_input.c, u_input.c, arg_1.b), arg_0, arg_1)).a.a), vec2<bool>(1u == arg_0.x, true)), !(-1089f >= _wgslsmith_f_op_f32(-arg_1.e))));
    var_0 = !(!(7944i == -u_input.a));
    var var_1 = vec3<bool>(!arg_1.a, !any(select(!vec3<bool>(global1[_wgslsmith_index_u32(33648u, 26u)], arg_1.d, true), vec3<bool>(global1[_wgslsmith_index_u32(14819u, 26u)], global1[_wgslsmith_index_u32(24178u, 26u)], arg_1.d), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], true, true))), !select(func_4(func_2()).a.d, arg_1.a, func_5(Struct_2(arg_1), vec3<u32>(0u, arg_0.x, arg_0.x), Struct_4(Struct_2(arg_1), u_input.d, vec4<f32>(808f, -921f, arg_1.e, -477f), Struct_2(Struct_1(true, -1i, vec2<f32>(arg_1.e, 1356f), false, arg_1.c.x)))).a.d));
    return _wgslsmith_f_op_f32(trunc(arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(~vec3<u32>(53801u, 4294967295u, 43901u) & func_1(), func_4(func_2()).a)));
    global1 = array<bool, 26>();
    var var_1 = true;
    var var_2 = ~abs(max(~(~33857u), _wgslsmith_clamp_u32(9487u, 1u, reverseBits(14365u))));
    var var_3 = Struct_5(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(16882u, 51646u)), firstLeadingBit(vec2<u32>(1u, 9912u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec3<i32>(-(~(-2147483647i)), u_input.b.x, -_wgslsmith_mult_i32(u_input.a, u_input.a)) | max(~vec3<i32>(u_input.d, -360i, u_input.a) ^ reverseBits(vec3<i32>(u_input.a, 15171i, u_input.d)), -(vec3<i32>(4018i, -41752i, 1i) << (vec3<u32>(4294967295u, var_3.a, 4294967295u) % vec3<u32>(32u)))), ~50508i, ~var_3.a, vec4<u32>(~var_3.a, var_3.a, ~var_3.a, var_3.a));
}

