struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> u32 {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_mod_i32(2147483647i, u_input.a);
    var_0 = reverseBits(u_input.a);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(45824i, u_input.a), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(42619i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-10972i, 23586i)))) > u_input.a);
    let var_2 = Struct_1(true);
    return 1u;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = vec4<i32>(-1i, _wgslsmith_div_i32(-55696i, u_input.a), abs(-u_input.a), ~11963i);
    let var_1 = arg_3.yz;
    var var_2 = var_0.xwy;
    let var_3 = _wgslsmith_add_u32(~_wgslsmith_add_u32(~27179u, min(reverseBits(54095u), _wgslsmith_mod_u32(u_input.c.x, 0u))), select(abs(~u_input.c.x), ~countOneBits(9609u), !arg_2.a));
    return _wgslsmith_div_vec4_u32(~(u_input.c ^ vec4<u32>(var_3 & var_3, _wgslsmith_sub_u32(20247u, u_input.c.x), func_2(), abs(u_input.c.x))), ~abs(max(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4055u))) & _wgslsmith_add_vec4_u32(vec4<u32>(39160u, 0u << (u_input.d.x % 32u), 23690u, _wgslsmith_mult_u32(var_3, u_input.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_3, 7406u, var_3, var_3), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.e, var_3, u_input.e, 0u)))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = vec3<bool>(true || all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(all(!vec3<bool>(arg_0.x, true, arg_0.x)), true, true), false);
    var var_1 = _wgslsmith_mod_i32(1i, -u_input.a);
    var var_2 = Struct_1(false);
    let var_3 = ~(~u_input.c) >> (firstLeadingBit(u_input.c) % vec4<u32>(32u));
    var_2 = Struct_1(true);
    return ~reverseBits(abs(max(u_input.c.yz, var_3.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.c, ~(func_1(true, 1175f, Struct_1(true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(255f, -3408f, 2030f, -1286f)))) ^ min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 34547u), vec4<u32>(24461u, u_input.b, u_input.c.x, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 33061u, u_input.d.x, u_input.b), u_input.c))));
    var var_1 = ~var_0.zw;
    var_1 = vec2<u32>(30628u, ~min(_wgslsmith_add_u32(abs(33484u), _wgslsmith_mod_u32(4294967295u, u_input.e)), u_input.b));
    var var_2 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), select(vec2<bool>(true, true), select(vec2<bool>(u_input.a < -4204i, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(false, false, true, false)) | true, !(-2147483647i > u_input.a))), false);
    var_1 = ~countOneBits(vec2<u32>(var_1.x, _wgslsmith_add_u32(1u, var_0.x >> (56362u % 32u))));
    let var_3 = (~(~reverseBits(38812u)) & u_input.c.x) >> (var_1.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~(~u_input.d << (u_input.c.zx % vec2<u32>(32u))), var_0.yw << (func_3(!vec3<bool>(true, false, var_2.x)) % vec2<u32>(32u)), vec2<u32>(31535u & var_0.x, var_3)), firstTrailingBit(~(4294967295u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(11922u, 44181u), u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f * -1082f)), 15030i, _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 468f))), vec2<f32>(1073f, 1022f))))));
}

