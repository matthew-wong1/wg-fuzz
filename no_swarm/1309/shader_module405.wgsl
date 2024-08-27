struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = vec3<bool>(all(vec3<bool>(true, all(vec2<bool>(true, true)), !(u_input.b.x >= 0i))), true, -1i >= (u_input.b.x ^ -15565i));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 351f, -310f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-617f, -1631f, var_0.x)), 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_2.a.x) * _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.x, -552f, arg_1.a.x, arg_2.a.x), vec4<f32>(-283f, 1695f, arg_2.a.x, 406f)))) * _wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), -238f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(round(-886f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(select(-441f, 993f, var_0.x))), true))));
    var var_2 = arg_0;
    let var_3 = -482f;
    var var_4 = var_0;
    return !var_4.x;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = select(vec2<bool>(select(arg_0, firstLeadingBit(0u) >= min(u_input.a.x, u_input.a.x), any(!vec3<bool>(arg_0, arg_0, false))), arg_0), !vec2<bool>((arg_0 | arg_0) && true, !arg_0), func_3(u_input.d.x, Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(747f, 1000f, -764f, -1456f))), -268f), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(948f, -154f) * vec2<f32>(-1312f, -434f)))), -abs(u_input.b.x))));
    var_0 = select(!(!select(vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(var_0.x, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, !all(select(vec3<bool>(var_0.x, var_0.x, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, var_0.x, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1431f, -917f, 696f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(812f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2275f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(868f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, -334f, -1701f)), vec3<f32>(-1913f, 718f, 433f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-889f, -956f, -1710f), vec3<f32>(-633f, -947f, 147f), arg_0)))), !select(vec3<bool>(var_0.x & false, !var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), select(vec3<bool>(arg_0, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), true)));
    var_0 = vec2<bool>(all(vec3<bool>(any(vec2<bool>(var_0.x, false)), true, true)), false);
    var var_2 = Struct_1(var_1.xy, 28178i);
    return !vec2<bool>(any(select(!vec4<bool>(false, arg_0, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, arg_0, true), vec4<bool>(arg_0, false, true, false), vec4<bool>(var_0.x, var_0.x, false, false)), any(vec3<bool>(false, var_0.x, arg_0)))), (~1u >= ~u_input.a.x) | any(vec3<bool>(true, true, var_0.x)));
}

fn func_4(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -264f, -1456f) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -179f))))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(267f)), arg_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f) - _wgslsmith_f_op_f32(select(-1380f, 978f, true))))), -1000f);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(-748f)), arg_0.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-818f)), arg_0.x));
    let var_2 = Struct_3((reverseBits(vec2<u32>(u_input.c, u_input.c)) | vec2<u32>(~u_input.d.x, ~1u)) << (vec2<u32>(~74046u, 40955u) % vec2<u32>(32u)), -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(43225i, 0i, 1i), min(vec3<i32>(u_input.b.x, 26214i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 3671i))), -1i << (u_input.c % 32u), u_input.b.x));
    var var_3 = Struct_3(vec2<u32>(4294967295u, ~var_2.a.x | 21091u), firstTrailingBit(var_2.b));
    return !(!(!vec3<bool>(var_0.b < var_1.x, true, true)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(985f)), -177f), vec3<f32>(arg_0, -1719f, _wgslsmith_f_op_f32(-2900f * 401f)), any(func_2(true)))));
    let var_1 = firstLeadingBit(u_input.b.zw);
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -600f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -989f))), -255f)), 69763i | (-_wgslsmith_mod_i32(u_input.b.x, 2147483647i) ^ -var_1.x));
    let var_3 = Struct_2(firstTrailingBit(firstTrailingBit(1u)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 23645u, 61171u)) & (1u | u_input.c), reverseBits(countOneBits(14311u))) % 32u));
    var var_4 = _wgslsmith_f_op_f32(-arg_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(false, true, any(vec3<bool>(true, true, true)) | func_1(_wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_div_vec3_i32(vec3<i32>(33535i, 2147483647i, u_input.b.x), u_input.b.xxy))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), func_2(false).x)), vec3<bool>(true, true, true));
    let var_1 = false;
    var_0 = select(!vec3<bool>(u_input.d.x >= u_input.c, var_1, (u_input.c > u_input.a.x) | true), vec3<bool>(1u >= select(~831u, ~12u, true), !var_1, true), var_1);
    var_0 = select(select(vec3<bool>(any(!vec4<bool>(var_0.x, false, false, false)), true, false), select(vec3<bool>(var_1 || var_1, !var_0.x, var_1), func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-702f, -1000f, -648f), vec3<f32>(1000f, -635f, -2209f)))), func_2(false).x), var_0.x == !any(vec3<bool>(var_0.x, false, var_0.x))), select(!vec3<bool>(false && var_1, var_1 || true, true), !(!func_4(vec3<f32>(226f, -156f, -1000f))), !vec3<bool>(true, var_1, true)), select(true, var_1, var_0.x));
    let var_2 = u_input.b.x;
    let var_3 = Struct_3(u_input.a.zy, u_input.b.yxw);
    var var_4 = _wgslsmith_clamp_i32(u_input.b.x | -(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) ^ reverseBits(-9782i)), _wgslsmith_mult_i32(2147483647i, 0i), -66661i);
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, -1029f) - vec2<f32>(1834f, -1000f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, 1000f) - vec2<f32>(-1740f, 1269f)))))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, vec4<u32>(min(_wgslsmith_mult_u32(var_3.a.x, u_input.d.x ^ var_3.a.x), (u_input.a.x << (1u % 32u)) & _wgslsmith_mult_u32(17866u, u_input.a.x)), 0u, 20341u, select(firstLeadingBit(38525u), 4294967295u, false)), _wgslsmith_add_vec3_u32(select(vec3<u32>(26969u, _wgslsmith_mod_u32(u_input.d.x, 51172u), var_3.a.x << (1u % 32u)), u_input.a, !var_1), u_input.d), vec3<i32>(firstLeadingBit(-37439i) ^ var_2, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_3.b.x, var_2, var_3.b.x)), select(vec3<i32>(-24435i, var_2, 0i), var_3.b, vec3<bool>(var_0.x, var_1, false)) ^ var_3.b), select(var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(35234i, var_2, 7753i), ~vec3<i32>(u_input.b.x, 0i, -4186i)), true)), u_input.b.x);
}

