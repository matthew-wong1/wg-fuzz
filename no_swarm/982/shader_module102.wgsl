struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_1(arg_1, -39538i, vec3<f32>(1f, -178f, -487f), u_input.c.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, 171f, 1000f) + vec3<f32>(-787f, -2081f, -2013f)))))))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1911f, 377f, var_0.e.x))))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    let var_0 = vec3<i32>(69400i, -24257i, -u_input.c.x);
    var var_1 = u_input.d.yww;
    let var_2 = Struct_1(~(~(firstTrailingBit(vec4<u32>(43679u, 1u, 1u, u_input.e.x)) ^ (vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.e.x) >> (vec4<u32>(u_input.a, u_input.b.x, u_input.e.x, 1u) % vec4<u32>(32u))))), -25111i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, 184f, arg_0)))), ~var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, 1u, u_input.a), vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -1621f, -693f))), vec3<f32>(1456f, -1740f, arg_0)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1893f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 565f)))))))));
    var var_3 = var_2.c.zy;
    var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-28800i, -firstLeadingBit(var_2.d), ~(-1i)) << (~u_input.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.d.x, var_2.d, 26414i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, var_1.x), u_input.d.wxx)), var_0) ^ _wgslsmith_mult_vec3_i32(-(u_input.d.xzz | vec3<i32>(65905i, var_0.x, var_0.x)), var_0), abs(u_input.d.zyx));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, u_input.b.x, ~u_input.e.x, ~(~31582u)) | vec4<u32>(abs(countOneBits(var_2.a.x)), min(1u, firstTrailingBit(1u)), var_2.a.x, ~(var_2.a.x | var_2.a.x)), countOneBits(countOneBits(var_2.a)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_f_op_f32(min(899f, arg_1.x));
    let var_1 = abs(_wgslsmith_mod_i32(28924i, -11945i));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - -183f)), arg_1.x));
    let var_2 = Struct_1(reverseBits(~(func_2(arg_1.x) >> (vec4<u32>(4294967295u, 5095u, 51411u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-(u_input.d.x & var_1), var_1, _wgslsmith_dot_vec3_i32(~vec3<i32>(37967i, u_input.d.x, -2147483647i), vec3<i32>(28001i, -1i, u_input.c.x))), vec3<i32>(-35469i, firstLeadingBit(-35296i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-13502i, -39304i, -2147483647i, 27992i)), u_input.d))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1775f)) - arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), firstTrailingBit(~_wgslsmith_dot_vec2_i32(u_input.d.zw | vec2<i32>(var_1, u_input.c.x), -vec2<i32>(u_input.d.x, u_input.d.x))), arg_1);
    return Struct_1(var_2.a, -(~(-19746i)), arg_1, ~(-abs(~(-45921i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 1202f, -923f), _wgslsmith_f_op_vec3_f32(trunc(var_2.e))))))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_1(vec4<u32>(~(select(0u, 35199u, arg_3) >> (_wgslsmith_dot_vec2_u32(arg_2.a.wx, arg_2.a.xz) % 32u)), arg_0, ~3699u, arg_0), ~firstTrailingBit(-firstTrailingBit(u_input.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.e))), -18185i ^ (arg_2.b ^ -arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.e)));
    let var_2 = 14297i | _wgslsmith_clamp_i32(arg_2.b, (arg_2.b >> (~39860u % 32u)) >> (1u % 32u), abs(48182i));
    var_1 = arg_2;
    var var_3 = func_1(~max(vec2<u32>(41517u, 44871u) | (arg_2.a.xw | vec2<u32>(4468u, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(14652u, arg_2.a.x), var_1.a.zy)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.e), arg_2.e)));
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_div_u32(~u_input.e.x, 90047u), ~(~1u), true);
    var var_1 = true;
    var_1 = u_input.d.x < u_input.d.x;
    var var_2 = select(!select(func_4(max(u_input.e.x, u_input.e.x), vec3<i32>(15458i, -2147483647i, u_input.c.x), func_1(vec2<u32>(var_0, 4294967295u), vec3<f32>(-625f, 746f, 492f)), u_input.d.x != u_input.d.x), vec2<bool>(true, func_4(u_input.a, u_input.d.wxw, Struct_1(vec4<u32>(37025u, 4294967295u, 3799u, 9386u), 31862i, vec3<f32>(1856f, -360f, -660f), u_input.d.x, vec3<f32>(216f, -1107f, -1420f)), true).x), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, true), false);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -984f);
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(func_1(vec2<u32>(42130u, u_input.e.x), vec3<f32>(-1403f, 803f, -1833f)).d, u_input.d.x >> (26401u % 32u), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -17636i)), select(u_input.d, vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.c.x, u_input.d.x), vec4<i32>(u_input.d.x, 16593i, 1i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, 34825i, u_input.c.x), abs(vec4<i32>(u_input.d.x, u_input.c.x, 2147483647i, -17344i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -53125i)), -10078i | u_input.c.x), func_4(var_0, u_input.c, Struct_1(max(vec4<u32>(11134u, u_input.e.x, u_input.a, 4294967295u), vec4<u32>(u_input.e.x, 44062u, 1u, 1u)), func_1(u_input.e, vec3<f32>(188f, 988f, 384f)).b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-216f, 894f, 192f))), u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-697f, 2009f, -393f) - vec3<f32>(2222f, 149f, 635f))), var_2.x || true).x), select(u_input.a, ~_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 22051u, var_0), vec3<u32>(4294967295u, 39616u, 19425u))), !all(vec4<bool>(false, var_2.x, false, false))));
}

