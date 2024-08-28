struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(294f, vec2<f32>(461f, 950f), -1373f, vec2<i32>(i32(-2147483648), -6872i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = arg_2;
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(638f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -119f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - -1095f) * _wgslsmith_div_f32(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(-arg_2.c)), arg_2.c, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 20698i), arg_0));
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, -1132f, 1000f, arg_3))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.a, arg_1.x, arg_3) - vec4<f32>(arg_3, arg_3, -777f, global0.b.x)))))))));
    var var_1 = Struct_3(-u_input.b.xww, false, u_input.a.x, arg_2.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_1(var_0.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> vec4<bool> {
    var var_0 = vec3<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(exp2(global0.b.x))))), -509f);
    let var_1 = select(u_input.b.x, u_input.b.x, arg_2.x);
    var var_2 = abs(~35002u);
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1939f - _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(step(-296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f - 157f)))), !select(any(arg_2.wz), arg_3, !arg_3))), _wgslsmith_f_op_vec2_f32(abs(global0.b)), _wgslsmith_div_f32(func_2(vec2<i32>(u_input.b.x, 39824i) | u_input.b.zy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b.x, arg_1.a, -952f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1090f, -1388f))), Struct_2(-670f, vec2<f32>(global0.a, -164f), _wgslsmith_f_op_f32(-var_0.x), u_input.b.yx), -491f).a, -631f), ~reverseBits(u_input.b.wy) << (_wgslsmith_add_vec2_u32(vec2<u32>(40339u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 37299u, 20779u, 31916u), vec4<u32>(u_input.c, 4294967295u, 1u, arg_0))), vec2<u32>(u_input.c << (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 13273u, 0u), vec4<u32>(1u, 0u, u_input.c, arg_0)))) % vec2<u32>(32u)));
    var_2 = 16670u;
    return select(vec4<bool>(arg_3, !any(select(arg_2.xwy, vec3<bool>(arg_3, arg_2.x, false), true)), any(!select(vec3<bool>(false, arg_2.x, arg_2.x), arg_2.yzw, arg_3)), arg_2.x), arg_2, !(!vec4<bool>(select(false, arg_2.x, false), arg_2.x, any(vec3<bool>(arg_3, arg_3, true)), true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    global0 = Struct_2(-1000f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-999f)) + _wgslsmith_f_op_f32(arg_1.a - 727f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-1i | global0.d.x), -6540i), reverseBits(abs(~vec2<i32>(u_input.d, -24288i)))));
    let var_0 = (reverseBits(~vec4<u32>(0u, 4294967295u, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 9551u)) ^ vec4<u32>(_wgslsmith_mult_u32(661u, u_input.c) ^ reverseBits(u_input.c), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 0u, u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 12049u, 1u), vec4<u32>(40947u, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), 9580u)) | (vec4<u32>(36416u, u_input.c, _wgslsmith_div_u32(~u_input.a.x, 1u), ~select(u_input.c, u_input.a.x, arg_2.x)) & ~vec4<u32>(~u_input.c, countOneBits(u_input.c), ~48909u, min(1u, u_input.a.x)));
    let var_1 = !vec3<bool>(true, any(select(!arg_2.zy, select(arg_2.yx, arg_2.xz, arg_3), vec2<bool>(false, arg_2.x))), _wgslsmith_f_op_f32(min(-773f, _wgslsmith_f_op_f32(ceil(-856f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-353f, global0.a)) * global0.a));
    let var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-28748i, u_input.b.x, global0.d.x), vec3<i32>(21465i, firstTrailingBit(global0.d.x), u_input.d)), ~u_input.b.xyx);
    let var_3 = Struct_3(vec3<i32>(2147483647i, u_input.d, -2147483647i) ^ u_input.b.zwz, arg_0, 4294967295u, global0.b.x);
    return Struct_2(1005f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.b)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.d, global0.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c - -725f), arg_1.a, true)))), global0.c, vec2<i32>(u_input.d, var_2 << (~_wgslsmith_mult_u32(0u, u_input.a.x) % 32u)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = Struct_2(global0.c, vec2<f32>(arg_2.d, arg_2.d), arg_2.d, -vec2<i32>(~38206i, -1i) ^ vec2<i32>(~(u_input.b.x << (arg_3.c % 32u)), min(-1i ^ global0.d.x, -2147483647i)));
    var var_1 = select(!func_3(52546u, Struct_1(_wgslsmith_f_op_f32(-var_0.c)), !(!vec4<bool>(arg_0.x, arg_0.x, true, arg_2.b)), _wgslsmith_f_op_f32(-global0.a) >= _wgslsmith_f_op_f32(sign(1435f))).yyy, !(!func_3(_wgslsmith_div_u32(61824u, arg_2.c), func_2(vec2<i32>(arg_3.a.x, arg_1.d.x), vec3<f32>(454f, 1423f, -635f), var_0, arg_1.b.x), !vec4<bool>(arg_2.b, arg_2.b, false, true), !arg_3.b).zxw), !(!(!select(vec3<bool>(false, true, arg_2.b), vec3<bool>(arg_0.x, true, arg_3.b), arg_2.b))));
    let var_2 = func_2(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(arg_1.d, ~u_input.b.ww, vec2<i32>(1i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, _wgslsmith_f_op_f32(round(global0.b.x)), arg_3.d)), var_0, _wgslsmith_f_op_f32(step(509f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3.d, arg_3.d), _wgslsmith_f_op_f32(max(var_0.c, arg_3.d)))))))));
    var_1 = vec3<bool>(false, true, true);
    let var_3 = u_input.a;
    return var_3.x < ~(~reverseBits(var_3.x));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = vec2<u32>(98327u, 1u);
    global0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1230f), -1432f)), global0.b, -985f, (vec2<i32>(-1i, -26689i ^ arg_0.x) ^ u_input.b.wx) >> (u_input.a % vec2<u32>(32u)));
    var var_1 = func_5(vec2<bool>(!all(vec2<bool>(true, false)) | (select(false, true, false) && any(vec2<bool>(false, false))), -136f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(659f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b.x)), global0.c), func_2(max(~vec2<i32>(0i, 1i), vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, 337f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1981f, 228f, global0.c))), Struct_2(global0.b.x, _wgslsmith_f_op_vec2_f32(round(global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -160f), global0.d & u_input.b.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1227f + global0.c))), vec3<bool>(true, true, true), all(!func_3(4294967295u, Struct_1(-766f), vec4<bool>(true, false, true, true), false))), Struct_3(~vec3<i32>(3981i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.d, 9091i), vec4<i32>(2147483647i, arg_0.x, 1i, 27800i)), ~(-481i)), false, _wgslsmith_add_u32(var_0.x, abs(var_0.x)) ^ firstTrailingBit(~u_input.a.x), _wgslsmith_f_op_f32(sign(2381f))), Struct_3(min(~(-u_input.b.xyw), vec3<i32>(u_input.b.x ^ arg_0.x, arg_0.x, -3819i)), true, ~(var_0.x & ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.x)))));
    var var_2 = firstTrailingBit(~max(~u_input.b.zyx | u_input.b.zwy, abs(min(u_input.b.zwz, u_input.b.wxw))));
    var var_3 = vec3<f32>(-419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, 695f))));
    return !vec3<bool>(!(!any(vec3<bool>(true, true, true))), true, func_3(var_0.x ^ _wgslsmith_clamp_u32(74560u, var_0.x, var_0.x), Struct_1(global0.b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), any(vec3<bool>(true, true, true))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(-u_input.b.ywy, -select(u_input.b.ywz | u_input.b.wzz, vec3<i32>(_wgslsmith_sub_i32(-3166i, u_input.d), -1i, global0.d.x), select(func_1(u_input.b.yw), func_3(u_input.c, Struct_1(657f), vec4<bool>(false, true, false, false), false).yyz, true)));
    var_0 = countOneBits(reverseBits(vec3<i32>(-firstTrailingBit(-29463i), -2147483647i, 1i)));
    let var_1 = vec2<i32>(-28627i >> (u_input.c % 32u), u_input.b.x);
    var var_2 = 4294967295u;
    let var_3 = func_2(_wgslsmith_mod_vec2_i32(func_4(false, Struct_1(_wgslsmith_f_op_f32(abs(-812f))), vec3<bool>(true, all(vec3<bool>(false, true, false)), false), false).d, abs(vec2<i32>(-2147483647i, 0i << (u_input.c % 32u)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - _wgslsmith_f_op_f32(global0.b.x - global0.a)))), _wgslsmith_f_op_f32(-945f * -164f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(575f, 1446f))))), func_4(all(vec2<bool>(true, true)), func_2(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, var_1.x), u_input.b.x), vec3<f32>(func_2(vec2<i32>(24760i, var_1.x), vec3<f32>(-222f, global0.a, -1441f), Struct_2(global0.b.x, vec2<f32>(global0.b.x, -731f), -359f, var_0.zy), global0.c).a, _wgslsmith_div_f32(-674f, 634f), _wgslsmith_f_op_f32(-2054f + -1108f)), func_4(select(true, false, true), Struct_1(global0.b.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), global0.c), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f + -338f)) - func_4(false, Struct_1(global0.b.x), vec3<bool>(true, true, true), true).a));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, 220f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - var_3.a)), var_3.a))), 908f, ~vec2<i32>(1i >> (u_input.a.x % 32u), ~_wgslsmith_mod_i32(-1i, var_1.x)));
}

