struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec4<i32> {
    global0 = 492u & arg_1.x;
    var var_0 = select(vec3<bool>(true, (false || any(vec4<bool>(true, false, true, true))) || ((u_input.d >> (43129u % 32u)) > u_input.d), true && !any(vec4<bool>(true, true, true, true))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), all(vec2<bool>(false, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), select(true, false, true), true), (33323u != arg_0) && false), vec3<bool>(true, true, true), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true))), vec3<bool>(true, true, select(u_input.d != u_input.d, true, all(vec3<bool>(true, false, false))))));
    global1 = false;
    let var_1 = max(vec3<i32>(26835i, u_input.d, select(_wgslsmith_mult_i32(u_input.d, u_input.d << (arg_0 % 32u)), ~_wgslsmith_div_i32(u_input.d, 2929i), !var_0.x)), ~(-vec3<i32>(firstLeadingBit(u_input.d), i32(-1i) * -1i, 10267i)));
    let var_2 = Struct_2(Struct_1(-u_input.d, vec4<i32>(-2147483647i, 2147483647i, max(-21695i, var_1.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(34305i, var_1.x), vec2<i32>(u_input.d, var_1.x)), -u_input.d)), ~(~(~arg_0 & u_input.b.x)));
    return var_2.a.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = u_input.b.x;
    var var_2 = ~(_wgslsmith_mult_vec3_u32(~(~u_input.c.wzx), vec3<u32>(u_input.a, 4294967295u, 33441u) ^ vec3<u32>(0u, var_0.x, 0u)) & u_input.c.zxw);
    var var_3 = 0i;
    let var_4 = Struct_2(Struct_1(_wgslsmith_add_i32(-u_input.d, abs(u_input.d)), vec4<i32>(-2147483647i & _wgslsmith_mod_i32(u_input.d, u_input.d), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-56188i, u_input.d, arg_0.x, arg_0.x), vec4<i32>(0i, -1i, arg_0.x, arg_0.x)), ~arg_0.x, arg_1.x), ~(-1385i), arg_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(reverseBits(vec3<u32>(57733u, 42695u, var_1))), var_0.zww), reverseBits(~var_0.zyx)));
    return var_4.a.b & func_3(~1u, vec2<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), var_0.xyw)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = u_input.b.x;
    var var_2 = vec4<i32>(u_input.d, var_0.x, 22727i, var_0.x) ^ abs(-firstLeadingBit(func_2(arg_0, vec4<bool>(true, false, true, true), vec2<f32>(952f, 295f), 628f)));
    global0 = firstLeadingBit(~30042u);
    return Struct_1(u_input.d, ~vec4<i32>(min(1i, -4545i), -11135i, -2147483647i, _wgslsmith_clamp_i32(var_0.x, -2147483647i, u_input.d)) & ~abs(-vec4<i32>(2381i, u_input.d, -24227i, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = Struct_2(func_1(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(-1i, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -6114i), vec2<i32>(-14462i, u_input.d)), vec2<i32>(u_input.d, u_input.d))), u_input.c.x >> (u_input.a % 32u));
    global0 = 36748u;
    let var_1 = var_0;
    global1 = any(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false)) && ((any(vec2<bool>(true, true)) || false) || ((1u >= u_input.a) && true));
    var var_2 = Struct_3(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-594f))))), Struct_2(Struct_1(2147483647i, ~vec4<i32>(var_0.a.a, var_0.a.a, 29235i, u_input.d)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.c.xzy, vec3<u32>(u_input.b.x, u_input.a, 82587u)), ~firstTrailingBit(u_input.c.wwy))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f), -1405f), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1340f + 369f)))), 771f);
    var var_3 = vec3<u32>(1u, abs(41569u), abs(u_input.a));
    let var_4 = func_2(vec2<i32>(-1i, ~var_2.a), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, true, false), true, all(vec4<bool>(false, true, true, false)), true)), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false, true, _wgslsmith_f_op_f32(ceil(var_2.b)) == var_2.e), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))), vec2<f32>(var_2.e, var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b)), 933f)).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_mod_i32(var_0.a.b.x, var_4), var_2.c.a.a, i32(-1i) * -u_input.d, ~(~u_input.d)) << (~(~(vec4<u32>(var_0.b, var_2.c.b, 41020u, 0u) & u_input.c)) % vec4<u32>(32u)), -1582f, 51601u, var_2.d, ~_wgslsmith_mult_u32(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19630u, 4340u), vec3<u32>(1u, var_3.x, 4294967295u))) ^ 0u);
}

