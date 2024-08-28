struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1233f, 689f) - vec2<f32>(-1460f, 1000f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 677f)))))), !all(vec3<bool>(true, true, true)) | true));
    var var_1 = Struct_1(select(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), all(vec3<bool>(true, 0u < u_input.e, any(vec3<bool>(true, true, true)))), true));
    var_1 = Struct_1(u_input.a < u_input.e);
    var_1 = Struct_1(true);
    var_1 = Struct_1(!any(vec2<bool>(var_1.a, u_input.a < u_input.b)));
    return -2060f;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(step(-535f, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) - _wgslsmith_f_op_f32(-arg_1)), arg_1)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -564f, arg_1), vec3<f32>(_wgslsmith_f_op_f32(floor(-832f)), _wgslsmith_f_op_f32(sign(arg_1)), arg_1)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, arg_1)))))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -616f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2139f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(438f)), arg_1, _wgslsmith_f_op_f32(ceil(-917f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -300f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2002f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1319f, arg_1, var_1.x))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, var_1.x, -534f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1684f, arg_1, var_1.x), vec3<f32>(var_1.x, 758f, arg_1)))))));
    return Struct_1(!(abs(-2513i) == firstTrailingBit(abs(51445i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_1.a, u_input.e, ~max(u_input.e, ~5612u)), vec4<u32>(~1u, min(~(~8265u), 13746u), _wgslsmith_clamp_u32(9308u, arg_1.a, u_input.b), ~((10203u | u_input.b) >> (min(arg_1.a, 61801u) % 32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec4<f32> {
    let var_0 = reverseBits(func_4(Struct_1(true), Struct_2(countOneBits(0u) & u_input.b, u_input.c.xz, func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-1248f * arg_0.x), Struct_2(0u, vec2<i32>(u_input.d, u_input.d), Struct_1(true), Struct_1(false)), ~u_input.a), Struct_1(true)), func_2(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * _wgslsmith_f_op_f32(-1000f * arg_0.x)), Struct_2(~u_input.b, vec2<i32>(arg_1, u_input.d), func_2(vec3<bool>(false, true, true), arg_0.x, Struct_2(u_input.b, vec2<i32>(0i, -14241i), Struct_1(true), Struct_1(true)), 56298u), Struct_1(false)), 0u), -u_input.c.x >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.e, u_input.a, 72559u)), vec4<u32>(u_input.e, u_input.b, 69611u, 65793u) << (vec4<u32>(u_input.a, u_input.e, 24738u, u_input.e) % vec4<u32>(32u))) % 32u)));
    var var_1 = Struct_2(max(~var_0.x, var_0.x) ^ countOneBits(~(~var_0.x)), -(~u_input.c.yx), func_2(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true && any(vec2<bool>(false, true))), 587f, Struct_2(0u, vec2<i32>(abs(u_input.c.x), _wgslsmith_clamp_i32(54338i, arg_1, arg_1)), func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), _wgslsmith_f_op_f32(abs(-1249f)), Struct_2(u_input.b, vec2<i32>(arg_1, arg_1), Struct_1(false), Struct_1(true)), u_input.b), func_2(vec3<bool>(true, true, true), 1f, Struct_2(1u, vec2<i32>(u_input.c.x, 29491i), Struct_1(true), Struct_1(true)), var_0.x)), 34936u), Struct_1(any(vec4<bool>(true, false, false, false))));
    let var_2 = var_1.c;
    let var_3 = Struct_2(15327u, u_input.c.xx, func_2(!vec3<bool>(false, false && var_2.a, all(vec4<bool>(false, var_1.d.a, var_1.c.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1273f - _wgslsmith_f_op_f32(trunc(1520f))) * _wgslsmith_f_op_f32(abs(-2774f))), Struct_2(~(u_input.b >> (var_0.x % 32u)), reverseBits(vec2<i32>(u_input.c.x, 0i)) << (max(vec2<u32>(55113u, u_input.a), vec2<u32>(u_input.a, u_input.e)) % vec2<u32>(32u)), var_1.c, Struct_1(!var_2.a)), 0u), Struct_1(!all(vec2<bool>(true, true))));
    var_1 = var_3;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(abs(1f)), 236f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 519f), func_2(vec3<bool>(true, var_1.d.a, var_1.c.a), 1423f, Struct_2(4294967295u, var_1.b, var_3.d, Struct_1(var_2.a)), var_3.a).a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1406f, arg_0.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.e, 7419u)), vec2<u32>(u_input.a, u_input.e) & vec2<u32>(arg_2.a, arg_2.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.a, 4294967295u)))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_2.a, 4294967295u), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.a, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a, 1u), vec2<u32>(arg_2.a, 0u)))), ~(~(vec2<u32>(47740u, u_input.a) | vec2<u32>(u_input.a, 46055u)))), ~vec2<u32>(~1u | (47150u | u_input.a), max(1u, min(4294967295u, 21769u))));
    var_0 = ~_wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, var_0.x), vec2<u32>(u_input.b, 26328u))), vec2<u32>(~1u, ~(~u_input.e)));
    let var_1 = Struct_2(u_input.e, vec2<i32>(-1i, (-2147483647i | ~arg_2.b.x) >> (78566u % 32u)), arg_0, func_2(vec3<bool>(!arg_2.d.a, arg_2.d.a, arg_2.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(700f + arg_1.x))) - 352f), arg_2, 68391u));
    let var_2 = !any(!vec3<bool>(!arg_2.c.a, arg_0.a, any(vec3<bool>(true, arg_0.a, false))));
    var_0 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(47500u), _wgslsmith_div_u32(var_1.a, 4294967295u)), ~vec2<u32>(1u, u_input.b) << (~vec2<u32>(73103u, var_1.a) % vec2<u32>(32u))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-467f, 189f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-767f, 1345f), vec2<f32>(523f, 898f)))), u_input.c.x))), Struct_2(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(3963u, 0u)), vec2<u32>(~u_input.a, u_input.b ^ 4294967295u)), ~u_input.c.yy, func_2(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f - 344f) + _wgslsmith_f_op_f32(f32(-1f) * -157f)), Struct_2(15576u, -u_input.c.yy, func_2(vec3<bool>(false, true, true), 278f, Struct_2(17479u, u_input.c.zz, Struct_1(false), Struct_1(false)), u_input.e), Struct_1(true)), 0u), Struct_1(1u < u_input.b)));
    var var_1 = var_0.a;
    var var_2 = countOneBits(reverseBits(~vec4<i32>(abs(u_input.d), 24845i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18751i, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(30368i, -1i, u_input.c.x, 1i)), var_0.b.x ^ 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(20483i, ~var_2.x), -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, var_2.x), min(-vec2<i32>(57364i, -1i), var_0.b)), select(-vec3<i32>(0i, ~var_2.x, ~var_0.b.x), u_input.c, vec3<bool>(var_0.d.a, all(select(vec4<bool>(var_0.d.a, var_0.c.a, true, var_0.c.a), vec4<bool>(false, var_0.d.a, false, var_0.d.a), vec4<bool>(var_0.c.a, true, false, var_0.d.a))), _wgslsmith_sub_u32(u_input.a, var_0.a) == ~4294967295u)), 1u >> (1u % 32u));
}

