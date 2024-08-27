struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) + _wgslsmith_f_op_f32(-543f - 320f)) + _wgslsmith_f_op_f32(f32(-1f) * -2048f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-123f * -356f), _wgslsmith_f_op_f32(f32(-1f) * -1058f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(377f))));
    global0 = ~(~(u_input.b >> (~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, 17464u)) % 32u)));
    let var_2 = true;
    global0 = firstTrailingBit(28786u);
    global0 = ~(~_wgslsmith_mod_u32(17553u, u_input.c.x));
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b & _wgslsmith_div_u32(u_input.c.x, ~u_input.b), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, u_input.c.x)), u_input.c.zx) >> (1u % 32u), countOneBits(u_input.c.x), u_input.c.x, vec3<i32>(min(8577i, 27999i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2486i, -23783i, u_input.a, 28774i) << (vec4<u32>(33738u, u_input.b, u_input.b, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(-2147483647i, 26081i, u_input.a, u_input.a))) << (u_input.b % 32u), abs(u_input.d)));
}

