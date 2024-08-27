struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.c, Struct_1(arg_0.a, u_input.a.x, -arg_0.c, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x & 68868u, ~1u, 85321u))));
    let var_1 = Struct_4(Struct_3(i32(-1i) * 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1339f * 312f) + _wgslsmith_f_op_f32(-1433f - 1765f))), -706f, vec4<f32>(_wgslsmith_f_op_f32(sign(-389f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1403f - -422f) + _wgslsmith_f_op_f32(f32(-1f) * -190f))), 1f), Struct_1(var_0.b.a, countOneBits(~(-1i)), ~select(u_input.a, vec4<i32>(arg_0.c.x, -21768i, 26411i, -9094i), vec4<bool>(var_0.b.a, var_0.b.a, true, false)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.b.d, var_0.b.d, u_input.b.x) | vec4<u32>(22927u, var_0.b.d, arg_0.d, 110495u), vec4<u32>(13246u, 37917u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), ~arg_0.d));
    let var_2 = var_1.b;
    var var_3 = var_1.a;
    var_3 = Struct_3(abs(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, var_3.a, 2147483647i), vec4<i32>(1i, 0i, var_1.b.b, 2147483647i)), abs(vec4<i32>(var_2.b, var_1.a.a, var_1.a.a, -12212i))))), var_3.b, var_3.b, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_div_f32(-487f, -708f), var_1.b.a)), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(var_3.d.x - 322f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(378f * var_1.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1130f, var_1.a.e, false)) * 1168f)), _wgslsmith_f_op_f32(f32(-1f) * -739f)), -1173f);
    return select(vec2<bool>(true, var_1.b.a), !(!vec2<bool>(any(vec4<bool>(false, arg_0.a, var_2.a, false)), var_0.b.a & arg_0.a)), vec2<bool>(var_1.b.a, !var_1.b.a));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = true;
    let var_2 = Struct_1(true, ~firstLeadingBit(u_input.a.x), vec4<i32>(min(u_input.a.x, ~1i >> (firstTrailingBit(u_input.b.x) % 32u)), _wgslsmith_dot_vec3_i32(select(u_input.a.zxy >> (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), u_input.a.yww, vec3<bool>(true, true, true)), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), i32(-1i) * -23287i, _wgslsmith_mod_i32((u_input.a.x & 22033i) << (abs(u_input.b.x) % 32u), 1943i)), 22164u);
    var_1 = true;
    var_1 = !any(func_3(var_2));
    return _wgslsmith_mod_vec4_i32(var_2.c, ~firstTrailingBit(u_input.a));
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_2(func_2(arg_0.x), Struct_1(true, _wgslsmith_div_i32(-firstTrailingBit(u_input.a.x), u_input.a.x), abs(vec4<i32>(-2147483647i >> (1u % 32u), countOneBits(11640i), _wgslsmith_dot_vec3_i32(vec3<i32>(-28966i, -1i, 2147483647i), vec3<i32>(u_input.a.x, 2147483647i, 1i)), u_input.a.x & u_input.a.x)), arg_0.x));
    let var_1 = Struct_4(Struct_3(firstLeadingBit(var_0.b.b ^ ~1i), -598f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1406f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-753f - 910f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) + _wgslsmith_f_op_f32(floor(-766f))), _wgslsmith_div_f32(-1000f, -1113f), _wgslsmith_f_op_f32(-640f - _wgslsmith_f_op_f32(floor(-171f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-525f, _wgslsmith_div_f32(-814f, 641f), false)) - 1000f)), var_0.b);
    var var_2 = var_0.b.d;
    var_2 = 51084u;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-779f - var_1.a.e), _wgslsmith_div_f32(var_1.a.b, -1403f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c - var_3.a.e))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, _wgslsmith_f_op_f32(max(var_3.a.c, 573f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1(max(max(_wgslsmith_mult_vec3_u32(vec3<u32>(45155u, u_input.b.x, 12702u), vec3<u32>(1u, 43931u, u_input.b.x)), ~(~vec3<u32>(4294967295u, u_input.b.x, 16966u))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 32014u, u_input.b.x), vec3<u32>(43023u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, 18220u))))));
    let var_1 = -46350i;
    var var_2 = u_input.a.zzw;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -1345f), vec2<f32>(-1000f, var_0.x))))));
    var var_3 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>((var_2.x == 28951i) && true, true), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), any(vec4<bool>(false, false, false, false)))), select(vec2<bool>(func_3(Struct_1(false, u_input.a.x, vec4<i32>(-29821i, u_input.a.x, u_input.a.x, u_input.a.x), 1u)).x, false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_3(Struct_1(false, var_1, vec4<i32>(0i, 1i, 0i, var_1), u_input.b.x)), select(false, false, false)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_1(true, u_input.a.x, vec4<i32>(var_2.x, 38825i, -30338i, var_1), u_input.b.x))), vec2<bool>(all(vec3<bool>(true, true, true)), true), true));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(f32(-1f) * -481f));
    var_3 = vec2<bool>(!all(!(!vec4<bool>(var_3.x, var_3.x, false, var_3.x))), any(!(!(!vec3<bool>(var_3.x, var_3.x, var_3.x)))));
    let var_5 = _wgslsmith_div_vec2_u32(u_input.b >> (_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), vec2<u32>(reverseBits(23868u), ~u_input.b.x)) % vec2<u32>(32u)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, -1003f, var_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, var_0.x)))), u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-4119i, u_input.a.x) << (1u % 32u), -1i, ~abs(1i), 1i), _wgslsmith_div_vec4_i32(-abs(vec4<i32>(-1i, var_2.x, var_1, -50470i)), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, var_1, 2147483647i), ~(-1i), 12337i, var_1))));
}

