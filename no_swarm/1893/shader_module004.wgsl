struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31099u;

var<private> global1: array<Struct_1, 15>;

var<private> global2: i32 = -8979i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    let var_0 = ~vec4<i32>((u_input.b | u_input.b) ^ select(~u_input.b, -2147483647i, all(vec3<bool>(false, true, false))), 43375i, u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec2_u32(~u_input.c.wz, vec2<u32>(1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), firstLeadingBit(reverseBits(var_0.wxx)), abs(var_0.yzw) | vec3<i32>(var_0.x, -(~var_0.x), 1i));
}

