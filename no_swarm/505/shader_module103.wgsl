struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = false | ((~u_input.b & 0u) > _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(41566u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 21478u, u_input.b))));
    var var_1 = ~firstTrailingBit(~(~u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1133f)), -585f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(399f - 182f), 550f)), -453f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 431f, -486f), vec3<f32>(343f, var_2, 717f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, var_2, var_2), vec3<f32>(1189f, 428f, -185f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1431f, 136f, var_2)), vec3<f32>(173f, var_2, var_2)))));
    var var_4 = Struct_1(-_wgslsmith_clamp_i32(arg_2.a, select(arg_2.a & arg_2.a, arg_2.a, false), -1i));
    return ~(-vec4<i32>(u_input.c.x, -1i, 0i >> (1u % 32u), min(-u_input.c.x, _wgslsmith_add_i32(53773i, var_4.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.c.x);
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -43209i, 40377i, var_0.a), vec4<i32>(-1i, -2147483647i, var_0.a, -2147483647i), vec4<i32>(1i, 1i, 1i, -31480i)) & vec4<i32>(var_0.a, var_0.a, 27886i, 31781i), -(~vec4<i32>(var_0.a, u_input.c.x, -1i, var_0.a))), func_3(vec4<bool>(true, true, true, false), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0.a, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, 2147483647i, var_0.a, -5980i))))));
    var_0 = Struct_1(u_input.c.x << (97961u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-161f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(392f, -190f) * 750f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1321f, -1465f, 512f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, 810f, 1000f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(floor(-563f)), _wgslsmith_f_op_f32(select(-775f, -1351f, true)))))));
    let var_2 = var_1;
    return Struct_1(firstTrailingBit(0i));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = ~(-u_input.c.zy);
    var var_2 = func_2();
    var_0 = Struct_1(-25147i);
    var_0 = func_2();
    return abs(abs(_wgslsmith_div_u32(_wgslsmith_add_u32(~54687u, ~u_input.a.x), countOneBits(u_input.b) ^ 63062u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, 1954f, -273f) + vec3<f32>(-535f, -1060f, 881f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(645f, 720f, -624f) * vec3<f32>(500f, 104f, 186f)), vec3<f32>(1946f, 636f, -144f))))));
    var var_1 = Struct_1(u_input.c.x);
    var var_2 = ~func_1() >> (u_input.a.x % 32u);
    let var_3 = false;
    var var_4 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, var_3, var_3)), !vec3<bool>(var_3, false, true), all(vec4<bool>(true, var_3, true, false))), !select(vec3<bool>(true, var_3, true), vec3<bool>(var_3, var_3, false), vec3<bool>(true, false, var_3)), !all(vec4<bool>(true, var_3, false, false))), vec3<bool>(var_1.a < -1i, true, !var_3), !(!any(vec3<bool>(var_3, false, false)))), !(!vec3<bool>(true, !var_3, all(vec2<bool>(var_3, var_3)))), !(!vec3<bool>(any(vec3<bool>(var_3, false, false)), all(vec3<bool>(var_3, var_3, false)), true)));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2330f))), -_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), var_1.a) ^ 12910i);
}

