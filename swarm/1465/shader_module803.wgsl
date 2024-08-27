struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-559f, 1231f)) - -1989f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-404f, -409f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -549f), -130f)))));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(u_input.c.x, u_input.c.x | u_input.c.x), -10006i), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 0u), ~vec2<u32>(4294967295u, 0u)) & ~select(vec2<u32>(0u, 82829u), u_input.c.zx, vec2<bool>(false, false)), -1i), Struct_1(u_input.c.xw & select(~vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.c.x, 30217u) ^ u_input.c.zx, !arg_0), _wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.d, u_input.a.x) << (u_input.c.xx % vec2<u32>(32u))), vec2<i32>(-1i, u_input.b) | vec2<i32>(1314i, -2147483647i))));
    var_0 = 3743u;
    var_2 = Struct_2(Struct_1(~var_2.b.a, -30750i), var_2.a, var_2.b);
    return Struct_2(var_2.b, var_2.b, var_2.c);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1711f, 749f))))), _wgslsmith_sub_i32(arg_3.x & -1i, -1i) >= -2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2829f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-289f)))), -506f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1801f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * -1739f)))), 1f);
    var var_1 = select(u_input.a.xxz, u_input.a.wzx, vec3<bool>(false, select(false, true, select(true, true, true)), ~0u <= _wgslsmith_mult_u32(u_input.c.x, 16715u)));
    let var_2 = _wgslsmith_f_op_f32(step(-1198f, 971f));
    var var_3 = Struct_3(firstLeadingBit(-u_input.a.yyz));
    return vec3<i32>(~(-13042i), _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_3.x << (~u_input.c.x % 32u)), _wgslsmith_mod_i32(abs(_wgslsmith_div_i32(0i, arg_2)), countOneBits(_wgslsmith_div_i32(1i, arg_1.b.b)))), var_1.x >> (1u % 32u));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = Struct_3(u_input.a.wyy ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.d, u_input.a.x, -16816i)) | (vec3<i32>(u_input.d, 1i, -37039i) & u_input.a.zww), vec3<i32>(0i, -1i, -17453i), func_3(u_input.a.zx, func_2(arg_1), 4121i, vec3<i32>(2147483647i, u_input.b, u_input.b))));
    var var_1 = u_input.c.xxy;
    let var_2 = ~44898u < firstLeadingBit(u_input.c.x);
    let var_3 = func_2(true).c;
    var_1 = vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(var_1.x, firstLeadingBit(select(22603u, 2181u, false)), ~func_2(false).a.a.x, var_1.x)), 4294967295u);
    return 37188u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = -u_input.a.xzx | u_input.a.zzw;
    var_0 = _wgslsmith_div_vec3_i32(-select(countOneBits(u_input.a.zyy), u_input.a.www, arg_1.x), abs(u_input.a.wxx) & vec3<i32>(10856i, 43563i, select(var_0.x, -2147483647i, arg_1.x))) >> (max(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, 57859u, u_input.c.x)) & _wgslsmith_div_vec3_u32(u_input.c.wzw, u_input.c.wxw), min(vec3<u32>(0u, 53292u, 16742u), ~u_input.c.ywz)), ~vec3<u32>(u_input.c.x, u_input.c.x, 46610u) ^ max(u_input.c.wxx, _wgslsmith_add_vec3_u32(u_input.c.zxx, vec3<u32>(u_input.c.x, u_input.c.x, 10066u)))) % vec3<u32>(32u));
    var_0 = -reverseBits(~u_input.a.xwy);
    var_0 = vec3<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_div_i32(arg_2.x << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u), func_2(arg_1.x).a.b)), abs(func_2(any(vec4<bool>(true, arg_1.x, true, arg_1.x))).c.b), select(var_0.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-45721i, -45088i >> (arg_0.a.x % 32u)), -(i32(-1i) * -2147483647i)), select(!arg_1.x, arg_1.x, false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(274f, _wgslsmith_f_op_f32(342f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1003f)) + _wgslsmith_f_op_f32(-483f * 2689f))), func_3(vec2<i32>(-70787i, -2147483647i), func_2(true), ~1i, u_input.a.ywz << (vec3<u32>(arg_0.a.x, arg_0.a.x, 42185u) % vec3<u32>(32u))).x >= func_3(~vec2<i32>(1i, 0i), func_2(arg_1.x), countOneBits(u_input.d), select(u_input.a.xwy, u_input.a.zzy, false)).x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_1(vec2<u32>(u_input.c.x & u_input.c.x, func_1(false, false)), ~(~u_input.b)), !select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), -_wgslsmith_mult_vec2_i32(max(vec2<i32>(-2147483647i, u_input.b), u_input.a.wx), -vec2<i32>(27714i, u_input.a.x))), func_4(Struct_1(~u_input.c.zz, select(_wgslsmith_mod_i32(-50542i, 2147483647i), -u_input.a.x, true)), select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(false, u_input.b >= u_input.a.x), vec2<bool>(true, true)), vec2<i32>(-u_input.d, -9075i) ^ vec2<i32>(u_input.a.x >> (28082u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.d, -17485i)))), func_4(Struct_1(vec2<u32>(~16237u, 4294967295u), -_wgslsmith_add_i32(2147483647i, -15035i)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), u_input.a.xy));
    var var_1 = true;
    var var_2 = vec2<bool>(select(true, select(firstLeadingBit(var_0.c.a.x) > 134314u, any(vec2<bool>(true, true)), true && all(vec2<bool>(false, false))), true), select(true, any(vec2<bool>(true, true)) | false, true));
    var_1 = any(!vec2<bool>(false, any(!vec2<bool>(var_2.x, var_2.x))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(~(-u_input.a)), u_input.a), -(~abs(-37823i)), -12401i);
    var var_4 = !select(vec3<bool>(var_2.x, all(select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, false, true))), any(vec4<bool>(false, true, false, var_2.x))), vec3<bool>(var_2.x, all(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true))), var_2.x & true), !select(vec3<bool>(var_2.x, true, false), select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, true, false), vec3<bool>(true, true, var_2.x)), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(440f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-107f, 534f)))), ~(var_0.a.b & (~(-2147483647i) << (var_0.a.a.x % 32u))), 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(1100f - 324f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(355f, 1878f) - vec2<f32>(1421f, -366f)))));
}

