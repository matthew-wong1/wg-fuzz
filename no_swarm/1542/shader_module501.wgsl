struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(reverseBits(-(~(i32(-1i) * -2147483647i))), -abs(u_input.d), u_input.b.x, ~reverseBits(u_input.d));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1116f)) * 218f);
    var_0 = ~vec4<i32>(-1i ^ min(u_input.d, _wgslsmith_add_i32(36241i, -40945i)), -20922i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 20158i, -1i, 2147483647i), vec4<i32>(-23484i, u_input.d, 0i, 1225i)) ^ _wgslsmith_sub_i32(u_input.d, 13269i)), u_input.d);
    var var_2 = max(firstTrailingBit(u_input.c), u_input.a.x);
    var var_3 = var_0.yyx;
    var_3 = ~var_0.wzw;
    let var_4 = vec2<bool>(any(vec3<bool>(true, true, true)) | false, all(!vec2<bool>(true, 79968u <= u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))), ~20560i, u_input.b);
}

