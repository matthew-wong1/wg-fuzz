struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_0.x);
    let var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_2.a)))), var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, -121f)) + 1000f)), 2057f);
    var_0 = arg_3;
    return -541f;
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = arg_0;
    var var_1 = ~u_input.c.www;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec3<f32>(583f, arg_0, arg_0), arg_0, 4294967295u, Struct_1(-439f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), -273f, 1645f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(812f - 485f), -346f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, 1967f, arg_0)))));
    var var_3 = vec4<bool>(!((true && any(vec4<bool>(false, false, true, true))) && select(true, true, true)), true, false, any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))) && false);
    var_3 = select(vec4<bool>(var_3.x, true, _wgslsmith_f_op_f32(-arg_0) > -1898f, var_3.x), !vec4<bool>(true, var_3.x, true, true), !select(select(select(vec4<bool>(true, var_3.x, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(var_3.x, false, true, true), vec4<bool>(false, false, false, false)), !vec4<bool>(false, false, false, var_3.x)), vec4<bool>(var_1.x >= var_1.x, var_3.x != true, select(true, true, false), false), true));
    return firstLeadingBit(firstLeadingBit(u_input.c.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, -2898i)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(18537i, 0i) & firstLeadingBit(vec2<i32>(-1i, u_input.a)), vec2<i32>(~u_input.a, u_input.a))), (_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, -1i, -5481i), 0i) | u_input.a) | ~_wgslsmith_div_i32(1i, u_input.a | 0i));
    let var_1 = vec2<bool>(!(~_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.xy) == _wgslsmith_add_u32(arg_0.x, select(arg_0.x, 1u, true))), select(arg_1.a == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1645f, 1330f)), any(vec2<bool>(true, true)), (_wgslsmith_dot_vec3_i32(vec3<i32>(37205i, 15572i, 1i), vec3<i32>(u_input.a, -1i, u_input.a)) <= ~u_input.a) && true));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, -1073f) - vec4<f32>(arg_1.a, 1968f, 894f, arg_1.a)) - vec4<f32>(-637f, -1000f, -430f, arg_1.a)) * vec4<f32>(_wgslsmith_f_op_f32(980f + arg_1.a), _wgslsmith_f_op_f32(floor(-912f)), -1450f, _wgslsmith_f_op_f32(arg_1.a - arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2173f, -1017f, 683f, -316f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, 705f, 143f, arg_1.a), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)))) * vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - 835f), arg_1.a, -1019f)))));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_mod_u32(14822u, select(abs(_wgslsmith_div_u32(arg_0.x, u_input.b.x)), min(_wgslsmith_dot_vec2_u32(u_input.d.zx, ~u_input.c.yy), 0u), any(vec3<bool>(var_1.x, true, u_input.d.x <= u_input.c.x))));
    return countOneBits(countOneBits(vec2<i32>(-52985i, ~(-40403i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_u32(0u, ~u_input.c.x);
    let var_1 = func_5(vec4<u32>(firstLeadingBit(~countOneBits(16676u)), firstTrailingBit(firstTrailingBit(u_input.c.x)), func_4(_wgslsmith_f_op_f32(func_3(vec3<f32>(-195f, -1042f, arg_0.a), _wgslsmith_f_op_f32(sign(-1687f)), ~u_input.c.x, Struct_1(arg_0.a)))), ~(81644u << (firstTrailingBit(u_input.b.x) % 32u))), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-505f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_1.a))));
    let var_3 = vec3<bool>(u_input.b.x == ~(~0u), true, _wgslsmith_f_op_f32(abs(arg_0.a)) != arg_1.a);
    var var_4 = arg_0;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = func_2(arg_0, arg_0) == u_input.d.x;
    let var_1 = Struct_1(arg_0.a);
    let var_2 = u_input.b.x;
    var var_3 = true;
    var_3 = any(!(!select(!vec3<bool>(var_0, arg_1.x, var_0), !vec3<bool>(var_0, false, arg_1.x), u_input.a != u_input.a)));
    return (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, ~vec4<u32>(33920u, var_2, 4294967295u, var_2)), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, u_input.d.x, var_2, 3466u)) | firstLeadingBit(u_input.c)) | u_input.c) ^ u_input.c;
}

fn func_6(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(300f, -292f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(-167f * -616f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-333f, 451f, false)))))));
    let var_1 = Struct_1(var_0.x);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)) * var_0) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0)) - var_0))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(915f + _wgslsmith_f_op_f32(-269f + var_1.a))), _wgslsmith_dot_vec4_u32(~arg_0, reverseBits(~u_input.c)) >> (firstLeadingBit(u_input.b.x) % 32u), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((1u & firstLeadingBit(firstLeadingBit(u_input.c.x))) & 4294967295u);
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mult_vec4_u32(~func_1(Struct_1(1000f), vec2<bool>(true, true)), u_input.c));
}

