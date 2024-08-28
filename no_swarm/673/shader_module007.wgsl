struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
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

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), u_input.d.xx) ^ 0u), min(~(~14235u), 1u), ~(1u << (firstTrailingBit(u_input.d.x) % 32u)), ~u_input.d.x));
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    let var_1 = var_0;
    global2 = array<Struct_1, 14>();
    return firstTrailingBit(vec2<u32>(~var_0.a.x, 291u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, ~countOneBits(arg_0.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, ~53340u), _wgslsmith_mult_vec2_u32(~func_3(), vec2<u32>(64581u, ~1u))));
    let var_2 = Struct_1(min(reverseBits(vec4<u32>(~var_0.a.x, ~var_1.x, ~arg_1.a.x, ~1u)), ~(~(u_input.b & vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, arg_1.a.x)))));
    var var_3 = arg_2 << (u_input.b.x % 32u);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(825f - _wgslsmith_f_op_f32(f32(-1f) * -1458f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1019f, arg_3.x)), -817f))) + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, 7418u, 1u)), 3u)] * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, false)), _wgslsmith_f_op_f32(1000f * arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))));
    return _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(226f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: f32) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 147f))), arg_3, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.d), Struct_1(u_input.b), 24371i, vec3<f32>(arg_3, arg_3, arg_3)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -434f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 0u, u_input.b.x), var_0.a)), u_input.a, vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(var_1.x, arg_3, arg_2.x)), _wgslsmith_f_op_f32(arg_3 - arg_3))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(arg_1.x, 14u)], global2[_wgslsmith_index_u32(42942u, 14u)], ~firstTrailingBit(1i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1062f, -985f, -2512f))))))), _wgslsmith_f_op_f32(1301f - _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-arg_3)))));
    let var_3 = ~_wgslsmith_mult_u32(55813u, select(~(arg_0.a.x | 79453u), 40242u, arg_2.x));
    global2 = array<Struct_1, 14>();
    return StorageBuffer(2184i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 3>();
    global1 = u_input.a;
    let var_0 = all(vec2<bool>(true, true));
    var var_1 = -1000f;
    global1 = u_input.a;
    var var_2 = vec3<u32>(~firstLeadingBit(~25119u), 0u, abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 20045u, u_input.b.x, 14655u)), u_input.d)) | u_input.b.x);
    global2 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = func_1(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec4<u32>(~(0u >> (u_input.b.x % 32u)), var_2.x, ~countOneBits(min(u_input.d.x, 4294967295u)), ~var_2.x), !select(select(vec4<bool>(true, false, false, false), !vec4<bool>(var_0, false, false, var_0), select(true, false, var_0)), vec4<bool>(true, any(vec4<bool>(true, var_0, false, true)), true, var_0), !select(vec4<bool>(false, false, false, false), vec4<bool>(var_0, var_0, true, true), var_0)), 1009f);
}

