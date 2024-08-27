struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: array<bool, 10> = array<bool, 10>(true, true, false, false, true, false, true, true, true, false);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, -12432i, 23193i));

var<private> global3: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b.x, -u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 45761i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, -15927i, -2147483647i, global2.a.x)), 2147483647i), vec4<i32>(1i, u_input.b.x, -10608i, global2.a.x) ^ (vec4<i32>(-1i, global2.a.x, -1i, global2.a.x) ^ vec4<i32>(1i, global2.a.x, u_input.b.x, -1i)), vec4<i32>(global2.a.x, u_input.b.x, u_input.b.x, global2.a.x) | -vec4<i32>(u_input.b.x, -2383i, u_input.b.x, u_input.b.x)) >> (~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, 8657u, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(588f, -943f, 1403f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1602f, -1304f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1263f)), _wgslsmith_f_op_f32(ceil(-744f))), -655f, 1259f, -1602f)));
}

