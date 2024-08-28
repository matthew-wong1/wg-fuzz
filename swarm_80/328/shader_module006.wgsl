struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(40056u, Struct_1(arg_1.a, vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.d.x), arg_1.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(19839u, arg_1.d), countOneBits(1u)), u_input.e.x), arg_1.c, u_input.d.x, arg_1.a.x), arg_1.c, false, select(u_input.d.x >> (27610u % 32u), 4294967295u & arg_1.d, arg_1.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_1.c.wxw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(316f, -1560f), _wgslsmith_div_f32(572f, arg_0.x), _wgslsmith_f_op_f32(round(arg_1.c.x))), _wgslsmith_div_vec3_f32(arg_0.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, arg_0.x, 783f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, 129f, var_0.c.x) - vec3<f32>(var_0.b.c.x, 769f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, arg_1.c.x, arg_0.x) - arg_1.c.wzw), vec3<bool>(true, true, select(true, arg_1.a.x, false))))));
    var var_2 = any(!(!(!(!vec4<bool>(var_0.d, false, false, false)))));
    var var_3 = firstTrailingBit(i32(-1i) * -2147483647i);
    var var_4 = 2147483647i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-434f, -124f, -182f, arg_0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1391f, 264f, arg_0.x, arg_1.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(-736f)), var_1.x, _wgslsmith_f_op_f32(arg_1.c.x * 1908f), 104f)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_2));
    var var_1 = Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, 988f)) * _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(arg_1.yy, u_input.d, vec4<f32>(_wgslsmith_f_op_f32(-1f), -586f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 - arg_2))), -250f), 0u, true), arg_1.x, Struct_1(arg_1.xy, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.e.x, 1u), reverseBits(u_input.d.x), ~u_input.e.x, ~u_input.e.x), u_input.d << (vec4<u32>(u_input.e.x, u_input.b, 4294967295u, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1823f, 439f, 782f, arg_0.x)), Struct_1(arg_1.yx, u_input.d, vec4<f32>(arg_2, 844f, arg_3, -1034f), 1u, true))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(var_0, -1066f), _wgslsmith_f_op_f32(select(-1000f, 218f, arg_1.x)), arg_3)), u_input.b, arg_1.x));
    var var_2 = Struct_4(Struct_2(any(!select(vec3<bool>(arg_1.x, arg_1.x, var_1.a), arg_1, var_1.e.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_3) - _wgslsmith_f_op_vec2_f32(abs(arg_0.zz))) - vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + 627f), var_1.e.c.x)), var_1.e, all(vec4<bool>(!var_1.c.a.x, all(vec4<bool>(var_1.a, true, true, false)), arg_1.x | var_1.d, arg_1.x)), Struct_1(select(select(arg_1.xy, var_1.c.a, var_1.c.a.x), var_1.c.a, arg_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 0u, var_1.c.b.x, 41528u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.d, 1u, u_input.d.x, 21709u), vec4<u32>(var_1.c.d, var_1.e.d, var_1.e.b.x, u_input.e.x), var_1.e.b), vec4<u32>(40237u, 1u, 48475u, u_input.b)), _wgslsmith_f_op_vec4_f32(var_1.e.c + var_1.c.c), ~43888u, any(select(arg_1.yz, vec2<bool>(arg_1.x, false), true)))));
    var var_3 = Struct_4(Struct_2(all(var_1.e.a), var_1.c.c.wz, var_1.c, !(!select(arg_1.x, var_1.c.e, var_2.a.c.e)), var_2.a.e));
    var var_4 = Struct_1(select(!(!vec2<bool>(false, var_3.a.d)), var_2.a.e.a, var_1.c.a), reverseBits(var_2.a.e.b), vec4<f32>(_wgslsmith_f_op_f32(var_3.a.c.c.x - _wgslsmith_f_op_f32(sign(-815f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + var_0))), arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * -740f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, var_1.c.c.x, arg_1.x)) + var_3.a.c.c.x)))), ~u_input.d.x, any(!(!(!vec4<bool>(var_1.d, true, true, false)))));
    return Struct_4(Struct_2(false, var_3.a.c.c.ww, Struct_1(var_3.a.e.a, firstTrailingBit(vec4<u32>(var_3.a.c.d, 0u, var_4.d, 46755u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.c)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(76515u, 12927u, var_4.d), ~1u), all(!var_2.a.c.a)), ~_wgslsmith_mult_u32(4534u, var_2.a.c.b.x) != min(~var_3.a.e.d, 4294967295u | var_1.c.d), Struct_1(select(select(vec2<bool>(false, true), var_2.a.e.a, vec2<bool>(true, false)), !var_2.a.e.a, !arg_1.xx), vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(var_1.e.b.zy, var_2.a.e.b.zw), 4294967295u, ~var_3.a.e.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, var_0, var_0, var_2.a.c.c.x)))), min(~0u, var_1.c.d), var_4.a.x)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = u_input.a.x;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(2254f * -1679f), -1373f))), select(vec3<bool>(!all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true))), vec3<bool>(true, true, arg_0 == select(var_0, var_0, false)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(3241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f - 722f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-126f, -398f) * _wgslsmith_f_op_f32(round(407f))), -525f))), -1556f);
    var_1 = func_2(_wgslsmith_f_op_vec3_f32(-var_1.a.e.c.ywx), !(!vec3<bool>(var_1.a.d, true, all(vec4<bool>(true, var_1.a.a, false, var_1.a.a)))), 1f, -309f);
    var_1 = func_2(vec3<f32>(var_1.a.e.c.x, _wgslsmith_f_op_f32(max(475f, var_1.a.e.c.x)), var_1.a.b.x), vec3<bool>(false, all(vec4<bool>(var_1.a.c.e, any(vec2<bool>(false, false)), !var_1.a.c.a.x, true)), !(var_1.a.c.c.x >= -809f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f - var_1.a.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1105f)))))), _wgslsmith_f_op_f32(-var_1.a.e.c.x));
    var var_2 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(var_0, arg_0, 1i)), -min(vec3<i32>(-8240i, -2147483647i, -2147483647i), vec3<i32>(arg_0, 27619i, -1i)), vec3<i32>(arg_0, max(arg_0, 26760i), -1i)), min(~vec3<i32>(var_0, u_input.c.x, arg_0) ^ vec3<i32>(arg_0, u_input.a.x, 1i), ~firstLeadingBit(vec3<i32>(0i, u_input.a.x, u_input.a.x))), select(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.a.x, -40312i)), vec3<i32>(var_0, 14289i, 1i) ^ vec3<i32>(-1i, 2147483647i, 31906i)), select(vec3<i32>(-53727i, var_0, 14764i), vec3<i32>(arg_0, u_input.c.x, arg_0), vec3<bool>(var_1.a.d, var_1.a.d, false)), vec3<bool>(568f >= var_1.a.e.c.x, all(vec2<bool>(true, var_1.a.d)), select(false, var_1.a.d, false))));
    return func_2(vec3<f32>(-210f, -628f, _wgslsmith_f_op_f32(1483f - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(func_3(var_1.a.c.c, var_1.a.c)), var_1.a.c)).x)), !vec3<bool>(select(!var_1.a.c.e, true, false), var_1.a.c.b.x >= _wgslsmith_div_u32(29570u, u_input.e.x), !var_1.a.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1131f))), var_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -449f;
    let var_1 = func_1(u_input.a.x);
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0, var_1.a.e.c.x)), -799f, _wgslsmith_f_op_f32(-var_1.a.c.c.x), 1574f), vec4<f32>(-377f, var_1.a.c.c.x, -1178f, _wgslsmith_f_op_f32(var_1.a.b.x * 1219f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.e.c) + vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(178f, 326f, var_1.a.e.c.x, var_0), Struct_1(var_1.a.c.a, u_input.d, var_1.a.c.c, 7009u, false))).x, _wgslsmith_f_op_f32(ceil(-240f)), _wgslsmith_f_op_f32(-1185f * _wgslsmith_f_op_f32(var_0 * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1360f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x);
}

