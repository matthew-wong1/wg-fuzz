struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_3(arg_2.c.e);
    let var_1 = countOneBits(select(arg_3.xww, ~vec3<u32>(4294967295u, 61220u, var_0.a.x) << (~vec3<u32>(u_input.a, arg_3.x, var_0.a.x) % vec3<u32>(32u)), vec3<bool>(!arg_2.a.a.x, any(arg_2.c.a.zz), true))) >> ((arg_3.wzy >> (firstLeadingBit(~firstTrailingBit(arg_3.wxz)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(557f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.x * arg_2.c.d.x) * -158f));
    let var_3 = Struct_4(Struct_1(vec3<bool>(arg_1, any(vec3<bool>(false, arg_1, false)), true), arg_2.a.b, !(!all(arg_2.b)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1624f)), -935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)), _wgslsmith_f_op_f32(abs(2733f))), arg_2.a.e), var_0, ~4294967295u);
    let var_4 = vec3<u32>(35747u, ~1u, ~select(0u, ~4294967295u, true)) ^ ~arg_3.zwx;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-547f, _wgslsmith_f_op_f32(abs(-1395f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_3.a.b.x), arg_2.c.b.x))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_4(Struct_1(vec3<bool>(true, arg_1.x, arg_1.x), _wgslsmith_f_op_vec2_f32(func_3(true, arg_1.x, Struct_2(Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec2<f32>(762f, 1472f), true, vec4<f32>(1337f, -738f, 859f, -1312f), vec2<u32>(1u, u_input.a)), vec3<bool>(arg_1.x, false, true), Struct_1(vec3<bool>(arg_1.x, true, arg_1.x), vec2<f32>(1000f, 1000f), true, vec4<f32>(-2983f, 602f, -690f, -1241f), arg_0.a)), ~(vec4<u32>(u_input.a, 4294967295u, 36052u, u_input.a) & vec4<u32>(arg_0.a.x, 51920u, arg_0.a.x, u_input.a)))), true && select(true, !arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, 837f, 313f, 348f) + vec4<f32>(-1653f, -411f, 552f, -126f)) - vec4<f32>(628f, -1302f, 582f, -525f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, -1193f, 269f, -1444f) - vec4<f32>(-374f, 822f, -303f, 306f)) - vec4<f32>(-1108f, -1720f, -1000f, 1486f)))), abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a, vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(arg_0.a, vec2<u32>(u_input.a, 17821u))))), Struct_3(~vec2<u32>(~u_input.a, ~0u)), select(3547u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, arg_0.a.x, arg_0.a.x), 34585u & arg_0.a.x), all(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)))) >> (~arg_0.a.x % 32u));
    var_0 = Struct_4(Struct_1(select(!vec3<bool>(arg_1.x, false, true), vec3<bool>(all(arg_1), true, u_input.a <= var_0.a.e.x), vec3<bool>(arg_1.x, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b))), var_0.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.d.x), var_0.a.b.x, _wgslsmith_f_op_f32(floor(var_0.a.d.x)), _wgslsmith_f_op_f32(exp2(var_0.a.d.x)))), var_0.a.e), arg_0, arg_0.a.x);
    var var_1 = Struct_4(Struct_1(!var_0.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1834f, var_0.a.b.x) * vec2<f32>(-920f, 739f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.b + var_0.a.b), _wgslsmith_f_op_vec2_f32(-var_0.a.d.xw))), !arg_1.x, var_0.a.d, _wgslsmith_clamp_vec2_u32(countOneBits(var_0.a.e), _wgslsmith_clamp_vec2_u32(var_0.b.a, select(var_0.b.a, arg_0.a, false), ~arg_0.a), arg_0.a)), Struct_3(vec2<u32>(select(arg_0.a.x, 1u, true), firstLeadingBit(1u))), _wgslsmith_add_u32(var_0.b.a.x, var_0.a.e.x));
    var var_2 = -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i) * -vec2<i32>(-30178i, 1i), reverseBits(vec2<i32>(-31644i, 73193i)), _wgslsmith_div_f32(426f, var_0.a.b.x) < var_1.a.b.x), -(~vec2<i32>(18296i, -46187i)) | (firstTrailingBit(vec2<i32>(1i, 16034i)) ^ abs(vec2<i32>(-66177i, -10260i))));
    let var_3 = var_0.a.a;
    return ~(~(~select(vec2<u32>(var_1.b.a.x, arg_0.a.x), arg_0.a, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = select(u_input.a, firstLeadingBit(u_input.a), true);
    let var_1 = 17410u <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~_wgslsmith_mod_u32(u_input.a, var_0)), countOneBits(func_2(Struct_3(vec2<u32>(var_0, 1u)), arg_1.yx)) | firstLeadingBit(~vec2<u32>(52153u, arg_0.e.x)));
    var var_2 = 1i;
    let var_3 = arg_1;
    let var_4 = Struct_4(arg_0, Struct_3(arg_0.e), 31043u);
    return -countOneBits(countOneBits(firstLeadingBit(1i)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: u32) -> vec2<f32> {
    return vec2<f32>(arg_2.x, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-747f, 532f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-956f, -576f))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(ceil(798f)))))), _wgslsmith_f_op_vec2_f32(func_4(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(20289i, 1i), vec2<i32>(22596i, 0i)) ^ _wgslsmith_sub_i32(-2147483647i, -74388i), -func_1(Struct_1(vec3<bool>(true, true, true), vec2<f32>(761f, -596f), true, vec4<f32>(-701f, -741f, 611f, 993f), vec2<u32>(0u, u_input.a)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_i32(-63105i, 1i), 1i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(562f, -409f, 891f) + vec3<f32>(353f, -2169f, 608f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1725f, 563f, 1080f))))), u_input.a)), vec2<bool>(u_input.a <= min(~34361u, u_input.a), true)));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(28999u, u_input.a), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(6230u, 4046u, 30209u, 4294967295u), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))) >> (vec2<u32>(4294967295u ^ u_input.a, 4294967295u) % vec2<u32>(32u)), ~max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(51567u, 4294967295u), vec2<u32>(u_input.a, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u))) % vec2<u32>(32u))));
    let var_2 = all(vec2<bool>(select(select(any(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true)), false), all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > _wgslsmith_f_op_f32(sign(299f))));
    var var_3 = any(!(!vec4<bool>(true, true, all(vec4<bool>(false, true, var_2, var_2)), false)));
    var_3 = !(!var_2);
    var_3 = !var_2;
    var_3 = any(select(!(!(!vec4<bool>(var_2, true, var_2, true))), !(!vec4<bool>(var_2, true, var_2, var_2)), vec4<bool>(true, all(!vec4<bool>(var_2, false, var_2, var_2)), !any(vec4<bool>(var_2, var_2, var_2, true)), select(true, var_2 | false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.x, var_1.x, 0u));
}

