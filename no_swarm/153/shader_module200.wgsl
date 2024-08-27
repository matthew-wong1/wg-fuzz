struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = !vec2<bool>(!(!any(vec4<bool>(false, false, false, true))), true | !(arg_0.x <= u_input.c.x));
    var_0 = select(!vec2<bool>(true, !any(vec2<bool>(true, var_0.x))), vec2<bool>(all(!vec4<bool>(true, var_0.x, var_0.x, true)), !(!all(vec2<bool>(false, false)))), any(!select(vec4<bool>(var_0.x, true, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), all(vec3<bool>(true, var_0.x, true)))));
    var_0 = select(!select(vec2<bool>(false, true), !select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), false), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x))), select(select(!select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), vec2<bool>(54267i > arg_0.x, true), !var_0.x), !(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true))), ((34011u ^ u_input.b.x) << (u_input.b.x % 32u)) == firstLeadingBit(select(u_input.b.x, u_input.b.x, false))), vec2<bool>(var_0.x, var_0.x || true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1782f, -1532f)) - _wgslsmith_div_f32(1242f, 366f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(203f, 1044f)), _wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(min(-348f, 653f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-2028f)), -681f, 862f))));
    let var_2 = abs(vec2<u32>(u_input.b.x, u_input.b.x)) >> (~u_input.b.zx % vec2<u32>(32u));
    return !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(select(any(vec2<bool>(true, var_0.x)), true, true), !(-902f >= var_1.a.x)), vec2<bool>(var_0.x, var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = arg_2;
    var_0 = Struct_2(select(vec4<bool>(arg_0.a.x, true, arg_2.e, true), !(!select(var_0.a, vec4<bool>(true, arg_0.e, true, true), arg_2.a)), !(5300u > firstLeadingBit(u_input.b.x))), arg_0.d, vec2<bool>(u_input.d.x != -(~u_input.d.x), arg_2.c.x), arg_2.d, true);
    let var_1 = Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, 421f, 404f)), arg_2.a.x))))), select(!func_3(vec3<i32>(u_input.a.x, 5844i, u_input.d.x)), vec2<bool>(all(!vec4<bool>(false, false, var_0.a.x, arg_2.e)), !arg_2.e), !arg_2.e), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(156f, -1000f)))), _wgslsmith_f_op_f32(trunc(-1310f)), arg_2.d.a.x)), true);
    var var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a.x, -(~(-1i)), _wgslsmith_sub_i32(16079i, ~(-45701i)), 1i), ~(vec4<i32>(u_input.a.x, -2147483647i, u_input.d.x, u_input.a.x) << (firstTrailingBit(vec4<u32>(4294967295u, 15196u, 71248u, 1u)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a.x, var_1.b.a.x, _wgslsmith_f_op_f32(-2093f - arg_2.b.a.x)) + _wgslsmith_f_op_vec3_f32(exp2(arg_0.d.a)));
}

fn func_2() -> vec4<bool> {
    let var_0 = u_input.b.x <= _wgslsmith_sub_u32(u_input.b.x, ~0u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<bool>(var_0 && true, var_0, all(vec2<bool>(false, var_0)), false), Struct_1(vec3<f32>(-1233f, -131f, 1000f)), func_3(u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(226f, -652f, 1000f), vec3<f32>(-1000f, -1000f, 133f), var_0))), true), !(var_0 & false), Struct_2(select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, false, false, var_0)), vec4<bool>(var_0, true, false, true), !vec4<bool>(true, var_0, true, var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1354f, 581f, -126f) - vec3<f32>(-1502f, -669f, 217f))), func_3(u_input.c << (u_input.b % vec3<u32>(32u))), Struct_1(vec3<f32>(-795f, 1377f, -1448f)), any(select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, true, var_0, var_0)))))));
    let var_2 = u_input.a.x > -u_input.a.x;
    var_1 = Struct_1(var_1.a);
    let var_3 = vec3<bool>(false, true, true);
    return vec4<bool>(!(var_1.a.x != _wgslsmith_f_op_f32(round(918f))), !(!func_3(vec3<i32>(u_input.c.x, u_input.a.x, -42386i)).x | true), var_3.x, true);
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1000f, arg_2.x, -318f) - vec4<f32>(arg_2.x, -380f, 649f, 772f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, 1151f, arg_1, arg_1))))))));
    var var_2 = Struct_2(select(func_2(), func_2(), func_2()), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-441f, -1762f, -304f) - vec3<f32>(arg_1, 1278f, -1182f))))), !(!vec2<bool>(!arg_0.a, !arg_0.a)), Struct_1(_wgslsmith_f_op_vec3_f32(max(var_1.www, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<bool>(arg_0.a, arg_0.a, true, true), Struct_1(vec3<f32>(arg_1, arg_2.x, -2274f)), vec2<bool>(true, arg_0.a), Struct_1(vec3<f32>(var_1.x, arg_1, -1412f)), false), true, Struct_2(vec4<bool>(false, false, arg_0.a, arg_0.a), Struct_1(var_1.wxz), vec2<bool>(arg_0.a, false), Struct_1(vec3<f32>(arg_2.x, 671f, 409f)), arg_0.a))))))), func_3(u_input.d).x);
    let var_3 = var_2.a.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(ceil(arg_2.x))), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2129f, 119f, arg_2.x, var_1.x), vec4<f32>(var_2.b.a.x, 2175f, -1000f, -105f))))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-289f, var_2.d.a.x, _wgslsmith_div_f32(401f, var_1.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2310f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))), false)) * -292f);
    let var_1 = Struct_2(!(!select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(true, true, true, true))), arg_0, select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), true), arg_0, (arg_1.x == 1u) && true);
    var var_2 = _wgslsmith_mod_i32(~(-_wgslsmith_add_i32(~u_input.c.x, -arg_2.x)), ~(-49743i));
    var_2 = -1i;
    var var_3 = ~(~select(~_wgslsmith_div_u32(1u, 4445u), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), any(select(var_1.a, var_1.a, true))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-505f < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), 1000f))), func_5(func_1(Struct_4(true, _wgslsmith_sub_i32(-2147483647i, u_input.a.x), -24540i, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2099f, -1756f))))), ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))), ~vec2<i32>(u_input.c.x, ~u_input.c.x)), func_5(func_5(Struct_1(vec3<f32>(-132f, 994f, -667f)), vec4<u32>(132966u, 1u, u_input.b.x >> (u_input.b.x % 32u), countOneBits(4294967295u)), u_input.a).d, min(~(vec4<u32>(1u, 59400u, 1u, u_input.b.x) | vec4<u32>(u_input.b.x, 0u, 106057u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(19100u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(51967u, u_input.b.x, 4294967295u, 4294967295u))), -u_input.a).d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-693f - -1190f)), _wgslsmith_f_op_f32(-332f + _wgslsmith_f_op_f32(round(1928f))), all(vec2<bool>(false, true))))));
    let var_1 = ~(vec2<i32>(countOneBits(u_input.a.x), 1i) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.b.yz), u_input.b.yx), _wgslsmith_sub_vec2_u32(select(u_input.b.zy, vec2<u32>(u_input.b.x, 0u), var_0.b.c), u_input.b.zz)) % vec2<u32>(32u)));
    var var_2 = 1889f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -699f))) + _wgslsmith_f_op_f32(-414f - 1451f)));
    var var_3 = vec3<u32>(u_input.b.x, (select(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), countOneBits(u_input.b.x), true) ^ 4294967295u) ^ u_input.b.x, u_input.b.x);
    let var_4 = Struct_2(var_0.b.a, func_1(Struct_4(1i < u_input.c.x, _wgslsmith_sub_i32(~(-1i), countOneBits(-2147483647i)), u_input.a.x, vec3<u32>(~111997u, ~var_3.x, abs(u_input.b.x))), _wgslsmith_f_op_f32(-var_0.d), var_0.b.b.a.xy), var_0.b.a.zz, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(Struct_4(var_0.a, u_input.c.x, u_input.d.x, u_input.b), var_0.c, var_0.b.d.a.zz).a.x, _wgslsmith_f_op_f32(-446f + -1158f), -607f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, 1000f, -1747f)))), false);
    var_2 = all(!(!vec3<bool>(func_2().x, var_4.e, var_4.b.a.x <= 1105f)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(561f * 426f));
}

