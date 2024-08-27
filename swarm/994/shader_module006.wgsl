struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(~(~max(u_input.a & u_input.a, ~30098u)), u_input.a, select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-591f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1347f)), -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1786f, 1453f) - vec2<f32>(-1000f, -383f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, -1056f)))))), ~1u);
    let var_1 = vec3<bool>(true, any(var_0.c.xx), var_0.c.x);
    let var_2 = ~(~reverseBits(vec3<u32>(var_0.a, 18372u, u_input.a)) | ~countOneBits(vec3<u32>(0u, 0u, 5598u))) >> (vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.a, ~23123u, max(var_0.a, 15188u))), 4294967295u >> (~firstLeadingBit(var_0.e) % 32u), ~firstLeadingBit(var_0.b)) % vec3<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_mod_u32(countOneBits(countOneBits(firstTrailingBit(var_2.x))), 70860u), ~firstLeadingBit(min(var_2.x | 4294967295u, ~4294967295u)), vec3<bool>(any(var_0.c), true, !select(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_f_op_vec2_f32(-var_0.d)))), _wgslsmith_mod_u32(var_0.e, u_input.a));
    var var_4 = vec3<u32>(var_0.e, _wgslsmith_add_u32(~(~(~var_2.x)), 0u), firstTrailingBit(_wgslsmith_sub_u32(var_2.x, 0u) & _wgslsmith_clamp_u32(abs(649u), ~var_3.e, _wgslsmith_div_u32(var_3.b, u_input.a))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, abs(1i)), 1i, -1i), vec3<i32>(-select(~64351i, -1i, true), min(-(~0i), -_wgslsmith_div_i32(1544i, -1i)), reverseBits(firstLeadingBit(-2147483647i >> (var_2.x % 32u)))));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(~min(1i, func_3()), abs(1i), -func_3()));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f * -395f) + _wgslsmith_f_op_f32(f32(-1f) * -1264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1789f)), 128f, -1188f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, -581f, 689f, 487f) * vec4<f32>(-1884f, -1460f, -598f, 313f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1451f, -722f, 285f, 610f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1937f, -198f, _wgslsmith_div_f32(1482f, 799f), _wgslsmith_f_op_f32(f32(-1f) * -874f))))), ~(~u_input.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~u_input.a, u_input.a)), ~(~(vec2<u32>(51232u, 42055u) & vec2<u32>(u_input.a, 39120u)))), 17651i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_1.b.x, var_1.a.x, var_1.b.x, var_1.a.x)) + vec4<f32>(var_1.b.x, 1816f, 206f, -935f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)) - _wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(847f, var_1.b.x, var_1.b.x, 896f), arg_0.x))), vec4<bool>(arg_0.x, all(vec3<bool>(true, arg_0.x, arg_0.x)), arg_0.x == arg_0.x, any(vec2<bool>(arg_0.x, false))))) * var_1.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(select(-588f, -559f, false)), 1000f))), var_1.a), var_1.d, countOneBits(var_1.c), var_0 ^ func_3());
    var var_3 = Struct_2(var_2.c, 1u, !select(!select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, true, arg_0.x), arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1738f, -1289f) + _wgslsmith_f_op_vec2_f32(var_1.b.zw - vec2<f32>(var_2.b.x, -198f))), var_2.a.wx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.wy), _wgslsmith_f_op_vec2_f32(-var_2.a.xx)), arg_0)), firstTrailingBit(var_1.d));
    let var_4 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(var_1.e, var_2.e, var_2.e, var_0) & vec4<i32>(-39049i, var_2.e, var_0, -9972i)), vec4<i32>(-1i) * -vec4<i32>(0i, -1i, var_1.e, var_0)), ~(vec4<i32>(-39971i, var_1.e, 44983i, -2147483647i) << (vec4<u32>(1u, 0u, var_1.c, 39541u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.e, 47476i, var_1.e, 25459i), vec4<i32>(var_1.e, 1i, 0i, var_0)), max(vec4<i32>(var_1.e, 23853i, var_1.e, var_0), vec4<i32>(var_0, var_2.e, 21372i, var_0)))));
    return select(-_wgslsmith_clamp_i32(1i, var_0, ~(-2400i) & ~var_1.e), -_wgslsmith_add_i32(2147483647i, -2147483647i), var_3.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_2(~_wgslsmith_add_u32(~u_input.a | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)) ^ select(11271u, 1u, true)), ~_wgslsmith_sub_u32(~u_input.a, 1u) | 0u, vec3<bool>(all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), true != (true & select(true, false, false)), true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(785f, -1228f) + vec2<f32>(-622f, -842f))))))), ~(~12456u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -469f, var_0.d.x, -133f), vec4<f32>(var_0.d.x, 451f, var_0.d.x, 1000f), true)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, var_0.d.x, -150f, 480f) - vec4<f32>(1692f, -800f, -1241f, var_0.d.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, -1000f, var_0.d.x, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2547f, 115f))), var_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.d.x, -553f)), -195f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.d.x) * _wgslsmith_f_op_f32(var_0.d.x - -665f))))), ~(var_0.e & 1u), 4294967295u, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(-76654i, 3069i)), -(arg_0.yz & vec2<i32>(-28378i, 549i))), ~(~reverseBits(vec2<i32>(44049i, -1i)))));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -501f), 473f)), 429f)), _wgslsmith_div_f32(-749f, _wgslsmith_f_op_f32(min(-971f, _wgslsmith_f_op_f32(var_1.b.x + -754f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(298f)) * _wgslsmith_f_op_f32(sign(var_0.d.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_div_f32(var_1.b.x, -2474f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -937f))))), _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1344f + var_1.b.x), var_1.a.x, var_1.b.x, _wgslsmith_f_op_f32(-var_0.d.x)), var_1.a)), _wgslsmith_add_u32(u_input.a, ~59370u), ~1u, _wgslsmith_mult_i32(abs(-(~arg_0.x)), _wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, var_1.e, arg_0.x, var_1.e), -arg_1))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)) + vec4<f32>(-1273f, _wgslsmith_div_f32(-1393f, 932f), -644f, _wgslsmith_f_op_f32(f32(-1f) * -1199f)))), var_1.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32630u, var_1.d), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.e, 66252u, var_1.d), vec3<u32>(var_0.e, var_0.e, var_0.a))), 2375u), countOneBits(abs(~72902u)) << (var_0.a % 32u), abs(arg_1.x));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), 822f))), -160f, var_1.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(136f)), 835f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)) - _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.d.x, 1505f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-882f - -808f), 290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0.c.x & arg_1.c.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 733f, 411f, -205f) - vec4<f32>(-899f, -611f, 961f, arg_0.d.x)), vec4<f32>(-1000f, arg_0.d.x, arg_0.d.x, arg_1.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-1041f * arg_1.d.x), _wgslsmith_f_op_f32(-arg_1.d.x), -981f, -279f), !(!arg_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.x, 1769f) + -674f), arg_1.d.x), select(vec4<bool>(true, true, true, arg_1.c.x), vec4<bool>(any(vec4<bool>(false, arg_1.c.x, arg_0.c.x, arg_1.c.x)), all(vec4<bool>(true, false, true, arg_0.c.x)), true, arg_0.c.x), vec4<bool>(false, true, arg_1.c.x, arg_1.d.x < -394f)))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(func_2(arg_1.c.xz), -69581i, -1i, 2147483647i))), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u & u_input.a, 4294967295u >> ((arg_0.b << (1u % 32u)) % 32u), ~(~arg_0.e)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.b, 1u), vec3<u32>(arg_1.a, 38040u, 0u), ~vec3<u32>(arg_0.a, 33728u, arg_1.e)))), ~min(~4294967295u, ~(arg_0.e ^ 37099u)), -14849i);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1325f))))) * arg_1.d.x)));
    var var_3 = arg_1;
    var_2 = var_1.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(-11505i, var_1.e, 2147483647i, -1i) ^ firstTrailingBit(vec4<i32>(-1136i, 0i, var_1.e, var_1.e)), ~firstLeadingBit(vec4<i32>(2147483647i, -1i, -2147483647i, -9080i)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (firstLeadingBit(vec3<u32>(0u, 1u, 8491u)) % vec3<u32>(32u))) ^ ~abs(vec3<u32>(0u, 4294967295u, u_input.a))));
    let var_1 = ~var_0.x;
    let var_2 = Struct_2(~var_0.x, reverseBits(~11610u >> (~(var_0.x & var_1) % 32u)), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) + _wgslsmith_f_op_f32(func_1(Struct_2(u_input.a, 4294967295u, vec3<bool>(false, true, false), vec2<f32>(-1187f, 1000f), u_input.a), Struct_2(var_1, u_input.a, vec3<bool>(true, true, false), vec2<f32>(-734f, -1293f), var_1)))), false, true), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1842f)), -1118f), 0u);
    let var_3 = var_2.d.x;
    let var_4 = Struct_2(countOneBits(~(~1u)), max(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_mult_u32(1u, 1u)), 47845u, _wgslsmith_div_u32(var_0.x, var_1) & 0u), u_input.a), !var_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1029f, var_2.d.x)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(248f, var_3, var_3))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, var_3, 901f) * vec3<f32>(-1006f, 2715f, var_4.d.x)) * vec3<f32>(var_4.d.x, 129f, var_4.d.x)), select(vec3<bool>(true, true, true), !vec3<bool>(false, var_2.c.x, var_4.c.x), false))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(2147483647i, -11577i, 2147483647i, -3050i), vec4<i32>(32909i, -34156i, 8221i, -1i))), max(firstTrailingBit(vec4<i32>(2147483647i, -4471i, 1i, 1i)), -vec4<i32>(1i, -2147483647i, 8907i, -1i)))).xyz)), var_4.d.x);
}

