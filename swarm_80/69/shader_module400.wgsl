struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -366f;

var<private> global2: array<vec4<u32>, 8>;

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    global3 = array<Struct_1, 6>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1023f, 503f, _wgslsmith_div_f32(arg_1.b, arg_1.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1.b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> StorageBuffer {
    global3 = array<Struct_1, 6>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f) + _wgslsmith_f_op_f32(sign(450f)));
    global0 = -213f;
    global4 = array<Struct_2, 15>();
    global4 = array<Struct_2, 15>();
    return func_2(_wgslsmith_dot_vec2_i32(-(~reverseBits(vec2<i32>(arg_0.x, -2147483647i))), vec2<i32>(-u_input.a << (~11228u % 32u), abs(~u_input.c.x))), global4[_wgslsmith_index_u32(u_input.e.x, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstTrailingBit(u_input.e));
    global3 = array<Struct_1, 6>();
    let var_1 = Struct_1(~(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 31870u, var_0.x), u_input.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1087f, -196f)) + _wgslsmith_f_op_f32(570f - 366f)))), -435f, countOneBits(vec3<u32>(u_input.b.x, ~55705u, abs(4294967295u))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -212f), 1209f));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(u_input.c), ~_wgslsmith_mult_u32(select(u_input.b.x, var_0.x, true), ~0u) > ~0u);
}

