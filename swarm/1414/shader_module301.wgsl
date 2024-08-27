struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec3<u32> {
    var var_0 = -(_wgslsmith_mult_i32(global0.b.x, ~arg_3) << (~(~global0.c.x) % 32u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(arg_1.a + global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1808f * 353f))), _wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -574f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -1905f) - _wgslsmith_f_op_f32(f32(-1f) * -797f)))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -837f)))));
    var_0 = arg_3;
    var_1 = vec4<f32>(897f, -1100f, var_1.x, -628f);
    let var_2 = arg_1;
    return select(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.wyx, u_input.b.xxz), _wgslsmith_div_vec3_u32(var_2.c, var_2.c)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(37177u, global0.d, global0.d), u_input.b.wwx), ~(~vec3<u32>(u_input.b.x, 76158u, 85016u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(global0.c, abs(arg_1.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.c.x, arg_2), ~vec2<u32>(u_input.b.x, arg_2)) | 42835u, 4294967295u), !(true && (-global0.b.x != global0.b.x)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-371f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-168f, arg_0.a))))), vec2<i32>(-18693i, global0.b.x) ^ countOneBits(firstTrailingBit(vec2<i32>(global0.b.x, arg_0.b.x)) | -vec2<i32>(global0.b.x, -21872i)), global0.c, 58876u);
    let var_1 = Struct_1(global0.a, countOneBits(var_0.b), ~(~(func_3(93662u, arg_0, 44763u, global0.b.x) << ((global0.c >> (global0.c % vec3<u32>(32u))) % vec3<u32>(32u)))), 0u);
    var var_2 = global0.a;
    var var_3 = var_1;
    return 1u;
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(2145f * _wgslsmith_f_op_f32(step(-962f, 539f))), ~countOneBits(min(global0.b, global0.b)) ^ vec2<i32>(global0.b.x, global0.b.x), vec3<u32>(_wgslsmith_sub_u32(countOneBits(func_2(Struct_1(-597f, vec2<i32>(1i, -2147483647i), u_input.b.zyz, 0u))), 17557u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.c.x), arg_0.zz)), arg_0.x), ~(countOneBits(global0.c.x & arg_0.x) | ~global0.d));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1653f)), _wgslsmith_f_op_f32(-global0.a)))), vec2<i32>(~(~(-global0.b.x)), -_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global0.b.x, global0.b.x, global0.b.x)), -vec3<i32>(global0.b.x, global0.b.x, 7317i))), _wgslsmith_add_vec3_u32(vec3<u32>(34325u, ~global0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(18832u, global0.d), ~arg_0.yx)), reverseBits(vec3<u32>(func_2(Struct_1(-1307f, vec2<i32>(global0.b.x, global0.b.x), vec3<u32>(0u, arg_0.x, arg_0.x), global0.c.x)), ~global0.d, 83689u))), 24988u >> (~u_input.b.x % 32u));
    let var_0 = vec3<u32>(1u << (0u % 32u), ~abs(select(global0.d, 0u, true) >> (56183u % 32u)), _wgslsmith_mod_u32(~(~func_3(global0.d, Struct_1(global0.a, vec2<i32>(19726i, -23105i), vec3<u32>(53690u, 51541u, 0u), 0u), global0.d, global0.b.x).x), arg_0.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(-global0.a))))), global0.b, ~(~func_1(global0.c | vec3<u32>(4294967295u, 15061u, 0u))), u_input.b.x);
    var var_1 = var_0;
    var var_2 = countOneBits(-global0.b.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), countOneBits(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(1i, global0.b.x)), vec2<i32>(-69972i, var_0.b.x))), vec3<u32>(min(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, global0.c.x, var_1.c.x)), vec3<u32>(var_1.c.x, 0u, 4294967295u)), 4294967295u), ~1u, var_0.d << (1u % 32u)), ~(~var_1.d));
    let var_4 = var_0;
    var_2 = var_3.b.x << (_wgslsmith_add_u32(32796u, ~95990u) % 32u);
    var var_5 = 35592u;
    global0 = var_0;
    let var_6 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_3.c.zy, ~var_3.c.yz), func_3(var_0.c.x, Struct_1(1f, var_0.b | vec2<i32>(var_3.b.x, global0.b.x), vec3<u32>(0u, u_input.b.x, var_3.d), func_1(u_input.b.wzx).x), _wgslsmith_add_u32(var_4.d, var_0.d), abs(var_3.b.x)).xz), func_3(~(~1u), var_4, _wgslsmith_mult_u32(func_1(vec3<u32>(4294967295u, global0.d, u_input.a.x)).x, ~select(var_1.d, var_1.c.x, false)), _wgslsmith_sub_i32(global0.b.x, 2147483647i)).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_3.a))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a)), var_4.a), -251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1553f)) * _wgslsmith_f_op_f32(var_4.a - var_3.a)) + _wgslsmith_f_op_f32(-1419f + _wgslsmith_f_op_f32(min(var_4.a, -249f)))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a))) - _wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_div_vec4_f32(vec4<f32>(-980f, global0.a, 738f, _wgslsmith_f_op_f32(step(-173f, _wgslsmith_f_op_f32(step(866f, var_4.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, var_1.a) * vec4<f32>(var_4.a, -332f, 889f, -298f))) + vec4<f32>(_wgslsmith_f_op_f32(global0.a + var_3.a), 291f, _wgslsmith_f_op_f32(min(var_3.a, global0.a)), _wgslsmith_f_op_f32(abs(922f))))));
}

