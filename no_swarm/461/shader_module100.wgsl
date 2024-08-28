struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.c)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.x)), 1f), _wgslsmith_f_op_vec2_f32(-arg_0.c))));
    var_0 = arg_1;
    var var_2 = arg_1;
    let var_3 = Struct_1(select(!(!(!vec3<bool>(false, true, arg_1.a.x))), var_2.a, true), _wgslsmith_sub_u32(1u, firstTrailingBit(min(arg_0.d, var_2.d) & _wgslsmith_add_u32(56922u, var_2.b))), _wgslsmith_f_op_vec2_f32(min(arg_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -169f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, var_2.d), vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 19999u), _wgslsmith_mod_u32(19125u, ~var_2.b))));
    return (var_0.a.x & select(var_0.a.x, 1161f > _wgslsmith_f_op_f32(-arg_0.c.x), var_3.a.x)) || var_3.a.x;
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(true, false)), func_3(Struct_1(vec3<bool>(true, true, true), u_input.a.x, vec2<f32>(512f, 337f), 274u), Struct_1(vec3<bool>(true, false, false), 49936u, vec2<f32>(-508f, -1000f), u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), arg_0.x) | true), !vec2<bool>(any(vec2<bool>(true, true)), !all(vec3<bool>(false, false, true))));
    let var_1 = min(reverseBits(vec3<i32>(-32111i, arg_0.x, arg_0.x)) >> (vec3<u32>(_wgslsmith_add_u32(56738u, 0u) ^ (1u >> (u_input.a.x % 32u)), 4294967295u, _wgslsmith_mult_u32(0u, firstTrailingBit(1u))) % vec3<u32>(32u)), vec3<i32>(~(-25599i), -29914i, 5418i) ^ _wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 1i, 2147483647i), vec3<i32>(-2147483647i, 118968i, 0i)), ~vec3<i32>(arg_0.x, arg_0.x, arg_0.x)));
    var_0 = select(select(select(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), false), select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), var_0.x), vec2<bool>(true, true), -82400i >= arg_0.x), ~u_input.a.x <= u_input.a.x), select(vec2<bool>(false, var_0.x | false), select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), true), select(!vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x))), true), vec2<bool>(select(true, false, true) & func_3(Struct_1(vec3<bool>(var_0.x, false, false), u_input.a.x, vec2<f32>(1000f, -1433f), u_input.a.x), Struct_1(vec3<bool>(var_0.x, true, false), u_input.a.x, vec2<f32>(-732f, 864f), u_input.a.x), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 45664u, 1u), ~(-12467i)), _wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x) < u_input.a.x), false && (var_0.x | ((4294967295u >= u_input.a.x) || true)));
    var var_2 = -374f;
    var_0 = vec2<bool>(_wgslsmith_mult_i32(arg_0.x, var_1.x) < var_1.x, var_0.x);
    return vec3<bool>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-1048f * -1051f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1445f)) + _wgslsmith_f_op_f32(-1509f - 767f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, 1299f, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, 451f, 1335f, arg_1.c.x) * vec4<f32>(arg_0.c.x, var_0.c.x, -1244f, -447f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1375f, var_0.c.x, 1508f, -147f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2299f, -2023f, -228f, arg_0.c.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, arg_1.c.x, -1005f, arg_0.c.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, 276f, -1323f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(322f, var_0.c.x, arg_0.c.x, -708f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1008f, arg_0.c.x, arg_1.c.x, arg_0.c.x), vec4<f32>(1000f, var_0.c.x, 1830f, arg_0.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.x, var_0.c.x, var_0.c.x, arg_1.c.x), vec4<f32>(arg_0.c.x, -1306f, 570f, arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, arg_0.c.x, arg_0.c.x, 690f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, arg_1.c.x, arg_1.c.x, arg_1.c.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, 970f, 872f) * vec4<f32>(1058f, -1000f, var_0.c.x, arg_1.c.x)))))));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(-46128i, _wgslsmith_div_i32(-10407i, -1i)), 1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_0.d, 54413u, var_0.b), ~vec4<u32>(arg_0.b, 52460u, u_input.a.x, arg_0.b)) % 32u), 1i), reverseBits(-(~(~15251i))));
    var var_3 = vec2<bool>(func_2(~vec2<i32>(~2147483647i, 0i)).x, !all(!(!vec4<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x, arg_1.a.x))));
    var_3 = select(func_2(-select(min(vec2<i32>(var_2.x, -2221i), vec2<i32>(var_2.x, var_2.x)), vec2<i32>(-19516i, var_2.x) ^ vec2<i32>(var_2.x, -16936i), select(var_3.x, var_3.x, var_0.a.x))).xz, arg_1.a.yy, arg_1.a.x);
    return var_0;
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, false, true), ~(~select(38991u, ~1u, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)))), 99196u);
    var var_1 = func_4(func_4(var_0, var_0), var_0);
    let var_2 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(13394i, -5818i, -77522i), vec3<i32>(-1i, -23020i, 1i)), firstTrailingBit(vec3<i32>(0i, -2147483647i, 2147483647i))), vec3<i32>(_wgslsmith_div_i32(16636i, -11532i), max(-1i, 34477i), firstLeadingBit(-2147483647i))), ~_wgslsmith_clamp_i32(select(46626i, -9069i, var_0.a.x), _wgslsmith_sub_i32(2780i, -6348i), 1i));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, var_0.d), reverseBits(var_1.b), var_1.b >> (arg_0.d % 32u)), firstLeadingBit(vec3<u32>(var_0.b, var_0.d, ~var_0.b << (var_0.d % 32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec2<u32> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(max(1485f, 2433f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(floor(1f)), true)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f - 636f) * -1579f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(514f)))), true))));
    var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -39288i)), vec2<i32>(1i, -39999i), false), ~(vec2<i32>(-24795i, 1i) << (u_input.a % vec2<u32>(32u)))), ~(~1i)), ~0i);
    var_0 = -1985i | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-2147483647i, 1i)), abs(-vec2<i32>(2940i, 99669i))), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 17965i), firstLeadingBit(24748i)));
    let var_2 = func_5(func_4(Struct_1(func_2(vec2<i32>(-19259i, -33461i)), u_input.a.x & u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, 1518f)), ~76308u), Struct_1(!vec3<bool>(false, true, arg_1), _wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, -172f)), ~u_input.a.x))) ^ abs(_wgslsmith_sub_vec3_u32(~arg_0.zxw, select(arg_0.xzz, arg_0.yww, arg_1)));
    return max(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, 0u) | 1u, 1u), _wgslsmith_div_u32(4294967295u, var_2.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(var_2.x, ~47722u)), ~vec2<u32>(85035u, 20033u & u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.a);
    var_0 = u_input.a;
    var_0 = _wgslsmith_clamp_vec2_u32(~(~func_1(vec4<u32>(4294967295u, var_0.x, 48100u, var_0.x), true)), ~vec2<u32>(4294967295u, _wgslsmith_sub_u32(~41496u, _wgslsmith_mult_u32(806u, u_input.a.x))), ~(~_wgslsmith_sub_vec2_u32(u_input.a | vec2<u32>(var_0.x, u_input.a.x), u_input.a)));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, ~_wgslsmith_mult_i32(1i, 1i), ~_wgslsmith_mod_i32(2147483647i, -11683i)) ^ ~select(_wgslsmith_sub_vec3_i32(vec3<i32>(13552i, -28838i, -2147483647i), vec3<i32>(2147483647i, -20323i, -33207i)), ~vec3<i32>(1888i, 1i, -2147483647i), false), -firstTrailingBit(vec3<i32>(71033i, abs(-2147483647i), 38699i)));
    var var_2 = func_4(Struct_1(vec3<bool>(true, 43587u < var_0.x, true), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(708f, -909f)))), 1u << (u_input.a.x % 32u)), func_4(func_4(func_4(func_4(Struct_1(vec3<bool>(false, false, false), 43225u, vec2<f32>(-465f, -295f), u_input.a.x), Struct_1(vec3<bool>(false, false, false), u_input.a.x, vec2<f32>(195f, 160f), u_input.a.x)), Struct_1(vec3<bool>(false, false, false), 27483u, vec2<f32>(-709f, 1098f), 1u)), func_4(func_4(Struct_1(vec3<bool>(false, true, false), u_input.a.x, vec2<f32>(1257f, -204f), 4952u), Struct_1(vec3<bool>(true, true, false), var_0.x, vec2<f32>(-1209f, -469f), var_0.x)), Struct_1(vec3<bool>(true, false, true), var_0.x, vec2<f32>(-857f, 1000f), 4294967295u))), func_4(func_4(func_4(Struct_1(vec3<bool>(true, false, false), 1u, vec2<f32>(-782f, -494f), 1u), Struct_1(vec3<bool>(true, false, false), 51543u, vec2<f32>(-757f, 309f), var_0.x)), Struct_1(vec3<bool>(false, true, true), 78957u, vec2<f32>(1000f, -446f), var_0.x)), func_4(Struct_1(vec3<bool>(true, true, false), var_0.x, vec2<f32>(-961f, 1000f), u_input.a.x), func_4(Struct_1(vec3<bool>(false, true, false), var_0.x, vec2<f32>(568f, -377f), var_0.x), Struct_1(vec3<bool>(false, false, true), var_0.x, vec2<f32>(-1846f, 1397f), var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-12088i, var_1.x, 1i, ~abs(var_1.x >> (5997u % 32u))));
}

