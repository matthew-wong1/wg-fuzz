struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, 54219u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    global0 = Struct_1(u_input.a, 4294967295u);
    global0 = Struct_1(select(-36797i << (_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 95922u, 1u, 15119u), vec4<u32>(0u, global0.b, 52206u, global0.b))) % 32u), ((-2147483647i ^ global0.a) & -37353i) >> (~u_input.c.x % 32u), select(true, false, true)), 1u << (_wgslsmith_mod_u32(67204u, _wgslsmith_add_u32(4294967295u, firstTrailingBit(global0.b))) % 32u));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1297f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(170f, -741f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    let var_1 = Struct_1(global0.a, _wgslsmith_mult_u32(u_input.d.x, global0.b));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -581f, false)) + _wgslsmith_f_op_f32(var_0.x * var_0.x)), -1207f, var_0.x))));
    return global0.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<i32> {
    global0 = Struct_1(abs(-_wgslsmith_sub_i32(reverseBits(8475i), abs(2469i))), ~(~_wgslsmith_mult_u32(0u, global0.b)));
    global0 = Struct_1(~_wgslsmith_sub_i32(arg_1.a, -2147483647i), ~min(1u, 0u));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1025f, -1000f) * -1000f) - _wgslsmith_f_op_f32(sign(-1799f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1347f * -565f))), 720f, !arg_0.x))));
    let var_1 = max(abs(vec4<i32>(0i, ~14990i, ~(-2147483647i), arg_1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, _wgslsmith_mod_i32(-4796i, -9920i), i32(-1i) * -51135i, -global0.a), -abs(vec4<i32>(-40889i, 1i, 0i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(361f, 253f)))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - 232f))), 588f)));
    return -min(-abs(abs(var_1.zyy)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, func_3(), ~u_input.a), vec3<i32>(-1i) * -var_1.xzw));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = Struct_1(((~u_input.a >> ((u_input.d.x ^ 0u) % 32u)) & 16718i) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_clamp_u32(1u, global0.b, 76170u)), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c) << (u_input.b.x % 32u)) % 32u), 1u | u_input.c.x);
    global0 = Struct_1(0i, ~(~_wgslsmith_mult_u32(global0.b, global0.b)) >> (1u % 32u));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(37092i, -1i, global0.a), func_2(vec2<bool>(true, true), Struct_1(u_input.a, global0.b))), -vec3<i32>(_wgslsmith_clamp_i32(global0.a, 5653i, -4410i), -u_input.a, u_input.e & -56807i)), 66768u);
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-104f, -481f)) + 652f), _wgslsmith_f_op_f32(144f * arg_1.x))));
    return vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(reverseBits(global0.b), _wgslsmith_dot_vec2_u32(min(vec2<u32>(global0.b, u_input.c.x), u_input.b.xx), vec2<u32>(60923u, 4294967295u)) | ~(u_input.d.x >> (global0.b % 32u)), ~4294967295u), 94843u, ~(~max(~u_input.b.x, global0.b << (42843u % 32u))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(ceil(326f))))), _wgslsmith_f_op_f32(f32(-1f) * -363f), 1652f));
    var_0 = vec3<f32>(-645f, _wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    return Struct_1(func_2(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(global0.a, ~28956u)).x, abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(31215u), 56895u), select(24953u, ~64647u, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 10261u, 0u, 10851u), vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, global0.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(33143u, u_input.d.x, 106821u, 17415u) ^ vec4<u32>(u_input.d.x, 1u, global0.b, 26190u), abs(vec4<u32>(50590u, global0.b, u_input.b.x, 6698u)))) & countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(9806u, global0.b, 4294967295u, u_input.d.x), vec4<u32>(global0.b, global0.b, 17251u, 1u)), func_1(u_input.a, vec4<f32>(-659f, -399f, 893f, 145f)))));
    let var_0 = -vec2<i32>(min(1i, -_wgslsmith_sub_i32(global0.a, u_input.e)), -2147483647i);
    global0 = func_4(firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1u, 61150u, 13471u), _wgslsmith_add_vec4_u32(vec4<u32>(61936u, 0u, u_input.c.x, u_input.d.x), vec4<u32>(u_input.c.x, global0.b, 15762u, global0.b))), countOneBits(vec4<u32>(23536u, 13598u, global0.b, u_input.d.x) >> (vec4<u32>(global0.b, global0.b, u_input.b.x, global0.b) % vec4<u32>(32u))))));
    let var_1 = Struct_1(~(-u_input.e), 4294967295u);
    let var_2 = func_4(countOneBits(vec4<u32>(~firstTrailingBit(global0.b), 0u, _wgslsmith_div_u32(~67793u, 32050u), _wgslsmith_add_u32(~var_1.b, _wgslsmith_sub_u32(var_1.b, 4294967295u)))));
    let var_3 = func_4(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_clamp_u32(36651u, 21074u, 0u), ~81468u, 64113u, min(4345u, var_2.b))), select(func_1(-1i | global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, 1278f, 1024f, -1391f))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b, 0u, 1u, var_2.b), vec4<u32>(11099u, 88219u, u_input.d.x, var_2.b)) >> (abs(vec4<u32>(global0.b, 1u, 1u, 25170u)) % vec4<u32>(32u)), ~global0.b == u_input.c.x)));
    var var_4 = func_4(~vec4<u32>(~u_input.b.x, ~var_2.b, 28739u, _wgslsmith_clamp_u32(u_input.d.x | u_input.b.x, ~0u, 0u & u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(vec4<u32>(4294967295u, var_1.b, 11900u, 1u), vec4<u32>(u_input.c.x, var_4.b, 0u, 205u))), vec4<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~2147483647i, reverseBits(var_0.x)), u_input.a), var_0.x, var_0.x));
}

