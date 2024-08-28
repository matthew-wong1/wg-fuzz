struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-arg_2.a, arg_2.a | -1i), ~(~arg_2.a), -2147483647i), vec3<i32>(arg_2.a, -1i, _wgslsmith_sub_i32(1i, arg_2.a >> (arg_2.d % 32u)))), -_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(-51337i, arg_2.a, arg_2.a)), vec3<i32>(arg_2.a & arg_2.a, -7793i, -2147483647i)));
    global0 = !select(select(vec2<bool>(var_0.x >= arg_2.a, arg_1 == arg_2.d), vec2<bool>(global0.x, false), arg_2.b.x > arg_2.c.x), select(!vec2<bool>(false, global0.x), select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x)), false), any(!vec4<bool>(global0.x, global0.x, global0.x, false)));
    let var_1 = select(!select(!vec2<bool>(true, global0.x), vec2<bool>(all(vec2<bool>(global0.x, global0.x)), true), global0.x), !(!vec2<bool>(true, global0.x != true)), true);
    let var_2 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-362f, arg_2.c.x)) + arg_2.c.x), _wgslsmith_f_op_f32(abs(arg_2.c.x)));
    var var_3 = any(!var_1);
    return min(var_0.yz, ~(~(-var_0.zz)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    global0 = select(!vec2<bool>(all(vec3<bool>(arg_1.x, arg_1.x, false)), any(!arg_1)), vec2<bool>(arg_1.x, true), arg_1.x);
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-arg_0.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.a, 6608i), arg_0.a, ~arg_0.a)), reverseBits(-8181i), -25247i), vec3<i32>(_wgslsmith_mult_i32(countOneBits(-2147483647i), arg_0.a) | _wgslsmith_dot_vec2_i32(func_3(arg_0.d, 0u, arg_0), abs(vec2<i32>(arg_0.a, arg_0.a))), (-2147483647i | _wgslsmith_div_i32(arg_0.a, -37587i)) << (arg_0.d % 32u), ~arg_0.a), vec3<i32>(func_3(0u, abs(arg_0.d), Struct_1(-2147483647i, arg_0.c, vec2<f32>(arg_0.c.x, -696f), 1u)).x ^ -26677i, 0i, arg_0.a));
    let var_1 = _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(reverseBits(1u), abs(arg_0.d), ~arg_0.d, ~43171u) ^ vec4<u32>(reverseBits(55597u), ~1u, ~arg_0.d, arg_0.d)), select(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.d, 9520u, arg_0.d, 2818u)), vec4<u32>(arg_0.d, 83696u, 22535u, 24743u)), vec4<u32>(arg_0.d, u_input.a, arg_0.d, 30333u << (u_input.a % 32u))), ~(vec4<u32>(arg_0.d, u_input.a, arg_0.d, u_input.a) & ~vec4<u32>(52012u, 4294967295u, 6790u, 33991u)), any(vec3<bool>(!global0.x, true, all(vec4<bool>(true, false, arg_1.x, arg_1.x))))), max(~vec4<u32>(1u, _wgslsmith_add_u32(95626u, 1321u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(88093u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(0u & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 4294967295u, 8436u), vec3<u32>(arg_0.d, 4294967295u, 4294967295u))), ~u_input.a, u_input.a, ~(~1u))));
    var var_2 = u_input.a;
    var_2 = ~arg_0.d;
    return !(!arg_1);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    global0 = select(!vec2<bool>(select(false, global0.x & true, global0.x), !global0.x), select(select(func_2(Struct_1(-21992i, vec2<f32>(-1000f, -397f), vec2<f32>(-1000f, 1000f), 73013u), !vec2<bool>(true, global0.x)), vec2<bool>(false, global0.x != true), !(!vec2<bool>(true, global0.x))), vec2<bool>(global0.x, 46666u > ~u_input.a), !(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), true))), global0.x);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1331f)), _wgslsmith_f_op_f32(sign(-610f))))), 1f);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1180f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-373f, var_0.x, var_0.x) * vec3<f32>(var_0.x, 1552f, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + -168f)))));
    let var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mod_i32(1i, 4708i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 64274i, 21838i, -19486i), vec4<i32>(45053i, -59560i, -2147483647i, 18138i))), vec2<bool>(select(false, global0.x, true), select(global0.x, global0.x, global0.x))), ~abs(vec2<i32>(21468i, 2147483647i))), vec2<i32>(1i, 1i));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1487f;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-1i) & 1i, -_wgslsmith_mod_i32(-2147483647i, -11875i), func_1(u_input.a, vec4<u32>(0u, 1u, 50361u, u_input.a)), 1i), vec4<i32>(_wgslsmith_div_i32(-24034i, 1i), _wgslsmith_mult_i32(~(-1i), 0i), ~(-2147483647i), i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, 201f) + vec2<f32>(-1415f, -147f)) + vec2<f32>(-375f, -271f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, -1636f)))))), ~u_input.a | _wgslsmith_clamp_u32(1u, ~(~u_input.a), u_input.a));
    let var_2 = -select(_wgslsmith_mult_vec2_i32(-vec2<i32>(13155i, var_1.a), vec2<i32>(var_1.a, -12138i) | vec2<i32>(-2147483647i, -60397i)) & _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 0i), select(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_1.a, var_1.a), global0.x)), func_3(0u, 59353u, Struct_1(reverseBits(var_1.a), _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(var_1.c.x, -485f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, -1732f)), ~6123u)), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.c.x, 866f, any(vec3<bool>(false, global0.x, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x))), -1381f, 716f)) + vec4<f32>(-537f, 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))))), 546f));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(ceil(1385f))))))), _wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.b.x)))));
    var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(540f, -573f) * _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -877f) * _wgslsmith_f_op_f32(f32(-1f) * -507f)), global0.x))));
    var var_5 = var_1;
    var var_6 = vec2<i32>(-(~(-2147483647i)) | var_5.a, min(firstLeadingBit(47693i), select(var_5.a, max(var_1.a, var_5.a), true) ^ 16484i));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec4<u32>(17401u, var_5.d, 1u, 0u)) >> (vec4<u32>(1u, 4294967295u, ~var_5.d, 17043u) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.a, 0u, var_5.d), _wgslsmith_sub_vec3_u32(vec3<u32>(1491u, 0u, var_1.d), vec3<u32>(var_5.d, var_5.d, 59099u))), vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(75826u, var_1.d, 1u)), ~var_1.d)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(39757u, var_5.d, 0u), ~vec3<u32>(var_1.d, var_1.d, 11120u), reverseBits(vec3<u32>(8037u, 1u, u_input.a))), abs(abs(vec3<u32>(u_input.a, var_1.d, u_input.a))))));
}

