struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-579f * 1025f), 1000f);
    let var_1 = vec4<i32>(min(~(-1i), u_input.d.x), 12765i, firstLeadingBit(1i), min(-(u_input.d.x & -u_input.d.x), 1i >> (u_input.b.x % 32u)));
    var var_2 = vec2<u32>(u_input.e.x >> (u_input.c % 32u), ~_wgslsmith_add_u32(1u, ~u_input.e.x));
    var var_3 = Struct_1(~(select(vec3<i32>(3i, 22321i, -14201i), var_1.zwy, true) >> (u_input.b.yyz % vec3<u32>(32u))), true, vec4<u32>(36184u, 1u, 59256u, max(~1u, ~var_2.x)));
    var var_4 = var_3.c.wwz << (~(~min(countOneBits(vec3<u32>(var_3.c.x, u_input.b.x, var_2.x)), ~var_3.c.yyx)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(568f, 1391f, !var_3.b))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_1.yw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, _wgslsmith_f_op_f32(sign(-317f)))), !arg_0));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))))));
    var_1 = 417f;
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -19415i), i32(-1i) * -2147483647i), vec3<i32>(abs(-1i), u_input.d.x, abs(-4711i))), ~vec3<i32>(_wgslsmith_sub_i32(6939i, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 2147483647i), ~(-1i))), arg_0, _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(~u_input.e, abs(u_input.e), vec4<u32>(78777u, 1u, u_input.e.x, 68860u)), ~(~vec4<u32>(u_input.e.x, 1u, u_input.e.x, 4294967295u)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.e.yyz, u_input.b.yww), u_input.e.x, select(1u, u_input.c, true), 1u) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(trunc(var_0.x));
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1277f - -1000f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(357f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, 1844f, 1249f, arg_0.x))))), -137f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 209f) * vec3<f32>(-328f, 606f, 1412f)) * vec3<f32>(725f, 1541f, arg_0.x)) * vec3<f32>(1892f, arg_0.x, -648f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(1589f, 1128f, arg_0.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1628f, arg_0.x, arg_0.x))))));
    let var_1 = _wgslsmith_mod_u32(u_input.e.x, u_input.e.x);
    var var_2 = reverseBits(u_input.a.x);
    var var_3 = select(select(!vec2<bool>(arg_1.x, any(vec3<bool>(arg_1.x, false, false))), vec2<bool>(arg_1.x, arg_1.x), arg_1), vec2<bool>(_wgslsmith_f_op_f32(func_3()) <= 692f, all(vec4<bool>(false, true, arg_1.x, false))), vec2<bool>(all(vec2<bool>(true, true)), ((arg_1.x == arg_1.x) | true) || arg_1.x));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1172f, arg_0.x)), vec3<f32>(1795f, 979f, var_0.x)) * vec3<f32>(_wgslsmith_div_f32(var_0.x, -2265f), _wgslsmith_f_op_f32(800f - var_0.x), _wgslsmith_f_op_f32(arg_0.x * -1400f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1000f, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, 199f), vec3<f32>(var_0.x, 1000f, 1971f)))))))));
    return u_input.e.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((vec3<i32>(u_input.d.x ^ u_input.d.x, min(u_input.d.x, u_input.a.x), ~28174i) & (vec3<i32>(-1i) * -vec3<i32>(1i, -76529i, -1i))) << ((~(~u_input.b.xwz) >> (func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1361f, -1815f), vec2<f32>(327f, 100f)), vec2<bool>(true, true)) % vec3<u32>(32u))) % vec3<u32>(32u)), true & (!all(vec3<bool>(true, true, true)) || !any(vec3<bool>(false, false, true))), vec4<u32>(49364u, max(reverseBits(4422u), ~(~u_input.b.x)), ~31248u, u_input.b.x));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(768f * -244f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1611f))));
    var var_2 = var_0;
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)));
    var var_3 = _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(598f))))), !(!var_2.b || select(true, any(vec2<bool>(var_2.b, var_0.b)), any(vec4<bool>(true, var_0.b, true, false))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1916f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-243f)), 291f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_2.a.x, ~select(var_0.a.x, u_input.a.x, var_2.b), var_2.a.x, ~(~19456i)), ~((vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 62094i) & vec4<i32>(-3704i, var_0.a.x, -2147483647i, -12678i)) & firstTrailingBit(vec4<i32>(var_0.a.x, var_0.a.x, 14601i, var_2.a.x)))), u_input.d.yx, 27709u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(314f, 260f))), var_1.x, 408f))));
}

