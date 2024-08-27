struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 362f;

var<private> global2: array<Struct_5, 24>;

var<private> global3: f32 = 145f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global0.e, global0.c, (_wgslsmith_clamp_vec4_i32(global0.d.c, reverseBits(u_input.d), global0.d.c | global0.d.c) >> (firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a, u_input.b.x, u_input.c, u_input.c))) % vec4<u32>(32u))) | -(vec4<i32>(-54179i, -1i, 23009i, global0.e.a) ^ ~global0.d.c));
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1383f, _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)), _wgslsmith_f_op_f32(select(-921f, -401f, true)), var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-792f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -259f), var_0.b, _wgslsmith_f_op_f32(exp2(var_0.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, var_0.b, -711f, var_0.b) - vec4<f32>(var_0.b, 2041f, var_0.b, 206f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, var_0.b)) + var_0.b), global0.d, Struct_1(~(var_0.c.x | -41160i))), Struct_3(global0.a, global0.a, var_0.b, Struct_2(Struct_1(global0.e.a), 1122f, _wgslsmith_add_vec4_i32(global0.d.c, -global0.d.c)), Struct_1(var_0.a.a << (~u_input.c % 32u))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c, 24u)];
    var var_3 = select(select(vec3<bool>(var_1.b.d.a.a >= (u_input.e.x >> (u_input.a % 32u)), true, true), !vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true)), vec3<bool>(false, all(vec2<bool>(true, false)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), true), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, _wgslsmith_sub_i32(-2147483647i, 0i) <= var_1.b.e.a)));
    var_0 = var_2.a.d;
    return 1u;
}

fn func_2() -> Struct_2 {
    var var_0 = global0.b.x == -2320f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x + global0.c), -1478f)))));
    var var_1 = _wgslsmith_mult_u32(4294967295u >> (func_3() % 32u), _wgslsmith_clamp_u32(49847u, 50809u, reverseBits(firstLeadingBit(u_input.b.x) | ~16463u)));
    let var_2 = Struct_5(Struct_3(global0.a, vec4<f32>(global0.d.b, 255f, global0.a.x, _wgslsmith_f_op_f32(881f + global0.c)), global0.d.b, Struct_2(global0.d.a, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 21424i, 64809i, -2147483647i), vec4<i32>(global0.e.a, 43915i, 54578i, u_input.d.x)) >> (vec4<u32>(110384u, u_input.a, 15606u, u_input.b.x) % vec4<u32>(32u))), global0.e), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.a.x, global0.b.x, -2038f), _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - global0.a), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, -222f, -1100f, -840f), global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1000f * -1007f), 136f, 1523f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, -1580f, global0.c, global0.d.b)), _wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.c, global0.c, -1401f, -430f))))), global0.d.b, Struct_2(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), min(u_input.d, abs(u_input.d))), global0.e));
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, _wgslsmith_mod_i32(1i << (u_input.b.x % 32u), global0.d.a.a & u_input.e.x))), 749f, u_input.e);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global3 = -442f;
    global1 = -748f;
    global2 = array<Struct_5, 24>();
    let var_0 = global0.b.x;
    global0 = Struct_3(global0.a, global0.b, _wgslsmith_f_op_f32(round(global0.c)), func_2(), global0.d.a);
    return 1895f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(vec4<f32>(-425f, global0.d.b, _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1142f * 1000f) + -294f)), vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(1010f, global0.b.x)), -193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<i32>(2147483647i, u_input.d.x))))))), 230f, Struct_2(Struct_1(1i), global0.c, vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, 1i), 86443i, func_2().a.a, -37951i)), global0.e);
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(select(any(vec2<bool>(true, true)), true, true), select(false, true, false)), true);
    let var_1 = -2147483647i;
    var var_2 = func_2().a;
    global2 = array<Struct_5, 24>();
    let var_3 = ~abs(_wgslsmith_add_u32(~3546u | (u_input.c ^ u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 13353u, u_input.c, u_input.b.x), vec4<u32>(u_input.c, 44165u, u_input.a, u_input.b.x)) >> (~87463u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3, global0.a.zw, _wgslsmith_clamp_vec3_u32(min(u_input.b, vec3<u32>(u_input.b.x >> (var_3 % 32u), 24090u >> (u_input.a % 32u), ~50578u)), ~vec3<u32>(9871u, u_input.b.x, ~var_3), u_input.b), global0.b.yw);
}

