struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = 1000f;
    return _wgslsmith_f_op_f32(min(386f, _wgslsmith_f_op_f32(-arg_0.d)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.d.a.x);
    var_0 = arg_0.b;
    var var_1 = Struct_3(arg_0, -4635i, select(vec3<bool>(arg_0.a.x, arg_0.a.x, any(!vec3<bool>(arg_0.a.x, true, false))), arg_0.a, arg_0.a.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + arg_0.c.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1027f, arg_0.c.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.c.a.x, 288f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-704f, arg_0.b)), _wgslsmith_f_op_f32(max(-285f, arg_0.b))))));
    let var_2 = arg_0.a.x;
    var var_3 = _wgslsmith_mod_u32(48825u, _wgslsmith_mod_u32(50123u, ~1u));
    return !any(vec4<bool>(var_2, any(select(vec2<bool>(var_1.c.x, true), vec2<bool>(arg_0.a.x, var_1.c.x), true)), max(u_input.a, u_input.a) < _wgslsmith_mod_u32(41802u, 21813u), all(!arg_0.a)));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_3(Struct_2(vec3<bool>(true, true, true), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1128f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 385f, 183f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 156f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -476f) + vec3<f32>(arg_1, 1000f, arg_1)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-673f, arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, -417f), vec2<f32>(643f, -647f), false))))), -2147483647i, vec3<bool>(false, (func_3(Struct_2(vec3<bool>(false, false, true), arg_1, Struct_1(vec3<f32>(974f, arg_1, 1000f), vec2<f32>(arg_1, arg_1)), Struct_1(vec3<f32>(1266f, arg_1, arg_1), vec2<f32>(-302f, 886f))), vec4<i32>(40800i, 16467i, -2147483647i, -27164i), vec4<i32>(1i, 30238i, 1i, -2147483647i)) && true) | true, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(2805f, -2758f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_div_f32(-415f, -1507f), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, arg_1))), vec2<f32>(1061f, 1597f))))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1004f, -501f, arg_1, arg_1)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, var_0.d.a.x, -1338f, -2010f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, var_0.d.a.x, var_0.a.c.a.x, 196f))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d.a.x)), _wgslsmith_div_f32(arg_1, var_0.d.b.x), arg_1, _wgslsmith_f_op_f32(var_0.d.a.x + -952f)))));
    var var_3 = ~abs(var_0.b) >> (~(16702u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, u_input.a), vec3<u32>(62550u, 1u, 4294967295u)), vec3<u32>(arg_0, 4294967295u, 4294967295u) ^ vec3<u32>(56976u, 26650u, var_1)) % 32u)) % 32u);
    let var_4 = !var_0.c.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1639f, vec2<i32>(func_2(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(6657u, u_input.a), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(vec3<f32>(552f, -811f, -631f), vec2<f32>(441f, -1587f)), true, vec4<f32>(-347f, -463f, -955f, -942f), -666f))) * -802f)), _wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-22235i, -1i, -1i, -1i), vec4<i32>(-21114i, -2147483647i, -29330i, 2147483647i)), vec4<i32>(10397i, 2147483647i, -21212i, -1i)), -(~vec4<i32>(1i, -1i, -3758i, -2147483647i)))), vec4<u32>(~(_wgslsmith_add_u32(20237u, u_input.a) ^ _wgslsmith_div_u32(0u, u_input.a)), _wgslsmith_div_u32(26192u, firstTrailingBit(1u)), firstLeadingBit(0u), u_input.a), vec4<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(2147483647i, -1i)), select(-1i, -1i, false), 20466i << (min(u_input.a, u_input.a) % 32u)) | -countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(8588i, -30248i, 2147483647i, -20968i), vec4<i32>(2147483647i, 1i, -1i, 31763i))));
}

