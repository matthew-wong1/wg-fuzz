struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    var var_0 = Struct_3(1277f, 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-658f, _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-741f, arg_1.a.x, arg_1.a.x), vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.d.x, true, arg_1.b))))))), Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(271f - 772f), _wgslsmith_f_op_f32(-864f + -828f)))), arg_1.b, Struct_1(vec4<bool>(all(arg_1.c.d.wz), true, !arg_1.c.b, any(arg_1.c.d)), any(vec2<bool>(true, false)) | any(arg_1.c.a), 1u < _wgslsmith_add_u32(12729u, u_input.c), !select(vec4<bool>(arg_1.c.c, false, true, true), vec4<bool>(arg_1.d.x, arg_1.c.c, false, arg_1.c.d.x), vec4<bool>(true, arg_1.d.x, true, arg_1.c.c)), arg_2), select(!select(vec4<bool>(true, arg_1.b, false, false), arg_1.d, arg_1.b), vec4<bool>(false, all(arg_1.d.xyy), false, any(arg_1.d.xxz)), true)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -616f))), arg_1.a.x), arg_1.b, Struct_1(arg_1.c.d, true, !(arg_2.x >= -27154i), vec4<bool>(true, false, arg_1.c.c, !arg_1.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, arg_1.c.e.x, arg_1.c.e.x), ~vec3<i32>(1880i, arg_2.x, -57863i), abs(arg_1.c.e))), arg_1.d));
    var_0 = Struct_3(1f, arg_1.c.e.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_0.c)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-904f - var_0.d.a.x), _wgslsmith_f_op_f32(ceil(-385f)))))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.e.a)), vec2<f32>(867f, var_0.e.a.x)), all(select(vec3<bool>(arg_1.d.x, arg_1.c.d.x, true), !vec3<bool>(var_0.e.c.c, arg_1.c.c, arg_1.d.x), true)), var_0.e.c, !var_0.d.c.a), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-445f, -615f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_0.e.a, vec2<f32>(1000f, var_0.d.a.x))))))), all(!select(vec3<bool>(var_0.e.b, false, arg_1.b), var_0.e.c.a.yyz, false)), var_0.d.c, select(var_0.e.c.a, var_0.e.c.d, vec4<bool>(select(arg_1.c.a.x, var_0.e.c.c, var_0.d.c.a.x), false, true, arg_1.d.x))));
    var_0 = Struct_3(-1632f, -2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f)), arg_1.a.x, _wgslsmith_f_op_f32(var_0.d.a.x - _wgslsmith_f_op_f32(trunc(-1936f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1000f, arg_1.a.x) - vec3<f32>(var_0.d.a.x, var_0.a, 133f)))))), arg_1, arg_1);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), select(select(-var_0.d.c.e.x, -2147483647i >> (u_input.c % 32u), arg_1.b || arg_1.d.x), abs(var_0.b), !var_0.e.d.x) << (abs(0u) % 32u), var_0.c, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.a)), !arg_1.b, var_0.e.c, var_0.e.d), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-884f * arg_1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)))), all(var_0.d.c.a.wy), Struct_1(var_0.e.c.d, arg_1.b && (true | arg_1.c.a.x), any(arg_1.d.zwz), var_0.d.c.d, ~vec3<i32>(arg_1.c.e.x, 1i, arg_0.x)), vec4<bool>(arg_1.d.x, true && (arg_1.d.x || arg_1.d.x), all(!arg_1.c.a), true)));
    let var_1 = var_0.d.c;
    return var_0.d.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(vec4<bool>(true, arg_3.x, !any(arg_1.d.c.a.zw) & true, !(!any(vec2<bool>(arg_1.e.c.d.x, false)))), !any(arg_3.xz), any(vec2<bool>(true, false)), select(arg_1.e.d, select(select(arg_1.e.c.a, select(arg_1.d.d, vec4<bool>(arg_1.e.c.d.x, arg_3.x, true, arg_1.e.c.d.x), arg_1.e.c.d.x), arg_2 >= 449f), arg_1.d.c.a, arg_1.e.d), select(!select(vec4<bool>(arg_1.d.b, true, arg_1.d.c.a.x, arg_3.x), vec4<bool>(arg_1.e.d.x, arg_1.e.d.x, arg_3.x, arg_1.d.c.a.x), vec4<bool>(arg_1.e.c.a.x, arg_1.d.d.x, false, false)), arg_1.d.c.a, !(arg_1.e.a.x <= -1144f))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2758i, abs(26436i), u_input.b), u_input.d.zww) ^ ~(~u_input.d.ywx));
    let var_1 = !(-u_input.a >= -38748i);
    var var_2 = false;
    let var_3 = var_0;
    var_2 = true;
    return vec2<f32>(514f, _wgslsmith_f_op_f32(-1122f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_0.zx, arg_1.d, vec3<i32>(1i, -15752i, u_input.a))), 162f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(0i, u_input.a | u_input.d.x, i32(-1i) * -10704i), Struct_3(-1000f, u_input.d.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2421f, -684f, 283f))), Struct_2(vec2<f32>(-325f, -188f), arg_1.x, Struct_1(arg_1, arg_1.x, false, arg_1, u_input.d.xzw), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), Struct_2(vec2<f32>(-1000f, -1000f), arg_1.x, Struct_1(vec4<bool>(arg_1.x, true, false, arg_1.x), false, arg_1.x, arg_1, u_input.d.wyw), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(func_3(u_input.d.wz, Struct_2(vec2<f32>(1094f, 1027f), arg_1.x, Struct_1(arg_1, false, arg_1.x, vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), u_input.d.xzw), arg_1), -vec3<i32>(0i, 2147483647i, u_input.b))), select(arg_1.zxz, arg_1.zzy, vec3<bool>(false, true, arg_1.x))))), false, Struct_1(!vec4<bool>(arg_1.x, arg_1.x, true, select(arg_1.x, arg_1.x, false)), !any(!arg_1), arg_1.x, vec4<bool>(select(!arg_1.x, false, arg_1.x & arg_1.x), all(!vec3<bool>(true, true, arg_1.x)), any(!vec2<bool>(arg_1.x, arg_1.x)), !arg_1.x), -vec3<i32>(~u_input.a, ~u_input.d.x, 0i)), !vec4<bool>((u_input.c >> (4294967295u % 32u)) != firstLeadingBit(4294967295u), countOneBits(2147483647i) > _wgslsmith_clamp_i32(-55978i, u_input.b, u_input.a), arg_1.x, true));
    var_0 = Struct_2(var_0.a, true, Struct_1(!vec4<bool>(any(var_0.c.a.yx), arg_1.x, !arg_1.x, var_0.b), false, true, select(!(!arg_1), vec4<bool>(true, arg_1.x, select(true, var_0.c.b, false), var_0.d.x || arg_1.x), vec4<bool>(all(var_0.d.wxy), arg_1.x & true, var_0.b, all(vec2<bool>(false, false)))), reverseBits(u_input.d.wxy)), var_0.c.d);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), -489f), true)))), arg_1.x, Struct_1(!vec4<bool>(all(arg_1.xx), true, arg_1.x, all(vec2<bool>(false, arg_1.x))), true, !(!any(vec4<bool>(var_0.b, arg_1.x, false, arg_1.x))), var_0.c.d, var_0.c.e), !(!select(select(vec4<bool>(arg_1.x, var_0.b, true, false), vec4<bool>(arg_1.x, var_0.b, arg_1.x, true), vec4<bool>(arg_1.x, false, var_0.c.d.x, true)), select(arg_1, arg_1, vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), select(var_0.d, vec4<bool>(arg_1.x, var_0.c.b, false, false), true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), -800f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), 197f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, 1000f, var_0.a.x, 2443f), vec4<f32>(var_0.a.x, -917f, 350f, -549f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2551f, var_0.a.x, 833f, var_0.a.x), vec4<f32>(1000f, var_0.a.x, var_0.a.x, var_0.a.x))))), select(!vec4<bool>(false, var_0.d.x, true, true), select(var_0.d, vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(var_0.b, arg_1.x, false, arg_1.x)), select(var_0.c.d, vec4<bool>(false, arg_1.x, arg_1.x, var_0.c.d.x), true)))))) + vec4<f32>(1525f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(640f + -1166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))), var_0.a.x, var_0.a.x));
    let var_2 = var_0.c;
    return var_0.b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = u_input.c;
    return Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, func_2(vec3<u32>(u_input.c, var_0, u_input.c), vec4<bool>(false, true, true, true))), abs(var_0) == firstTrailingBit(u_input.c)), select(vec4<bool>(func_2(vec3<u32>(var_0, u_input.c, var_0), vec4<bool>(true, false, true, false)), true, 38897u > var_0, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), select(func_2(~vec3<u32>(u_input.c, 52457u, u_input.c), vec4<bool>(true, true, true, true)), true, true)), true, arg_0.x > _wgslsmith_mult_i32(arg_0.x, _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(arg_0.x))), vec4<bool>(true, !(!any(vec2<bool>(true, true))), !(_wgslsmith_f_op_f32(min(-524f, 2110f)) < _wgslsmith_f_op_f32(trunc(561f))), any(vec3<bool>(true, false, false)) & true), -(~(~vec3<i32>(u_input.d.x, -1i, 1i))) ^ ~u_input.d.wyx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(0i, min(-4702i, _wgslsmith_div_i32(u_input.a, u_input.a & u_input.b))));
    let var_1 = (abs(-var_0.e ^ (vec3<i32>(1i, 7065i, u_input.b) & vec3<i32>(var_0.e.x, var_0.e.x, 11639i))) | vec3<i32>(u_input.b, -_wgslsmith_add_i32(1i, 22476i), -37998i)) << (vec3<u32>(u_input.c, 1u, _wgslsmith_div_u32(1u, ~4205u) & u_input.c) % vec3<u32>(32u));
    let var_2 = Struct_1(select(!vec4<bool>(true, var_1.x > var_1.x, all(vec2<bool>(true, var_0.a.x)), true), vec4<bool>(select(true, any(var_0.a.wz), false || var_0.a.x), var_0.c, (var_0.b | var_0.a.x) || !var_0.a.x, var_0.b), var_0.a), var_0.c, !var_0.c, var_0.d, var_1);
    let var_3 = var_2;
    var var_4 = -1000f;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-902f, 224f)), 1000f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-811f)) + -1975f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2046f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1150f, 744f)))));
    let var_6 = Struct_2(vec2<f32>(var_5.x, var_5.x), -927f < _wgslsmith_f_op_f32(-var_5.x), Struct_1(!var_3.a, any(!func_1(var_1.zz).d), true, select(var_2.d, vec4<bool>(var_5.x != -753f, var_3.d.x, !var_2.d.x, true), func_1(var_2.e.yy).b), _wgslsmith_mod_vec3_i32(var_1, firstTrailingBit(vec3<i32>(-13579i, -1i, 1i))) | u_input.d.zyz), var_3.d);
    var_4 = -2512f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_5.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.a.x + -1658f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_6.a.x, var_6.a.x, 1124f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), var_5.x)) - var_5.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-621f * -217f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_5.x, 1001f), -1478f, var_6.d.x)), _wgslsmith_f_op_f32(var_5.x * var_5.x), var_5.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_i32(var_3.e.zy, u_input.d.zw), Struct_2(var_6.a, false, Struct_1(var_2.d, true, var_0.d.x, var_6.d, vec3<i32>(var_1.x, var_0.e.x, u_input.b)), vec4<bool>(false, var_0.c, var_2.a.x, false)), vec3<i32>(var_6.c.e.x, 59608i, 24211i) >> (vec3<u32>(54598u, u_input.c, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), 831f, var_6.a.x))), _wgslsmith_div_i32(firstLeadingBit(-2147483647i), -1i), var_6.a.x);
}

