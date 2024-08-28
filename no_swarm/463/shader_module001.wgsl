struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-13358i, 36564i, -4152i), vec3<i32>(30786i, 12561i, -2147483647i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(49477i, -9707i, 67671i), vec3<i32>(786i, -5097i, 4641i))), ~abs(1i)) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(0i, -1i), vec2<i32>(-22220i, -16218i), arg_1)) >> (~select(u_input.a, arg_0.x, arg_1) % 32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = !((all(!arg_1.b) == (func_3(vec2<u32>(66902u, 4294967295u), true) >= arg_1.a.b.x)) && false);
    let var_1 = false;
    let var_2 = vec4<f32>(554f, _wgslsmith_f_op_f32(arg_2.x + -1651f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(596f)), 2092f))), _wgslsmith_f_op_f32(-arg_2.x));
    var var_3 = ~arg_1.c.x;
    let var_4 = Struct_4(any(!arg_1.b));
    return -1000f;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = ~(~1u);
    var var_1 = ((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f * -1000f) * _wgslsmith_f_op_f32(func_2(vec2<i32>(arg_0, -2147483647i), Struct_2(Struct_1(22474u, vec2<i32>(-1i, arg_0)), vec4<bool>(true, false, true, false), vec4<u32>(1u, 4294967295u, var_0, 24521u), u_input.a), vec2<f32>(-237f, 1224f), vec2<u32>(1u, arg_1)))) < 1024f) || (-28325i >= -arg_0)) & true;
    let var_2 = Struct_4(all(!vec3<bool>(true, true, select(false, true, true))));
    var_1 = ~arg_0 > _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-56566i, -66857i, 19119i), -81941i, arg_0 | arg_0, 1i) & vec4<i32>(2147483647i, 0i, -1i, 2147483647i), vec4<i32>(-51573i, _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(arg_0, arg_0)), _wgslsmith_mod_i32(arg_0 & 2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, arg_0, 64205i)), vec3<i32>(arg_0, 4479i, arg_0))));
    var var_3 = Struct_4(false);
    return select(!(!vec4<bool>(false, 0u == u_input.a, select(false, true, var_2.a), select(false, var_2.a, true))), !select(select(select(vec4<bool>(false, false, var_3.a, false), vec4<bool>(true, true, var_3.a, var_3.a), true), select(vec4<bool>(var_2.a, var_3.a, var_3.a, var_3.a), vec4<bool>(var_2.a, false, var_3.a, var_2.a), vec4<bool>(true, var_3.a, var_3.a, true)), true), vec4<bool>(1u != u_input.a, false, true, true), var_3.a), !(!(_wgslsmith_sub_u32(arg_1, arg_1) <= ~arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = func_1(-_wgslsmith_add_i32(_wgslsmith_mod_i32(1i >> (u_input.a % 32u), 1i), 1i), 1u ^ (u_input.a & max(_wgslsmith_add_u32(u_input.a, 71633u), _wgslsmith_sub_u32(u_input.a, 4294967295u))));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_sub_u32(76265u, u_input.a) << (u_input.a % 32u), -vec2<i32>(1i, ~0i)), select(vec4<bool>(var_0.x, true, select(var_0.x, all(var_0.xw), false), false), vec4<bool>(all(!vec2<bool>(var_0.x, var_0.x)), var_0.x, true, func_1(35843i, _wgslsmith_div_u32(u_input.a, u_input.a)).x), func_1(~func_3(vec2<u32>(41705u, 1u), false), ~(u_input.a & u_input.a))), max(vec4<u32>(0u, _wgslsmith_sub_u32(u_input.a, 70628u), u_input.a, 23529u), countOneBits(vec4<u32>(10369u, 0u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 19890u, u_input.a))))), ~u_input.a);
    var_0 = vec4<bool>(any(var_1.b.wz), true, false != ((true & (var_1.a.b.x == var_1.a.b.x)) | true), true);
    var var_2 = Struct_3(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), var_0.yy, true), vec2<bool>(var_1.a.b.x != var_1.a.b.x, !var_0.x), var_1.b.x), var_0.wz), Struct_1(37694u, vec2<i32>(-31507i << (_wgslsmith_dot_vec3_u32(var_1.c.ywx, var_1.c.xwz) % 32u), ~(~1i))), 0u);
    var_0 = vec4<bool>(all(select(select(vec4<bool>(var_0.x, false, false, var_0.x), var_1.b, vec4<bool>(var_2.a.x, var_1.b.x, false, var_2.a.x)), var_1.b, vec4<bool>(var_2.a.x, var_2.a.x && true, !var_0.x, any(var_1.b)))), true, all(vec2<bool>(all(var_1.b.yxz), all(vec2<bool>(var_0.x, var_1.b.x)))), any(!(!(!vec4<bool>(var_1.b.x, true, var_1.b.x, false)))));
    var var_3 = Struct_2(var_1.a, vec4<bool>(true, all(var_1.b.xy), var_0.x, func_1(var_1.a.b.x, ~firstLeadingBit(11799u)).x), var_1.c, ~_wgslsmith_div_u32(_wgslsmith_add_u32(min(1u, 4294967295u), ~8092u), var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(max(var_3.c.ywz, vec3<u32>(var_2.b.a, var_2.b.a, var_2.c)), ~vec3<u32>(var_3.d, 1u, var_3.d)), ~1u), select(_wgslsmith_div_vec3_i32(vec3<i32>(~16227i, _wgslsmith_sub_i32(var_1.a.b.x, -1i), -2136i), firstTrailingBit(min(vec3<i32>(var_2.b.b.x, -2147483647i, var_3.a.b.x), vec3<i32>(var_3.a.b.x, -2147483647i, -8446i)))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 42006i, var_1.a.b.x), vec3<i32>(-1i, 1i, var_1.a.b.x), vec3<i32>(var_1.a.b.x, 32191i, var_2.b.b.x) & vec3<i32>(-1i, var_1.a.b.x, 25629i)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a.b.x, var_2.b.b.x, var_1.a.b.x), vec3<i32>(var_2.b.b.x, -2147483647i, 1i)), countOneBits(vec3<i32>(1i, 2147483647i, -4465i)), false)), var_1.b.x));
}

