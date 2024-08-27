struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 0u, 40084u) % vec3<u32>(32u))) & ~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, ~39366u)), ~(~(~vec3<u32>(u_input.a, 6980u, 33853u))))), 21u)];
    let var_1 = select(vec3<bool>(all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), true)), all(vec2<bool>(true, true)), max(-2147483647i, firstLeadingBit(var_0.a.x)) < (_wgslsmith_sub_i32(var_0.a.x, var_0.a.x) ^ -1i)), vec3<bool>(true, true, !(!(u_input.a <= u_input.a))), true);
    global0 = array<Struct_1, 21>();
    let var_2 = Struct_1(-vec2<i32>(-var_0.a.x, -var_0.a.x));
    var var_3 = -250i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(569f * -664f), _wgslsmith_div_f32(615f, -2071f)))) * _wgslsmith_f_op_f32(-1f)));
}

