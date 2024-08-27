struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = 9330u;
    let var_1 = min(abs(2147483647i), u_input.a.x);
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(-1803f * arg_2.a), _wgslsmith_f_op_f32(ceil(-1700f)), 1f), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(-522f + var_2.a), _wgslsmith_f_op_f32(min(-1301f, -231f))), _wgslsmith_f_op_f32(round(379f)) > _wgslsmith_f_op_f32(arg_2.a * 1722f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1184f, -1031f, 1000f, -163f), vec4<f32>(var_2.a, var_2.a, arg_2.a, -444f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1823f, 173f, arg_2.a, -577f)), select(arg_0, vec4<bool>(false, false, var_2.c, var_2.c), vec4<bool>(false, arg_2.c, arg_0.x, var_2.c)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-635f, var_2.a, 2419f, var_2.a), vec4<f32>(710f, 1007f, 661f, arg_2.a), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, 1197f, -1848f)), vec4<bool>(true, true, true, true))))));
    var var_4 = !select(arg_0.yz, !arg_0.yy, vec2<bool>(var_2.c, !var_2.c));
    return ~u_input.a.x;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = -28170i;
    var_0 = abs(-2147483647i >> (0u % 32u));
    let var_1 = vec4<i32>(u_input.a.x, -7539i & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i)), u_input.a.x), 1i, ~(~(-u_input.a.x))) | _wgslsmith_div_vec4_i32(vec4<i32>(~abs(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -25526i)), abs(vec2<i32>(u_input.a.x, 14250i))), 5555i, -1i), vec4<i32>(func_3(vec4<bool>(false, arg_0.c, true, true), vec2<u32>(u_input.c.x, arg_0.b), Struct_1(arg_0.a, u_input.c.x, arg_0.c)), _wgslsmith_add_i32(u_input.a.x | 0i, u_input.a.x), u_input.a.x, u_input.a.x));
    var_0 = 1i;
    var_0 = reverseBits(_wgslsmith_add_i32(var_1.x, reverseBits(-2147483647i)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_1(2385f, u_input.b.x, 0u > ~_wgslsmith_div_u32(~arg_0, 1u));
    var var_1 = false;
    let var_2 = ~countOneBits(abs(32067u));
    let var_3 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_0.a, ~u_input.c.x, var_0.c))) - vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(-1000f)))), var_0.a, var_0.a)));
    return !(var_4.x != 1876f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1104f * arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-188f - 724f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f + arg_0.a)))) + _wgslsmith_f_op_vec3_f32(func_2(arg_0)).x), firstTrailingBit(arg_3), arg_0.c);
    var var_2 = Struct_1(-111f, 4294967295u, true);
    var var_3 = firstLeadingBit(u_input.a.x);
    var_1 = arg_1;
    return StorageBuffer(_wgslsmith_div_f32(-523f, _wgslsmith_f_op_vec3_f32(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1537f), 4294967295u, var_1.c))).x), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b), i32(-1i) * -firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 41776i, 27682i), vec4<i32>(u_input.a.x, 2147483647i, 14058i, -7771i))), _wgslsmith_div_vec2_f32(vec2<f32>(-1393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -713f))), -select(vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(633i, u_input.a.x), 16799i, u_input.a.x), -countOneBits(vec4<i32>(u_input.a.x, 31539i, u_input.a.x, 1573i)), !select(vec4<bool>(true, false, var_2.c, false), vec4<bool>(arg_0.c, arg_2, false, var_2.c), vec4<bool>(false, arg_0.c, false, arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(-1390f, ~u_input.c.x, !(!(1i >= u_input.a.x))), Struct_1(-1988f, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 30334u, u_input.c.x, u_input.b.x)), ~abs(vec4<u32>(4294967295u, 12281u, u_input.b.x, u_input.b.x))), all(vec4<bool>(true, false, true, true))), any(!vec4<bool>(u_input.a.x >= u_input.a.x, true, func_1(15822u), true)), select(max(27685u, ~u_input.b.x << (89956u % 32u)), u_input.b.x, true));
}

