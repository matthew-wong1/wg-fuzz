struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(false, 15334u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(global1.b, 2805u, 22518u)), vec3<u32>(24390u, ~36832u, 20304u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, ~44299u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, global1.b), vec4<u32>(global1.b, 0u, 55243u, 0u)), global1.b), vec4<u32>(global1.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(18252u, global1.b, global1.b), vec3<u32>(8028u, 1u, 17629u)), _wgslsmith_mod_u32(4294967295u, select(global1.b, 1u, global1.a)), global1.b)), _wgslsmith_mult_i32(u_input.a, -firstLeadingBit(-33145i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(608f - -785f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -895f), 1091f, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -809f)))))));
}

