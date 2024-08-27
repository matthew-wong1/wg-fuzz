struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec2<bool>(false, false), vec2<u32>(12452u, 32818u), 119f), Struct_1(false, vec2<bool>(true, true), vec2<u32>(32558u, 0u), 1826f), Struct_1(false, vec2<bool>(false, true), vec2<u32>(30211u, 62953u), -1663f), Struct_1(false, vec2<bool>(true, false), vec2<u32>(0u, 55713u), 312f));

var<private> global1: u32 = 15533u;

var<private> global2: array<f32, 21>;

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!(!all(vec3<bool>(true, true, true))) && true);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(26582u, 21u)] - -1601f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) - _wgslsmith_f_op_f32(1902f * -1043f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 90990u, 1u), u_input.c), 21u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19303u, 21u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(80670u, 21u)], 1668f)))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u << (u_input.c.x % 32u), 21u)]))));
    let var_1 = 1u;
    let var_2 = Struct_1(true, vec2<bool>(true, true), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(var_1), _wgslsmith_mult_u32(var_1, 48881u)), vec2<u32>(1u, 0u) | ~vec2<u32>(u_input.c.x, 1u)) | u_input.a.yy, _wgslsmith_f_op_f32(-1453f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)] * 843f) - 1063f)))));
    var_0 = global2[_wgslsmith_index_u32(reverseBits(~(~51439u)), 21u)];
    global0 = array<Struct_1, 4>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wy);
}

