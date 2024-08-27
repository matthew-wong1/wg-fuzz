struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 8428u, 1u);

var<private> global1: f32;

var<private> global2: array<u32, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    global2 = array<u32, 14>();
    let var_0 = _wgslsmith_f_op_f32(sign(-219f));
    var var_1 = Struct_3(firstLeadingBit(global2[_wgslsmith_index_u32(27303u, 14u)]));
    global0 = ~(~(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_1.a, 0u), vec3<u32>(var_1.a, u_input.a, 1u)))));
    let var_2 = Struct_2(abs(-arg_1.a));
    return global2[_wgslsmith_index_u32(max(var_1.a, ~1u), 14u)];
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = abs(vec4<i32>(0i, u_input.b.x, 1i | _wgslsmith_mult_i32(-u_input.c.x, -27765i), 5167i));
    return vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(func_2(true, arg_0), ~reverseBits(u_input.a))), 6900u, ~0u >> (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1517f, 230f);
    var var_1 = abs(reverseBits(~_wgslsmith_div_vec3_u32(max(vec3<u32>(24545u, global2[_wgslsmith_index_u32(0u, 14u)], 46623u), vec3<u32>(22615u, global2[_wgslsmith_index_u32(0u, 14u)], 0u)), func_1(Struct_2(1i)))));
    let var_2 = countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.d ^ u_input.b.x, ~u_input.b.x, -2147483647i), (u_input.d ^ -1i) >> (global0.x % 32u)), ~u_input.b.xxy));
    let var_3 = (u_input.c.x << (4294967295u % 32u)) | _wgslsmith_clamp_i32(-2147483647i, ~abs(-15411i), -49589i);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-126f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1435f - -980f), _wgslsmith_f_op_f32(-var_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-937f + -443f)))));
    global2 = array<u32, 14>();
    var var_4 = vec4<u32>(~1u, ~(global0.x ^ select(88699u, 0u, true)) | u_input.a, ~_wgslsmith_dot_vec3_u32(func_1(Struct_2(-1i)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(20644u, 14u)], 1u)), ~vec3<u32>(u_input.a, 4294967295u, var_1.x))), _wgslsmith_clamp_u32(62330u, 4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(909f, 1f), 0i);
}

