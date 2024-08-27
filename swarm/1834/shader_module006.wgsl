struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = true;
    let var_1 = -arg_3;
    var var_2 = arg_0.a;
    let var_3 = vec3<i32>(0i, var_1, abs(var_1));
    var_2 = arg_0.a;
    return 625f;
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(i32(-1i) * -51287i, !(all(vec2<bool>(false, false)) || any(vec2<bool>(false, false))) != (_wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(ceil(1504f))) < -394f), -min(vec2<i32>(_wgslsmith_mult_i32(-9530i, -38989i), 1i), _wgslsmith_clamp_vec2_i32(~vec2<i32>(40359i, 25875i), ~vec2<i32>(38885i, 2147483647i), vec2<i32>(1i, 1i))));
    var var_1 = Struct_2(-44058i, u_input.a.x != u_input.a.x, var_0.c);
    let var_2 = abs(_wgslsmith_div_vec3_u32(u_input.a, reverseBits(~(~u_input.a))));
    var var_3 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1337f, -1346f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f + -1986f) * _wgslsmith_div_f32(1000f, -1000f)), 576f)), 9690i, Struct_2(-(~var_0.a | 1i), true, vec2<i32>(max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, var_1.c.x, var_0.c.x), vec3<i32>(var_1.c.x, 0i, -1i))), 2147483647i)));
    var var_4 = _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.a, var_3.b) | ~_wgslsmith_add_i32(1i, _wgslsmith_div_i32(var_0.c.x, 2147483647i)), _wgslsmith_sub_i32(var_3.c.a, var_0.c.x));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_3.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.a.x)), 143f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> bool {
    let var_0 = select(!select(arg_0.zyz, !arg_0.xwy, !arg_2.c.b), vec3<bool>(!arg_2.c.b, true, true), arg_1);
    let var_1 = arg_2.c;
    var var_2 = select(!vec3<bool>(all(!vec3<bool>(arg_2.c.b, true, arg_0.x)), false, var_0.x & true), select(select(!arg_0.yyy, vec3<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), var_0.x, any(vec4<bool>(true, arg_0.x, var_0.x, var_0.x))), true), vec3<bool>(false, var_0.x, select(true, false, true)), !vec3<bool>(false, true, arg_1)), false);
    var_2 = !select(!select(vec3<bool>(false, arg_1, var_0.x), select(arg_0.ywy, vec3<bool>(arg_2.c.b, true, var_2.x), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(var_1.b, false, var_1.b), true)), select(select(vec3<bool>(false, arg_1, true), arg_0.zzy, all(var_0.xx)), !(!vec3<bool>(var_1.b, true, var_1.b)), !select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, false, var_2.x), var_1.b)), arg_2.b <= -9404i);
    let var_3 = ~firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.c.c.x, 0i), var_1.c)));
    return arg_2.c.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = arg_1.x;
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, 147f) - vec2<f32>(632f, -1521f)))))), 4226i, Struct_2(arg_0.a.a.x, func_4(!vec4<bool>(var_0, true, arg_1.x, arg_1.x), var_0, Struct_4(vec2<f32>(278f, 136f), -2812i, Struct_2(-1i, true, vec2<i32>(2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(func_3())), arg_0.a.a.wx));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.b, _wgslsmith_add_i32(0i, -2147483647i)), ~(-42355i), 2147483647i >> (u_input.a.x % 32u)), -vec3<i32>(arg_0.a.a.x, 0i, -2147483647i) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), u_input.a), 11601u) % vec3<u32>(32u)), arg_0.a.a.zzz), arg_0.a.a.xxy);
    var var_3 = 13125i;
    var_2 = ~_wgslsmith_clamp_vec3_i32(~(_wgslsmith_clamp_vec3_i32(arg_0.a.a.xyw, vec3<i32>(27646i, -30389i, -1i), vec3<i32>(var_1.b, 2147483647i, -1i)) | _wgslsmith_add_vec3_i32(arg_0.a.a.wzy, vec3<i32>(var_2.x, 0i, -2147483647i))), max(vec3<i32>(firstTrailingBit(2147483647i), ~var_1.b, arg_0.a.a.x), arg_0.a.a.yzy), arg_0.a.a.zwz);
    return select(vec3<u32>(~countOneBits(26737u), u_input.a.x, min(min(4294967295u, arg_2.x), reverseBits(115919u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 44238u, u_input.a.x), u_input.a), 0u, _wgslsmith_sub_u32(abs(1u), ~arg_2.x)), false) >> (vec3<u32>(18093u, min(_wgslsmith_add_u32(4294967295u, u_input.a.x), ~0u) | ~3762u, arg_2.x) % vec3<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<u32>) -> bool {
    var var_0 = -_wgslsmith_sub_i32(-arg_0.x, -(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-28644i, arg_0.x, 1i, arg_0.x)) << (69314u % 32u)));
    var_0 = _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(1i, firstLeadingBit(~(-2147483647i)) ^ arg_0.x, arg_0.x, _wgslsmith_div_i32(-(i32(-1i) * -25154i), max(arg_0.x, 1i >> (1u % 32u)))));
    let var_1 = ~countOneBits(~reverseBits(vec3<i32>(-3329i, arg_0.x, 9613i))) & vec3<i32>(-(arg_0.x ^ arg_0.x), i32(-1i) * -2147483647i, ~(~(~26372i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(arg_1));
    return func_4(vec4<bool>(true, true, true, true), any(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2))), Struct_4(arg_1.wz, arg_0.x & -2147483647i, Struct_2(~var_1.x, -39456i > var_1.x, -var_1.yx)), var_2.ywz) | !(arg_2 & true);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = -331f;
    var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * arg_0.x)));
    var var_1 = ~(8259i << ((91072u << (u_input.a.x % 32u)) % 32u)) & ~(42648i << (u_input.a.x % 32u));
    var var_2 = max(~select(~(i32(-1i) * -1i), ~(-1i), !all(arg_1)), _wgslsmith_add_i32(_wgslsmith_add_i32(~(i32(-1i) * -35644i), 1i), ~(-13104i) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 37570u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % 32u)));
    return Struct_4(arg_0, -1i, Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(_wgslsmith_div_i32(0i, 43697i), abs(-56074i))), _wgslsmith_f_op_f32(arg_0.x + -618f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -616f, false))), vec2<i32>(min(-2147483647i, -6708i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(-2147483647i, 1i, -30929i, -48836i)), vec2<bool>(true, true), -1190f, 0i)), _wgslsmith_f_op_f32(select(969f, 845f, false))))))), vec2<bool>(func_5(vec4<i32>(~39895i, -2147483647i, ~(-1i), _wgslsmith_mod_i32(20243i, -1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, 299f, 1000f, 1099f)), vec4<f32>(2129f, 640f, 1705f, -1840f), vec4<bool>(true, true, true, true))), true, _wgslsmith_clamp_vec3_u32(u_input.a | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), func_2(Struct_3(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -67057i))), vec2<bool>(false, false), vec4<u32>(u_input.a.x, u_input.a.x, 59266u, u_input.a.x)), u_input.a)), true));
    var var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f - -821f) + -516f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(var_0.a.x))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-536f - -1486f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) + -890f)) * _wgslsmith_f_op_f32(min(-156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))))));
    let var_3 = 828f;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-232f, -632f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.c.x, var_2);
}

