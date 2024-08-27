struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(4294967295u, arg_1.b, !all(vec4<bool>(false, false, all(vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.c)));
    var var_1 = !(arg_1.a <= 12016u);
    var_1 = !(!(!(!(1u >= arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1626f) >= _wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(min(-637f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(469f, 1000f))))));
    var var_3 = _wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1156f)))));
    return all(var_0.b);
}

fn func_2() -> f32 {
    var var_0 = min(1u << (u_input.a.x % 32u), ~1u);
    var_0 = ~0u;
    var_0 = 7753u;
    var var_1 = all(vec4<bool>(false, true, true, 9436i >= _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.d.x, -9486i), vec2<i32>(1i, u_input.d.x)), min(vec2<i32>(43492i, u_input.d.x), vec2<i32>(-13661i, 1i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1318f, -532f)) + 1112f), -499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, 526f, -136f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, 150f, 289f) - vec3<f32>(-222f, -224f, 250f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(689f, 1655f, 170f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1475f, 1023f, 568f)), func_3(vec4<u32>(34668u, 32144u, u_input.b, u_input.a.x), Struct_1(u_input.b, vec2<bool>(false, false), false)))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(188f, 109f, 421f), vec3<f32>(-976f, -396f, 1549f)) * vec3<f32>(559f, 669f, -451f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 429f, -682f))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1084f);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> vec3<i32> {
    return vec3<i32>(arg_1.x, countOneBits(arg_1.x), 33413i);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(~u_input.b, !arg_1.wz, true);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -118f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1408f * 498f) - -1231f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-650f * 755f))))), -vec4<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.d.x, 1i, u_input.d.x) | 41880i, firstTrailingBit(countOneBits(u_input.d.x)), ~u_input.d.x));
    var var_2 = -334f;
    var var_3 = select(-vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 11570i, 0i), ~var_1.x, var_1.x, u_input.c.x) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 0i, firstLeadingBit(1i), -u_input.d.x), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, var_1.x, u_input.c.x, -20049i), -vec4<i32>(u_input.d.x, 55009i, u_input.c.x, u_input.d.x), abs(vec4<i32>(var_1.x, -1i, -30517i, 1i)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 28462i, -35842i & var_1.x, countOneBits(30387i)), vec4<i32>(1i, 2147483647i, var_1.x, 12058i) << (~vec4<u32>(var_0.a, 4294967295u, var_0.a, u_input.b) % vec4<u32>(32u))), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(-18802i, -21980i, var_1.x, 1i), vec4<i32>(u_input.d.x, var_1.x, var_1.x, u_input.c.x)) << ((vec4<u32>(u_input.b, 1u, 5410u, var_0.a) & vec4<u32>(0u, 4294967295u, var_0.a, 4294967295u)) % vec4<u32>(32u)))), false);
    var var_4 = -vec3<i32>(1i, -2147483647i, -_wgslsmith_mod_i32(u_input.d.x, u_input.c.x) | 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) + _wgslsmith_f_op_f32(f32(-1f) * -1487f)) + _wgslsmith_f_op_f32(f32(-1f) * -258f))) - 158f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(247f));
    let var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, vec4<bool>(true, false, false, false))) - _wgslsmith_f_op_f32(-var_0))));
    let var_2 = select(vec4<bool>(true, true, true, false), !(!vec4<bool>(var_1.x <= var_1.x, true, true, select(true, true, true))), !vec4<bool>(!select(false, false, false), false, _wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(step(473f, var_1.x)), any(vec4<bool>(false, true, true, false))));
    var var_3 = Struct_1(~firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(u_input.a), abs(vec3<u32>(u_input.a.x, 0u, 1u)))), vec2<bool>(true, !var_2.x), var_2.x);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -426f, 389f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 613f, var_0)))) * vec3<f32>(-1652f, 1381f, _wgslsmith_f_op_f32(sign(var_0)))))), select(var_2.www, select(vec3<bool>(true, true, true), var_2.zyy, select(select(var_2.yyx, var_2.zzy, var_3.c), !var_2.wzy, all(var_2.zy))), !var_2.xzx), select(firstLeadingBit(~abs(vec2<i32>(2147483647i, u_input.c.x))), select(func_4(var_1.x, ~vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x)).zz, vec2<i32>(u_input.c.x, ~u_input.d.x), !(!var_2.x)), select(!var_3.b, select(var_2.xz, !vec2<bool>(true, var_2.x), vec2<bool>(false, true)), var_2.wz)));
    var_3 = Struct_1(0u, !vec2<bool>(func_3(max(vec4<u32>(32542u, u_input.a.x, 42609u, u_input.b), vec4<u32>(var_3.a, 15964u, 6015u, u_input.a.x)), Struct_1(var_3.a, var_3.b, true)), var_3.c), !var_2.x);
    var_3 = Struct_1(abs(_wgslsmith_clamp_u32(~firstTrailingBit(36455u), ~var_3.a, firstTrailingBit(var_3.a))), var_2.yx, -213f >= var_0);
    var var_5 = Struct_1(4294967295u, select(vec2<bool>(false, var_2.x), select(select(!var_4.b.yy, vec2<bool>(var_3.b.x, true), true), !(!var_4.b.zz), true), var_4.b.x), true);
    var var_6 = min(_wgslsmith_mult_vec2_i32(var_4.c, max(vec2<i32>(min(0i, -8936i), -var_4.c.x), -firstTrailingBit(var_4.c))), vec2<i32>(var_4.c.x, var_4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -437f), vec4<i32>(2147483647i, _wgslsmith_mult_i32(1i, ~(2147483647i << (var_5.a % 32u))), var_4.c.x, firstLeadingBit(min(var_6.x, 3492i) << (min(45947u, u_input.b) % 32u))));
}

