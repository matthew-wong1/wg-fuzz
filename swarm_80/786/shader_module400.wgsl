struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(-u_input.c, true, 1000f);
    var var_1 = 0u;
    var_1 = ~1u;
    var_1 = min(select(~_wgslsmith_div_u32(16312u, 1u), _wgslsmith_mod_u32(1u, 1u) >> (select(4873u, 1u, false) % 32u), all(!vec2<bool>(var_0.b, var_0.b))) ^ _wgslsmith_clamp_u32(max(4294967295u, ~54838u), 1u, 8772u), _wgslsmith_add_u32(15261u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 24685u), vec4<u32>(4294967295u, 0u, 1u, 0u)), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(-1742f, 263f))))));
    return vec3<u32>(~4294967295u, 29515u, 0u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = ~(~4294967295u);
    let var_1 = Struct_1(vec3<i32>(48084i, max(20504i, u_input.c.x), 1i), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) * -264f), _wgslsmith_f_op_f32(ceil(-1268f)))), -599f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, -1218f, -1678f) * vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(721f, var_1.c, var_1.c, var_1.c) + vec4<f32>(-696f, var_1.c, -298f, var_1.c))))));
    var var_3 = u_input.a.xz;
    var var_4 = -(~(u_input.c >> (func_3() % vec3<u32>(32u))));
    return Struct_1(var_1.a | -min(var_1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(28620i, 46923i, var_3.x), vec3<i32>(var_1.a.x, var_4.x, var_1.a.x))), all(!select(select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), arg_0), arg_0, vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) + _wgslsmith_div_f32(var_1.c, -2221f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = 1419f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -1000f, var_0, arg_0.c) + vec4<f32>(var_0, arg_1.c, arg_0.c, -733f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, var_0, -279f, arg_1.c))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1263f, -206f, 576f, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, var_0, 1373f, -1000f)), false))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, arg_1.c, arg_0.c) * var_1.wzw) * var_1.xyx), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1360f, arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1216f, 560f))), !select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b, true, false), vec3<bool>(true, arg_1.b, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1747f, var_0, arg_1.c) * var_1.yzy)))), true)));
    let var_3 = func_2(vec2<bool>(arg_1.b && (_wgslsmith_f_op_f32(ceil(arg_1.c)) > _wgslsmith_f_op_f32(trunc(813f))), arg_0.b));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(1066f + _wgslsmith_f_op_f32(641f * -430f)))) - 630f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, 358f))) * var_3.c), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 1337f))));
    return vec2<bool>(func_2(vec2<bool>(arg_1.b == all(vec4<bool>(false, var_3.b, arg_1.b, false)), false)).b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(countOneBits(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x) << (~vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u))), -u_input.c.x >= _wgslsmith_dot_vec2_i32(u_input.a.xz ^ u_input.b.zy, u_input.c.xz), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) + 1f)))), Struct_1(-reverseBits(u_input.c), all(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1733f))), _wgslsmith_div_vec2_u32(reverseBits(select(vec2<u32>(1u, 1u), abs(vec2<u32>(42286u, 1u)), false)), ~(~vec2<u32>(1u, 1u))));
    var var_1 = func_2(!(!vec2<bool>(false && var_0.x, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)))));
    var var_2 = ~_wgslsmith_dot_vec2_i32(var_1.a.xx, ~(-_wgslsmith_clamp_vec2_i32(u_input.a.xy, var_1.a.xx, vec2<i32>(0i, 2147483647i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -364f, _wgslsmith_f_op_f32(2013f + 1609f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(678f, 735f, -456f))) - vec3<f32>(var_1.c, var_1.c, -2278f))))));
    var var_4 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 1u), 40007u), ~16092u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 7887u, 38816u, 4294967295u) | vec4<u32>(1u, firstTrailingBit(0u), func_3().x, ~91875u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x ^ reverseBits(-5818i));
}

