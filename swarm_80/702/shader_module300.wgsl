struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 26>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, 977f, 889f, -1275f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-155f, -134f, -184f, -753f), vec4<f32>(257f, 1074f, 1762f, -1155f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(102f, 1000f, 607f, -1023f))), vec4<f32>(101f, 514f, -1023f, 211f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(168f, 1000f, 741f, -225f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1003f, -312f, 811f, 1000f))))))), false)));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-global2.a.x, _wgslsmith_div_i32(0i, u_input.a.x), global2.a.x), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(0i, 0i, global2.a.x)), vec3<i32>(14132i, 1i, 2147483647i))), u_input.a.zzz), global2.b);
    var var_2 = Struct_1(abs(-2147483647i), _wgslsmith_f_op_f32(abs(var_0.x)), 10765u, global2.a);
    var_2 = Struct_1(~(-min(0i | global2.a.x, u_input.a.x)), _wgslsmith_f_op_f32(max(-459f, -457f)), ~abs(firstTrailingBit(4294967295u)), vec3<i32>(2147483647i, u_input.a.x, min(_wgslsmith_div_i32(u_input.a.x, global2.a.x) << (13183u % 32u), firstTrailingBit(var_1.a.x))));
    global1 = array<vec2<bool>, 26>();
    return countOneBits(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29844i, 2147483647i, var_1.a.x, var_1.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -37106i, var_2.d.x)), ~(-4900i), var_1.a.x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(-63593i, -1374f, 0u, -(global2.a >> (~(vec3<u32>(49457u, var_0, 1u) << (vec3<u32>(50047u, global2.b, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_2 = u_input.a.x;
    let var_3 = max(reverseBits(u_input.a.zxw | ~u_input.a.wzy), func_3());
    var var_4 = Struct_3(Struct_2(-vec3<i32>(28151i, _wgslsmith_sub_i32(global2.a.x, global2.a.x), func_3().x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, var_1.c, 0u), vec3<u32>(var_0, var_1.c, 0u)) & 1u), Struct_2(vec3<i32>(2147483647i, -(1i & var_1.a), _wgslsmith_div_i32(abs(var_1.d.x), firstTrailingBit(var_3.x))), global2.b));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = abs(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(-1i, ~select(8107i, 2147483647i, false))));
    global0 = _wgslsmith_add_i32(min(reverseBits(global2.a.x), firstTrailingBit(global2.a.x << (global2.b % 32u))), _wgslsmith_mod_i32(i32(-1i) * -(arg_1 >> (4294967295u % 32u)), global2.a.x));
    let var_0 = Struct_2(-u_input.a.ywz, _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(105430u, arg_0))), _wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, global2.b), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.b, arg_0), vec2<u32>(6146u, 11718u)), global2.b > 87122u), abs(max(vec2<u32>(global2.b, 94865u), vec2<u32>(global2.b, arg_0))))));
    var var_1 = var_0;
    global0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-u_input.a.x, ~global2.a.x, abs(_wgslsmith_add_i32(var_1.a.x, -20441i))), -(~(-vec3<i32>(var_1.a.x, var_1.a.x, -14025i))));
    return func_2(global1[_wgslsmith_index_u32(~arg_0, 26u)]);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(-95736i, -1i, abs(global2.a.x), u_input.a.x), select(~firstLeadingBit(u_input.a), u_input.a ^ ~vec4<i32>(global2.a.x, -39726i, -1i, arg_0.a), all(vec3<bool>(true, true, true))));
    global2 = Struct_2(_wgslsmith_div_vec3_i32(global2.a, firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, 12722i, 2147483647i), vec3<i32>(arg_0.d.x, global2.a.x, -1i)), vec3<i32>(arg_0.d.x, -1i, -2147483647i) ^ vec3<i32>(u_input.a.x, global2.a.x, arg_0.a)))), ~global2.b | abs(global2.b));
    global1 = array<vec2<bool>, 26>();
    let var_0 = _wgslsmith_div_u32(select(4294967295u, 0u, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)))), global2.b);
    global0 = 35105i;
    return Struct_2(arg_0.d, ~(~global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(func_1(405u, -(u_input.a.x << (1902u % 32u)))), Struct_2(~max(func_4(Struct_1(global2.a.x, 314f, global2.b, vec3<i32>(1i, global2.a.x, -1i))).a, ~u_input.a.zyw), 92376u));
    var var_1 = func_4(Struct_1(func_4(func_1(41994u, var_0.a.a.x)).a.x | -1i, -1402f, global2.b, reverseBits(var_0.a.a))).a.xz;
    var_1 = vec2<i32>(global2.a.x, 3568i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, -1222f, 511f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1034f, 192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) + _wgslsmith_f_op_f32(f32(-1f) * -1433f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f - 1968f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-941f)), -111f)))));
    var var_3 = vec2<i32>(1010i, ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(min(min(_wgslsmith_mult_vec4_u32(vec4<u32>(32772u, 51899u, var_0.a.b, var_0.a.b), vec4<u32>(65395u, global2.b, 30019u, 1u)), vec4<u32>(58824u, 70654u, 71300u, 64730u) ^ vec4<u32>(var_0.a.b, global2.b, global2.b, global2.b)), vec4<u32>(~1u, var_0.a.b, 1u, ~62660u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 69360u, var_0.b.b, global2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b, 51734u, 8572u, global2.b), vec4<u32>(var_0.b.b, global2.b, var_0.a.b, var_0.a.b), vec4<u32>(50607u, var_0.b.b, global2.b, 4294967295u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), 426f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1229f)), 891f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yy * _wgslsmith_f_op_vec2_f32(-var_2.yx)))), abs(~(~52049u)));
}

