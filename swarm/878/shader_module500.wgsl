struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-986f, -1000f, 1429f, -1732f);

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(164f, 351f), vec2<f32>(-1000f, 2392f), vec2<f32>(1437f, 115f), vec2<f32>(1009f, -118f), vec2<f32>(-325f, -1000f), vec2<f32>(-587f, 852f), vec2<f32>(214f, 762f), vec2<f32>(1593f, 698f), vec2<f32>(-555f, 1558f), vec2<f32>(-1420f, 717f), vec2<f32>(-1295f, 1075f), vec2<f32>(346f, -1000f), vec2<f32>(2091f, -1096f), vec2<f32>(864f, -1545f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = 58622u;
    let var_1 = -(~min(max(vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(8373i, u_input.b.x, -2147483647i, -11411i), vec4<i32>(-2147483647i, u_input.d, -24820i, -1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.d), vec4<i32>(1i, 1i, u_input.c.x, u_input.d)), ~vec4<i32>(u_input.a, u_input.b.x, u_input.d, u_input.a))));
    var var_2 = Struct_4(Struct_1(~arg_0.a.x, any(!(!vec2<bool>(arg_0.b, false))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_0, arg_1.x, 4294967295u)), vec3<u32>(var_0, 27599u, 114085u) ^ u_input.e), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u) << (vec3<u32>(arg_1.x, arg_1.x, arg_1.x) % vec3<u32>(32u)), arg_1)), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f - -966f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, _wgslsmith_f_op_f32(max(-283f, _wgslsmith_f_op_f32(f32(-1f) * -2295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d * var_2.a.d) - _wgslsmith_f_op_f32(1344f - 1000f)))) - global0.yxx);
    let var_4 = var_2.a;
    return 616f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), -520f) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x), 793f, _wgslsmith_f_op_f32(round(-344f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f * 2087f)), _wgslsmith_f_op_f32(max(-672f, -468f)), 1267f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1316f, global0.x, 1000f, global0.x)))) * vec4<f32>(-1278f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(arg_0, u_input.e)), global0.x)))));
    var var_0 = vec2<bool>(arg_0.b, !(all(select(vec3<bool>(false, arg_0.b, false), vec3<bool>(false, true, arg_0.b), vec3<bool>(arg_1.b, arg_1.b, arg_0.b))) & false));
    return select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, ~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(arg_1.a.x, 0u, arg_1.a.x)), 1u), _wgslsmith_add_vec3_u32(arg_0.a.yxz << (vec3<u32>(1u, arg_1.a.x, 1u) % vec3<u32>(32u)), arg_0.a.wxw)), ~4294967295u, all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, var_0.x), any(vec4<bool>(true, var_0.x, false, true))), !(!vec3<bool>(arg_0.b, true, false)), vec3<bool>(true, arg_1.b, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(24283u, 4294967295u, true) >> ((u_input.e.x >> (_wgslsmith_mult_u32(0u, reverseBits(func_2(Struct_2(vec4<u32>(1u, 5321u, 53557u, 18325u), true), Struct_2(vec4<u32>(u_input.e.x, 26375u, 4294967295u, u_input.e.x), true), u_input.a))) % 32u)) % 32u);
    let var_1 = Struct_2(vec4<u32>(select(u_input.e.x, ~func_2(Struct_2(vec4<u32>(26195u, 1u, 4294967295u, 55473u), true), Struct_2(vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 76832u), true), u_input.d), true), min(u_input.e.x, _wgslsmith_add_u32(8419u, 0u)) << ((u_input.e.x | ~49171u) % 32u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(55374u, u_input.e.x, u_input.e.x, u_input.e.x) & vec4<u32>(11670u, u_input.e.x, u_input.e.x, u_input.e.x), reverseBits(vec4<u32>(47184u, 4294967295u, 63932u, u_input.e.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 8643u, 4294967295u), vec4<u32>(0u, 0u, u_input.e.x, 0u)) << (countOneBits(vec4<u32>(0u, 39513u, 1u, 33510u)) % vec4<u32>(32u))), abs(select(u_input.e.x, 4294967295u, any(vec4<bool>(false, true, false, true))))), false);
    let var_2 = Struct_4(Struct_1(max(min(var_1.a.x, 0u >> (u_input.e.x % 32u)), var_1.a.x), _wgslsmith_add_i32(0i << (u_input.e.x % 32u), u_input.c.x) > -u_input.d, vec3<u32>(~u_input.e.x, 4659u, _wgslsmith_div_u32(var_1.a.x, u_input.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, _wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(17170u, 4294967295u, u_input.e.x)))) + global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1000f - -1363f), _wgslsmith_f_op_f32(global0.x * var_2.a.d), _wgslsmith_f_op_f32(198f * global0.x), var_2.a.d))) * vec4<f32>(var_2.a.d, _wgslsmith_f_op_f32(f32(-1f) * -870f), 2317f, -175f)));
    var var_3 = _wgslsmith_div_f32(var_2.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.a.d)), 510f, !any(!vec4<bool>(var_1.b, true, true, var_1.b)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(max(-706f, -635f)), 922f, -1000f);
    var var_0 = ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(27973u, 4294967295u, 1u, u_input.e.x) >> ((vec4<u32>(u_input.e.x, u_input.e.x, 1u, 53369u) >> (vec4<u32>(1u, u_input.e.x, 30737u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(u_input.e.x, 5368u, 46297u, 0u)), firstLeadingBit(45662u), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), true)));
    var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d, -2147483647i), u_input.d, 0i, -2147483647i), ~(vec4<i32>(-54352i, u_input.a, u_input.b.x, -3236i) & vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, 14818i)) << ((vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x) >> (firstTrailingBit(vec4<u32>(u_input.e.x, u_input.e.x, 4302u, u_input.e.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = var_1.x;
    let var_3 = Struct_3(func_1(), Struct_1(3588u, ~(~u_input.e.x) == (u_input.e.x & ~76456u), ~vec3<u32>(u_input.e.x, u_input.e.x, abs(4294967295u)), _wgslsmith_f_op_f32(min(371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(4294967295u, 1u, 52396u, u_input.e.x), false), vec3<u32>(1u, u_input.e.x, u_input.e.x))) * -983f)))), !all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), Struct_2(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 24468u) << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(30450u, 48749u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, 1u, 1u, 4294967295u)), countOneBits(vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x)), -297f <= global0.x) % vec4<u32>(32u)), !(_wgslsmith_f_op_f32(1267f * 358f) < _wgslsmith_f_op_f32(-global0.x))));
    var var_4 = _wgslsmith_clamp_u32(4294967295u, abs(firstTrailingBit(var_3.b.a)), _wgslsmith_sub_u32(4294967295u, 0u)) ^ _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(1u, firstLeadingBit(var_3.b.a) ^ ~u_input.e.x, ~1u));
    let var_5 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(global0.zx, ~(~select(~var_3.d.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 39684u), vec2<u32>(var_5.a.x, var_5.a.x)), vec2<bool>(true, true))));
}

