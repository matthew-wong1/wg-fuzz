struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-442f, -185f, 997f))));
    let var_1 = _wgslsmith_div_i32(u_input.c.x, -(u_input.b | -5998i));
    var var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 65886u, 21200u), vec3<u32>(5010u, u_input.a, u_input.a), vec3<u32>(10623u, 0u, 0u)), _wgslsmith_add_vec3_u32(~select(vec3<u32>(u_input.a, 24013u, u_input.a), vec3<u32>(u_input.a, 25855u, u_input.a), vec3<bool>(false, true, false)), vec3<u32>(u_input.a, 1u, 4294967295u) ^ vec3<u32>(4294967295u, u_input.a, u_input.a))) & 53088u;
    var_2 = u_input.a;
    var_2 = 4294967295u;
    return Struct_2(vec2<u32>(15130u, u_input.a), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, 0u != u_input.a)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    return Struct_2(~(~firstTrailingBit(vec2<u32>(1u, 0u))), !select(!vec4<bool>(false, false, true, arg_0.b.x), vec4<bool>(false, false && arg_0.b.x, arg_0.b.x, true), true));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = ~1u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f), 342f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))));
    var var_2 = func_3(func_2(), vec2<u32>(u_input.a, var_0), Struct_1(select(vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, false, true), vec3<bool>(true, u_input.c.x < 2147483647i, any(vec2<bool>(true, false))))), 0u);
    var_2 = Struct_2(~var_2.a, !var_2.b);
    let var_3 = Struct_1(!func_2().b.xyw);
    return !(!(all(vec4<bool>(var_3.a.x, var_2.b.x, var_2.b.x, true)) | func_2().b.x));
}

fn func_4(arg_0: bool) -> vec3<f32> {
    let var_0 = vec3<u32>(u_input.a, u_input.a, 14470u >> (~4294967295u % 32u));
    var var_1 = Struct_1(vec3<bool>(arg_0, arg_0, !(func_2().a.x > ~u_input.a)));
    var var_2 = Struct_1(func_3(func_2(), vec2<u32>(~var_0.x, ~_wgslsmith_clamp_u32(var_0.x, var_0.x, u_input.a)), Struct_1(!(!var_1.a)), ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4717u, 26673u, var_0.x)), ~var_0)).b.wzz);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, -782f)));
    let var_4 = _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(-3786i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.c.x, -1i), vec4<i32>(-2147483647i, 2147483647i, 14020i, u_input.b))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 1493i, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -31526i)), u_input.c.x, true), -u_input.c.x), (firstLeadingBit(vec4<i32>(u_input.b, -1776i, u_input.b, -40623i)) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, 2147483647i, -1i), vec4<i32>(1i, 40116i, -1i, u_input.b)) << (reverseBits(vec4<u32>(52467u, 1u, 31727u, 0u)) % vec4<u32>(32u)))) ^ vec4<i32>(~_wgslsmith_mod_i32(-22853i, u_input.c.x), u_input.c.x, abs(i32(-1i) * -1i), 5917i));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), var_3.x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(exp2(var_3.x)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(true)).x, 1181f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(round(arg_0.x))), 133f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1f)), 4294967295u, _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<f32>(-1000f, -420f, -610f)))), func_3(Struct_2(func_2().a, func_3(Struct_2(vec2<u32>(u_input.a, 63936u), vec4<bool>(true, true, false, true)), vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<bool>(false, false, false)), u_input.a).b), vec2<u32>(~4294967295u, ~24510u), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), 0u), Struct_1(vec3<bool>(false, true, false)), ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7455u), vec3<u32>(u_input.a, 10881u, u_input.a))))), u_input.c, min(u_input.a, u_input.a));
}

