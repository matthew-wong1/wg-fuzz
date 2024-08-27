struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 18> = array<i32, 18>(1i, -63761i, 0i, -1i, i32(-2147483648), -1i, 1i, 1i, -1i, 2147483647i, 2147483647i, -67292i, -1i, 0i, 36166i, -14839i, -1i, 2147483647i);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: vec4<f32> = vec4<f32>(297f, 1396f, -2109f, -1381f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global4.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.zxz - global4.yzx));
    let var_2 = Struct_1(true);
    let var_3 = ~1676i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(countOneBits(firstLeadingBit(u_input.c.xyx)), vec3<i32>(~global1[_wgslsmith_index_u32(u_input.a, 18u)], _wgslsmith_add_i32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 18u)]), -2147483647i), -1i)));
}

