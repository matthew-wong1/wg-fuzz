struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global1 = array<Struct_1, 24>();
    global0 = array<f32, 7>();
    return -1282f;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_1(u_input.a.xz, -968f, global0[_wgslsmith_index_u32(firstTrailingBit((_wgslsmith_sub_u32(0u, u_input.a.x) ^ 1u) << (u_input.a.x % 32u)), 7u)], vec4<i32>(abs(16052i), _wgslsmith_clamp_i32((u_input.b.x | -1i) & firstTrailingBit(1i), -22199i, u_input.b.x), -u_input.b.x, u_input.b.x), u_input.c.xw);
    var var_1 = Struct_3(Struct_2(Struct_1(~var_0.a, 298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] - 482f)), var_0.d, _wgslsmith_clamp_vec2_u32(~u_input.c.yz, u_input.c.yz | u_input.c.zx, ~vec2<u32>(44731u, 0u)))), global1[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_1((~var_0.e << (min(vec2<u32>(u_input.a.x, var_0.a.x), vec2<u32>(4294967295u, 35689u)) % vec2<u32>(32u))) & u_input.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(floor(834f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1093f), u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(976f)))))), vec4<i32>(u_input.b.x, var_0.d.x, u_input.b.x, -1i), vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_add_u32(1u, countOneBits(16480u)))), !vec4<bool>(true, select(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)), true), _wgslsmith_mod_u32(4361u, 4294967295u) != firstTrailingBit(1u), !all(vec4<bool>(true, true, true, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-637f, var_0.b, var_0.b, -168f) + vec4<f32>(986f, var_0.c, -568f, 349f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -280f, var_0.b, var_0.b))) * vec4<f32>(2277f, -2428f, 640f, var_0.b)))));
    let var_2 = vec3<bool>(!(var_1.d.x == true), false, true);
    return var_1.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(37830u, 7u)], -1319f) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(91534u, 7u)], global0[_wgslsmith_index_u32(35579u, 7u)])) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -476f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1614f, _wgslsmith_f_op_f32(trunc(-842f)))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1964f, -354f)) + vec2<f32>(293f, -1321f)))))));
    global0 = array<f32, 7>();
    return func_2(u_input.b.x & select(40672i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) >> (~83171u % 32u), true), arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> StorageBuffer {
    global1 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(74310u, 7u)], arg_0.a.c)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1415f, global0[_wgslsmith_index_u32(arg_0.a.e.x, 7u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, 867f)))))));
    let var_1 = 945f;
    var var_2 = !vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) && true, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))));
    let var_3 = arg_0;
    return StorageBuffer(vec3<f32>(-106f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-511f, arg_0.a.d.xwy)) + -1285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(u_input.b.x), ~select(~abs(u_input.c), reverseBits(u_input.c), false));
}

