struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = -(abs(abs(firstLeadingBit(vec4<i32>(13485i, -38648i, u_input.a, 1i)))) >> (~max(vec4<u32>(38978u, 0u, 100529u, 10470u) << (vec4<u32>(9758u, 36013u, u_input.b, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 20210u))) % vec4<u32>(32u)));
    var_0 = vec4<i32>(-(~abs(var_0.x)), 1i, firstLeadingBit(-(~(u_input.a | u_input.a))), ~u_input.a);
    var var_1 = max(countOneBits(-5889i), -66121i);
    let var_2 = ~2147483647i;
    var var_3 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1136f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-693f - -855f)))) || true);
    return _wgslsmith_add_vec3_i32(-(~(-vec3<i32>(var_2, 0i, 631i))), vec3<i32>(-max(0i, _wgslsmith_clamp_i32(var_0.x, arg_0.x, -1i)), arg_0.x, 1i));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-269f, arg_3.a.x, arg_2.x)), arg_3.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.e.a, arg_3.a) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.c.a.x, arg_3.a.x), arg_0.e.a, arg_2.xz)))))), arg_0.c.b);
    var var_1 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a, 2147483647i, 25839i)) & ((~vec3<i32>(u_input.a, u_input.a, u_input.a) | -vec3<i32>(21625i, u_input.a, u_input.a)) | -_wgslsmith_mult_vec3_i32(vec3<i32>(-1004i, -55603i, -2147483647i), vec3<i32>(0i, u_input.a, -70240i))), func_3(abs(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    let var_2 = arg_1;
    var var_3 = var_2.d.e.x;
    var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.d.b.b.x, 23331u, var_0.b.x) ^ vec3<u32>(arg_1.b.b.x, 35636u, 63180u), var_0.b, arg_0.c.b << (arg_1.e.b % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(arg_0.a.e.wxy, vec3<u32>(4294967295u, 40275u, 1u))), vec3<u32>(_wgslsmith_add_u32(1u, ~34705u), ~u_input.b ^ (arg_3.b.x | arg_3.b.x), var_0.b.x)), _wgslsmith_mult_u32(1u | min(~u_input.b, max(var_0.b.x, 0u)), ~4294967295u), _wgslsmith_clamp_u32(~arg_0.c.b.x, u_input.b, ~17024u ^ _wgslsmith_clamp_u32(arg_3.b.x, arg_3.b.x, 50694u)) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 62633u), _wgslsmith_div_u32(0u, var_0.b.x)), var_0.b.x) % 32u));
    return (_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1035f, 383f, arg_2.x)), -1003f))) >= arg_1.d.c.a.x) || ((arg_2.x | !(arg_0.d.c.b.x < var_0.b.x)) && (false != arg_2.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, u_input.b < 17458u), !func_2(Struct_3(arg_0, arg_0.c, Struct_1(vec2<f32>(arg_0.a.x, -824f), vec3<u32>(arg_0.e.x, 0u, 62821u)), Struct_2(arg_0.a, Struct_1(vec2<f32>(arg_0.d.x, arg_1.a.x), vec3<u32>(u_input.b, 37827u, 31056u)), arg_0.c, arg_0.c.a, arg_0.e), Struct_1(arg_1.a, vec3<u32>(arg_1.b.x, 0u, 12553u))), Struct_3(Struct_2(arg_0.a, Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_0.e.zwz), arg_1, vec2<f32>(1272f, arg_1.a.x), arg_0.e), Struct_1(vec2<f32>(arg_1.a.x, arg_0.a.x), arg_1.b), arg_1, arg_0, arg_0.c), vec4<bool>(false, true, false, false), Struct_1(arg_0.a.yx, vec3<u32>(arg_1.b.x, 45393u, u_input.b)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = false;
    var_1 = any(!select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)));
    let var_2 = !vec4<bool>(func_2(Struct_3(Struct_2(arg_0.a, Struct_1(vec2<f32>(-1000f, -627f), vec3<u32>(1u, u_input.b, 1u)), arg_1, arg_1.a, vec4<u32>(arg_0.b.b.x, 46218u, 1u, 0u)), Struct_1(arg_0.b.a, arg_1.b), Struct_1(vec2<f32>(-514f, 188f), vec3<u32>(1u, 69370u, 4294967295u)), Struct_2(vec4<f32>(161f, arg_1.a.x, arg_1.a.x, 812f), Struct_1(vec2<f32>(427f, arg_0.b.a.x), vec3<u32>(arg_2.x, arg_0.c.b.x, 19721u)), Struct_1(arg_0.a.zw, arg_0.b.b), arg_0.a.xw, arg_0.e), Struct_1(arg_0.a.xw, vec3<u32>(arg_2.x, 1u, arg_1.b.x))), Struct_3(Struct_2(vec4<f32>(1417f, -886f, 514f, 1000f), Struct_1(arg_1.a, vec3<u32>(u_input.b, arg_1.b.x, arg_1.b.x)), Struct_1(vec2<f32>(-1000f, 638f), arg_2), vec2<f32>(arg_1.a.x, 253f), arg_0.e), Struct_1(arg_1.a, arg_2), Struct_1(vec2<f32>(arg_0.c.a.x, -1000f), arg_0.c.b), arg_0, arg_0.c), vec4<bool>(true, false, true, true), Struct_1(arg_1.a, arg_2 ^ vec3<u32>(1u, arg_0.b.b.x, arg_1.b.x))), true, any(vec2<bool>(true, true)), false);
    var var_3 = -638f;
    return firstTrailingBit(arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~min(_wgslsmith_mod_vec3_u32(func_1(Struct_2(vec4<f32>(1902f, 439f, 747f, -135f), Struct_1(vec2<f32>(941f, -722f), vec3<u32>(4294967295u, u_input.b, 1u)), Struct_1(vec2<f32>(-769f, 716f), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec2<f32>(474f, -101f), vec4<u32>(u_input.b, u_input.b, u_input.b, 66919u)), Struct_1(vec2<f32>(-1339f, 747f), vec3<u32>(4294967295u, u_input.b, 4294967295u)), vec3<u32>(29158u, 0u, 0u)), ~vec3<u32>(0u, u_input.b, u_input.b)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))), vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, 51390u, u_input.b)), ~vec3<u32>(u_input.b, 1u, 18770u)) ^ u_input.b, ~0u >> (firstTrailingBit(~u_input.b) % 32u), u_input.b), (i32(-1i) * -(i32(-1i) * -2147483647i)) >= abs(max(u_input.a, 1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1069f, -1043f, -287f, -808f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 684f, -1058f, -1000f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2599f, 123f, -586f, -1000f))))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(415f)), _wgslsmith_f_op_f32(1790f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1751f) * -1567f)), _wgslsmith_mult_vec3_u32(var_0, ~(~var_0))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1194f, 374f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(833f, 1590f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-968f, 1157f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-228f, 1026f), vec2<f32>(1163f, 1616f))))), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.x, var_0.x, 35478u, u_input.b)), (countOneBits(vec4<u32>(u_input.b, 4294967295u, u_input.b, var_0.x)) << (firstLeadingBit(vec4<u32>(97635u, 441u, 50936u, var_0.x)) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 51142u, 4294967295u), vec4<u32>(20936u, u_input.b, 36111u, 16245u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(abs(vec4<i32>(u_input.a, 0i, -11922i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, -2147483647i, _wgslsmith_mult_i32(14945i, -5839i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-288f)) + 640f), var_0.x, _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_div_i32(1i, u_input.a), -2147483647i));
}

