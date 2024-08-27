struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<i32>(-7978i, 45247i), vec4<u32>(4294967295u, 66637u, 4294967295u, 63387u), vec4<f32>(-1000f, -1000f, 1435f, -312f), Struct_1(-1010f, 9155u, vec3<f32>(830f, 978f, 1523f)), -29942i));

var<private> global1: array<f32, 31> = array<f32, 31>(-449f, 1223f, 1000f, 521f, 176f, 1000f, -1000f, 676f, -1001f, -1682f, 449f, -1498f, 1350f, -1424f, 386f, -1000f, -1178f, 744f, -1426f, -754f, -467f, -856f, -721f, -1000f, 367f, -811f, 937f, -824f, 834f, 979f, -107f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(any(vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), true, true, true));
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    let var_1 = Struct_1(1f, 0u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1125f - global1[_wgslsmith_index_u32(20004u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(103848u, 31u)]) + -1149f)), _wgslsmith_f_op_f32(f32(-1f) * -2015f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, vec4<i32>(min(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-34326i, -1i)), vec2<i32>(-13196i, u_input.a) ^ vec2<i32>(22098i, -19345i)), u_input.a), i32(-1i) * -2147483647i, u_input.a, countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 23976i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, 1i), vec2<i32>(26327i, _wgslsmith_mult_i32(u_input.a, 2147483647i) | _wgslsmith_clamp_i32(1i, u_input.a, u_input.a))));
}

