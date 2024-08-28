struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, -1394f, -179f) * vec3<f32>(-1090f, -1000f, -754f)))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c >> (31090u % 32u), u_input.c, 1i), vec3<i32>(-u_input.a, countOneBits(u_input.a), -u_input.c), ~vec3<i32>(u_input.a, -1i, u_input.c)), abs(-(~vec3<i32>(u_input.c, u_input.a, -11890i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(u_input.c, u_input.a, u_input.a)) & -vec3<i32>(u_input.c, u_input.c, 1625i)), firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(52312u, 37601u), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(35172u, u_input.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, u_input.b))))), vec4<u32>(_wgslsmith_clamp_u32(select(0u, u_input.d, true), 1u, u_input.b), max(u_input.b, abs(u_input.b)), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 63922u), min(vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(u_input.d, u_input.d)))), vec4<bool>(true, true, true, true));
    var var_1 = ~(~(-49383i));
    let var_2 = Struct_1(var_0.a, vec3<i32>(~_wgslsmith_mod_i32(-46303i, i32(-1i) * -1i), _wgslsmith_clamp_i32(var_0.b.x, firstTrailingBit(u_input.c), i32(-1i) * -1005i), min(-2147483647i, abs(var_0.b.x)) & (-u_input.c >> (~u_input.b % 32u))), countOneBits(var_0.d.zw), var_0.d, select(var_0.e, select(var_0.e, vec4<bool>(false && var_0.e.x, true, false && var_0.e.x, !var_0.e.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.e.x, var_0.e.x, true, false), var_0.e)), true));
    var_1 = ~countOneBits(2147483647i);
    var var_3 = var_2;
    return var_2.d.wx;
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    let var_0 = 739f;
    return _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(60635u, 6710u), firstLeadingBit(137154u)), u_input.d)), max(func_3(), ~(vec2<u32>(u_input.b, u_input.d) ^ countOneBits(vec2<u32>(0u, 4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -1639f;
    var_0 = arg_0.a.x;
    let var_1 = Struct_1(arg_0.a, vec3<i32>(-_wgslsmith_sub_i32(-3479i, _wgslsmith_mod_i32(u_input.c, arg_0.b.x)), 24626i, -u_input.a), arg_0.c, _wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, firstLeadingBit(19065u), u_input.d | 19327u, ~arg_0.c.x), arg_0.d), arg_0.d), arg_0.e);
    var_0 = _wgslsmith_f_op_f32(sign(var_1.a.x));
    var_0 = -1108f;
    return var_1;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-707f * 797f), -720f, -1000f), vec3<f32>(-1697f, _wgslsmith_f_op_f32(min(166f, -1151f)), _wgslsmith_f_op_f32(f32(-1f) * -2109f))), abs(-(~vec3<i32>(-2147483647i, -2147483647i, u_input.a))), abs(func_2(vec4<bool>(true, true, true, true))), vec4<u32>(u_input.d, u_input.d, 0u, 0u), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(false, false)));
    let var_1 = _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(~(~1i), abs(-1i), u_input.a));
    let var_2 = ~firstTrailingBit(_wgslsmith_clamp_u32(select(0u | u_input.d, var_0.c.x, select(false, false, var_0.e.x)), 4294967295u, firstLeadingBit(countOneBits(u_input.b))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_div_f32(1343f, -325f)), 487f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(714f)) + _wgslsmith_f_op_f32(round(-409f))))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))))));
    return StorageBuffer(~vec3<u32>(0u & var_0.d.x, 17419u | firstLeadingBit(var_0.c.x), var_2), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, 1i, var_0.b.x, var_1.x), vec4<i32>(u_input.c, 1i, var_0.b.x, -29043i) ^ vec4<i32>(var_1.x, var_0.b.x, var_1.x, 0i)), (vec4<i32>(var_1.x, u_input.a, -44171i, -30971i) ^ vec4<i32>(var_1.x, var_0.b.x, u_input.c, 16645i)) ^ ~vec4<i32>(-2147483647i, -10022i, -34249i, -66796i)), var_0.b.x), var_1.x << (_wgslsmith_dot_vec2_u32(select(countOneBits(vec2<u32>(u_input.b, var_0.c.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(24732u, 1u), var_0.d.yw), !vec2<bool>(var_0.e.x, true)), var_0.c) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

