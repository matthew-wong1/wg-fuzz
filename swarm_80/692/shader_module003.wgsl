struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1101f, vec4<u32>(1u, 6342u, 0u, 0u), vec2<bool>(true, false), -317f);

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(31309u, 57767u, 0u, 39405u), vec4<u32>(1u, 0u, 1u, 30391u), vec4<u32>(1u, 16046u, 4294967295u, 29343u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 98973u, 1u), vec4<u32>(4294967295u, 16658u, 75802u, 1917u), vec4<u32>(8291u, 4294967295u, 519u, 0u), vec4<u32>(0u, 0u, 68815u, 4294967295u), vec4<u32>(14410u, 0u, 1u, 44426u), vec4<u32>(4294967295u, 44921u, 1u, 1u), vec4<u32>(91039u, 13844u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 32740u, 48685u), vec4<u32>(0u, 29403u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(0u, 21601u, 1243u, 4294967295u), vec4<u32>(11721u, 35469u, 27061u, 43750u), vec4<u32>(4294967295u, 1u, 5662u, 50131u), vec4<u32>(26774u, 8558u, 13384u, 63557u), vec4<u32>(44948u, 0u, 59624u, 1u), vec4<u32>(4294967295u, 74935u, 4294967295u, 0u), vec4<u32>(5653u, 4294967295u, 132096u, 38056u), vec4<u32>(4294967295u, 0u, 19328u, 4294967295u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = firstTrailingBit(54756u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, global0.a, _wgslsmith_f_op_f32(1984f - 490f), -478f));
    let var_2 = !global0.c.x;
    var_0 = max(global0.b.x, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(74845u, global0.b.x, 59333u)), min(vec3<u32>(1u, ~global0.b.x, ~global0.b.x), ~vec3<u32>(global0.b.x, global0.b.x, 3900u))));
    var var_3 = var_2;
    return StorageBuffer(32252u, ~countOneBits(_wgslsmith_sub_vec3_i32(u_input.c.xzw, ~u_input.c.zyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

