struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(0i, -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, 0i, u_input.c.x) << (vec4<u32>(u_input.d.x, u_input.d.x, 14625u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.e.x)))), 1i, max(u_input.a.x << ((4294967295u << (0u % 32u)) % 32u), u_input.c.x), 43306i);
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<f32>(-316f, 1062f, arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(188f * func_2(arg_0).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(-arg_0.a)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -573f) + func_2(Struct_1(1000f)).a)), _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(699f))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, -936f, var_1.x, -120f) - var_0))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(var_0, vec4<f32>(-625f, -365f, 451f, -2652f))), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -230f, 552f, -776f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -354f, arg_0.a, -832f)))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f + var_1.x) - _wgslsmith_div_f32(-273f, _wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_f_op_f32(1000f - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + -1085f), 681f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-255f)))))));
    let var_3 = func_2(Struct_1(arg_0.a));
    return _wgslsmith_f_op_f32(trunc(419f));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(~0u, ~_wgslsmith_div_u32(u_input.d.x, u_input.d.x), abs(~_wgslsmith_dot_vec4_u32(reverseBits(u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 1u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-585f, arg_0.a)), -318f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), 164f))));
    var var_2 = arg_0;
    var var_3 = vec3<u32>(73087u, 1u, ~1u);
    var_3 = vec3<u32>(_wgslsmith_clamp_u32(max(var_3.x, _wgslsmith_clamp_u32(1u, 7800u, 0u)), _wgslsmith_sub_u32(~var_0.x, var_0.x), reverseBits(4882u << (var_0.x % 32u))) & abs(firstLeadingBit(4294967295u)), max(var_3.x, _wgslsmith_div_u32(~1u, firstLeadingBit(reverseBits(u_input.d.x)))), ~(~(~(~var_0.x))));
    return Struct_1(_wgslsmith_f_op_f32(func_3(func_2(Struct_1(arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(219f)), _wgslsmith_div_f32(-1198f, -1119f)))));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-546f * 213f)) * 173f)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(u_input.d.www, ~max(u_input.d.yxx, vec3<u32>(u_input.d.x, 1u, 0u))), firstTrailingBit(u_input.d), _wgslsmith_f_op_f32(760f + _wgslsmith_f_op_f32(-var_1.a)), 3883i, var_1.a);
}

