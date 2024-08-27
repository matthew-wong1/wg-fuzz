struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_1(countOneBits(min(select(vec2<i32>(-54782i, 1i), u_input.a.xy, vec2<bool>(false, true)) ^ u_input.a.zx, max(~u_input.a.zz, -u_input.a.zx))), ~(~(~(~u_input.c))), false);
    var var_1 = Struct_1(u_input.a.xz, 4294967295u, true);
    var_1 = var_0;
    let var_2 = var_0;
    let var_3 = -_wgslsmith_div_i32(2471i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, -7978i, var_0.a.x, var_1.a.x)) ^ (vec4<i32>(-1i, var_2.a.x, var_1.a.x, var_1.a.x) ^ vec4<i32>(var_2.a.x, -1i, -1i, var_2.a.x)), -vec4<i32>(var_2.a.x, 16810i, 0i, u_input.a.x) | countOneBits(vec4<i32>(38949i, u_input.a.x, var_1.a.x, var_2.a.x))));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(476f * -1755f), _wgslsmith_f_op_f32(trunc(674f)), var_0.c)))), -955f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1439f + 512f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-332f)) + -1420f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1073f) + _wgslsmith_f_op_f32(abs(-1132f))))), select(vec3<bool>(all(vec2<bool>(false, var_0.c)) == !var_0.c, all(!vec4<bool>(var_1.c, var_1.c, false, var_2.c)), var_0.c), !select(vec3<bool>(var_1.c, var_1.c, var_2.c), select(vec3<bool>(false, true, false), vec3<bool>(false, true, var_2.c), var_1.c), !vec3<bool>(true, var_0.c, true)), true)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(i32(-1i) * -8231i))));
    let var_1 = vec3<u32>(u_input.b.x, 32235u << (reverseBits(~u_input.c) % 32u), ~1u >> ((firstTrailingBit(~14217u) << (1u % 32u)) % 32u));
    return u_input.b.x ^ ~(~reverseBits(81678u));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.xx >> (~reverseBits(vec2<u32>(10003u, 1u) >> (arg_0.xw % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c, firstTrailingBit(0u) >= _wgslsmith_div_u32(u_input.c, firstLeadingBit(u_input.b.x | arg_1)));
    var var_1 = Struct_1(u_input.a.xz, arg_1, all(!select(vec4<bool>(true, var_0.c, false, false), !vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false), vec4<bool>(var_0.c, var_0.c, var_0.c, false)))));
    var var_2 = ~(-(var_1.a & u_input.a.yz)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~var_1.b, 36982u), reverseBits(arg_0.x)), vec2<u32>((0u | u_input.b.x) | _wgslsmith_div_u32(11053u, var_1.b), min(var_0.b, 42928u))) % vec2<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(u_input.a.zz, var_0.a), ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.b, u_input.c), vec3<u32>(1u, arg_1, var_0.b)), arg_1), !(-252f < _wgslsmith_f_op_vec3_f32(func_3(var_1.a.x)).x));
    var_2 = var_3.a;
    return Struct_1(firstLeadingBit(~(-u_input.a.yy)), arg_0.x, select(false, var_1.c, all(!vec4<bool>(var_1.c, var_3.c, true, var_0.c))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = func_4(~vec4<u32>(_wgslsmith_div_u32(u_input.c, 1u), func_2(), ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.c, u_input.c), firstLeadingBit(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)))), ~1u, -17429i);
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.a.x, u_input.a.x), countOneBits(39790i))), firstTrailingBit(-1i));
    return -1312f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zz, ~u_input.b.x, true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1314f, -972f)), 1184f, 1511f);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(55982i, u_input.a.x) << (u_input.b % vec2<u32>(32u)), u_input.a.zx), -1i), var_0.a.x), u_input.a);
    var var_3 = Struct_1(countOneBits(u_input.a.yy ^ max(select(var_0.a, vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(var_0.c, var_0.c)), -vec2<i32>(var_0.a.x, var_2))), ~u_input.c, var_0.c);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_1(!(!vec3<bool>(true, false, var_0.c)))), _wgslsmith_f_op_f32(trunc(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(max(1633f, 984f)));
}

