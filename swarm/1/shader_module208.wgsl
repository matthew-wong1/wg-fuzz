struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 15>;

var<private> global2: vec2<u32>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global4: array<u32, 3>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<f32, 15>();
    global4 = array<u32, 3>();
    return global2.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    global2 = vec2<u32>(u_input.b, 31283u);
    global2 = ~(~vec2<u32>(global2.x, _wgslsmith_add_u32(global3.x, 58285u)));
    global2 = vec2<u32>(~_wgslsmith_clamp_u32(global2.x, 2029u, ~(~1u)), 1u);
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(var_0.a, arg_0.a), ~1u, ~min(~arg_0.a, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(0u, 3u)], 0u))), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(global2.x, 3u)], var_0.a, u_input.b), ~vec3<u32>(u_input.b, 0u, global3.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(39016u, 1396u, 7004u), vec3<u32>(6335u, 4294967295u, 4294967295u), vec3<u32>(45407u, u_input.b, global3.x)) % vec3<u32>(32u))));
    return func_2(Struct_1(0u, _wgslsmith_f_op_f32(sign(427f))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~select(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 7558u), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 3u)])), !all(vec3<bool>(false, false, false))), 1011f);
    let var_1 = 1u << (global4[_wgslsmith_index_u32(func_2(Struct_1(85007u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 22461u, 0u), vec3<u32>(1u, 1u, 49412u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-516f))))), 3u)] % 32u);
    var var_2 = all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(!any(vec3<bool>(false, false, false)), true, (u_input.d & u_input.a) < _wgslsmith_div_i32(u_input.c, u_input.c), false), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), all(vec4<bool>(true, true, false, true)))));
    global4 = array<u32, 3>();
    let var_3 = _wgslsmith_mult_u32(global3.x, max(89642u, _wgslsmith_sub_u32(~0u, 49933u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f + global1[_wgslsmith_index_u32(global3.x, 15u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1308f)) * global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(34493u, var_3), 15u)]))) - 527f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 68378u;
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(~(vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 3u)], 0u, u_input.b) ^ vec3<u32>(u_input.b, global2.x, global4[_wgslsmith_index_u32(global3.x, 3u)])), vec3<u32>(17347u, 1u, abs(u_input.b))));
    var_0 = reverseBits(func_1(Struct_1(~(global2.x ^ u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global2.x, 15u)], 1130f)), 293f)), 13872i));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 3u)], 15u)]) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 3u)], 15u)] - -379f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.xy, var_1.zx), 15u)] - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -1617f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~69356u, 15u)] * _wgslsmith_f_op_f32(floor(-603f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(Struct_1(u_input.b, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], 15u)])), 15u)] + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 15u)], -283f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-458f - 1002f)))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), true, u_input.b >= 78109u);
    let x = u_input.a;
    s_output = StorageBuffer(18215u, var_2.zx);
}

