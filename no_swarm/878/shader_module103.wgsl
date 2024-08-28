struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -550f;

var<private> global1: Struct_3 = Struct_3(Struct_2(false, vec2<f32>(-535f, 1000f), Struct_1(vec2<f32>(-1035f, -687f)), Struct_1(vec2<f32>(-627f, 580f))), vec2<u32>(63495u, 14962u), vec3<f32>(1314f, 1000f, -1223f), vec3<f32>(-877f, -702f, -1140f), 19345u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> bool {
    var var_0 = arg_1.b;
    var var_1 = vec3<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(global1.b, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.a), global1.b))), ~0u);
    var var_2 = min(abs(~(-(arg_1.a.zyz ^ vec3<i32>(2147483647i, 2147483647i, -2147483647i)))), vec3<i32>(select(u_input.c.x >> (_wgslsmith_mod_u32(63773u, global1.e) % 32u), -2147483647i, (u_input.b < 0u) & false), ~_wgslsmith_div_i32(u_input.c.x << (u_input.b % 32u), -1i), arg_2));
    var var_3 = max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(20284u, 31369u, global1.b.x, u_input.a) << (~(vec4<u32>(global1.e, 89293u, u_input.b, 4294967295u) << (vec4<u32>(94125u, 1u, 58091u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_1.x, 4294967295u, 84417u, global1.e), vec4<u32>(u_input.a, 0u, 36593u, 69114u), arg_1.c.x), vec4<u32>(var_1.x, 1u, global1.e, 4294967295u) | vec4<u32>(3856u, 59338u, 4294967295u, 37397u)), vec4<u32>(~u_input.b, 4294967295u, abs(~var_1.x), u_input.b)), vec4<u32>(45288u & (countOneBits(u_input.a) << (~0u % 32u)), ~var_1.x, var_1.x, u_input.a));
    return global1.a.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> f32 {
    global1 = Struct_3(Struct_2(any(select(!vec3<bool>(true, global1.a.a, false), !vec3<bool>(global1.a.a, global1.a.a, global1.a.a), vec3<bool>(true, global1.a.a, true))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.b.x + global1.a.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.c.a.x)) + _wgslsmith_f_op_f32(round(-1248f)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.d.x, global1.a.b.x), vec2<f32>(global1.d.x, global1.d.x)))), global1.a.c), vec2<u32>(~_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 41595u, global1.e), vec3<u32>(global1.b.x, 15947u, u_input.b))), min(arg_1, _wgslsmith_sub_u32(1u, u_input.b >> (0u % 32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c.x, global1.c.x)) - 591f), _wgslsmith_f_op_f32(-752f - _wgslsmith_f_op_f32(f32(-1f) * -940f)), -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(578f, global1.a.d.a.x, -272f))))) + vec3<f32>(global1.a.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f - global1.c.x) + _wgslsmith_f_op_f32(sign(global1.a.c.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.c.a.x * global1.a.d.a.x))))), _wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(~arg_1 | ~global1.b.x, ~(~global1.b.x))));
    let var_0 = Struct_4(~arg_0, Struct_2(true, _wgslsmith_f_op_vec2_f32(global1.d.zz + vec2<f32>(global1.c.x, 724f)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, 1133f) + vec2<f32>(1025f, -591f)) + vec2<f32>(global1.c.x, global1.c.x))), global1.a.c), select(!select(vec2<bool>(false, global1.a.a), select(vec2<bool>(false, true), vec2<bool>(true, global1.a.a), global1.a.a), global1.a.a), !select(vec2<bool>(true, global1.a.a), vec2<bool>(false, true), select(vec2<bool>(global1.a.a, global1.a.a), vec2<bool>(global1.a.a, global1.a.a), true)), select(!select(vec2<bool>(global1.a.a, global1.a.a), vec2<bool>(true, global1.a.a), vec2<bool>(true, global1.a.a)), select(vec2<bool>(global1.a.a, false), select(vec2<bool>(global1.a.a, true), vec2<bool>(global1.a.a, global1.a.a), false), any(vec2<bool>(global1.a.a, global1.a.a))), !select(vec2<bool>(global1.a.a, false), vec2<bool>(true, false), vec2<bool>(global1.a.a, true)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b), vec2<f32>(-1845f, -393f)), global1.c.zy)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -673f)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -672f);
    global1 = Struct_3(var_0.b, vec2<u32>(_wgslsmith_dot_vec2_u32(global1.b, _wgslsmith_sub_vec2_u32(global1.b, vec2<u32>(global1.b.x, global1.b.x) << (global1.b % vec2<u32>(32u)))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u >> (0u % 32u), ~0u), 44945u, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.d.a.x, var_0.b.d.a.x, var_0.d.a.x), vec3<f32>(global1.c.x, -2287f, var_0.d.a.x))) * _wgslsmith_div_vec3_f32(global1.d, vec3<f32>(global1.a.b.x, -286f, -294f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1605f)) - _wgslsmith_f_op_f32(step(-1174f, global1.a.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) * _wgslsmith_f_op_f32(ceil(global1.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(-382f - global1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)) + _wgslsmith_f_op_f32(abs(-175f))), var_0.d.a.x), countOneBits(~abs(firstLeadingBit(u_input.a))));
    return _wgslsmith_f_op_f32(abs(global1.a.d.a.x));
}

fn func_2() -> bool {
    var var_0 = Struct_2(false, _wgslsmith_f_op_vec2_f32(global1.c.yz - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.b.x)) - global1.a.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f), global1.d.x))), Struct_1(vec2<f32>(249f, -516f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f * -492f) - _wgslsmith_f_op_f32(abs(795f))), _wgslsmith_f_op_f32(-843f + global1.d.x))));
    var var_1 = Struct_4(~reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(-4082i, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(-1i, 54828i, 1i, 7265i))), global1.a, select(select(select(vec2<bool>(true, var_0.a), select(vec2<bool>(var_0.a, global1.a.a), vec2<bool>(global1.a.a, false), vec2<bool>(var_0.a, global1.a.a)), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.a, var_0.a), _wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, u_input.c.x, -59409i, u_input.c.x), 4294967295u, u_input.c.x)) > -954f), select(vec2<bool>(var_0.a && false, true), vec2<bool>(true, true), true || global1.a.a), !vec2<bool>(var_0.a, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d.a.x - global1.a.d.a.x) + _wgslsmith_f_op_f32(var_0.d.a.x + 823f)), _wgslsmith_f_op_f32(445f + var_0.b.x))));
    var var_2 = _wgslsmith_f_op_f32(max(var_0.c.a.x, global1.d.x));
    var var_3 = -1166f;
    var var_4 = !select(select(vec2<bool>(u_input.c.x >= var_1.a.x, false), var_1.c, !(!var_1.c)), !select(!var_1.c, select(var_1.c, var_1.c, false), vec2<bool>(true, true)), !(!any(vec3<bool>(var_0.a, false, var_0.a))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(global1.a.a, all(vec3<bool>(global1.a.a, true, global1.a.a)), global1.a.a | true, true), !select(vec4<bool>(global1.a.a, global1.a.a, true, true), vec4<bool>(false, true, true, global1.a.a), true), !func_1(true, Struct_4(vec4<i32>(-1262i, u_input.c.x, -1i, 1i), Struct_2(false, global1.d.zy, global1.a.c, global1.a.d), vec2<bool>(false, true), Struct_1(global1.c.yy)), 2147483647i)), vec4<bool>(false, true, func_1(!func_2(), Struct_4(countOneBits(vec4<i32>(u_input.c.x, -18362i, u_input.c.x, -2147483647i)), Struct_2(false, vec2<f32>(2047f, -894f), Struct_1(vec2<f32>(266f, 1049f)), global1.a.c), !vec2<bool>(false, global1.a.a), Struct_1(vec2<f32>(global1.c.x, -651f))), u_input.c.x), !(true | func_1(global1.a.a, Struct_4(vec4<i32>(-1i, u_input.c.x, -1i, u_input.c.x), Struct_2(global1.a.a, vec2<f32>(global1.c.x, -309f), global1.a.d, Struct_1(global1.a.b)), vec2<bool>(global1.a.a, false), Struct_1(vec2<f32>(global1.a.c.a.x, -386f))), -5029i))), true);
    var var_1 = Struct_4(countOneBits(~(~vec4<i32>(1i, 2147483647i, -2147483647i, 0i)) | (vec4<i32>(-35284i, u_input.c.x, 1i, u_input.c.x) & reverseBits(vec4<i32>(9269i, u_input.c.x, -1i, u_input.c.x)))), global1.a, !var_0.ww, global1.a.d);
    var var_2 = Struct_3(Struct_2(!((var_0.x & true) && var_0.x), var_1.d.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-229f, var_1.d.a.x))) + global1.a.b)), var_1.b.d), ~global1.b, global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -898f) * global1.d) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-334f, 1410f, -1189f), vec3<f32>(var_1.b.d.a.x, 834f, -1103f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1677f, 479f, global1.a.c.a.x) + vec3<f32>(global1.a.c.a.x, var_1.b.b.x, global1.a.d.a.x)))) * vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1152f - var_1.d.a.x)), global1.d.x)), 46763u);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_1.d.a.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 581f)))) - vec2<f32>(_wgslsmith_f_op_f32(global1.a.c.a.x * global1.a.b.x), var_1.b.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.x) * _wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.a.x) - -2538f)));
    var var_4 = Struct_4(vec4<i32>(-u_input.c.x, ~(~_wgslsmith_div_i32(-33366i, 2147483647i)), u_input.c.x, min(-_wgslsmith_dot_vec3_i32(var_1.a.www, var_1.a.wyy), u_input.c.x)), Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.a.c.a)))), global1.a.d, Struct_1(var_1.d.a)), vec2<bool>(!(!func_1(var_2.a.a, Struct_4(vec4<i32>(var_1.a.x, -1i, var_1.a.x, 0i), var_1.b, vec2<bool>(global1.a.a, true), Struct_1(var_3)), 0i)), !func_1(all(var_0.zyz), Struct_4(var_1.a, Struct_2(var_2.a.a, var_1.b.b, Struct_1(vec2<f32>(global1.a.b.x, -1276f)), var_1.b.c), var_0.zx, Struct_1(var_2.a.b)), u_input.c.x)), var_1.d);
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.a.d.a.x, -608f)), var_1.d.a.x)) * -593f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.d.yy))), u_input.c, ~global1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(258f, -1049f), vec2<f32>(var_2.c.x, 143f)))) - var_4.d.a), _wgslsmith_f_op_vec2_f32(-var_3)), _wgslsmith_f_op_vec2_f32(-var_3));
}

