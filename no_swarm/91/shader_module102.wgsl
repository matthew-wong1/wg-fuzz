struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-601f, 1798f, 589f, 1249f, 584f);

var<private> global1: vec4<f32> = vec4<f32>(930f, 854f, -673f, -671f);

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(~10179u, 4294967295u, u_input.b >> (u_input.b % 32u)), max(~_wgslsmith_add_vec3_u32(global2.a.zzw, global2.a.zwz), vec3<u32>(0u, global2.a.x, _wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(global2.a.x, 31631u, global2.a.x, global2.a.x))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, 1477u, u_input.b), 5u)] - 875f))), _wgslsmith_f_op_f32(f32(-1f) * -1514f));
    var var_1 = all(vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false))), false, !(abs(u_input.c) <= 1i)));
    let var_2 = vec3<i32>(2147483647i, -59083i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(16347i, _wgslsmith_div_i32(u_input.c, 2147483647i)), countOneBits(-vec2<i32>(2147483647i, -2147483647i))));
    var var_3 = vec2<i32>(var_2.x, 46330i) & ~vec2<i32>(u_input.c & 47663i, ~(-22319i));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1555f) + -728f)), -1611f, _wgslsmith_clamp_i32(var_3.x << (4294967295u % 32u), -var_2.x, u_input.c) > _wgslsmith_clamp_i32(firstTrailingBit(59737i), abs(22613i), -1280i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) * global1.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -312f), any(vec3<bool>(false, true, false))))), 23786u);
}

