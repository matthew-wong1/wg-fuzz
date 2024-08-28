struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-1542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(248f))))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-643f, -790f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f - var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -565f));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.xx))) - _wgslsmith_f_op_vec2_f32(abs(var_1.zw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wz, vec2<f32>(var_0.a, 187f), vec2<bool>(true, true))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + -329f)))), -299f, _wgslsmith_f_op_f32(select(arg_0.a, var_1.x, true))) + var_1.xzx);
    var_1 = vec4<f32>(218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-623f))))), var_2.x, var_0.a);
    return u_input.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = (vec3<i32>(1i, ~_wgslsmith_mult_i32(u_input.b, 1i), -u_input.b) >> (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.d), vec3<u32>(41197u, 4294967295u, 1u))) % vec3<u32>(32u))) & (vec3<i32>(1i, u_input.b, func_3(arg_0)) << (~_wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(u_input.a, u_input.e, 21803u) | vec3<u32>(26105u, 0u, u_input.a)) % vec3<u32>(32u)));
    var_0 = ~(vec3<i32>(-1i) * -min(_wgslsmith_mod_vec3_i32(vec3<i32>(62050i, 1476i, var_0.x), vec3<i32>(-25797i, u_input.b, 0i)), -vec3<i32>(u_input.b, u_input.b, -28994i)));
    var_0 = abs(_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 50569i, u_input.b), vec3<i32>(var_0.x, 2147483647i, var_0.x)), -vec3<i32>(var_0.x, -9723i, 2147483647i)), vec3<i32>(_wgslsmith_add_i32(var_0.x, abs(u_input.b)), -2147483647i, _wgslsmith_div_i32(1593i ^ var_0.x, _wgslsmith_div_i32(-33504i, var_0.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
    var_0 = select(countOneBits(vec3<i32>(select(i32(-1i) * -1i, var_0.x, true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_0.x), vec3<i32>(u_input.b, 2147483647i, -2147483647i)), u_input.b)), ~vec3<i32>(min(var_0.x | -1i, var_0.x), ~0i, select(~u_input.b, var_0.x, any(vec4<bool>(true, false, true, false)))), false);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1242f, _wgslsmith_f_op_f32(ceil(arg_0.a)))))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-arg_0.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = false;
    let var_2 = ~(-41379i);
    var_0 = Struct_1(arg_0.a);
    var_0 = func_2(arg_1);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -417f)), Struct_1(1f));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-var_1.a);
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.e, 4294967295u) | _wgslsmith_sub_u32(u_input.d, u_input.c), countOneBits(1u), select(~16230u, u_input.e, false), _wgslsmith_dot_vec3_u32(vec3<u32>(27436u, 4294967295u, u_input.d), vec3<u32>(u_input.e, u_input.e, u_input.e)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1694u), vec2<u32>(7270u, 10631u)))), var_2, reverseBits(~max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))));
}

