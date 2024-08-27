struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<i32, 27> = array<i32, 27>(1i, 7059i, 0i, 2147483647i, -1i, -8308i, 14179i, -1i, 0i, i32(-2147483648), i32(-2147483648), -44368i, 44718i, i32(-2147483648), i32(-2147483648), 0i, -69485i, -3979i, -43208i, 24033i, 21741i, 15756i, -1i, i32(-2147483648), i32(-2147483648), -75910i, -684i);

var<private> global2: f32 = 141f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: u32) -> StorageBuffer {
    let var_0 = countOneBits(vec3<u32>(~(~4294967295u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, 14846u)), vec2<u32>(arg_1, arg_1)) >> (arg_1 % 32u), ~(~(~arg_1))));
    var var_1 = reverseBits(1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(3732f - -1281f), _wgslsmith_f_op_f32(arg_0 + arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-360f * 931f), _wgslsmith_f_op_f32(2292f * arg_0), _wgslsmith_f_op_f32(1075f - arg_0))))));
    var var_3 = 1u;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), 100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-656f + _wgslsmith_div_f32(-890f, var_2.x)))));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_0, -124f, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1791f, var_2.x, -541f) * vec4<f32>(arg_0, 809f, arg_0, -267f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - 1007f), _wgslsmith_f_op_f32(-arg_0), 705f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = array<i32, 27>();
    global1 = array<i32, 27>();
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(5381u), 23u)];
    global0 = array<Struct_2, 23>();
    global2 = var_1.b;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b)) * _wgslsmith_f_op_f32(-var_1.b)), ~1u | _wgslsmith_sub_u32(var_1.a.x, ~var_1.a.x));
}

