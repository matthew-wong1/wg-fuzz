struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(68288i, 2147483647i, -2532i), vec3<i32>(i32(-2147483648), -57970i, 1i), vec3<i32>(i32(-2147483648), -18606i, 1i));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<vec3<i32>, 12>;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!(!(!vec3<bool>(global1.d, global1.d, global1.d))), !select(vec3<bool>(global1.d, global1.a, true), vec3<bool>(false, global1.d, true), select(vec3<bool>(global1.d, false, false), vec3<bool>(global1.d, global1.a, global1.d), vec3<bool>(true, global1.a, global1.d))), global1.d));
    global2 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec2_f32(global4.xx * global1.b.zz);
    var_0 = !any(!select(!vec3<bool>(true, global1.d, true), !vec3<bool>(global1.a, true, true), !vec3<bool>(global1.a, global1.a, global1.a)));
    global0 = array<vec3<i32>, 3>();
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 16u)];
    var var_3 = 2147483647i;
    let var_4 = vec3<bool>(global1.a, global1.d, any(!select(!vec3<bool>(var_2.a, global1.d, false), vec3<bool>(global1.a, global1.a, global1.d), true)));
    let var_5 = Struct_1(all(vec3<bool>(var_2.b && true, false, global1.d != true)), 33949u > (u_input.b.x & _wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, global3[_wgslsmith_index_u32(~(~(4294967295u >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 50990u) % 32u))), 12u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, -452f, -182f, -324f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, global4.x, -823f, global1.b.x)), vec4<bool>(var_2.b, var_4.x, true, global1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, -572f, 509f, 268f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -1780f, 260f)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.x + global1.b.x), -1390f, -742f, _wgslsmith_f_op_f32(f32(-1f) * -2073f)))));
}

