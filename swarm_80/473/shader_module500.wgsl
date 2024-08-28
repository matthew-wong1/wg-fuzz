struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(-864i, 10916i, -1i, -1i), false, 584f, 1147f));

var<private> global2: array<i32, 13>;

var<private> global3: bool;

var<private> global4: array<f32, 31> = array<f32, 31>(-1018f, 535f, -412f, -440f, 1000f, 1000f, 264f, -1146f, 430f, 777f, 1445f, -897f, -124f, -2505f, -879f, 1234f, 1000f, 1592f, -2766f, -1468f, 1684f, -765f, -1633f, 1000f, 278f, 152f, -142f, -572f, 313f, 1256f, -566f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    global2 = array<i32, 13>();
    let var_0 = arg_1.x;
    var var_1 = 0u;
    var var_2 = global4[_wgslsmith_index_u32(arg_0, 31u)];
    let var_3 = Struct_3(vec3<i32>(~(-global2[_wgslsmith_index_u32(u_input.a, 13u)]) & -933i, countOneBits(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 13u)])), -1i));
    return var_3;
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    global4 = array<f32, 31>();
    var var_0 = Struct_2(global1.a);
    return vec3<bool>(var_0.a.b & false, var_0.a.b & false, var_0.a.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = Struct_1(global1.a.a, all(func_3(~global1.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a.c);
    global2 = array<i32, 13>();
    let var_1 = !vec2<bool>(all(arg_0), global1.a.b);
    var var_2 = !(!(!(!(arg_0.x & var_0.b))));
    let var_3 = Struct_3(abs(vec3<i32>(2147483647i, _wgslsmith_mod_i32(19561i, global2[_wgslsmith_index_u32(u_input.a, 13u)]), ~12720i)) >> ((vec3<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a), ~0u) & vec3<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(20654u, 23u)], vec4<u32>(u_input.b, u_input.a, 1u, u_input.b)), u_input.b, _wgslsmith_add_u32(0u, 46474u))) % vec3<u32>(32u)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d, -1926f, global4[_wgslsmith_index_u32(0u, 31u)], var_0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 623f, global1.a.c, 447f), vec4<f32>(367f, global1.a.d, var_0.c, -569f))))) - vec4<f32>(_wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.a, 31u)], global4[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_div_f32(-1260f, _wgslsmith_f_op_f32(-global1.a.c)), -880f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.c - global1.a.c), 822f, func_3(global1.a.a).x)))), global1.a.a, arg_1.a.zx, -2247f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = all(!(!vec4<bool>(global1.a.b, false, global1.a.b, all(vec3<bool>(false, false, true)))));
    let var_0 = global1.a.a.yz;
    let var_1 = func_1(0u, !select(select(!vec3<bool>(false, global1.a.b, global1.a.b), vec3<bool>(global1.a.b, false, false), !vec3<bool>(global1.a.b, global1.a.b, false)), select(vec3<bool>(global1.a.b, true, true), select(vec3<bool>(global1.a.b, global1.a.b, true), vec3<bool>(true, false, global1.a.b), vec3<bool>(true, true, true)), global1.a.b), global1.a.b), global1.a.b);
    global0 = array<vec4<u32>, 23>();
    let x = u_input.a;
    s_output = func_2(!vec2<bool>(false, all(!vec3<bool>(global1.a.b, true, false))), func_1(~(~max(u_input.b, 1u)), select(!vec3<bool>(true, global1.a.b, global1.a.b), select(!vec3<bool>(false, false, global1.a.b), vec3<bool>(global1.a.b, true, true), vec3<bool>(true, global1.a.b, false)), all(vec4<bool>(true, false, global1.a.b, global1.a.b))), global1.a.b));
}

