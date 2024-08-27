struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1209f);
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), ~(-countOneBits(vec3<i32>(u_input.d.x, -1i, -29450i)))) <= _wgslsmith_mod_i32(min(~u_input.d.x, min(34235i, -2077i)), ~(-1i) << (~_wgslsmith_mult_u32(u_input.a.x, 45174u) % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = !(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(arg_3.d, true), vec2<bool>(arg_3.d, arg_1))), -u_input.d.x <= u_input.d.x, true));
    var_0 = !select(select(select(vec3<bool>(arg_1, false, false), select(vec3<bool>(arg_1, true, true), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, arg_3.d)), !arg_1), vec3<bool>(true, false, true), true & func_3()), select(!select(vec3<bool>(arg_1, arg_3.a, arg_1), vec3<bool>(arg_1, arg_1, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(arg_3.a, true, true), !vec3<bool>(false, var_0.x, true)), arg_3.a & true);
    var var_1 = vec4<i32>(u_input.d.x, u_input.d.x, arg_3.c.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d.x, -2147483647i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -4789i, -2147483647i, arg_3.c.x), vec4<i32>(u_input.d.x, -1i, u_input.d.x, 2147483647i)), u_input.d.x & ~(-1i)), abs(~u_input.d.x ^ (-17902i & arg_3.c.x)), min(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), arg_3.b.x)));
    var_1 = ~firstTrailingBit(~vec4<i32>(3031i, min(u_input.d.x, 64426i), -30374i, arg_3.c.x));
    var_0 = select(select(select(select(!vec3<bool>(false, true, arg_1), !vec3<bool>(true, false, arg_1), arg_1), select(vec3<bool>(arg_3.d, arg_1, true), select(vec3<bool>(arg_3.d, arg_1, var_0.x), vec3<bool>(arg_3.a, false, arg_1), var_0.x), true), arg_3.d), !select(vec3<bool>(false, arg_3.d, false), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, arg_1, var_0.x), vec3<bool>(true, var_0.x, arg_1)), !vec3<bool>(arg_1, false, false)), !(!(!vec3<bool>(arg_1, true, var_0.x)))), !vec3<bool>(-2147483647i == _wgslsmith_mod_i32(var_1.x, -25394i), true, true & (true == arg_1)), !vec3<bool>(!(var_1.x > var_1.x), arg_2.x <= _wgslsmith_sub_u32(96095u, 32693u), !var_0.x));
    return firstTrailingBit(u_input.d.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(~(-u_input.d.x), -57260i) << (74488u % 32u), _wgslsmith_sub_i32(-func_2(vec4<f32>(335f, 130f, 1106f, 936f), arg_0, vec3<u32>(1u, 4294967295u, u_input.b), Struct_1(arg_0, vec3<i32>(u_input.d.x, 0i, -2702i), vec3<i32>(61883i, u_input.d.x, u_input.d.x), false)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 219f, 1359f, -753f)), true, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 14339u, 1u), vec3<u32>(u_input.b, 27343u, 9148u)), Struct_1(false, vec3<i32>(u_input.d.x, 0i, u_input.d.x), vec3<i32>(u_input.d.x, 0i, -16545i), arg_0))) & func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, 1660f, 1000f, -961f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, 1038f, 1372f, 1607f) + vec4<f32>(-274f, -1296f, -315f, -1554f))), !all(vec4<bool>(false, arg_0, false, true)), vec3<u32>(u_input.a.x ^ u_input.b, u_input.b ^ u_input.a.x, _wgslsmith_mult_u32(u_input.b, 0u)), Struct_1(select(false, arg_0, arg_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, 22066i, u_input.d.x), vec3<i32>(u_input.d.x, 9919i, 89662i), vec3<i32>(17196i, -8331i, 0i)), vec3<i32>(u_input.d.x, u_input.d.x, -36742i) & vec3<i32>(u_input.d.x, 8421i, u_input.d.x), !arg_0)), -36714i);
    return Struct_1(_wgslsmith_add_u32(5301u << (u_input.c % 32u), _wgslsmith_mult_u32(~63833u, 0u)) > (u_input.a.x | select(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1165u, 1u), vec3<u32>(1u, u_input.b, u_input.a.x)), true)), var_0.zzy, vec3<i32>(_wgslsmith_dot_vec4_i32((var_0 | var_0) ^ min(vec4<i32>(0i, u_input.d.x, 35143i, 0i), vec4<i32>(7644i, var_0.x, 2147483647i, -16953i)), ~vec4<i32>(10401i, 47934i, 2147483647i, -45273i)), _wgslsmith_add_i32(var_0.x, 1i), -4182i), any(vec2<bool>(true, any(vec4<bool>(arg_0, arg_0, false, arg_0)))) && (true && (arg_0 || false)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(true, func_1(true), Struct_1(true, ~vec3<i32>(u_input.d.x, -53855i, 1i), vec3<i32>(-59122i, u_input.d.x, -19208i), all(vec3<bool>(false, true, false))), func_1(true)) == true, vec3<i32>(firstLeadingBit(-_wgslsmith_sub_i32(3932i, u_input.d.x)), ~(~1i), -2405i), max(_wgslsmith_sub_vec3_i32((vec3<i32>(0i, -30219i, u_input.d.x) | vec3<i32>(-2147483647i, 20074i, u_input.d.x)) ^ ~vec3<i32>(36452i, -1i, 0i), min(vec3<i32>(u_input.d.x, -1i, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x)) | abs(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), select(min(vec3<i32>(u_input.d.x, -1i, u_input.d.x), -vec3<i32>(2147483647i, 18672i, u_input.d.x)), vec3<i32>(u_input.d.x, u_input.d.x, 24265i) & abs(vec3<i32>(19396i, 0i, u_input.d.x)), true)), func_1(all(vec3<bool>(false, true, func_4(true, Struct_1(true, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(25397i, 20340i, u_input.d.x), true), Struct_1(true, vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(u_input.d.x, -547i, u_input.d.x), false), Struct_1(false, vec3<i32>(-19763i, 0i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), true))))).d);
    var var_1 = vec3<bool>(func_3(), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(155f * 1269f))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(213f, 333f), 1000f)), 118f, all(vec3<bool>(var_0.d, true, true)))), any(vec2<bool>(false, all(vec4<bool>(var_0.a, true, true, false)))));
    var_1 = !select(select(vec3<bool>(true, var_0.a, true), !(!vec3<bool>(false, var_0.a, false)), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), false), !vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, true), var_0.a))), !select(select(vec3<bool>(false, var_1.x, var_0.d), vec3<bool>(var_0.d, false, var_0.a), var_1.x), vec3<bool>(false, true, false), all(vec3<bool>(var_0.d, var_0.d, true))), true != var_1.x);
    var var_2 = Struct_1(!func_3(), var_0.c, var_0.c, u_input.d.x > firstTrailingBit(-u_input.d.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, 808f, 354f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-106f, -1132f)), -608f, -587f))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x * -1687f), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -2783f, -290f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, -1000f, -1264f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-162f, var_3.x, var_3.x), vec3<f32>(441f, -399f, var_3.x), var_0.a))))))), ~u_input.a);
}

