struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(75437u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<u32> {
    global0 = vec2<u32>(~67221u, u_input.a >> ((4294967295u << (firstTrailingBit(~39348u) % 32u)) % 32u));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(328f, 696f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1428f, -1123f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-513f)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * _wgslsmith_f_op_f32(1555f - var_0)))) > 690f;
    global0 = firstTrailingBit((~(~vec2<u32>(u_input.c, 35573u)) | abs(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(22579u, 61671u))) >> (vec2<u32>(1u, firstTrailingBit(u_input.a)) % vec2<u32>(32u)));
    global0 = ~select(firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(global0.x, u_input.c), 739u)), ~vec2<u32>(reverseBits(global0.x), ~1310u), vec2<bool>(any(vec3<bool>(var_1, false, var_1)), any(!vec4<bool>(var_1, false, var_1, false))));
    return ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a, 77536u, global0.x) >> (vec3<u32>(global0.x, 62593u, global0.x) % vec3<u32>(32u))), ~vec3<u32>(u_input.a, 1u, ~1u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec3_u32(min(firstLeadingBit(~arg_1.a.yyy), func_3()), ~vec3<u32>(~reverseBits(51015u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11365u), ~arg_1.d), func_3().x));
    global0 = firstTrailingBit(~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), ~arg_1.d.x, u_input.c), arg_1.a.x));
    let var_1 = Struct_1(!vec3<bool>(false, any(select(arg_1.b.a, vec3<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_2.a.x), arg_3)), select(true, false, -131f != arg_1.b.c.x)), -154f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f * arg_1.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + arg_1.b.c.x) - _wgslsmith_f_op_f32(ceil(arg_1.c))))));
    global0 = var_0.zz;
    let var_2 = arg_1;
    return arg_1.a.yw;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = firstTrailingBit(arg_2.d) | abs((func_2(Struct_3(arg_3.a, arg_2.b.a.x), Struct_2(vec4<u32>(arg_2.d.x, arg_2.d.x, arg_2.d.x, 94688u), arg_3, arg_0, arg_2.a.zx), Struct_3(vec3<bool>(false, arg_2.b.a.x, arg_1), arg_2.b.a.x), arg_2.b.a.x) << (_wgslsmith_mod_vec2_u32(arg_2.a.wz, vec2<u32>(0u, 1u)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(arg_2.a.xz, vec2<u32>(4294967295u, 4294967295u)));
    let var_0 = Struct_3(vec3<bool>(!(true || any(vec4<bool>(true, arg_1, false, arg_3.a.x))), true, all(!select(arg_3.a, arg_3.a, arg_3.a.x))), arg_3.a.x);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, u_input.b), vec4<i32>(1i, -2147483647i, -1892i, 2147483647i)) | -(vec4<i32>(u_input.b, 2147483647i, 7866i, -1i) >> (vec4<u32>(0u, global0.x, 4294967295u, arg_2.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, 1i, u_input.b & u_input.b, u_input.b & u_input.b), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -36123i, u_input.b), vec4<i32>(-111i, -47135i, -1617i, -2147483647i)), select(vec4<i32>(49976i, 1i, u_input.b, u_input.b), vec4<i32>(1i, 22059i, u_input.b, -2147483647i), vec4<bool>(true, var_0.b, arg_1, arg_2.b.a.x)), vec4<i32>(-34771i, 0i, u_input.b, -1i)), vec4<i32>(u_input.b, u_input.b | u_input.b, 2147483647i, 81091i))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(abs(-18511i), -2147483647i, 0i, _wgslsmith_clamp_i32(7956i, -31859i, u_input.b))), vec4<i32>(~0i, _wgslsmith_sub_i32(u_input.b, 927i), u_input.b, -u_input.b) & max(~vec4<i32>(-1i, 1i, 1i, u_input.b), -vec4<i32>(-1i, u_input.b, -30367i, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c + arg_3.c.x) + arg_3.b) * 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.c, _wgslsmith_f_op_f32(step(arg_0, arg_3.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f * arg_3.b)))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-442f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1739f * arg_2.c))), -413f))));
    global0 = min(_wgslsmith_mod_vec2_u32(func_3().xy, ~((vec2<u32>(global0.x, 1u) << (arg_2.a.zw % vec2<u32>(32u))) << (vec2<u32>(global0.x, 0u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(arg_2.d, ~vec2<u32>(u_input.a, arg_2.d.x)));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1398f, 508f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(161f)) - -1279f), 565f)), select(vec2<bool>(true, _wgslsmith_f_op_f32(select(323f, -355f, false)) != 719f), vec2<bool>(func_1(833f, 33858u == arg_1.x, Struct_2(vec4<u32>(17201u, u_input.c, global0.x, arg_1.x), Struct_1(vec3<bool>(true, arg_0, false), -1586f, vec2<f32>(-1581f, 204f)), 2131f, vec2<u32>(global0.x, global0.x)), Struct_1(vec3<bool>(false, arg_0, true), 1680f, vec2<f32>(112f, 108f))), any(vec4<bool>(true, true, arg_0, false))), true)));
    global0 = max(func_3().zy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a | ~global0.x, _wgslsmith_sub_u32(arg_1.x ^ u_input.a, u_input.c)), arg_1));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * 2174f);
    var var_2 = arg_1.x;
    global0 = arg_1;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1886f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) * _wgslsmith_f_op_f32(f32(-1f) * -619f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-445f)))))))));
    let var_1 = ~func_4(any(vec3<bool>(func_1(var_0, false, Struct_2(vec4<u32>(global0.x, global0.x, global0.x, u_input.a), Struct_1(vec3<bool>(true, false, true), var_0, vec2<f32>(-478f, 314f)), -122f, vec2<u32>(51075u, global0.x)), Struct_1(vec3<bool>(true, true, true), 904f, vec2<f32>(-1000f, var_0))), all(vec4<bool>(true, true, true, false)), true)), vec2<u32>(abs(60869u), 74511u));
    var var_2 = 77277u ^ _wgslsmith_mult_u32(var_1, 1u);
    let var_3 = Struct_3(select(!vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), u_input.b != _wgslsmith_sub_i32(_wgslsmith_add_i32(select(u_input.b, u_input.b, false), u_input.b), u_input.b));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(u_input.b, -62538i & u_input.b) << (global0.x % 32u), 33969i, u_input.b), 9968i, max(vec4<i32>(~u_input.b, ~u_input.b, 17342i << (0u % 32u), u_input.b), vec4<i32>(0i, u_input.b, select(-1i, -2147483647i, var_3.b), _wgslsmith_mod_i32(u_input.b, u_input.b))) & vec4<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b), u_input.b), var_0, 0u);
}

