struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, -1412f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 1125f)) + vec2<f32>(118f, -314f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1571f, -857f) - vec2<f32>(-1405f, -429f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(608f, 1615f) + vec2<f32>(265f, -460f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, -1000f))))), vec2<bool>(arg_0.x, true))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-435f, 179f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, -144f) * vec2<f32>(-739f, 1000f)))), vec2<f32>(-1310f, _wgslsmith_f_op_f32(round(669f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1528f, 439f, true)), _wgslsmith_f_op_f32(max(-2963f, 652f)))), select(arg_0.yx, arg_0.yz, arg_0.wx))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(~u_input.b, reverseBits(reverseBits(u_input.b)))), var_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(14411u, 57136u, 70142u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 22518u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 9367u, 433u))), ~27636u), all(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, true))));
    let var_2 = select(select(vec3<bool>(false, any(select(vec4<bool>(arg_0.x, true, var_1.d, arg_0.x), arg_0, false)), 1f == var_1.b), select(vec3<bool>(any(arg_0.xwx), arg_0.x, var_1.d), !select(arg_0.zyx, vec3<bool>(true, false, true), true), false), -abs(u_input.a.x) > u_input.a.x), select(arg_0.xwx, arg_0.wzy, arg_0.yxx), arg_0.x);
    global0 = _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-2046f, 1216f), _wgslsmith_f_op_f32(var_0.x + var_1.b)))) == var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1000f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, var_1.b) - vec2<f32>(1124f, -919f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, var_0.x) + vec2<f32>(var_1.b, -1092f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(311f, 1102f)))));
    return firstLeadingBit(0u);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_1(1u & arg_0);
    var var_1 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(32158u, u_input.b, var_0.a), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(2545u, 85404u, var_0.a))), func_3(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), true)), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, 15076u, var_0.a), arg_0 & u_input.b)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, ~39000u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, var_0.a, 0u) << (vec3<u32>(2073u, arg_0, 25225u) % vec3<u32>(32u)), vec3<u32>(u_input.b, arg_0, u_input.b))), vec3<u32>(4648u, _wgslsmith_mult_u32(20664u, u_input.b) << (~0u % 32u), ~u_input.b << (10034u % 32u)), vec3<bool>(false || (u_input.a.x == -2147483647i), func_3(vec4<bool>(false, true, true, true)) < u_input.b, true)), vec3<bool>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(281f + 1000f)) >= _wgslsmith_f_op_f32(max(-605f, _wgslsmith_f_op_f32(step(-785f, -682f)))), !(!all(vec3<bool>(true, false, false))), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1760f - 675f))));
    var_1 = vec3<u32>(var_1.x | var_0.a, _wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(countOneBits(countOneBits(1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(20460u, arg_0, var_0.a)), abs(vec3<u32>(39174u, var_0.a, 1u))))), arg_0);
    global0 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) - _wgslsmith_f_op_f32(var_2 * 684f)), _wgslsmith_f_op_f32(-1000f - -1323f), -423f, var_2) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, var_2, var_2), vec4<f32>(var_2, var_2, var_2, 3049f))) - vec4<f32>(-2197f, _wgslsmith_f_op_f32(select(825f, var_2, false)), _wgslsmith_f_op_f32(-2159f + var_2), _wgslsmith_f_op_f32(-var_2)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(-447f));
    return Struct_2(Struct_1(_wgslsmith_mult_u32(~(23849u & u_input.b), 16807u)), var_0, func_3(select(vec4<bool>(u_input.a.x != 29768i, all(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), true), vec4<bool>(u_input.a.x <= -35484i, all(vec3<bool>(false, false, true)), select(true, true, true), all(vec4<bool>(false, true, true, true))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), 258f < arg_0.x))), true);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, arg_0.a) >> (min(vec3<u32>(arg_0.a, u_input.b, u_input.b), vec3<u32>(42403u, 4294967295u, 10772u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.a, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~min(~vec3<u32>(0u, arg_0.a, 4294967295u), vec3<u32>(9839u, arg_0.a, 4294967295u)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(524f, -344f, -1000f, -143f) - vec4<f32>(-307f, 602f, -199f, -1130f)), _wgslsmith_f_op_vec4_f32(func_2(var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(640f, 1408f, -1082f, 353f), vec4<f32>(1034f, -490f, -1038f, -1000f), false))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, -3096f, 976f) - vec3<f32>(-1731f, -535f, -1837f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-282f, -591f, -1545f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2607f, -896f, 411f)))))));
    var_1 = Struct_2(arg_0, -1112f, 4294967295u, !var_1.d);
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1229f, var_1.b, var_1.b, var_1.b), vec4<f32>(-296f, -169f, -634f, var_1.b))), vec4<f32>(424f, -1013f, 1866f, var_1.b))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f - var_1.b) + _wgslsmith_f_op_f32(-892f * var_1.b)) + -115f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.b, -636f)))), -730f)).a;
    var var_3 = var_1.a;
    return u_input.b >= abs(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b, var_0.x), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(_wgslsmith_mod_u32(u_input.b, u_input.b)));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(652f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-733f - 410f), -1000f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f * 1000f)), -764f));
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -u_input.a.x, 2147483647i, select(-898i, 2147483647i, false)), vec4<i32>(u_input.a.x >> (99069u % 32u), -13661i, u_input.a.x, -u_input.a.x)), firstTrailingBit(_wgslsmith_mod_i32(-23926i, -u_input.a.x)), u_input.a.x);
    global0 = true;
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1078f, var_0.x, 692f, 426f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, var_0.x, var_0.x, 1613f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 482f) * vec3<f32>(661f, 1000f, var_0.x)) + vec3<f32>(var_0.x, var_0.x, -510f)))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2837f), _wgslsmith_div_f32(-1560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))), func_3(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, func_1(Struct_1(0u)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)))), false);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.a.a, var_2.c, 5073u, 47915u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(var_2.a.a, var_2.c, 18249u, 5742u), vec4<u32>(var_2.a.a, u_input.b, var_2.c, var_2.c), var_2.d), vec4<u32>(var_2.c, var_2.a.a, var_2.c, var_2.c))), var_2.c) > var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(47551u, var_2.a.a, 22969u, 1u), vec4<u32>(1u, u_input.b, 1u, 36609u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.a.a, var_2.a.a, var_2.a.a), vec4<u32>(u_input.b, u_input.b, u_input.b, 44395u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 1u, var_2.a.a, 659u), vec4<u32>(4294967295u, 4294967295u, 8817u, 0u)), vec4<bool>(!var_2.d, var_2.d, func_1(Struct_1(var_2.a.a)), true)), _wgslsmith_f_op_f32(-251f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1455f + var_0.x))))));
}

