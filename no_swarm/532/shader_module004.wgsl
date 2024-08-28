struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b)))), reverseBits(_wgslsmith_add_vec2_u32(~arg_1.c & (arg_1.c ^ arg_1.c), ~(arg_1.c >> (u_input.b.ww % vec2<u32>(32u))))), _wgslsmith_clamp_i32(-(arg_2.x ^ arg_2.x) | _wgslsmith_add_i32(~arg_2.x, _wgslsmith_mult_i32(arg_2.x, arg_2.x)), firstTrailingBit(countOneBits(arg_2.x)) << (arg_1.c.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(61461i, 25929i), abs(arg_2.x)), reverseBits(arg_2.x))), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -527f)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-569f, arg_1.b.x)), -2537f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))));
    let var_1 = select(select(vec3<bool>(var_0.d, false, any(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, true)))), !vec3<bool>(var_0.d == true, true, var_0.c <= arg_2.x), !(!var_0.d)), vec3<bool>(!(arg_1.d > ~4294967295u), any(!vec4<bool>(var_0.d, true, var_0.d, var_0.d)), any(select(!vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, true), false))), select(select(!vec3<bool>(true, var_0.d, var_0.d), select(!vec3<bool>(true, false, var_0.d), select(vec3<bool>(false, false, var_0.d), vec3<bool>(false, false, false), vec3<bool>(var_0.d, false, true)), true), select(vec3<bool>(var_0.d, var_0.d, false), select(vec3<bool>(true, var_0.d, false), vec3<bool>(false, true, false), vec3<bool>(var_0.d, var_0.d, var_0.d)), false)), select(!select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(false, var_0.d, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.d, false, true)), select(true, true, false)), true));
    var var_2 = ~arg_2.x;
    var var_3 = ~abs(_wgslsmith_dot_vec3_u32(u_input.a, countOneBits(vec3<u32>(24424u, var_0.b.x, var_0.b.x)) | vec3<u32>(4294967295u, 72141u, arg_1.d)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(var_0.a, var_0.a)), var_0.b, max(var_0.c, var_0.c), true, 1137f);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, true)), func_3(475f, Struct_4(43974u, vec2<f32>(-1522f, -716f), u_input.a.yz, u_input.a.x), vec4<i32>(-2147483647i, 26256i, -1i, 1i)), true)), vec4<bool>(!select(true, true, 1433u == u_input.a.x), true, true, _wgslsmith_dot_vec2_u32(u_input.b.wz, max(vec2<u32>(u_input.a.x, 11080u), vec2<u32>(u_input.a.x, u_input.a.x))) > countOneBits(~u_input.a.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) || !(!any(vec3<bool>(true, true, true))));
    let var_1 = ~(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(20201i, -1i, 0i), vec3<i32>(-19160i, -4145i, -1i)), -vec3<i32>(0i, 25264i, 39246i)) | 1815i);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -638f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f), 1633f), _wgslsmith_f_op_f32(f32(-1f) * -161f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-203f, 1459f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, -613f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -361f)), _wgslsmith_f_op_f32(sign(-626f))), !select(!var_0.xy, vec2<bool>(true, true), all(vec2<bool>(true, var_0.x))))), !(!(select(var_0.x, var_0.x, var_0.x) || false))));
    var var_3 = _wgslsmith_f_op_f32(round(951f));
    let var_4 = abs(var_1);
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(794f, 809f, var_2.x), vec3<f32>(-698f, 334f, var_2.x))))))))), ~u_input.a.x, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.a.xz, arg_2.a.yx)) + arg_2.a.yx), vec2<u32>(~(73730u & arg_1.b), arg_0.b) ^ u_input.b.zz, ~1i, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1418f, arg_1.a.x)))))));
    let var_1 = ~(~u_input.b.xwy);
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * -313f) + _wgslsmith_f_op_f32(-171f - _wgslsmith_f_op_f32(-var_0.a.x)))), vec2<u32>(~arg_2.b, 1u), -(~(~_wgslsmith_div_i32(0i, var_0.c))), all(!select(!vec4<bool>(var_0.d, arg_1.c, true, false), select(vec4<bool>(arg_0.c, false, arg_2.c, arg_1.c), vec4<bool>(arg_1.c, true, true, false), var_0.d), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)))), arg_0.c)), var_0.a.x)));
    var var_2 = arg_0.c;
    var var_3 = var_0.c;
    return any(select(!select(select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_1.c, arg_2.c), vec2<bool>(arg_1.c, arg_2.c)), vec2<bool>(true, false), !vec2<bool>(false, arg_0.c)), vec2<bool>(true, all(select(vec3<bool>(arg_1.c, true, true), vec3<bool>(var_0.d, true, true), vec3<bool>(arg_2.c, false, true)))), arg_0.a.x >= arg_1.a.x));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_mod_u32(u_input.b.x, 21142u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, 1000f)) - _wgslsmith_f_op_f32(round(1028f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1832f)))), u_input.a.xz, _wgslsmith_mod_u32(u_input.b.x & 61922u, ~(42185u << (0u % 32u))));
    let var_1 = arg_0.e;
    var var_2 = func_4(func_2(), func_2(), func_2());
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, var_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 2062f) * vec2<f32>(-1556f, var_0.b.x))))) * _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(arg_0.a, func_2().a.x))), _wgslsmith_sub_vec2_u32(~(abs(vec2<u32>(arg_0.c, 35458u)) >> (u_input.b.yy % vec2<u32>(32u))), abs(abs(vec2<u32>(4352u, u_input.b.x)) | u_input.a.xy)), 2147483647i >> (max(~var_0.d, _wgslsmith_mod_u32(56400u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x))) % 32u), false, _wgslsmith_f_op_f32(-313f * arg_0.a));
    let var_4 = 762f;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = 0i;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-arg_0.d))), arg_0.d)), _wgslsmith_f_op_f32(-147f * -943f), 236f, -605f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(-356f, arg_0.d)))), _wgslsmith_f_op_f32(round(-719f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-664f, arg_0.a), vec2<f32>(924f, arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(Struct_3(_wgslsmith_f_op_f32(-1f), u_input.b.x, 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(max(-925f, -1755f)))), -1i)), max(u_input.b.x, max(u_input.b.x, u_input.b.x) | firstTrailingBit(u_input.a.x)) < ~(~u_input.a.x), vec3<bool>(false, func_2().c, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x) != abs(~u_input.b.x)), select(vec2<bool>(true, func_2().c), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), func_2().c), select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), false)));
}

