struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 8>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(31367u, vec4<bool>(true, true, true, false), vec2<f32>(-1011f, 252f)), Struct_1(64166u, vec4<bool>(true, false, false, false), vec2<f32>(-776f, 3371f)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<f32>(-1000f, -1439f)), Struct_1(10069u, vec4<bool>(true, true, true, false), vec2<f32>(-299f, -857f)), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec2<f32>(-434f, -1255f)), Struct_1(1u, vec4<bool>(false, true, true, false), vec2<f32>(354f, -292f)), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec2<f32>(1000f, -1239f)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), vec2<f32>(1000f, 430f)), Struct_1(28235u, vec4<bool>(false, false, true, false), vec2<f32>(-1947f, 1002f)), Struct_1(1u, vec4<bool>(false, false, false, false), vec2<f32>(-312f, -1112f)), Struct_1(27951u, vec4<bool>(true, false, true, true), vec2<f32>(-904f, 820f)), Struct_1(44773u, vec4<bool>(false, true, false, false), vec2<f32>(447f, -1112f)), Struct_1(55540u, vec4<bool>(false, false, true, false), vec2<f32>(1653f, 259f)), Struct_1(13657u, vec4<bool>(true, false, false, false), vec2<f32>(274f, 1017f)), Struct_1(1u, vec4<bool>(false, true, false, true), vec2<f32>(-306f, 1632f)), Struct_1(1u, vec4<bool>(true, false, true, true), vec2<f32>(269f, 204f)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<f32>(194f, 1472f)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<f32>(-607f, -683f)), Struct_1(25348u, vec4<bool>(true, true, false, false), vec2<f32>(608f, -1139f)), Struct_1(0u, vec4<bool>(false, false, true, true), vec2<f32>(-1960f, -1016f)), Struct_1(32056u, vec4<bool>(false, true, true, false), vec2<f32>(548f, 993f)), Struct_1(4294967295u, vec4<bool>(false, false, false, true), vec2<f32>(-1077f, 2432f)), Struct_1(25779u, vec4<bool>(true, false, true, false), vec2<f32>(-530f, -633f)), Struct_1(33645u, vec4<bool>(false, false, false, true), vec2<f32>(-265f, 1177f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], -251f, -162f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 8u)], 2429f, -1375f) + vec3<f32>(-1001f, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(13415u, 8u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1817f, global1[_wgslsmith_index_u32(u_input.a, 8u)], 173f)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(130f, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], _wgslsmith_f_op_f32(select(-422f, 2021f, true))))), select(all(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) & (~13958u <= u_input.a), true)));
    global1 = array<f32, 8>();
    var var_1 = global2[_wgslsmith_index_u32(1u, 24u)];
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c.x, -1034f, 758f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.a, 8u)] + global1[_wgslsmith_index_u32(34484u, 8u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2002f, -465f, var_1.c.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 450f, var_1.c.x) * vec3<f32>(1000f, var_1.c.x, global1[_wgslsmith_index_u32(u_input.a, 8u)])))))))));
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = 37242u;
    global1 = array<f32, 8>();
    let var_1 = vec3<i32>(8079i, 0i, 39266i);
    global0 = _wgslsmith_f_op_f32(min(arg_1.c.x, 1f));
    let var_2 = arg_3;
    return var_2.b;
}

fn func_2() -> u32 {
    global1 = array<f32, 8>();
    var var_0 = Struct_1(u_input.a, func_4(u_input.a, Struct_1(~u_input.a ^ ~28497u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -344f), vec2<f32>(-797f, global1[_wgslsmith_index_u32(1u, 8u)])) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))), u_input.b, global2[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-605f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] - global1[_wgslsmith_index_u32(44483u, 8u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(26871u, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1475f, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(41135u, 8u)] + 323f)) + vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)] - -1092f), _wgslsmith_f_op_f32(ceil(-204f)))))));
    let var_1 = Struct_1(u_input.d.x, vec4<bool>(false, max(32918i, u_input.e.x) != _wgslsmith_mult_i32(max(-19435i, u_input.c), i32(-1i) * -17698i), var_0.b.x, 1230f < _wgslsmith_f_op_f32(-var_0.c.x)), vec2<f32>(var_0.c.x, 351f));
    return 0u;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = func_2();
    return 2801u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    var var_0 = global2[_wgslsmith_index_u32(~func_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, 0u), 24u)]) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(15637u, u_input.a)) ^ ~u_input.d, reverseBits(vec2<u32>(19427u, u_input.a) ^ vec2<u32>(u_input.a, 1u))) % 32u), 24u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(36301u, 8u)], global1[_wgslsmith_index_u32(var_0.a, 8u)]), vec2<f32>(-939f, var_0.c.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, global1[_wgslsmith_index_u32(u_input.d.x, 8u)])))) + _wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, vec2<bool>(true, true))))));
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.e, vec4<i32>(-1i) * -u_input.e));
}

