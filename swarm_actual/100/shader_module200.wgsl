struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_2(arg_1, vec3<u32>(1u, ~4294967295u, arg_2), arg_1, 444f);
    var var_1 = select(!vec2<bool>(_wgslsmith_div_i32(u_input.b.x, 34537i) < -arg_0.x, select(select(false, true, false), any(vec4<bool>(true, false, false, true)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), true);
    let var_2 = var_0.c;
    var_1 = !(!vec2<bool>(var_1.x, true));
    let var_3 = vec4<i32>(-min(arg_0.x, arg_0.x), firstLeadingBit(-abs(arg_0.x)), ~_wgslsmith_sub_i32(u_input.b.x, arg_0.x), -(~(~(-47307i))));
    return !vec2<bool>(any(!vec3<bool>(false, true, var_1.x)), !var_1.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), func_3(vec2<i32>(6481i, arg_0.x), Struct_1(vec2<f32>(130f, 789f)), arg_1.x), all(vec2<bool>(true, true)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1172f, 1000f)))))), arg_1.wyx, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-660f, 644f), vec2<f32>(-305f, -1011f), vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-2717f, 684f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f * 202f))))));
    var var_2 = var_1.a.a.x;
    return 0u;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(~(((vec2<i32>(u_input.b.x, 26531i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) | abs(u_input.b.xy)) ^ (~u_input.b.yx | u_input.b.yx)), vec2<i32>(6585i, u_input.b.x));
    let var_1 = var_0.x;
    let var_2 = vec3<u32>(min(_wgslsmith_dot_vec2_u32(select(u_input.a, ~vec2<u32>(u_input.a.x, 38322u), true), _wgslsmith_add_vec2_u32(~u_input.a, abs(vec2<u32>(u_input.a.x, u_input.a.x)))), u_input.a.x ^ func_2(vec3<i32>(-1i, 1i, u_input.b.x), vec4<u32>(73963u, 4294967295u, u_input.a.x, 17322u))), 0u, u_input.a.x);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, 256f)))), var_2, Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, 1000f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(336f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1151f, -1235f)), all(vec3<bool>(true, false, true))))))), 1436f);
    var var_4 = var_3.b.x;
    return vec3<bool>(!(!all(vec4<bool>(false, true, true, true))) == false, true, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 42568i) >> (vec4<u32>(arg_2, 0u, arg_1.b.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 65895i)), 23619i, u_input.b.x) >> ((_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 4294967295u, 53003u), vec4<u32>(1u, u_input.a.x, arg_1.b.x, u_input.a.x), ~vec4<u32>(arg_1.b.x, 44700u, 0u, 22047u)) ^ vec4<u32>(~77955u, 19980u, ~u_input.a.x, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(-u_input.b, ~u_input.b) & -2147483647i, 1i, -12782i, 1i));
    var_0 = ~(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, var_0.x, u_input.b.x, -2147483647i) >> (select(vec4<u32>(arg_2, arg_1.b.x, arg_1.b.x, 20169u), vec4<u32>(1u, 0u, arg_2, arg_1.b.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)) % vec4<u32>(32u)), ~vec4<i32>(33187i, var_0.x, u_input.b.x, 2147483647i), -(~vec4<i32>(-2147483647i, 0i, u_input.b.x, 1308i))));
    var var_1 = 17922i;
    var var_2 = vec3<bool>(false, !(-2147483647i < ~(~u_input.b.x)), true);
    let var_3 = Struct_2(Struct_1(arg_1.c.a), _wgslsmith_div_vec3_u32(select(~arg_1.b ^ _wgslsmith_add_vec3_u32(arg_1.b, vec3<u32>(arg_1.b.x, 23994u, u_input.a.x)), arg_1.b, false), arg_1.b), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.a.x, arg_1.c.a.x) - arg_1.c.a), arg_1.c.a), arg_1.c.a, any(select(vec3<bool>(true, var_2.x, false), arg_0, false))))), _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d - -393f))))));
    return StorageBuffer(32995i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(408f)))), _wgslsmith_f_op_f32(sign(1000f))));
    var_0 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = func_4(select(!func_1(), vec3<bool>(true, true, true), vec3<bool>(false, false, !(var_0.a.x == var_0.a.x))), Struct_2(Struct_1(vec2<f32>(var_0.a.x, 1000f)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 0u, 4294967295u))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a)), -455f), u_input.a.x);
}

