struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec4<f32>(-427f, -2128f, 128f, 1143f)), Struct_1(vec4<f32>(-1262f, 151f, 368f, 1028f))), Struct_2(Struct_1(vec4<f32>(-445f, -618f, 942f, 1035f)), Struct_1(vec4<f32>(2449f, -1914f, 328f, 116f))), Struct_2(Struct_1(vec4<f32>(510f, 412f, 2071f, 521f)), Struct_1(vec4<f32>(-739f, -1939f, 1384f, -928f))), Struct_2(Struct_1(vec4<f32>(-1258f, 1000f, -255f, -2126f)), Struct_1(vec4<f32>(-297f, 839f, -1195f, -384f))), Struct_2(Struct_1(vec4<f32>(-706f, -123f, -439f, -2228f)), Struct_1(vec4<f32>(-459f, -662f, -345f, -998f))), Struct_2(Struct_1(vec4<f32>(166f, 1552f, 1000f, 1055f)), Struct_1(vec4<f32>(1041f, -1000f, 704f, -877f))), Struct_2(Struct_1(vec4<f32>(1000f, 859f, 1826f, 627f)), Struct_1(vec4<f32>(-580f, 1572f, -1000f, 1000f))), Struct_2(Struct_1(vec4<f32>(-184f, 1617f, 1130f, 802f)), Struct_1(vec4<f32>(-1000f, 1130f, -1601f, 972f))), Struct_2(Struct_1(vec4<f32>(251f, 209f, 2336f, 634f)), Struct_1(vec4<f32>(-1000f, 466f, 1000f, 598f))), Struct_2(Struct_1(vec4<f32>(528f, -297f, 2030f, 428f)), Struct_1(vec4<f32>(-449f, 366f, 2814f, -760f))), Struct_2(Struct_1(vec4<f32>(-649f, 400f, 1003f, 680f)), Struct_1(vec4<f32>(-1090f, 129f, -618f, 178f))), Struct_2(Struct_1(vec4<f32>(1656f, 809f, 667f, -398f)), Struct_1(vec4<f32>(182f, -604f, 1296f, 863f))), Struct_2(Struct_1(vec4<f32>(-2045f, 993f, 355f, 475f)), Struct_1(vec4<f32>(614f, 1000f, -340f, -747f))), Struct_2(Struct_1(vec4<f32>(231f, 710f, -623f, 1060f)), Struct_1(vec4<f32>(444f, -127f, -772f, -608f))), Struct_2(Struct_1(vec4<f32>(572f, -158f, -765f, 347f)), Struct_1(vec4<f32>(-980f, 253f, 504f, -1000f))), Struct_2(Struct_1(vec4<f32>(-321f, -201f, 1873f, -791f)), Struct_1(vec4<f32>(1711f, 108f, -828f, -1000f))), Struct_2(Struct_1(vec4<f32>(-815f, 793f, -244f, -873f)), Struct_1(vec4<f32>(-1000f, -182f, -1201f, 1031f))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(ceil(arg_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(arg_2.a, arg_2.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.a.x, 338f, 473f, arg_3.x), arg_2.a)))) * arg_2.a)));
    var var_1 = 1u;
    global0 = array<Struct_2, 17>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(select(~4294967295u, abs(28396u), false)), ~55929u), ~(~(firstLeadingBit(4294967295u) >> (firstTrailingBit(1u) % 32u))));
    global0 = array<Struct_2, 17>();
    return -1181f;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = ~(vec4<u32>(arg_2, arg_3, _wgslsmith_sub_u32(~0u, ~arg_2), 79199u) << (_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(arg_2, arg_3, 0u, 52109u)), vec4<u32>(arg_3, 22198u, arg_2, arg_2) ^ vec4<u32>(arg_2, 8955u, arg_3, arg_2)) % vec4<u32>(32u)));
    var var_1 = vec3<bool>(arg_1.x, false, true);
    global0 = array<Struct_2, 17>();
    let var_2 = true;
    return ~(~countOneBits(firstLeadingBit(vec4<u32>(1u, 1u, var_0.x, arg_2))) & abs(countOneBits(vec4<u32>(arg_3, arg_2, 0u, 1u))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_0 = (reverseBits(func_4(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(263f, 106f, 1032f, -620f)), u_input.b.zw, Struct_1(vec4<f32>(-1494f, -1400f, -1162f, 357f)), vec2<f32>(1520f, 446f))), vec4<bool>(true, true, true, true), _wgslsmith_add_u32(50238u, 109670u), _wgslsmith_dot_vec4_u32(vec4<u32>(3324u, 0u, 4294967295u, 71965u), vec4<u32>(13243u, 21350u, 14611u, 4294967295u)))) >> (~(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 1u)) ^ reverseBits(vec4<u32>(1u, 0u, 1u, 1u))) % vec4<u32>(32u))) >> (~vec4<u32>(1u, ~func_4(-928f, vec4<bool>(false, false, true, true), 46224u, 4294967295u).x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 20123u, 26920u), _wgslsmith_mult_u32(1u, 0u)), 0u) % vec4<u32>(32u));
    var var_1 = Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -828f), _wgslsmith_f_op_f32(round(-453f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f - -2031f) - _wgslsmith_f_op_f32(107f * 877f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2377f, -235f, 808f, 374f), vec4<f32>(809f, -318f, 1450f, 464f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1269f, -1959f, -275f, -318f), vec4<f32>(1000f, 153f, -947f, 816f))))));
    let var_2 = var_1.c;
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = Struct_4(arg_0, arg_0);
    let var_1 = Struct_4(var_0.b, func_2());
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return func_4(_wgslsmith_f_op_f32(var_0.a.a.x + 1351f), !vec4<bool>(-783f <= var_1.b.a.x, arg_1, true, false), min(0u, reverseBits(1u)), ~(~abs(4294967295u))).x & ~abs(1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> Struct_4 {
    let var_0 = !(!vec4<bool>(arg_2 || !arg_2, arg_1 > countOneBits(43609u), true, any(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(false, false, false)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, -231f, -1079f, 177f)) - _wgslsmith_div_vec4_f32(vec4<f32>(812f, 844f, 288f, -412f), vec4<f32>(-393f, -1089f, 1612f, 587f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(591f, -2416f, -1032f, -223f), vec4<f32>(-520f, 1902f, -588f, -917f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-876f, -1000f, 460f, 437f))), !vec4<bool>(false, var_0.x, var_0.x, false))))));
    let var_2 = Struct_3(var_0.zx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - var_1.b.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1440f, var_1.a.a.x)) + var_1.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x))), var_1.b.a.x))), var_1);
    let var_3 = abs(_wgslsmith_sub_u32(arg_1 << (arg_0.x % 32u), 60000u)) ^ arg_1;
    var var_4 = _wgslsmith_add_u32(~(~_wgslsmith_mod_u32(91239u, var_3)), ~arg_0.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(96221u, ~_wgslsmith_clamp_u32(0u, 39495u, arg_1), 32980u, arg_0.x), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28888u, 4294967295u, arg_0.x, 25588u), vec4<u32>(arg_1, 0u, 1u, arg_1) >> (vec4<u32>(73833u, var_3, arg_0.x, 4294967295u) % vec4<u32>(32u))), firstLeadingBit(firstLeadingBit(vec4<u32>(var_3, 72291u, 20010u, arg_0.x)))));
    return Struct_4(func_2(), Struct_1(var_2.c.a.a));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>) -> vec2<f32> {
    var var_0 = (~_wgslsmith_mod_i32(~2147483647i, _wgslsmith_add_i32(-53557i, arg_1.x)) > ~(-1i)) || (true & all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)))));
    let var_1 = Struct_3(select(select(vec2<bool>(true, select(true, false, true)), vec2<bool>(true, true), arg_0.b.a.x > arg_0.a.a.x), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true), _wgslsmith_f_op_f32(f32(-1f) * -538f), Struct_2(arg_0.b, Struct_1(vec4<f32>(-2154f, arg_0.a.a.x, _wgslsmith_f_op_f32(exp2(arg_0.a.a.x)), 1000f))));
    var_0 = var_1.a.x;
    var var_2 = 4294967295u;
    var_0 = var_1.a.x;
    return func_5(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), ~abs(vec2<u32>(1u, 1u))), ~countOneBits(~(1u >> (1u % 32u))), var_1.a.x).a.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_6(func_5(_wgslsmith_add_vec2_u32(vec2<u32>(23674u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u))), _wgslsmith_add_u32(4294967295u, func_1(Struct_1(vec4<f32>(2163f, -1614f, 1000f, -630f)), true)), firstTrailingBit(0i) != -19379i), abs(u_input.b.wy)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -456f, _wgslsmith_f_op_f32(abs(707f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, 771f, false)), func_2().a.x), var_0.x))));
    let var_2 = func_5(abs(vec2<u32>(_wgslsmith_div_u32(4294967295u, func_4(140f, vec4<bool>(false, true, false, false), 0u, 43460u).x), ~_wgslsmith_div_u32(59107u, 57255u))), _wgslsmith_sub_u32(32421u, abs(1u)), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) || any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)))).a;
    var var_3 = Struct_3(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, var_2.a.x <= _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(-var_2.a.x), global0[_wgslsmith_index_u32(1u, 17u)]);
    var var_4 = _wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_3.c.b.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-112f, var_3.b, -254f, -214f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_1.x, -839f, -631f))), 0i == u_input.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 1u, vec3<u32>(~1u, min(1u, countOneBits(~57088u)), 1u));
}

