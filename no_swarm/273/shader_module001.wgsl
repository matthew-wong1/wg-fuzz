struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: bool;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(721f, -188f), vec2<f32>(-226f, 937f), vec2<f32>(142f, -460f), vec2<f32>(-1124f, -2278f), vec2<f32>(-308f, -317f), vec2<f32>(-1133f, 1049f), vec2<f32>(1876f, 575f));

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> f32 {
    global2 = 0u;
    var var_0 = arg_0.b.c;
    var var_1 = arg_1;
    var var_2 = 28855i;
    global1 = false;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-421f)), arg_0.c.d.x)) * arg_0.d) - -1000f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(true, 41901u, _wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, 895f, -1006f) - vec3<f32>(1437f, 397f, -1439f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, 244f, 1059f)))), false))), min(vec4<i32>(-1i, _wgslsmith_clamp_i32(44168i, -1i, -2147483647i), reverseBits(31313i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -28758i, 9854i), vec3<i32>(-1i, -58453i, 13115i))) >> (~(vec4<u32>(u_input.b, 14631u, 66479u, u_input.a.x) | vec4<u32>(4294967295u, u_input.a.x, u_input.b, 10864u)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_3(~firstLeadingBit(countOneBits(firstTrailingBit(u_input.a.yx))), var_0, var_0);
    global0 = array<vec2<u32>, 3>();
    global0 = array<vec2<u32>, 3>();
    var var_2 = !any(vec3<bool>(any(vec2<bool>(var_1.c.a, var_1.c.a)), true || (var_0.a & true), !any(vec2<bool>(var_1.c.a, true))));
    return _wgslsmith_mod_u32(~11470u, var_0.b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_1(false, abs(arg_0.b), 1f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1452f, -844f, 756f))))), vec3<f32>(-1176f, 1080f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, u_input.a.x, 102f, vec3<f32>(-529f, -244f, -1184f), vec4<i32>(-2147483647i, 1381i, 14237i, 2147483647i)), Struct_1(arg_0.a.x, arg_1.b, -141f, vec3<f32>(1994f, -1519f, 328f), vec4<i32>(1667i, -33064i, 2147483647i, -2147483647i)), Struct_1(arg_0.a.x, u_input.c, -1656f, vec3<f32>(1374f, 2046f, -1000f), vec4<i32>(-44535i, -49466i, -78297i, 1224i)), -1077f), Struct_4(arg_1.a, u_input.a.x), false)), 171f, true))), !arg_0.a)), -vec4<i32>(~1i, ~2147483647i, -2613i, countOneBits(i32(-1i) * -47302i)));
    global2 = u_input.b;
    var var_1 = Struct_3(~u_input.a.yy, var_0, Struct_1(arg_1.a.x | !arg_0.a.x, 4294967295u, 843f, var_0.d, vec4<i32>(var_0.e.x, ~(~(-1i)), -2147483647i, ~var_0.e.x)));
    let var_2 = vec2<f32>(982f, var_0.c);
    var_1 = Struct_3(vec2<u32>(arg_1.b, ~_wgslsmith_div_u32(0u, var_0.b)), Struct_1(false, min(func_3(), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b, var_1.b.b, var_1.a.x), ~u_input.a)), _wgslsmith_f_op_f32(min(-2072f, var_0.c)), var_1.c.d, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.e.x, 10346i, 2147483647i, -4808i), vec4<i32>(25093i, var_0.e.x, var_1.b.e.x, 5951i))) ^ var_0.e), var_1.c);
    return 782f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2053f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(-409f * -153f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(780f, 908f), -884f, true))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, u_input.a.x, -910f, vec3<f32>(-1350f, 1865f, -633f), vec4<i32>(-549i, 6513i, -542i, 7893i)), Struct_1(true, 25953u, -201f, vec3<f32>(-996f, -312f, -722f), vec4<i32>(0i, -1i, 1i, 0i)), Struct_1(false, 0u, 1308f, vec3<f32>(-1062f, 1473f, 1000f), vec4<i32>(31782i, 13277i, -20192i, -62086i)), -558f), Struct_4(vec3<bool>(false, false, false), 0u), false))))), -203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-518f))), _wgslsmith_f_op_f32(f32(-1f) * -1148f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -700f)), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f + var_0.x))), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(vec3<bool>(true, true, true), u_input.a.x), Struct_4(vec3<bool>(true, false, true), u_input.c))) - 1000f)))), 1072f);
    var var_2 = ~17477u;
    let var_3 = min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~95569u, 88219u, 1u), vec3<u32>(max(u_input.a.x, u_input.b), ~u_input.a.x, _wgslsmith_sub_u32(u_input.b, u_input.c))), u_input.a), 13708u);
    let var_4 = Struct_2(Struct_1(true && any(vec2<bool>(true, true)), ~var_3, -1057f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-652f + var_0.x), _wgslsmith_f_op_f32(1132f + -609f), var_0.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 6553i, -2147483647i, 0i) << (firstLeadingBit(vec4<u32>(u_input.b, u_input.b, var_3, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))), Struct_1(!any(vec2<bool>(true, false)), u_input.a.x, 1176f, var_0.yxz, firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, 28398i, 43926i)) | min(firstTrailingBit(vec4<i32>(0i, 2147483647i, -2147483647i, 5829i)), select(vec4<i32>(-1i, -1i, -28002i, -2147483647i), vec4<i32>(14635i, -8655i, 23850i, 2147483647i), false))), Struct_1(true, u_input.c, var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_1.x, var_0.x)))), vec4<i32>(firstTrailingBit(firstTrailingBit(19440i)), _wgslsmith_sub_i32(0i, 16157i), -max(-56200i, -2147483647i), -(i32(-1i) * -2147483647i))), var_0.x);
    let var_5 = var_3;
    var var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(696f))))))));
    let var_7 = any(vec4<bool>(true, any(select(!vec3<bool>(var_4.c.a, var_4.b.a, var_4.c.a), vec3<bool>(true, var_4.c.a, var_4.a.a), vec3<bool>(var_4.c.a, false, true))), var_4.b.a, false));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(abs(var_4.b.e.x), abs(_wgslsmith_div_i32(1874i, -11360i)), -var_4.a.e.x), min(countOneBits(~countOneBits(vec4<u32>(10275u, var_4.c.b, 17874u, var_4.a.b))), reverseBits(~vec4<u32>(75870u, 71774u, 4294967295u, 4294967295u)) >> ((~vec4<u32>(var_4.a.b, var_4.c.b, var_4.a.b, var_5) & ~vec4<u32>(0u, var_5, 4294967295u, 11623u)) % vec4<u32>(32u))), u_input.a, -26201i);
}

