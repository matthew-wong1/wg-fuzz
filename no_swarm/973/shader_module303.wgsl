struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_2.b.x & 49280i, ~49326i), _wgslsmith_mult_i32(u_input.b.x, ~(i32(-1i) * -14071i)), arg_3.x), -2147483647i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~u_input.c.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(arg_1.a)), arg_1.b);
    let var_2 = 1374f;
    var var_3 = 32326u;
    var_1 = Struct_2(var_2, ~abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-27678i, -13110i, u_input.b.x), var_1.b)));
    return -515f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(false, vec3<f32>(-429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(step(615f, arg_0.a)))) + arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1735f, arg_0.a), arg_0.a)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(-var_0.b.x)), arg_1.b);
    let var_2 = Struct_2(1117f, var_1.b);
    let var_3 = u_input.c;
    return ~vec2<u32>(var_3.x, 5173u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = vec2<bool>(!(all(vec4<bool>(true, true, true, true)) || true), any(vec2<bool>(true || all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)))));
    var_0 = abs(vec2<i32>(12971i >> (~u_input.c.x % 32u), -12241i ^ _wgslsmith_clamp_i32(min(u_input.b.x, 2147483647i), -1i, func_1(u_input.c.x, vec3<bool>(false, var_1.x, var_1.x), Struct_2(-1479f, vec3<i32>(u_input.b.x, 0i, var_0.x)), vec3<i32>(-36136i, -26425i, var_0.x)))));
    var_0 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-890f - 1947f), _wgslsmith_f_op_f32(max(312f, 799f))) * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f - 808f) * _wgslsmith_f_op_f32(1296f + -1690f)))), 677f, _wgslsmith_f_op_f32(func_2(vec3<i32>(18031i, u_input.b.x, u_input.b.x), Struct_2(-268f, vec3<i32>(var_0.x, -2147483647i, -10260i)), !(!vec4<bool>(var_1.x, var_1.x, true, true))))));
    var_0 = u_input.b;
    var var_3 = var_1.x;
    let var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(283f)))), var_2.x), vec3<i32>(-(~(u_input.b.x ^ -12850i)), var_0.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(1142u, func_3(Struct_2(var_4.a, abs(firstTrailingBit(var_4.b))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1860f)) - 340f), var_4.b)), -firstTrailingBit(~(-vec4<i32>(0i, u_input.b.x, var_4.b.x, u_input.b.x))), func_1(52972u, select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, true, true), vec3<bool>(true, var_1.x, false)), !select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), select(!vec3<bool>(false, true, var_1.x), !vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_1.x, false, var_1.x))), Struct_2(-137f, vec3<i32>(i32(-1i) * -2147483647i, min(39135i, 2452i), u_input.b.x)), -vec3<i32>(_wgslsmith_mod_i32(var_4.b.x, var_4.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-24316i, 27777i, 1i, 1i), vec4<i32>(-24010i, -2147483647i, var_0.x, 2147483647i)), ~var_4.b.x)));
}

