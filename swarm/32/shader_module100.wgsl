struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2340f, 2667f), vec2<f32>(-694f, 1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2067f, -357f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(186f, -1000f) + vec2<f32>(1284f, -1159f))))));
    var var_1 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_add_u32(u_input.c.x, ~u_input.a)), u_input.c.x) | u_input.a;
    var var_2 = ~(~vec4<u32>(u_input.c.x, 1u, reverseBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.a));
    let var_3 = Struct_1(vec2<bool>(~_wgslsmith_mult_u32(u_input.c.x, var_2.x) <= firstTrailingBit(59187u >> (var_2.x % 32u)), true));
    var_2 = vec4<u32>(_wgslsmith_mod_u32(0u, var_2.x) << (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 66001u, u_input.c.x, 72673u)), firstTrailingBit(vec4<u32>(u_input.a, var_2.x, var_2.x, 4294967295u) >> (vec4<u32>(var_2.x, u_input.c.x, var_2.x, 13305u) % vec4<u32>(32u)))) % 32u), u_input.a, 66509u, 1u);
    return 324f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(true, all(vec3<bool>(true, false, true)) | false), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(any(vec2<bool>(true, true)), true), true), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-457f, _wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(func_3()), -894f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1356f, 338f, -1173f, 2025f), vec4<f32>(-1292f, 944f, 1082f, 174f), true)) - vec4<f32>(-100f, -258f, -1297f, -286f)) - vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.wxy, ~select(vec3<i32>(u_input.b.x, arg_2, u_input.b.x), vec3<i32>(-13008i, 0i, u_input.b.x), var_0.a.x)), u_input.b.zwy);
    let var_3 = Struct_2(Struct_1(select(select(var_0.a, vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, true)), vec2<bool>(any(vec3<bool>(true, false, false)), var_0.a.x), !var_0.a)));
    let var_4 = var_3;
    return Struct_1(!select(!var_0.a, select(select(var_0.a, var_4.a.a, var_4.a.a), !var_4.a.a, select(var_4.a.a, var_3.a.a, false)), true));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u | u_input.a, u_input.c.x), ~(4294967295u ^ arg_0)), arg_0, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~u_input.c.x), 4294967295u), _wgslsmith_sub_u32(arg_0, min(~u_input.c.x, _wgslsmith_div_u32(arg_0, arg_0)))) & ~(~vec4<u32>(~8434u, _wgslsmith_clamp_u32(u_input.c.x, 28358u, u_input.c.x), ~u_input.a, _wgslsmith_mult_u32(4294967295u, arg_0)));
    let var_1 = arg_2;
    let var_2 = !(!vec4<bool>(arg_2.a.x, false, !any(vec2<bool>(false, var_1.a.x)), !var_1.a.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + -790f), arg_1)) - _wgslsmith_f_op_f32(f32(-1f) * -1603f)));
    let var_4 = func_2(~(~vec3<u32>(50674u, u_input.c.x, ~u_input.c.x)), var_0, u_input.b.x);
    return all(select(vec2<bool>(true, true), vec2<bool>(true, arg_2.a.x), any(vec3<bool>(false, false, true))));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = any(!vec3<bool>(func_4(_wgslsmith_div_u32(u_input.a, u_input.c.x), _wgslsmith_f_op_f32(-150f + 331f), func_2(vec3<u32>(u_input.c.x, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.c.x, 72644u, 8394u), -73108i), Struct_1(vec2<bool>(true, false))), false, false));
    let var_1 = vec4<i32>(-1i & _wgslsmith_add_i32(u_input.b.x, -u_input.b.x & 0i), min(_wgslsmith_div_i32(-firstLeadingBit(-9497i), arg_0), _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(arg_0, 42580i, -33678i, u_input.b.x))), ~min(_wgslsmith_mult_i32(-2147483647i, select(-9997i, u_input.b.x, true)), arg_0), u_input.b.x);
    var var_2 = Struct_2(func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(65339u, u_input.a, min(48274u, u_input.c.x)), ~vec3<u32>(u_input.a, 64668u, 1u) & (vec3<u32>(u_input.a, 4294967295u, u_input.c.x) | vec3<u32>(u_input.c.x, u_input.a, u_input.a))), select(vec4<u32>(max(u_input.a, 25683u), ~37419u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.c.x), ~reverseBits(vec4<u32>(86997u, u_input.a, 36903u, 0u)), any(vec2<bool>(false, true))), -1i >> (~u_input.a % 32u)));
    var var_3 = true;
    var_0 = !func_2(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a | u_input.a, ~14980u), ~(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a) | vec3<u32>(1u, 0u, 88462u))), vec4<u32>(u_input.a, u_input.a, max(u_input.a, firstTrailingBit(u_input.c.x)), u_input.c.x), _wgslsmith_dot_vec4_i32(select(u_input.b & vec4<i32>(var_1.x, arg_0, arg_0, var_1.x), var_1, func_2(vec3<u32>(58720u, 5334u, 30530u), vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 4294967295u), -13424i).a.x), vec4<i32>(var_1.x, ~2147483647i, u_input.b.x, 1i))).a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, func_1(~(u_input.b.x >> (26231u % 32u)))));
    var var_1 = Struct_1(vec2<bool>(true & (false && any(vec4<bool>(false, false, true, var_0.a.x))), func_1(-u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 18695u), vec4<u32>(0u, 0u, u_input.c.x, u_input.a))), vec4<u32>(38206u, abs(u_input.c.x), u_input.c.x, ~5319u))), ~_wgslsmith_mult_vec4_u32(min(abs(vec4<u32>(u_input.c.x, 4294967295u, 1u, 4294967295u)), abs(vec4<u32>(1u, u_input.a, 21039u, 69931u))), abs(~vec4<u32>(u_input.a, 16931u, 1u, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, 1449f, 1000f, 1000f) + vec4<f32>(-1109f, -282f, 728f, 711f)))))), ~vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.b.x) ^ firstLeadingBit(5928i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), u_input.b.xz) & -1i, -2147483647i));
}

