struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    return -1i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_1(i32(-1i) * -2147483647i, arg_0.b);
    var_0 = Struct_1(-29642i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.b))));
    let var_1 = (vec2<i32>(_wgslsmith_clamp_i32(max(u_input.a.x, arg_0.a), abs(arg_0.a), max(25876i, arg_3.x)), -arg_2 >> (min(1u, u_input.b.x) % 32u)) | u_input.a.yx) | ~(-vec2<i32>(-u_input.a.x, arg_2 << (43432u % 32u)));
    let var_2 = true;
    let var_3 = min(min(countOneBits(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << (abs(u_input.b) % vec3<u32>(32u))), vec3<u32>(~u_input.b.x, u_input.c, firstTrailingBit(u_input.b.x)) >> (abs(vec3<u32>(u_input.b.x, u_input.c, u_input.c)) % vec3<u32>(32u))), ~(~vec3<u32>(~u_input.c, 21409u, ~u_input.c)));
    return ~vec4<u32>(u_input.b.x, reverseBits(u_input.c), 34684u, ~var_3.x);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32) -> StorageBuffer {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, -234f, _wgslsmith_f_op_f32(-1459f + -255f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, -1388f), vec3<f32>(1902f, arg_2, -1000f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_2, 1129f, arg_2)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1061f, arg_2) - vec3<f32>(-388f, arg_2, 1277f)))))), arg_0)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -989f);
    var_1 = var_0.b.x;
    return StorageBuffer(func_3(var_0, arg_0 || true, -6518i, u_input.a.xz), ~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(76129u, min(u_input.c, 57896u))), vec2<f32>(1536f, _wgslsmith_f_op_f32(f32(-1f) * -369f)), var_0.b, u_input.c | ~(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(true, select(-func_1(25700u, firstTrailingBit(vec3<i32>(1i, 1i, u_input.a.x)), Struct_1(u_input.a.x, vec3<f32>(1400f, -1300f, -184f))), abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, -56405i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 31867i, u_input.a.x), true), max(vec4<i32>(1i, u_input.a.x, -42940i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, -23234i, 1i)))), true), 388f);
}

