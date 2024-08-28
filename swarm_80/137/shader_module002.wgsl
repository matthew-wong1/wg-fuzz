struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1945f);

var<private> global1: vec2<f32> = vec2<f32>(-515f, -491f);

var<private> global2: array<i32, 6> = array<i32, 6>(-12047i, -13944i, 44901i, 34910i, i32(-2147483648), -11164i);

var<private> global3: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = -1i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(-642f, 104f)));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.c, u_input.b, u_input.b)), min(vec3<i32>(i32(-1i) * -2147483647i, u_input.b, 1i), -(~vec3<i32>(u_input.b, u_input.c, global2[_wgslsmith_index_u32(u_input.a, 6u)])))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 6u)]);
    var var_4 = ~(~1i);
    let var_5 = Struct_1(270f);
    var_0 = all(!vec4<bool>(true & (u_input.a <= u_input.a), !select(false, false, false), !(-1000f > var_2.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(-42514i, _wgslsmith_mod_i32(1i, u_input.b), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))));
}

