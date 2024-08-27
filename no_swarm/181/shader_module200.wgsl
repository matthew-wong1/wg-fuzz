struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = vec2<f32>(187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f))) - -199f));
    return -1i;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32) -> i32 {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0, u_input.d << (vec3<u32>(arg_0.x, 1u, countOneBits(30037u)) % vec3<u32>(32u))) & u_input.d.x;
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_1 = abs(countOneBits(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(var_0, 8u)], -7789i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], 10762i, 2147483647i, 0i))));
    return u_input.c.x;
}

fn func_2(arg_0: vec3<i32>) -> StorageBuffer {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_mod_vec2_i32(min(-(arg_0.xy ^ vec2<i32>(u_input.c.x, 19192i)) | arg_0.yy, reverseBits(abs(arg_0.yx))), u_input.b);
    global0 = array<i32, 8>();
    var var_1 = Struct_1(vec3<f32>(265f, 393f, -1596f));
    global0 = array<i32, 8>();
    return StorageBuffer(vec4<i32>(func_3(u_input.d, select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), true), 1669f), _wgslsmith_mult_i32(-(~arg_0.x), ~firstLeadingBit(-14217i)), u_input.c.x, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1479u, 1u), 8u)] << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(u_input.a.x, 7979u, 39777u)), vec3<u32>(0u, 4294967295u, u_input.d.x)) % 32u)), ~vec2<u32>(u_input.a.x, reverseBits(u_input.a.x)), _wgslsmith_dot_vec2_i32(min(-(vec2<i32>(-1i, 2147483647i) | arg_0.xy), firstTrailingBit(~vec2<i32>(-1i, arg_0.x))), firstTrailingBit(abs(vec2<i32>(1i, 1i)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, arg_0.x, min(-48904i, u_input.c.x)) >> (0u % 32u), 51650i), var_1.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-76577i);
    global0 = array<i32, 8>();
    var var_1 = u_input.c.x <= func_1(~(global0[_wgslsmith_index_u32(48984u, 8u)] << (u_input.d.x % 32u)) > -48511i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-145f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(749f * 1140f), -1477f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1249f, -872f)), _wgslsmith_f_op_f32(-345f - 1983f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, 571f, -398f)) + vec3<f32>(259f, -280f, 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-182f, -110f, -1565f), vec3<f32>(-777f, 1139f, -118f)))))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = func_2(vec3<i32>(1i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(38070u, 8u)], -2147483647i), vec3<i32>(u_input.b.x, 35697i, -1i)) | -1i), 0i));
}

