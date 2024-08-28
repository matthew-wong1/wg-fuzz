struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(-6112i, -21609i, 5569i);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(-7958i, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = arg_1;
    global1 = vec3<i32>(_wgslsmith_mod_i32(-(global3.a & -2147483647i), select(-38923i, max(-2147483647i, arg_0), true)) << (_wgslsmith_clamp_u32(1u >> (abs(1u) % 32u), u_input.a | ~u_input.a, reverseBits(4294967295u)) % 32u), global2.a, _wgslsmith_add_i32(1i, ~11289i));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec2<u32> {
    global2 = Struct_1(~min(arg_0.a, arg_1.x ^ global3.a), true);
    var var_0 = arg_0.a >= ~countOneBits(-29448i << (reverseBits(u_input.a) % 32u));
    return vec2<u32>(8629u, u_input.a);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global3 = Struct_1(-53853i, true && arg_2.b);
    var var_0 = arg_2;
    var var_1 = _wgslsmith_div_u32(4294967295u, ~u_input.a);
    var_0 = func_2(~global1.x, arg_2);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~(~27102u)), _wgslsmith_clamp_vec2_u32(~func_3(Struct_1(21017i, false), vec3<i32>(1i, 9220i, arg_2.a), global3.a), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(8961u, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 53427u, 34688u, u_input.a)), _wgslsmith_div_u32(~1u, 8163u)), vec2<u32>(1u, u_input.a)));
    return func_2(~arg_0, Struct_1(arg_2.a, true));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = ~u_input.a;
    var var_1 = i32(-1i) * -1i;
    let var_2 = ~18781i;
    var var_3 = Struct_1(-(_wgslsmith_dot_vec2_i32(global1.xz, vec2<i32>(var_2, -1i) ^ vec2<i32>(arg_2.a, global1.x)) | (abs(arg_1) & _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, arg_2.a), global1.yz))), true);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(0u, -56881i, func_1(global1.x, -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.x, -2147483647i, global2.a, 0i)), reverseBits(vec4<i32>(global2.a, global2.a, global1.x, global2.a)), vec4<i32>(global1.x, global1.x, 38497i, global3.a) ^ vec4<i32>(55108i, global3.a, global3.a, global2.a)), Struct_1(~2147483647i, select(true, true, u_input.a > 1u))));
    var var_1 = ~(_wgslsmith_mod_vec3_i32(select(vec3<i32>(global1.x, 1i, -14744i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a, 2147483647i, var_0.a), vec3<i32>(global1.x, global1.x, 0i), vec3<i32>(-58303i, 0i, global2.a)), select(vec3<bool>(global3.b, global3.b, var_0.b), vec3<bool>(true, false, true), vec3<bool>(var_0.b, false, true))), select(vec3<i32>(-30733i, 2147483647i, global3.a), vec3<i32>(global1.x, global1.x, 1i), !vec3<bool>(false, global3.b, true))) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a, 2147483647i, global3.a) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)), countOneBits(vec3<i32>(global3.a, 10389i, var_0.a))) | -vec3<i32>(global3.a, 0i, global3.a)));
    global0 = u_input.a;
    global2 = func_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(var_1.x, var_1.x), 0i), global2.a), var_0);
    var var_2 = func_1(var_1.x, vec4<i32>(-1i) * -select(max(vec4<i32>(var_1.x, 2147483647i, global2.a, -1i), vec4<i32>(2147483647i, 9074i, 2147483647i, var_0.a)), vec4<i32>(global2.a, global3.a, global3.a, 5685i), !vec4<bool>(false, true, global3.b, true)), var_0);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1789f), -693f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2187f, -449f))), _wgslsmith_f_op_f32(832f + _wgslsmith_f_op_f32(f32(-1f) * -227f))))));
    var_1 = firstLeadingBit(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 0i, 71676i, -2147483647i) | vec4<i32>(18888i, 0i, global1.x, var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, var_1.x), vec4<i32>(2147483647i, -2147483647i, 2147483647i, -15564i))), ~(~33695i), _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 1i), 1i) ^ global2.a));
    var var_4 = _wgslsmith_f_op_f32(299f - -536f);
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1148f, _wgslsmith_f_op_f32(trunc(-1343f)), 1f))));
}

