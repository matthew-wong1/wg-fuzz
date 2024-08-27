struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(1i);
    var var_1 = arg_1;
    let var_2 = arg_1;
    var_1 = Struct_2(-(~(~_wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(var_0.a, var_2.a.x), vec2<i32>(var_0.a, var_2.a.x)))), 65235i);
    var var_3 = -reverseBits(vec4<i32>(~(i32(-1i) * -19783i), ~_wgslsmith_div_i32(var_2.a.x, -2147483647i), 1i, 25406i ^ ~var_2.a.x));
    return Struct_1(var_2.b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(trunc(arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(1189f - _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(1262f, arg_1)))), arg_1);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.zz));
    let var_2 = Struct_2(-firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, arg_0.a) << (vec2<u32>(u_input.a, 6201u) % vec2<u32>(32u)), vec2<i32>(1i, arg_3.a) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), _wgslsmith_add_i32(-28181i << (~u_input.a % 32u), arg_0.a));
    let var_3 = Struct_1(arg_3.a);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1529f);
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    let var_0 = !(!(!(arg_3 | all(vec3<bool>(arg_3, false, arg_3)))));
    let var_1 = -firstTrailingBit(arg_2.x);
    let var_2 = select(vec4<bool>(any(vec2<bool>(var_0 && false, true)), arg_1 > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * -411f))), select(!any(vec4<bool>(var_0, true, true, arg_3)), true, true), true), select(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_3, false, false), true)), !(var_1 <= 27293i), true, !(52540u < u_input.a)), !select(select(vec4<bool>(false, true, arg_3, var_0), vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, var_0, false, arg_3)), !vec4<bool>(var_0, arg_3, arg_3, var_0), !vec4<bool>(false, var_0, var_0, var_0)), vec4<bool>(true, true, arg_3, var_0)), true);
    var var_3 = var_1;
    var var_4 = _wgslsmith_dot_vec3_u32(reverseBits(~firstTrailingBit(vec3<u32>(54112u, u_input.a, 24204u))), vec3<u32>(~_wgslsmith_sub_u32(66304u, u_input.a), u_input.a, ~(~u_input.a))) != u_input.a;
    return -firstTrailingBit(var_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = func_2(-(arg_1.a & _wgslsmith_mod_i32(_wgslsmith_sub_i32(-15115i, -15114i), arg_1.a)), Struct_2(vec2<i32>(u_input.c, u_input.c), ~(-7918i)));
    let var_1 = -func_4(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, 2147483647i) ^ vec2<i32>(var_0.a, 2147483647i), vec2<i32>(1i, 4942i)), ~firstTrailingBit(arg_1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_1, _wgslsmith_f_op_f32(-236f * -1373f), vec4<u32>(136752u, 6023u, u_input.a, u_input.a), func_2(arg_1.a, Struct_2(vec2<i32>(arg_1.a, u_input.c), u_input.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), !all(vec3<bool>(true, false, false)))), ~(vec3<i32>(21003i, var_0.a, arg_1.a) >> (vec3<u32>(8334u, u_input.a, u_input.a) % vec3<u32>(32u))), true);
    var_0 = arg_1;
    let var_2 = select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), any(vec4<bool>(true, false, false, false))), true), vec3<bool>(true, true, true), all(vec3<bool>(!all(vec4<bool>(true, true, true, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), select(true, all(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, true))))));
    var var_3 = ~countOneBits(~1u);
    return Struct_2(~(-abs(select(vec2<i32>(27534i, u_input.c), vec2<i32>(u_input.c, arg_1.a), var_2.xz))), 1i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    return func_1(Struct_1(u_input.c), Struct_1(-u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-971f * -545f), -356f))), ~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 9348u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 0u, u_input.a)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(34690u, 4294967295u, u_input.a, 50021u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-1i) * -(~(~vec2<i32>(u_input.c, 2147483647i))), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -14907i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 80450i, -45569i), vec3<i32>(1i, u_input.c, u_input.c))), vec3<i32>(u_input.c, -60269i, -_wgslsmith_sub_i32(u_input.b, 1i))));
    var_0 = func_5(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(7076i, 28091i, -14173i), vec3<i32>(var_0.b, -19674i, var_0.a.x)), i32(-1i) * -1i), var_0.b), _wgslsmith_mult_vec2_i32(select(~var_0.a, var_0.a, true), _wgslsmith_mult_vec2_i32(var_0.a, var_0.a >> (vec2<u32>(u_input.a, 68713u) % vec2<u32>(32u))))), func_1(Struct_1(select(firstTrailingBit(var_0.b), 21408i, true)), Struct_1(u_input.c), -1323f, u_input.a));
    let var_1 = Struct_1(firstTrailingBit(2147483647i));
    var var_2 = func_1(var_1, var_1, _wgslsmith_f_op_f32(sign(-1426f)), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.a, 36906u, 15781u) << (vec3<u32>(1u, 17153u, u_input.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a, 36500u, u_input.a))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 31660u), vec3<u32>(1u, 0u, 13629u)))));
    let var_3 = ~_wgslsmith_div_i32(-2078i, _wgslsmith_clamp_i32(var_2.a.x, select(var_1.a, var_2.a.x, all(vec2<bool>(true, false))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.a.x, 33395i, var_1.a, 18070i), vec4<i32>(var_1.a, -22737i, 22429i, var_2.b), vec4<bool>(false, false, false, false)), firstLeadingBit(vec4<i32>(u_input.b, u_input.c, -28869i, var_1.a)))));
    var var_4 = vec3<bool>(true, true, true);
    var_4 = !vec3<bool>(~(u_input.a >> (u_input.a % 32u)) > ~u_input.a, true, true);
    var var_5 = func_1(Struct_1(1149i ^ select(-2147483647i, var_2.b >> (u_input.a % 32u), select(var_4.x, var_4.x, var_4.x))), Struct_1(46997i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-663f * 160f))))), select(u_input.a, 0u, true) | firstLeadingBit(firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-119f + 141f), 378f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(905f - 1000f), _wgslsmith_f_op_f32(floor(574f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(533f, -561f, -623f), vec3<f32>(1636f, -1557f, 364f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1661f, -326f, 766f) * vec3<f32>(879f, 720f, -2084f)))))));
}

