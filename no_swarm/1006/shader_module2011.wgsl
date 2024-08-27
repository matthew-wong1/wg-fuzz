struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(13187u, 4294967295u, 42758u, 83072u, 15139u, 9769u, 1u, 0u, 28661u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<u32, 10>();
    var var_0 = u_input.c;
    let var_1 = Struct_1(44025u ^ global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.b.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(arg_0.a, 10u)], ~arg_0.a)), 10u)]);
    global0 = array<u32, 10>();
    var var_2 = vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(abs(arg_0.a), 10u)]);
    return abs(0i);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_0 = arg_1;
    let var_1 = -449f;
    return _wgslsmith_clamp_i32(u_input.d, -33070i, abs(1i));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    return -(_wgslsmith_mult_i32(_wgslsmith_div_i32(min(u_input.e, 2147483647i), func_3(vec4<u32>(arg_1.x, global0[_wgslsmith_index_u32(arg_1.x, 10u)], 4294967295u, 0u), Struct_1(59728u), Struct_1(30846u), -261f)), 0i) | u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.a.zyz, u_input.a.zxz), u_input.a.zyy)));
    let var_1 = -1633f;
    var_0 = 35248i ^ u_input.c;
    var_0 = -max(~firstLeadingBit(2147483647i), -func_2(0u, u_input.a.xwz)) ^ u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1)), -548f)), _wgslsmith_f_op_f32(-1362f * var_1), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1)), -386f))), vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(17926u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(93868u, 0u)), _wgslsmith_mult_u32(select(1u, u_input.a.x, false), countOneBits(4294967295u)), ~1u) << (u_input.a % vec4<u32>(32u)));
}

