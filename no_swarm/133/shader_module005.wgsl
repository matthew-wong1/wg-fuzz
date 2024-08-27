struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<i32>;

var<private> global2: f32 = 593f;

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    global3 = array<Struct_3, 23>();
    global0 = select(~u_input.a, 9999u, arg_2.x);
    global1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.e, ~vec4<i32>(_wgslsmith_clamp_i32(8687i, -20502i, arg_1), ~global1.x, 2147483647i, u_input.c << (0u % 32u))), -vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-49068i, global1.x, 19329i, arg_1) | u_input.e, vec4<i32>(-1i, -2147483647i, 36812i, -19732i)), _wgslsmith_sub_i32(0i, ~50642i), u_input.e.x | countOneBits(u_input.c)));
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    global0 = min(_wgslsmith_clamp_u32(u_input.d.x, 31264u, 44039u & _wgslsmith_mod_u32(u_input.a, 0u)), _wgslsmith_clamp_u32(~firstLeadingBit(u_input.a), 1u, arg_1));
    global2 = -1711f;
    let var_0 = 0u >> (min(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), firstTrailingBit(52738u) | func_3(638f, 2147483647i, arg_0)), 52151u) % 32u);
    let var_1 = ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, u_input.d.x, var_0)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 42426u, 1u) << (vec3<u32>(11029u, u_input.d.x, var_0) % vec3<u32>(32u)), vec3<u32>(4294967295u, 29360u, 1u)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, var_0, var_0), vec3<u32>(65401u, 27494u, 4294967295u)), vec3<u32>(28694u, 1u, 18060u) << (vec3<u32>(1u, u_input.a, var_0) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -338f);
    return _wgslsmith_f_op_f32(var_2 * var_2);
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = !select(vec4<bool>(false | all(vec4<bool>(false, false, false, true)), arg_0 <= arg_0, false, !any(vec3<bool>(false, true, true))), vec4<bool>(!any(vec2<bool>(false, false)), true || all(vec4<bool>(true, false, true, false)), _wgslsmith_add_i32(10745i, u_input.b) != 2147483647i, true), vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)), true));
    var var_2 = true;
    let var_3 = vec4<i32>(global1.x, ~(-abs(_wgslsmith_clamp_i32(var_0, u_input.e.x, 1i))), 1i, -u_input.e.x);
    var var_4 = 784f;
    return Struct_1(-(global1.wxw >> (~(~vec3<u32>(73056u, u_input.d.x, 16501u)) % vec3<u32>(32u))));
}

fn func_1() -> bool {
    let var_0 = !vec3<bool>(false, firstLeadingBit(~u_input.a) <= ~u_input.d.x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)) && false);
    global1 = u_input.e;
    let var_1 = Struct_2(Struct_1(vec3<i32>(15383i, _wgslsmith_mod_i32(u_input.b << (u_input.a % 32u), i32(-1i) * -1i), u_input.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2053f, -2098f) + vec2<f32>(-1030f, 250f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(343f, 575f), vec2<f32>(1518f, -469f), true))))), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(!vec2<bool>(var_0.x, var_0.x), select(u_input.a, u_input.d.x, true), -vec4<i32>(u_input.b, global1.x, u_input.e.x, 24225i), vec3<i32>(global1.x, global1.x, 18712i)))))));
    return false;
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    global0 = 0u;
    let var_0 = -22603i;
    var var_1 = (_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 6434u)) | _wgslsmith_clamp_u32(max(~0u, reverseBits(0u)), ~u_input.a, ~u_input.d.x)) & u_input.d.x;
    var var_2 = Struct_4(true);
    let var_3 = abs((vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.d.x, u_input.d.x), u_input.d.x, u_input.a) << (vec3<u32>(_wgslsmith_clamp_u32(15233u, u_input.a, 0u), ~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.d.x, u_input.d.x))) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.d.x, 0u, 1727u)), vec3<u32>(~4294967295u, 1u, 2552u & u_input.a)) % vec3<u32>(32u)));
    return Struct_4(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(!func_1()));
    let var_1 = 1u;
    let var_2 = vec3<u32>((1u | func_3(-1038f, 23426i, vec2<bool>(var_0.a, var_0.a))) >> (~7968u % 32u), 4294967295u, u_input.d.x) >> (vec3<u32>(var_1 | ~_wgslsmith_div_u32(u_input.a, u_input.d.x), var_1, _wgslsmith_clamp_u32(min(1u, 1u), u_input.a & reverseBits(u_input.a), ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d))) % vec3<u32>(32u));
    global3 = array<Struct_3, 23>();
    let var_3 = vec4<u32>(abs(~u_input.a), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1024f)))), -1180f), firstTrailingBit(-2147483647i), select(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, var_0.a), true), true)), 7904u, abs(min(reverseBits(0u), u_input.d.x)));
    global3 = array<Struct_3, 23>();
    var var_4 = -1402f;
    let var_5 = Struct_5(Struct_3(Struct_1(abs(vec3<i32>(0i, global1.x, -1i))), Struct_2(func_4(_wgslsmith_f_op_f32(-1326f + -320f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, 1345f))), func_4(-1000f)), -_wgslsmith_mult_vec2_i32(u_input.e.xw, u_input.e.wy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f - -1045f)) + _wgslsmith_f_op_f32(-893f * 160f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1711f, 524f, -229f, -847f)))))), ~u_input.e ^ u_input.e, Struct_3(func_4(-608f), Struct_2(Struct_1(-global1.zww), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1732f, 860f) * vec2<f32>(-1000f, 817f))), Struct_1(global1.yzz)), vec2<i32>(~(-12140i), countOneBits(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2123f + 1551f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1342f, 2404f, -282f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1156f, -1248f, 853f, -170f)))) - vec4<f32>(-1758f, 1647f, _wgslsmith_f_op_f32(-2146f + -1042f), _wgslsmith_f_op_f32(f32(-1f) * -236f)))), Struct_4(func_5(Struct_4(var_1 < 1657u)).a), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wyx, _wgslsmith_mod_u32(var_2.x | _wgslsmith_clamp_u32(12321u, countOneBits(29679u), 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(var_3.xyz), var_3.yxz), vec3<u32>(~1u, ~61378u, 4294967295u))), -firstTrailingBit(firstTrailingBit(abs(global1.yxx))));
}

