struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<bool>) -> i32 {
    return -1i;
}

fn func_3(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = -194f;
    var var_1 = 1378f;
    let var_2 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, func_2(4294967295u, vec4<u32>(u_input.a.x, 58963u, 0u, 3908u), Struct_3(arg_0), vec4<bool>(true, false, true, false)), -2147483647i) ^ (arg_0 | vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), ~vec3<i32>(~arg_0.x, -2147483647i, arg_0.x)));
    var_1 = -673f;
    let var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1494f))) - 459f), _wgslsmith_f_op_f32(ceil(-346f))), _wgslsmith_f_op_f32(316f + 130f), Struct_3(~vec3<i32>(var_2.a.x, -15578i, -var_2.a.x)));
    return Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.a, max(select(arg_0, vec3<i32>(arg_0.x, var_3.c.a.x, var_3.c.a.x), false), reverseBits(vec3<i32>(2147483647i, var_3.c.a.x, var_2.a.x)))), ~vec3<i32>(reverseBits(2147483647i), _wgslsmith_clamp_i32(0i, -10254i, 1i), var_2.a.x), arg_0));
}

fn func_1() -> Struct_2 {
    var var_0 = func_3(vec3<i32>(-37085i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -2623i), vec3<i32>(32633i, -29615i, 0i) << (vec3<u32>(1u, u_input.a.x, 8253u) % vec3<u32>(32u))), 1i, _wgslsmith_mult_u32(u_input.a.x, 1u) == ~4294967295u), _wgslsmith_div_i32(-2147483647i, func_2(1u, ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(vec3<i32>(2147483647i, 9179i, 21416i)), vec4<bool>(true, true, true, true)))));
    let var_1 = (u_input.a.x & u_input.a.x) & max(u_input.a.x, u_input.a.x);
    let var_2 = false;
    var_0 = func_3(max(-_wgslsmith_mult_vec3_i32(vec3<i32>(56593i, -1i, var_0.a.x), var_0.a), vec3<i32>(57680i, 39856i, -abs(20713i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, 1000f, -1636f, -217f) - vec4<f32>(1f, 1f, 1f, 1f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-818f, 559f, 368f, 405f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-266f, 2232f, 836f, -1000f), vec4<f32>(-942f, -1209f, 457f, -763f))), select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, var_2, false), var_2))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(522f, -1154f, -1578f, -683f), vec4<f32>(1183f, 351f, -409f, -458f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 1818f, 409f, -358f) - vec4<f32>(-692f, -590f, -1000f, -702f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1133f, 802f, 1057f, -1595f)), true)), true)));
    return Struct_2(var_0.a.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(~var_1, ~u_input.a.x, var_1, u_input.a.x), vec4<u32>(102285u, _wgslsmith_sub_u32(56956u, u_input.a.x), ~var_1, var_1 ^ 4294967295u)), ~abs(vec4<u32>(1u, var_1, var_1, 4294967295u))), Struct_1(3471u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) - _wgslsmith_f_op_f32(exp2(var_3.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, 428f))))))), Struct_1(1u, 1877f, _wgslsmith_f_op_vec2_f32(-var_3.wy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18571u;
    var var_1 = func_1();
    var var_2 = ~(-5658i);
    var_1 = func_1();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(479f * -1000f) - -1501f) * _wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(round(var_1.d.b))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) + _wgslsmith_f_op_f32(-1455f + var_1.c.c.x)))), _wgslsmith_f_op_f32(var_1.e * var_1.c.c.x));
    var var_4 = select(!vec3<bool>(false, any(vec2<bool>(true, true)), true), vec3<bool>(true, false, any(vec2<bool>(true, true))), !vec3<bool>(all(vec4<bool>(false, false, false, true)), var_3.x <= -957f, _wgslsmith_dot_vec4_u32(vec4<u32>(24098u, var_0, u_input.a.x, 53631u), vec4<u32>(36070u, u_input.a.x, 24261u, var_0)) > 1u));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.c.x * 500f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.c.x - -1821f))) + var_1.d.b)) - -287f);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, (~(vec4<u32>(var_1.c.a, 78393u, var_0, u_input.a.x) & vec4<u32>(var_0, 12583u, var_0, var_1.d.a)) >> (vec4<u32>(var_0, _wgslsmith_sub_u32(72423u, 40775u), var_1.d.a, 15857u) % vec4<u32>(32u))) & select(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.b, var_1.d.a, 48188u), vec4<u32>(var_0, 0u, var_0, 39802u)), ~vec4<u32>(0u, u_input.a.x, var_0, var_0), true), ~vec4<u32>(8077u, 1u, 4294967295u, 4294967295u) ^ min(vec4<u32>(u_input.a.x, 19433u, var_1.c.a, 30931u), vec4<u32>(9795u, var_1.d.a, var_1.b, u_input.a.x)), var_4.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) + var_1.d.c), _wgslsmith_mult_vec4_u32(~abs(countOneBits(vec4<u32>(var_1.b, 27274u, var_0, u_input.a.x))), ~abs(vec4<u32>(38404u, var_1.c.a, var_0, var_1.b)) ^ max(countOneBits(vec4<u32>(1u, u_input.a.x, 19561u, var_0)), vec4<u32>(1u, var_0, 0u, 38402u) >> (vec4<u32>(var_0, u_input.a.x, 36206u, 4294967295u) % vec4<u32>(32u)))));
}

