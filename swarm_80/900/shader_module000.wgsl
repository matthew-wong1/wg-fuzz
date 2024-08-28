struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false));

var<private> global1: i32;

var<private> global2: array<i32, 15> = array<i32, 15>(26403i, 0i, i32(-2147483648), 0i, 28244i, 21056i, 1236i, -29372i, -42964i, 2147483647i, i32(-2147483648), 42697i, 14410i, -7304i, 1i);

var<private> global3: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.yy, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], -1i >> (u_input.d % 32u));
    global2 = array<i32, 15>();
    let var_1 = u_input.d;
    var var_2 = -8846i;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(911f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f) * _wgslsmith_f_op_f32(1270f + 317f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(8371i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 26019i), max(vec3<i32>(var_0.c, 1i, 33891i), vec3<i32>(1i, var_0.b, -2147483647i)))), var_0.c, countOneBits(global2[_wgslsmith_index_u32(~u_input.a.x, 15u)])), u_input.c);
}

