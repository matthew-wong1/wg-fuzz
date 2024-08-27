struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<bool> {
    global1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, reverseBits(u_input.e.x), 1i), ~(vec3<i32>(1i, u_input.b.x, u_input.b.x) & vec3<i32>(u_input.c, -71800i, u_input.b.x)) >> (~(vec3<u32>(1u, arg_0.x, 13089u) ^ vec3<u32>(arg_0.x, u_input.d, arg_0.x)) % vec3<u32>(32u)));
    global1 = _wgslsmith_clamp_i32(-12267i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(2147483647i, 1i, -1i, -2147483647i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 57452i, u_input.e.x), vec4<i32>(u_input.b.x, 72280i, u_input.c, -1i)), ~vec4<i32>(-2147483647i, -70172i, u_input.e.x, u_input.c), vec4<i32>(u_input.e.x, 1i, 2147483647i, -1i))), _wgslsmith_sub_vec4_i32(vec4<i32>(86418i, ~u_input.c, -1i, 48450i), vec4<i32>(-45162i, ~(-2147483647i), ~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.e.x), vec2<i32>(11992i, 0i))))), 0i);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1465f) - 1000f), arg_1.c.x, !any(select(select(vec4<bool>(arg_1.e.b, arg_1.e.c.x, arg_1.e.a.x, arg_1.b.a.x), vec4<bool>(arg_1.b.a.x, arg_1.e.b, arg_1.b.c.x, arg_1.e.b), true), select(vec4<bool>(arg_1.b.b, arg_1.b.b, true, arg_1.b.c.x), vec4<bool>(true, arg_1.b.b, arg_1.e.a.x, arg_1.b.b), true), arg_1.e.b))));
    var var_1 = firstTrailingBit(arg_0);
    let var_2 = vec3<u32>(0u, firstLeadingBit(47413u), ~(~_wgslsmith_clamp_u32(u_input.d, 0u, 0u)) | _wgslsmith_mult_u32(var_1.x, ~_wgslsmith_mod_u32(58694u, 19238u)));
    return vec2<bool>(all(select(select(arg_1.e.c, !vec3<bool>(arg_1.e.c.x, false, false), !vec3<bool>(true, arg_1.b.a.x, arg_1.e.a.x)), vec3<bool>(true, true, true), all(vec2<bool>(arg_1.b.b, arg_1.b.b)))), !any(arg_1.e.c.xx));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> vec2<bool> {
    global1 = -_wgslsmith_div_i32(abs(-2147483647i), i32(-1i) * -1i);
    let var_0 = min(arg_0, ~(-1i));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(30970u >> (u_input.d % 32u), 0u), _wgslsmith_div_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_3, 23354u))));
    let var_2 = vec3<u32>(~9788u, ~(~_wgslsmith_clamp_u32(~var_1, var_1, ~arg_3)), 38502u);
    global1 = ~(-1i);
    return select(vec2<bool>(true, true), select(func_3(select(var_2, var_2, vec3<bool>(true, true, false)) | ~var_2, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-253f, global0.x) + vec2<f32>(arg_2.x, 329f)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -2072f, arg_2.x, -1756f) + vec4<f32>(global0.x, -478f, global0.x, 867f)), vec3<f32>(arg_2.x, 1000f, global0.x), Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, true, false)))), func_3(var_2, Struct_2(_wgslsmith_f_op_vec2_f32(-global0.zx), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, -106f, arg_2.x, arg_2.x) * vec4<f32>(-1404f, global0.x, arg_2.x, arg_2.x)), arg_2, Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, true)))), func_3(~var_2, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_2.x)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, global0.x, -391f, -137f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, global0.x, global0.x), vec3<f32>(-1333f, -230f, -566f))), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, false, false)))).x), global0.x == -269f);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32) -> bool {
    global1 = ~2147483647i;
    global1 = _wgslsmith_div_i32(2147483647i, arg_2 | 1570i);
    let var_0 = arg_0.b;
    let var_1 = var_0;
    let var_2 = Struct_3(arg_0.d, Struct_1(select(func_2(-2147483647i, firstLeadingBit(18223i), _wgslsmith_f_op_vec3_f32(select(arg_0.e.c.zwy, vec3<f32>(arg_0.e.d.x, 234f, 2078f), arg_0.e.e.c)), select(120116u, 17976u, var_0.a.x)), var_1.a, false & all(vec3<bool>(true, false, arg_0.e.e.a.x))), any(func_2(reverseBits(6301i), arg_2 | arg_0.a, vec3<f32>(242f, global0.x, 632f), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(30490u, 25107u, u_input.d)))), select(select(vec3<bool>(true, false, false), var_1.c, var_0.c), vec3<bool>(func_3(arg_1, Struct_2(global0.yx, arg_0.e.e, vec4<f32>(arg_0.e.a.x, global0.x, global0.x, -1000f), arg_0.e.c.zzy, arg_0.e.b)).x, any(vec3<bool>(false, var_1.a.x, var_1.c.x)), func_2(arg_2, -2147483647i, vec3<f32>(538f, arg_0.e.a.x, arg_0.e.a.x), 0u).x), arg_0.e.e.c)), i32(-1i) * -1i, max(firstTrailingBit(arg_0.a), -1i | arg_0.d) << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_1.x, 15196u), vec4<u32>(u_input.a, 41338u, 72934u, 0u)), 4023u & arg_1.x), arg_1.yx >> (~arg_1.xz % vec2<u32>(32u))) % 32u), Struct_2(arg_0.e.a, var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1512f, 608f, global0.x, arg_0.e.d.x), vec4<f32>(-1277f, arg_0.e.c.x, 432f, 685f))) - arg_0.e.c) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.a.x), global0.x, _wgslsmith_f_op_f32(select(-1385f, global0.x, false)), global0.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.e.c.wyw)))), var_0));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(select(false, false, false) | func_1(Struct_3(-1i, Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, false)), -147i, 4253i, Struct_2(global0.yx, Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, true, false)), vec4<f32>(global0.x, 169f, global0.x, -1014f), vec3<f32>(global0.x, global0.x, 981f), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, true)))), vec3<u32>(1u, u_input.d, u_input.d), u_input.e.x), (global0.x > -377f) && any(vec3<bool>(true, true, true)), false, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), false, (u_input.b.x != u_input.e.x) & true, true), vec4<bool>(func_3(vec3<u32>(4294967295u, 25763u, 4294967295u), Struct_2(vec2<f32>(global0.x, global0.x), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true)), vec4<f32>(-107f, global0.x, 163f, -1582f), vec3<f32>(global0.x, global0.x, global0.x), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, false, false)))).x | false, true, true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)))), !vec4<bool>(!(u_input.a >= u_input.a), _wgslsmith_f_op_f32(463f + global0.x) < global0.x, func_3(reverseBits(vec3<u32>(40618u, u_input.d, 62392u)), Struct_2(global0.xz, Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, true, true)), vec4<f32>(419f, global0.x, global0.x, -2362f), vec3<f32>(global0.x, global0.x, 316f), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, true, false)))).x, ~u_input.a <= _wgslsmith_mod_u32(u_input.d, u_input.d)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))));
    global1 = ~_wgslsmith_add_i32(u_input.e.x, select(_wgslsmith_sub_i32(u_input.b.x, select(u_input.c, 1i, var_0.x)), 55281i, true));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + 1622f), _wgslsmith_f_op_f32(1074f + global0.x), global0.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(global0.x - -1040f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(-1000f)), 1000f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + -1154f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(505f - 1263f))), global0.x))));
    let var_1 = u_input.d;
    var var_2 = Struct_1(vec2<bool>(false || var_0.x, func_2(-1i, 0i, vec3<f32>(global0.x, -1000f, 827f), ~4294967295u).x || var_0.x), var_0.x, select(!vec3<bool>(var_0.x | var_0.x, !var_0.x, func_2(-81803i, u_input.e.x, vec3<f32>(-450f, global0.x, global0.x), u_input.d).x), vec3<bool>(all(func_3(vec3<u32>(0u, 46482u, 16901u), Struct_2(vec2<f32>(global0.x, global0.x), Struct_1(var_0.zz, var_0.x, var_0.yxz), vec4<f32>(global0.x, global0.x, global0.x, -945f), vec3<f32>(315f, global0.x, global0.x), Struct_1(vec2<bool>(true, false), var_0.x, vec3<bool>(var_0.x, var_0.x, var_0.x))))), true, !(!var_0.x)), select(vec3<bool>(select(var_0.x, false, var_0.x), true, var_0.x), select(select(var_0.wwz, var_0.wxy, var_0.wxz), var_0.zzz, false), true)));
    let var_3 = vec2<u32>(0u, reverseBits(var_1));
    var_2 = Struct_1(select(vec2<bool>(var_0.x, true), !var_2.a, func_3(vec3<u32>(firstLeadingBit(1u), 1u, u_input.d), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1921f, global0.x)), Struct_1(var_2.c.xy, var_2.c.x, var_0.xxx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-363f, 2217f, global0.x, 1004f), vec4<f32>(-942f, global0.x, global0.x, -454f), vec4<bool>(false, var_0.x, var_2.a.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, global0.x, -393f)), Struct_1(vec2<bool>(false, true), var_2.b, var_0.wyy)))), true, !vec3<bool>(func_2(firstLeadingBit(15145i), ~0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, -711f, -1000f)), 1u & var_1).x, true, var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2299f), vec3<f32>(_wgslsmith_f_op_f32(500f - _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(sign(global0.x)))) - -1300f), 702f));
}

