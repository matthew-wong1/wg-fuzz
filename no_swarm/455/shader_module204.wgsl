struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1309f)) * -708f), _wgslsmith_f_op_f32(700f + _wgslsmith_f_op_f32(sign(1312f)))))));
    let var_1 = Struct_3(max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, 0i)), _wgslsmith_sub_i32(u_input.b, -1i), firstTrailingBit(-2147483647i)), vec3<i32>(select(20567i, u_input.a, false), -14310i, 0i)) | abs(abs(vec3<i32>(u_input.a, u_input.a, 0i))), Struct_2(vec3<bool>(false, abs(7000u) >= firstTrailingBit(7672u), any(vec4<bool>(true, true, false, false))), _wgslsmith_sub_u32(~4294967295u, 0u), true), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), true, true, all(vec4<bool>(false, true, true, false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) * _wgslsmith_f_op_f32(408f - 589f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-421f + 1113f), _wgslsmith_div_f32(-343f, -713f)))), select(~max(vec4<u32>(72493u, 6165u, 49571u, 18379u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), max(~vec4<u32>(4294967295u, 11483u, 4294967295u, 4294967295u), vec4<u32>(1u, 12676u, 3892u, 9197u)), vec4<bool>(true, true, true, true))), vec3<i32>(abs(_wgslsmith_clamp_i32(countOneBits(u_input.a), u_input.b, 22218i)), -1i, u_input.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -594f) > _wgslsmith_f_op_f32(round(-1267f));
}

fn func_2() -> u32 {
    var var_0 = 1u;
    var var_1 = 9136u;
    let var_2 = Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, false)), true, false), true), vec4<bool>(true, all(vec3<bool>(true, true, true)), func_3(), u_input.b == -9665i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1637f), vec2<f32>(1095f, 453f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-568f, -269f)))))), vec4<u32>(0u, ~15147u, ~_wgslsmith_div_u32(49334u, select(4294967295u, 1u, true)), ~firstTrailingBit(~0u)));
    var var_3 = vec4<bool>(any(vec2<bool>(false, !all(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x)))), 1u < var_2.c.x, select(var_2.a.x, !var_2.a.x, true), var_2.a.x);
    var var_4 = _wgslsmith_dot_vec2_u32(var_2.c.yz, _wgslsmith_clamp_vec2_u32(var_2.c.wx, ~(var_2.c.wy << (vec2<u32>(4294967295u, var_2.c.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_2.c.xz), ~var_2.c.wx)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(~53420u, max(11722u, 2392u)), abs(max(var_2.c.xz, vec2<u32>(0u, var_2.c.x))), max(vec2<u32>(var_2.c.x, 25952u), max(vec2<u32>(var_2.c.x, var_2.c.x), vec2<u32>(var_2.c.x, var_2.c.x)))));
    return max(1u, 1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> vec2<bool> {
    return !(!vec2<bool>(!all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, false, true))));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1078f, _wgslsmith_f_op_f32(floor(-1381f)))))))));
    return func_4(~(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0.b, arg_0.b)), vec2<u32>(1u, 4294967295u), vec2<bool>(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1720f))))))), vec4<u32>(4294967295u, func_2(), 0u, max(~arg_0.b, arg_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 24916i, abs(u_input.b >> (arg_0.b % 32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.b), vec3<i32>(-52726i, -27910i, 34736i)), max(vec3<i32>(u_input.b, u_input.b, -26648i), vec3<i32>(-38639i, u_input.b, -1i)), vec3<i32>(0i, u_input.a, 1i)) ^ vec3<i32>(u_input.a, u_input.b, 2147483647i & u_input.a)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4) -> StorageBuffer {
    var var_0 = arg_2.c.b;
    let var_1 = _wgslsmith_sub_u32(min(arg_1.c.x, _wgslsmith_sub_u32(21994u, 1u)), 4294967295u | (arg_2.e & 22855u));
    let var_2 = ~9102i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1074f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.b.x, -838f)) - vec2<f32>(527f, 140f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(359f * arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.b.x, -1000f)))));
    return StorageBuffer(max(vec4<i32>(min(0i, _wgslsmith_mod_i32(0i, -10147i)), ~max(var_2, -23145i), -15256i, reverseBits(_wgslsmith_add_i32(7519i, var_2))), vec4<i32>(~u_input.b, ~u_input.b << (~4294967295u % 32u), var_2, var_2 | -1i)), ~(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_1.c.x, 39917u, 1u)), arg_2.a.c.c.zxx)), -max(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 3502i, arg_2.d.d.x, arg_2.a.d.x), vec4<i32>(arg_2.b, 7760i, arg_2.b, 40679i)), -min(vec4<i32>(u_input.a, var_2, u_input.b, 13129i), vec4<i32>(14i, u_input.a, -5028i, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f - -1051f) * _wgslsmith_f_op_f32(trunc(-1453f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-897f + var_0)) * var_0)), _wgslsmith_div_f32(var_0, var_0), 232f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -2191f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-652f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -787f))))) - _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + 466f)))))));
    var var_3 = abs(~78831u);
    let var_4 = _wgslsmith_f_op_f32(-1f);
    var var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_0)), var_4, false));
    let x = u_input.a;
    s_output = func_5(!any(func_1(Struct_2(vec3<bool>(true, false, false), 1u, false))), Struct_1(vec4<bool>(true, all(vec2<bool>(true, true)), func_1(Struct_2(vec3<bool>(false, false, false), 20217u, true)).x, countOneBits(u_input.a) != -u_input.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.zx))))), vec4<u32>(1u, 1u, 1u, 1u)), Struct_4(Struct_3(abs(-vec3<i32>(-1i, u_input.b, u_input.a)), Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), max(11307u, 4294967295u), true), Struct_1(vec4<bool>(false, false, false, true), var_1.wy, ~vec4<u32>(13310u, 1u, 0u, 0u)), select(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -38456i)), ~vec3<i32>(u_input.a, u_input.a, -481i), vec3<bool>(false, true, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, -1i), vec2<i32>(-1i, u_input.a) << (abs(vec2<u32>(0u, 53483u)) % vec2<u32>(32u))), Struct_1(vec4<bool>(any(vec3<bool>(false, true, false)), func_1(Struct_2(vec3<bool>(true, false, false), 1u, false)).x, func_3(), any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec2_f32(min(var_1.yy, var_1.wy)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23449u, 1u, 0u), vec3<u32>(14313u, 58495u, 1u)), countOneBits(66436u), _wgslsmith_dot_vec2_u32(vec2<u32>(41123u, 0u), vec2<u32>(4294967295u, 29515u)), _wgslsmith_sub_u32(1u, 0u))), Struct_3(vec3<i32>(1i, 1i, 1i) & ~vec3<i32>(-2147483647i, u_input.a, u_input.a), Struct_2(vec3<bool>(true, true, true), min(49972u, 4670u), true), Struct_1(vec4<bool>(true, false, false, true), var_1.zz, ~vec4<u32>(42751u, 0u, 60085u, 81080u)), vec3<i32>(firstLeadingBit(u_input.b), u_input.b, ~(-2147483647i))), 0u));
}

