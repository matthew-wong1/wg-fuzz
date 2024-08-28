struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = 53267i;
    let var_1 = _wgslsmith_f_op_f32(max(arg_2.b, arg_0.a.x));
    var_0 = ~u_input.b;
    var var_2 = 1i;
    var var_3 = arg_0;
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-136f, arg_3.b)), _wgslsmith_div_f32(847f, 419f), 989f, _wgslsmith_f_op_f32(-arg_3.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, arg_3.b, -1088f, 561f) + vec4<f32>(arg_3.b, 1392f, arg_3.b, arg_3.b)) * vec4<f32>(742f, -393f, arg_3.b, -161f)))), u_input.e.x, u_input.c.x, 10538i, !vec3<bool>(true, all(select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), true));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-565f)) - -646f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1444f, arg_3.b)) + -1000f), _wgslsmith_f_op_f32(-1000f - arg_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-var_0.a.x))))), var_0.d, u_input.b, 15406i, !select(var_0.e, select(!var_0.e, !var_0.e, all(vec3<bool>(arg_1.x, false, true))), var_0.e));
    var var_1 = _wgslsmith_sub_i32(u_input.e.x, max(var_0.c, -55788i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_3.b, arg_3.b, 1119f) + _wgslsmith_f_op_vec4_f32(-var_0.a))))), i32(-1i) * -var_0.d, u_input.c.x, u_input.e.x, var_0.e);
    var_1 = firstLeadingBit(min(arg_0, 2147483647i));
    return var_0.e;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))) - _wgslsmith_f_op_f32(min(620f, _wgslsmith_f_op_f32(trunc(arg_0.b)))));
    let var_1 = !all(select(vec3<bool>(true, true, true), func_3(-1i ^ u_input.e.x, vec2<bool>(true, true), vec3<u32>(27103u, arg_0.a, u_input.d), func_2(Struct_1(vec4<f32>(arg_0.b, 362f, 755f, -462f), 2147483647i, u_input.c.x, u_input.b, vec3<bool>(false, false, false)), Struct_3(vec3<u32>(u_input.a, arg_0.a, 5624u)), Struct_2(u_input.d, -171f))), vec3<bool>(true, true, true)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + 1f));
    var_0 = -363f;
    var_0 = _wgslsmith_f_op_f32(ceil(-156f));
    return _wgslsmith_f_op_f32(-arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1480f + -538f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-868f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-440f, -721f)), _wgslsmith_f_op_f32(func_1(Struct_2(u_input.a, 482f)))))))));
    var_0 = -515f;
    var var_1 = ~_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(u_input.d, u_input.a) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), min(~vec2<u32>(2483u, u_input.a) >> (vec2<u32>(u_input.a, 9353u) % vec2<u32>(32u)), ~(~vec2<u32>(33442u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1736f, 1428f, 448f) + vec3<f32>(-1098f, -306f, -542f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-294f, 296f, 1000f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1163f, -561f, -1757f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, -319f, -162f))))))), vec3<i32>(u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c.x) << (var_1.x % 32u), ~(-2147483647i), abs(min(u_input.b, u_input.b))), -1i), _wgslsmith_f_op_f32(step(895f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1425f)), _wgslsmith_div_f32(396f, -886f)))))), 387f);
}

