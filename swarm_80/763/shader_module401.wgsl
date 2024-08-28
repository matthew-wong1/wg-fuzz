struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -1196f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(115f + -430f))), _wgslsmith_f_op_f32(round(735f))))));
    var var_2 = true;
    var_2 = true;
    let var_3 = Struct_3(1000f);
    return u_input.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(-860f)));
    let var_1 = false;
    let var_2 = countOneBits(~vec2<i32>(_wgslsmith_sub_i32(~2147483647i, select(u_input.e, -2147483647i, var_1)), -u_input.d));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1f), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -607f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) + _wgslsmith_f_op_f32(-var_0.a)))));
    var var_4 = arg_0.x >> (~74245u % 32u);
    return Struct_1(!var_1, arg_2, u_input.c, -2147483647i);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    return func_3(_wgslsmith_div_vec3_u32(abs(firstTrailingBit(u_input.c.yyy & u_input.b)), firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 41023u), u_input.b), func_2(2147483647i)))), select(!vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false)), true), !vec3<bool>(u_input.b.x > 0u, true, true), all(vec2<bool>(true, any(vec4<bool>(true, true, false, true))))), vec3<u32>(~arg_1.x, countOneBits(67181u), ~(~1u)) | func_2(firstLeadingBit(2147483647i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_5(arg_0.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1566f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a), -591f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.a)))))), arg_0.a, func_3(countOneBits(~(u_input.c.yxz & arg_0.b)), vec3<bool>(arg_0.a, true, false), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(arg_0.c.x, 29704u)) & 4294967295u, _wgslsmith_mod_u32(arg_0.b.x & 55523u, countOneBits(21861u)))));
    var var_2 = -8357i;
    var_2 = 23859i;
    let var_3 = ~(select(-18830i, func_1(_wgslsmith_f_op_f32(ceil(var_0.a)), arg_0.c.wwy).d, !all(vec2<bool>(arg_0.a, arg_0.a))) ^ firstTrailingBit(var_1.d.d));
    return func_3(~_wgslsmith_mod_vec3_u32(arg_0.b, u_input.c.xyy), vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(935f * var_0.a))), _wgslsmith_div_f32(-1581f, var_1.b.x) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-984f)), _wgslsmith_f_op_f32(257f + var_1.b.x))), var_1.c), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u | _wgslsmith_dot_vec2_u32(u_input.b.yx, arg_0.c.yx), ~(u_input.c.x | 21473u), 1u), func_2(_wgslsmith_sub_i32(var_3, var_3))));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    var var_0 = u_input.b.yz;
    var_0 = ~(~arg_1.a.b.zy);
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1381f)), 2420f, _wgslsmith_f_op_f32(floor(394f)), -897f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2141f, -1328f, 2274f, 624f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(257f, 240f, 1272f, 724f) + vec4<f32>(559f, -1000f, 487f, 756f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1012f, 171f, 1498f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1093f, -256f, -1164f, 940f))))));
    var_0 = countOneBits(var_1.b.yx);
    return Struct_2(func_1(var_2.x, vec3<u32>(0u << (0u % 32u), var_0.x, 5567u) << (arg_1.a.b % vec3<u32>(32u))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, Struct_4(func_4(func_1(717f, u_input.b | vec3<u32>(u_input.a.x, 0u, u_input.b.x))), Struct_2(true), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true))));
    var_0 = func_5(func_4(func_3(_wgslsmith_add_vec3_u32(countOneBits(u_input.b), u_input.a >> (vec3<u32>(u_input.c.x, 81403u, u_input.b.x) % vec3<u32>(32u))), vec3<bool>(false, var_0.a, false), reverseBits(u_input.a))).a, Struct_4(func_4(func_4(func_4(Struct_1(true, vec3<u32>(51815u, 4294967295u, 54064u), u_input.c, 0i)))), func_5(false, Struct_4(func_1(198f, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), func_5(var_0.a, Struct_4(Struct_1(false, vec3<u32>(u_input.c.x, 82096u, 0u), u_input.c, u_input.d), Struct_2(var_0.a), true)), var_0.a)), true));
    var_0 = func_5(var_0.a, Struct_4(Struct_1(var_0.a, ~(u_input.a ^ u_input.c.zzy), _wgslsmith_mult_vec4_u32(vec4<u32>(78368u, 0u, u_input.a.x, 34239u), vec4<u32>(u_input.a.x, 45763u, u_input.b.x, 0u)), -(~(-4955i))), func_5(var_0.a, Struct_4(func_3(vec3<u32>(u_input.b.x, u_input.a.x, 0u), vec3<bool>(var_0.a, var_0.a, true), vec3<u32>(18623u, u_input.b.x, u_input.b.x)), Struct_2(var_0.a), !var_0.a)), var_0.a));
    let var_1 = vec3<i32>(1i, abs(-1i), func_3(~vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(14220u, 0u, 97289u), vec3<u32>(u_input.a.x, 4294967295u, 47593u)), abs(50232u)), !(!(!vec3<bool>(true, var_0.a, false))), max(u_input.a, u_input.c.xyw)).d);
    var_0 = Struct_2(true);
    var var_2 = !(!vec3<bool>(any(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true), vec2<bool>(false, false))), var_0.a, var_0.a));
    let var_3 = Struct_4(Struct_1(any(vec3<bool>(true, true, var_2.x)), ~abs(_wgslsmith_clamp_vec3_u32(u_input.c.wyx, u_input.c.zzz, u_input.c.wxx)), u_input.c >> (countOneBits(vec4<u32>(u_input.a.x, u_input.b.x, 1u, 0u)) % vec4<u32>(32u)), u_input.e), Struct_2(var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1884f))) - _wgslsmith_f_op_f32(max(-1000f, 1333f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(876f, 1345f) + -589f)))), var_3.a.b.x, func_2(u_input.d).zy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1854f - -1040f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1283f - -1065f) + -679f))), _wgslsmith_add_i32(0i, 57634i));
}

