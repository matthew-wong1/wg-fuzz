struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~30062u, arg_2) & _wgslsmith_clamp_u32(arg_0.e.c, arg_2, ~arg_2), arg_2 | _wgslsmith_dot_vec2_u32(arg_0.d.zz, ~vec2<u32>(18887u, 1u)));
    let var_1 = firstLeadingBit(87405i);
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(1u, ~arg_2), ~_wgslsmith_clamp_u32(arg_2, arg_2, 4294967295u)) | vec3<u32>(reverseBits(1u), select(~735u, _wgslsmith_sub_u32(arg_2, 4294967295u), !arg_0.b), arg_0.d.x), arg_0.e.b, ~_wgslsmith_mult_u32(1u, 4294967295u), false, any(arg_1.yy));
    let var_3 = arg_0.c;
    let var_4 = arg_1;
    return arg_0.c;
}

fn func_2() -> vec3<u32> {
    var var_0 = abs(vec3<u32>(56586u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-845f, -521f, 1000f), vec3<f32>(158f, 1289f, -863f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(355f, -1230f, var_1.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_f_op_f32(-1068f - var_1.x)), 446f, _wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a, vec3<i32>(1i, 2147483647i, -12366i), 82281u, false, true), false, -561f, u_input.a, Struct_1(u_input.a, vec3<i32>(9010i, -51415i, -1i), 0u, true, true)), vec3<bool>(true, false, false), var_0.x)) * _wgslsmith_f_op_f32(step(-618f, var_1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1065f, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), -224f, -1127f)))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)));
    return ~(~(~vec3<u32>(u_input.a.x, var_0.x, 4294967295u)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(max(~(~u_input.a), select(abs(arg_0.a.a) | (vec3<u32>(arg_0.d.x, u_input.a.x, u_input.a.x) << (vec3<u32>(arg_0.d.x, arg_0.e.c, 1u) % vec3<u32>(32u))), func_2(), true)), ~(~reverseBits(arg_0.a.b)), _wgslsmith_mod_u32(40968u | _wgslsmith_div_u32(arg_0.d.x, 32160u), 4294967295u), true, any(!vec3<bool>(true, arg_0.e.e, true)));
    let var_1 = select(select(!(!vec3<bool>(false, true, arg_0.e.d)), vec3<bool>(any(!vec3<bool>(var_0.e, false, false)), true, arg_0.b), select(var_0.e, true, !arg_0.a.e & !arg_0.e.d)), !vec3<bool>(_wgslsmith_f_op_f32(-arg_0.c) == -733f, _wgslsmith_f_op_f32(arg_0.c - arg_0.c) == _wgslsmith_f_op_f32(2174f + -1944f), true), select(!vec3<bool>(false, arg_0.e.d, !arg_0.e.d), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.d, false), vec3<bool>(var_0.d, false, true)), !(!vec3<bool>(false, arg_0.a.e, var_0.d)), select(vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(true, false, arg_0.a.e), true)), vec3<bool>(true, true, arg_0.e.d)));
    let var_2 = !var_1.yy;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1015f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -275f, 699f))))))), vec3<f32>(arg_0.c, arg_0.c, -1685f), !select(true, false, false)));
    let var_4 = true;
    return Struct_1(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(4294967295u, 0u, var_0.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), !vec3<bool>(var_4, false, false)), vec3<u32>(~(~36556u), select(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(20880u, 9261u, 49739u, u_input.a.x), vec4<u32>(0u, 4294967295u, 0u, arg_0.d.x)), false || var_1.x), 19533u)), arg_0.e.b, u_input.a.x, var_4, true);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(vec3<u32>(arg_0.c, u_input.a.x, arg_0.c)) >> (~(~vec3<u32>(arg_0.c, arg_0.a.x, arg_0.c)) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(0i, arg_0.b.x), arg_0.b.x, ~(-13283i))), u_input.a.x, arg_0.d, func_1(Struct_2(arg_0, arg_0.d, _wgslsmith_f_op_f32(max(-580f, arg_1)), vec3<u32>(4294967295u, 46371u, 39265u) >> (u_input.a % vec3<u32>(32u)), Struct_1(vec3<u32>(u_input.a.x, arg_2.x, arg_0.a.x), vec3<i32>(arg_0.b.x, arg_0.b.x, 2147483647i), arg_0.c, arg_0.d, arg_0.e))).e), arg_0.e, _wgslsmith_f_op_f32(ceil(arg_1)), u_input.a, Struct_1(max(vec3<u32>(arg_0.c, arg_2.x, u_input.a.x ^ 1u), _wgslsmith_clamp_vec3_u32(u_input.a, ~arg_0.a, ~u_input.a)), _wgslsmith_div_vec3_i32(countOneBits(reverseBits(arg_0.b)), arg_0.b), arg_2.x, -968f == arg_1, !arg_0.e));
    let var_1 = func_1(Struct_2(var_0.e, any(vec2<bool>(true, false)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(224f * arg_1) - _wgslsmith_f_op_f32(abs(var_0.c)))), _wgslsmith_div_vec3_u32(~(arg_0.a ^ arg_0.a), max(var_0.e.a, ~var_0.e.a)), var_0.e));
    var_0 = Struct_2(func_1(Struct_2(func_1(Struct_2(var_1, var_1.d, -559f, var_0.a.a, var_1)), !(15499u <= arg_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1873f))), (var_0.a.a >> (arg_0.a % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(var_1.a, u_input.a) % vec3<u32>(32u)), Struct_1(reverseBits(vec3<u32>(32408u, 0u, 0u)), vec3<i32>(229i, -2147483647i, arg_0.b.x), u_input.a.x, all(vec4<bool>(var_0.a.d, true, arg_0.d, false)), !var_1.d))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1678f * _wgslsmith_div_f32(var_0.c, 393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c)))))), ~vec3<u32>(abs(~4294967295u), _wgslsmith_mult_u32(5278u >> (u_input.a.x % 32u), abs(arg_0.c)), ~_wgslsmith_mult_u32(38760u, 23217u)), Struct_1(arg_0.a, abs(countOneBits(select(arg_0.b, vec3<i32>(0i, var_0.a.b.x, var_0.a.b.x), false))), u_input.a.x, var_0.a.d, true));
    var var_2 = Struct_2(Struct_1(abs(vec3<u32>(_wgslsmith_mult_u32(arg_2.x, var_1.c), var_1.c, arg_2.x >> (4632u % 32u))), vec3<i32>(abs(26093i), var_0.e.b.x, _wgslsmith_add_i32(var_0.e.b.x, var_0.a.b.x) & _wgslsmith_add_i32(var_0.a.b.x, var_1.b.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), arg_0.c), var_1.e, var_1.d), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(491f * var_0.c))), vec3<u32>(~1u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 1u), vec2<u32>(4294967295u, 61855u)) << (arg_0.a.x % 32u)) % 32u), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(35190u, 4294967295u, arg_0.c, 142229u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(72772u, 0u, 1u, 65861u), vec4<u32>(var_1.c, 28157u, var_1.c, var_1.c))), var_0.d.x), var_1);
    var var_3 = Struct_2(var_0.e, !var_2.b, 325f, ~(~(vec3<u32>(var_2.e.c, u_input.a.x, var_1.c) ^ vec3<u32>(6088u, 840u, arg_0.a.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 38668u, u_input.a.x), reverseBits(vec3<u32>(var_1.a.x, 13171u, 4294967295u)))), var_0.e);
    return vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, _wgslsmith_mod_u32(~arg_2.x, 51490u), _wgslsmith_mult_u32(~var_3.d.x, _wgslsmith_add_u32(var_2.d.x, u_input.a.x)), _wgslsmith_div_u32(~u_input.a.x, ~1u)), countOneBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(27901u, 29323u, arg_2.x, var_0.e.c)), vec4<u32>(4294967295u, arg_2.x, var_2.a.c, 24689u), _wgslsmith_div_vec4_u32(vec4<u32>(39602u, 55005u, var_0.e.c, var_2.d.x), vec4<u32>(arg_0.c, 0u, 4294967295u, 0u))))), ~(~(~4294967295u)), ~var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec4_i32(firstTrailingBit(~vec4<i32>(-2147483647i, -2147483647i, -37019i, 50397i)), countOneBits(vec4<i32>(-25722i, -1i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-38623i, 2147483647i), vec2<i32>(-1i, 32445i)))));
    var_0 = vec4<i32>(-var_0.x, _wgslsmith_sub_i32(var_0.x, _wgslsmith_div_i32(1i, min(var_0.x, var_0.x))), 1i, var_0.x);
    let var_1 = u_input.a;
    var_0 = ~abs(vec4<i32>(var_0.x, var_0.x, ~(-1i), -13393i));
    var_0 = (vec4<i32>(-1i) * -max(~vec4<i32>(-8963i, 2147483647i, var_0.x, 0i), select(vec4<i32>(-38212i, 32168i, -2147483647i, var_0.x), vec4<i32>(2147483647i, var_0.x, 22221i, 3454i), false))) >> (func_4(func_1(Struct_2(Struct_1(vec3<u32>(1u, u_input.a.x, var_1.x), var_0.zww, var_1.x, true, false), true, _wgslsmith_f_op_f32(293f - 764f), ~u_input.a, Struct_1(vec3<u32>(0u, var_1.x, 74684u), vec3<i32>(var_0.x, var_0.x, var_0.x), var_1.x, false, false))), _wgslsmith_f_op_f32(690f - 1580f), u_input.a.zz) % vec4<u32>(32u));
    var var_2 = -172f;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-776f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(f32(-1f) * -1473f), true)))))));
    var var_3 = Struct_2(Struct_1(~vec3<u32>(~var_1.x, 59498u, _wgslsmith_sub_u32(u_input.a.x, 30575u)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x), var_0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -2147483647i, -1i)), vec4<i32>(-5332i, 18382i, 0i, var_0.x))), min(_wgslsmith_mod_u32(~1u, reverseBits(var_1.x)), ~_wgslsmith_div_u32(var_1.x, 1u)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), func_1(Struct_2(Struct_1(vec3<u32>(102570u, 0u, var_1.x), vec3<i32>(-23349i, var_0.x, 1i), ~var_1.x, false, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -175f), func_1(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, var_1.x), var_0.zyy, u_input.a.x, true, false), true, 297f, vec3<u32>(26988u, 81912u, u_input.a.x), Struct_1(var_1, vec3<i32>(var_0.x, 11129i, 38041i), u_input.a.x, true, true))).a, Struct_1(vec3<u32>(0u, u_input.a.x, var_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.xyz), 38441u ^ u_input.a.x, true, true))).e, _wgslsmith_f_op_f32(min(494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f + -899f)))), vec3<u32>(_wgslsmith_sub_u32(var_1.x, ~u_input.a.x) ^ select(4294967295u, abs(4294967295u), true), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.x, 61538u), abs(u_input.a.x)), ~var_1.x), ~u_input.a.x), Struct_1(_wgslsmith_mod_vec3_u32(u_input.a, var_1), vec3<i32>(var_0.x, max(firstLeadingBit(-1i), var_0.x), (var_0.x | -16654i) ^ 32261i), _wgslsmith_add_u32(~u_input.a.x & min(var_1.x, 43743u), u_input.a.x), true, any(vec2<bool>(true, true)) && true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(u_input.a.x ^ 31057u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(1580u, 31327u), 28413u, 28243u), ~29698u), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(select(var_3.c, -1000f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) * -574f))), 1u, ~_wgslsmith_mod_i32(-45811i, ~_wgslsmith_clamp_i32(-64335i, 2147483647i, -9422i)), var_3.c);
}

