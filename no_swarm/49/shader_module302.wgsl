struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = ~u_input.d;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(561f, 1211f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1145f, 1112f), vec2<f32>(-1000f, -1000f)))))), vec3<bool>(_wgslsmith_f_op_f32(floor(1198f)) > -1664f, true, _wgslsmith_mult_u32(70603u, arg_0.x) >= ~0u), (vec2<u32>(arg_0.x, 0u) ^ _wgslsmith_mod_vec2_u32(u_input.c.yz, arg_0)) ^ vec2<u32>(20764u, arg_0.x), vec3<bool>(false, true, !any(vec2<bool>(true, false))), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true)), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), !vec3<bool>(any(vec3<bool>(false, true, false)), true, !select(true, true, true)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)) * _wgslsmith_f_op_f32(-var_1.a.a.x)), var_1.a.a.x);
    var var_3 = u_input.a.xw;
    let var_4 = Struct_2(745f);
    return ~2147483647i;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = !((_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1842f - 342f))) == 488f) & !(10445i > func_3(u_input.c.xx)));
    let var_1 = !vec2<bool>(false, arg_0 != !arg_0);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1f));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f - var_2.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * -2412f)) * -949f));
    var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -234f))));
    return select(var_1, !var_1, select(select(var_1, vec2<bool>(!var_0, false), var_1), var_1, var_1));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(903f, 327f)) - _wgslsmith_div_f32(-878f, 670f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1346f * _wgslsmith_f_op_f32(step(-1620f, 713f))))), _wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1202f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(605f, -638f)) - -517f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 243f), _wgslsmith_div_f32(var_0.x, var_0.x)), -743f, _wgslsmith_f_op_f32(var_0.x + var_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-1000f, -1288f, var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-153f, var_0.x, 665f))), vec3<f32>(279f, -512f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-187f, var_0.x, var_0.x), vec3<f32>(-1000f, 492f, var_0.x))))));
    var var_1 = u_input.c.x;
    var var_2 = arg_0.a;
    var_2 = 20486i;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xz, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xz, var_0.zz, arg_0.b)))), select(vec3<bool>(any(vec3<bool>(true, false, arg_0.b)), arg_1.x, true), select(vec3<bool>(true, false, arg_1.x), !vec3<bool>(false, arg_1.x, arg_1.x), !arg_1.x), select(!vec3<bool>(false, arg_1.x, arg_0.c), select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(arg_0.b, arg_0.b, true), true), any(vec3<bool>(arg_1.x, arg_0.c, true)))), vec2<u32>(~u_input.d, _wgslsmith_div_u32(max(75614u, u_input.c.x), ~1u)), !(!(!vec3<bool>(true, arg_0.c, false))), !vec3<bool>(all(vec3<bool>(arg_0.b, arg_1.x, true)), all(vec4<bool>(arg_0.b, arg_1.x, true, arg_1.x)), arg_0.b)), vec2<bool>(true, true), select(select(select(select(vec3<bool>(true, true, arg_0.b), vec3<bool>(true, false, arg_0.b), vec3<bool>(true, arg_0.c, false)), !vec3<bool>(arg_1.x, false, true), false || arg_1.x), !select(vec3<bool>(arg_0.c, arg_0.b, true), vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), vec3<bool>(!all(arg_1), !arg_1.x, any(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.b, arg_0.b, arg_1.x), arg_1.x))), !vec3<bool>(arg_0.c, arg_1.x, select(true, true, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = func_4(Struct_5(u_input.a.x, !arg_1.b.x, true), select(select(select(!arg_1.c.zx, arg_1.b, true), func_2(true), select(!vec2<bool>(arg_1.b.x, arg_1.c.x), vec2<bool>(arg_1.c.x, true), 12862i >= u_input.e)), vec2<bool>(arg_1.a.b.x, all(!vec4<bool>(arg_1.a.d.x, true, true, true))), vec2<bool>(true, func_2(all(arg_1.c)).x)));
    let var_1 = _wgslsmith_sub_vec3_i32(~min(u_input.a.wyy, -firstLeadingBit(u_input.a.zww)), ~abs(min(u_input.a.xxz, -u_input.a.wxx)));
    var var_2 = 4294967295u;
    let var_3 = func_4(Struct_5(-1i, false, true), !var_0.a.e.zy);
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-1413f, var_0.a.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.x, -455f, var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2456f))), arg_2.x, _wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(-1146f + var_0.a.a.x))), vec4<f32>(-1000f, arg_3.a, -1608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) * -571f))))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.a.xyw) & select(-select(vec3<i32>(u_input.a.x, u_input.b, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), false) << (_wgslsmith_add_vec3_u32(u_input.c, abs(vec3<u32>(u_input.c.x, 58690u, u_input.d))) % vec3<u32>(32u)), vec3<i32>(u_input.e, -2147483647i, -(~1i)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), func_1(784f, Struct_3(Struct_1(vec2<f32>(1000f, 1000f), vec3<bool>(false, true, false), u_input.c.zz, vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec2<bool>(false, true), vec3<bool>(false, false, false)), vec2<f32>(-398f, 353f), Struct_2(-535f))), vec3<bool>(true, true, true), true));
    var var_1 = select(vec4<bool>(!(~u_input.c.x != 27709u), true != select(true, true, true), false, false), !vec4<bool>(!func_2(true).x, select(false, func_4(Struct_5(2147483647i, true, false), vec2<bool>(false, false)).b.x, any(vec2<bool>(false, true))), false, true), select(!vec4<bool>(true, all(vec2<bool>(false, true)), u_input.b > 14721i, true), vec4<bool>(func_2(any(vec4<bool>(true, false, false, true))).x, select(any(vec3<bool>(false, true, true)), false, true), func_2(false).x && any(vec4<bool>(true, true, false, true)), true), false));
    var var_2 = true;
    var var_3 = u_input.c.yz;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, 509f, 512f, -1437f) * vec4<f32>(863f, -1183f, -987f, -312f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, 1005f, -352f, 1306f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1197f, 159f, 1151f, 860f), vec4<f32>(1538f, 1105f, -2042f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, -880f, -1370f, 240f) - vec4<f32>(-1223f, -1082f, -402f, 1179f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 501f, 231f, 405f))))))));
    let var_5 = Struct_4(Struct_3(Struct_1(var_4.ww, func_4(Struct_5(var_0.x, false, true), select(vec2<bool>(false, true), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x))).a.e, vec2<u32>(~0u, ~u_input.d), vec3<bool>(var_1.x, select(var_1.x, var_1.x, true), var_1.x), vec3<bool>(var_1.x, func_2(var_1.x).x, var_1.x)), vec2<bool>(true, true), var_1.wxz), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-479f, var_4.x)))), vec3<bool>(true, true, var_1.x | var_1.x), abs(countOneBits(vec2<u32>(1u, var_3.x) << (u_input.c.yy % vec2<u32>(32u)))), var_1.xxw, select(func_4(Struct_5(u_input.e, var_1.x, var_1.x), func_2(var_1.x)).a.b, func_4(Struct_5(var_0.x, true, true), !vec2<bool>(false, var_1.x)).c, false)));
    var var_6 = Struct_5(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.x), u_input.a.xx), _wgslsmith_clamp_i32(-2147483647i, 0i, 2147483647i)), any(var_1.zz), func_2(select(!var_5.b.d.x, all(vec4<bool>(true, true, var_5.a.c.x, var_5.a.c.x)) && (4294967295u < var_3.x), !var_5.a.c.x & !var_5.a.c.x)).x);
    var_2 = all(!select(select(vec4<bool>(var_5.a.c.x, false, var_1.x, true), !vec4<bool>(false, true, var_1.x, var_6.b), !vec4<bool>(false, false, var_5.a.a.e.x, var_1.x)), !select(vec4<bool>(false, true, false, var_5.a.b.x), vec4<bool>(false, var_6.c, var_5.b.d.x, var_1.x), true), func_4(Struct_5(2147483647i, true, false), var_1.zy).c.x));
    var_6 = Struct_5(u_input.a.x, true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) > _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-160f * var_5.b.a.x))), (var_4.x < _wgslsmith_f_op_f32(-var_4.x)) || var_5.b.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1u, firstLeadingBit(~(-2147483647i)), var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2349f - var_4.x)));
}

