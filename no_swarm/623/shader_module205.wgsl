struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1862f, 1000f, 1000f, -619f, 494f, 783f, -2035f, -2585f, -1000f, 1673f, -1000f, 1046f, 315f, 634f, 661f, -2270f, 1701f, 1786f, -1855f, 1839f, 1430f, 678f, -1000f, 585f, 2087f, 374f, 1884f);

var<private> global1: array<f32, 27> = array<f32, 27>(-779f, 460f, -175f, -1812f, -279f, -196f, 1372f, 367f, -1307f, -649f, 1445f, -260f, 270f, 1604f, 693f, 1079f, -681f, -732f, -503f, -475f, -376f, -1249f, 1641f, -1535f, 415f, 1000f, -931f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> i32 {
    global1 = array<f32, 27>();
    let var_0 = Struct_2(vec3<i32>(~(-13073i), -42880i, u_input.b.x), vec2<u32>(u_input.e.x, 52993u), Struct_1(447f, global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_dot_vec3_i32(~(u_input.b & vec3<i32>(1i, u_input.b.x, -1i)), abs(-vec3<i32>(0i, u_input.b.x, u_input.b.x))), reverseBits(max(4294967295u, u_input.d)) | u_input.e.x));
    let var_1 = 1u << (1u % 32u);
    global0 = array<f32, 27>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1208f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_0.c.b) - 583f))), arg_0, -1095f);
    return -17255i << (~(~_wgslsmith_add_u32(u_input.a.x, var_0.c.d) << (~17692u % 32u)) % 32u);
}

fn func_3() -> f32 {
    global0 = array<f32, 27>();
    let var_0 = u_input.b.x;
    let var_1 = vec3<bool>(true, all(vec3<bool>(true, true, true)), any(select(vec4<bool>(var_0 > var_0, true, any(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), true)));
    let var_2 = vec3<i32>(~u_input.c.x, -26921i, -16879i);
    let var_3 = -var_0;
    return global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<f32, 27>();
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(~(~select(u_input.a.x, 4294967295u, false)) << (~(28556u | u_input.a.x) % 32u), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-672f, global0[_wgslsmith_index_u32(~(u_input.a.x ^ u_input.e.x), 27u)]))), min(~(~1i), func_2(global0[_wgslsmith_index_u32(select(65416u, 4294967295u, !arg_0), 27u)])), _wgslsmith_mult_u32(~0u ^ _wgslsmith_add_u32(4294967295u, u_input.d & u_input.a.x), ~abs(_wgslsmith_mult_u32(0u, u_input.e.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] + global1[_wgslsmith_index_u32(var_0.d, 27u)]) - _wgslsmith_f_op_f32(-1654f + global0[_wgslsmith_index_u32(7928u, 27u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1697f, _wgslsmith_f_op_f32(-var_0.a)))), var_0.c << (95358u % 32u), ~1u);
    let var_2 = Struct_2(vec3<i32>(-((i32(-1i) * -41302i) >> (var_0.d % 32u)), max(-var_0.c, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, var_1.c, u_input.c.x), max(var_1.c, var_0.c))), firstTrailingBit(var_0.c) & -13034i), u_input.a, var_0);
    var_1 = var_0;
    return var_2.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(abs(func_1(true) | u_input.c.x), u_input.c.x, u_input.c.x, min(2147483647i, -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(9321u, 27u)], -590f, global0[_wgslsmith_index_u32(u_input.e.x, 27u)]) * vec3<f32>(global0[_wgslsmith_index_u32(18937u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -1000f))))) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 27u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1768f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)] - _wgslsmith_div_f32(-689f, -931f)))), 9380i, max(1i, (var_0.x & var_0.x) >> (24651u % 32u)));
}

