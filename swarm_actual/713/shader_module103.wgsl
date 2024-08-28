struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: vec4<i32> = vec4<i32>(5630i, 1i, -76821i, i32(-2147483648));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -83104i;
    var var_1 = ~(~(~countOneBits(vec3<u32>(26328u, 24691u, u_input.a.x)) ^ ~(~u_input.a.zzy)));
    let var_2 = Struct_2(!(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -102f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-948f, -1801f)) + 840f) * -751f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-647f)))), _wgslsmith_div_f32(-1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2159f - -519f)))), 886f, _wgslsmith_add_i32(global1.x, -2147483647i), -19414i);
}

