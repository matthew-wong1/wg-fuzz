struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = -(~vec4<i32>(25367i, u_input.e, u_input.e, _wgslsmith_sub_i32(~(-38145i), u_input.e)));
    var var_1 = arg_3;
    let var_2 = arg_3;
    var_0 = firstTrailingBit(~vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(var_0.wzy), vec3<i32>(var_0.x, 1i, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, var_0.x, u_input.e, var_0.x), vec4<i32>(u_input.e, 0i, var_0.x, 0i)) >> (~7574u % 32u), var_0.x, _wgslsmith_clamp_i32(~2147483647i, 9050i | var_0.x, -1i)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_3.a - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1142f, 662f), vec2<f32>(arg_3.a.x, var_2.a.x), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -832f) - vec2<f32>(-989f, -2003f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.a))))))));
    return arg_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x)), vec4<u32>(arg_0.x, u_input.d, arg_0.x, 0u) & vec4<u32>(0u, 6980u, arg_0.x, 4294967295u), -1024f, Struct_1(vec2<f32>(1361f, arg_1.a.x)))))));
    let var_1 = var_0;
    let var_2 = arg_0.x;
    var var_3 = var_1;
    var_3 = var_1;
    return vec4<f32>(2030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), arg_1.a.x));
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(abs(select(arg_0, vec3<u32>(arg_0.x, 59229u, 29669u) | ~vec3<u32>(u_input.d, u_input.d, u_input.a.x), vec3<bool>(true, false, false))), min((arg_0 ^ arg_0) >> (vec3<u32>(~1u, ~1u, arg_0.x) % vec3<u32>(32u)), arg_0));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec2<u32>(0u, var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, -1000f) - vec2<f32>(-1487f, 645f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1224f - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1392f + 872f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-160f, -752f))))));
    let var_1 = _wgslsmith_add_u32(u_input.b, firstLeadingBit(7854u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(504f, var_2.x, 1050f, var_2.x)), _wgslsmith_f_op_vec4_f32(func_1(select(vec3<u32>(var_1, var_1, u_input.c), vec3<u32>(u_input.d, u_input.b, var_1), true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_2.x, _wgslsmith_f_op_f32(1037f - var_0.a.x), -710f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_vec4_f32(func_2(u_input.a, Struct_1(vec2<f32>(var_2.x, 590f)))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + _wgslsmith_f_op_f32(var_2.x + var_0.a.x)))), _wgslsmith_f_op_f32(178f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), -1375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))), vec3<f32>(-158f, -170f, _wgslsmith_f_op_f32(-1000f * var_0.a.x)));
}

