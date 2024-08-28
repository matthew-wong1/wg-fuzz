struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: array<u32, 13>;

var<private> global1: array<vec3<u32>, 3>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.a.zzw, firstTrailingBit(_wgslsmith_div_vec3_i32(reverseBits(-u_input.e.zwx), firstLeadingBit(vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i)))), ((select(u_input.a.xyy, vec3<i32>(-2147483647i, -10610i, u_input.a.x), false) ^ ~vec3<i32>(1i, -2147483647i, 1i)) | vec3<i32>(u_input.c, u_input.b.x, reverseBits(-3875i))) >> (~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(20265u, 66360u, 4294967295u, 93789u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d, global0[_wgslsmith_index_u32(1u, 13u)])), 3u)] % vec3<u32>(32u)));
    let var_1 = -1955f;
    let var_2 = ~15792i;
    var var_3 = vec3<bool>(false, !all(vec3<bool>(false, true, true)) || false, false);
    var var_4 = vec2<i32>(var_2, ~(-u_input.c));
    return Struct_1(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(~14724u, 13u)], 4294967295u), 6264i, vec3<f32>(var_1, -1368f, var_1));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = !(!vec3<bool>(true, true, any(vec3<bool>(true, arg_2, arg_2))));
    var var_1 = arg_0;
    return Struct_1(func_1().a, arg_0.b, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(), -1260f, false, firstLeadingBit(u_input.b.xw));
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c.x));
}

