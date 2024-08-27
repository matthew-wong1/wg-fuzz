struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false));

var<private> global2: array<u32, 24>;

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(false, true, false));

var<private> global4: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 48483u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4695u, 0u), vec2<u32>(0u, 91223u), vec2<u32>(81951u, 19135u), vec2<u32>(70569u, 4294967295u), vec2<u32>(4294967295u, 55154u), vec2<u32>(1u, 0u), vec2<u32>(0u, 26229u), vec2<u32>(32300u, 952u), vec2<u32>(9555u, 16281u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<bool>, 19>();
    global0 = array<vec4<f32>, 3>();
    global3 = Struct_1(global3.a, global3.b);
    var var_0 = vec4<bool>(all(!global3.b), !any(vec4<bool>(global3.b.x, select(false, global3.a, global3.a), false, !global3.a)), global3.a, (!global3.b.x & global3.b.x) | (global3.a && (_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -51362i) < ~u_input.c.x)));
    return Struct_1(!global3.b.x, !(!var_0.wzy));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = func_1();
    global3 = func_1();
    global4 = array<vec2<u32>, 12>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(780f + 1060f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) + 2345f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, 685f)), _wgslsmith_f_op_f32(-1201f * 493f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f * 157f) + -312f))))));
    global1 = array<vec4<bool>, 19>();
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(func_3(~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, -16191i, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), true | (u_input.a.x <= _wgslsmith_mult_u32(arg_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)]))), vec3<bool>(arg_2.x, arg_2.x, all(select(!arg_2, select(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global3.b.x), global3.a))));
    global4 = array<vec2<u32>, 12>();
    return reverseBits(~1u);
}

fn func_2(arg_0: u32, arg_1: i32) -> StorageBuffer {
    let var_0 = ~vec4<u32>(func_4(global0[_wgslsmith_index_u32(1u, 3u)], u_input.a.ywy, select(global1[_wgslsmith_index_u32(6378u, 19u)], vec4<bool>(global3.a, true, global3.b.x, global3.b.x), func_3(-2147483647i, false))), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.a.xzz, vec3<u32>(arg_0, 5727u, arg_0))), ~(~u_input.a.zzy)), min(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, 50315u, arg_0), u_input.a), global2[_wgslsmith_index_u32(39528u, 24u)]), 42415u);
    let var_1 = Struct_1(any(global3.b), vec3<bool>(true, select(false, !global3.b.x, true && (true && global3.a)), global3.b.x));
    global2 = array<u32, 24>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2527f - -121f), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-504f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-220f)))))));
    global0 = array<vec4<f32>, 3>();
    return StorageBuffer(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<vec4<bool>, 19>();
    global2 = array<u32, 24>();
    let x = u_input.a;
    s_output = func_2(countOneBits(u_input.a.x), min(u_input.c.x, u_input.c.x));
}

