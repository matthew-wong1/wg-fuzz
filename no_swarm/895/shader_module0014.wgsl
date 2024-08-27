struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 5>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_mult_i32(~u_input.a.x, countOneBits(global0.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_div_f32(909f, 1184f)) > _wgslsmith_div_f32(-963f, arg_0.x);
    let var_2 = var_0;
    let var_3 = !vec3<bool>(select(var_1, true, _wgslsmith_f_op_f32(-1227f + arg_0.x) >= _wgslsmith_f_op_f32(-arg_0.x)), var_2.a > _wgslsmith_clamp_i32(global0.a, reverseBits(u_input.a.x), abs(u_input.a.x)), true);
    global1 = array<vec4<i32>, 5>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(677f - 1538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), arg_0.x, arg_0.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_u32(0u, 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1202f, -1456f, 4272f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, 454f, 1794f)))))), vec4<f32>(-543f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1365f, -1102f))))), 624f, -652f)));
    var var_2 = 1u;
    var_2 = 1u;
    global1 = array<vec4<i32>, 5>();
    return _wgslsmith_f_op_vec3_f32(var_1.zxx - var_1.yyy);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(arg_1.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(4035u, 5u)], Struct_1(u_input.a.x), 10187i))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(111f, -995f, 138f))).x, _wgslsmith_f_op_f32(-1731f + -892f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1000f, 1000f, -1112f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, 1440f, -2008f)), true)) - vec3<f32>(-346f, -1939f, _wgslsmith_f_op_f32(floor(-686f))))));
    var var_2 = arg_0;
    var_2 = arg_0;
    global1 = array<vec4<i32>, 5>();
    return _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(3437u, ~(~4294967295u), 1u)), max(_wgslsmith_div_u32(abs(~4294967295u), firstTrailingBit(~0u)), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 29081u, 1u), vec3<u32>(3136u, 30904u, 1u))), 8158u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = u_input.a.yy;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -1523f));
    global1 = array<vec4<i32>, 5>();
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-2234f - _wgslsmith_f_op_f32(trunc(-509f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~abs(1i));
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 35384i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 22410i), u_input.a.xx))), countOneBits(u_input.a.yy)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(var_0.a), vec3<u32>(44203u, abs(min(28439u, 18381u)), ~0u), ~vec4<u32>(1u, ~1u, func_1(Struct_1(u_input.a.x), vec3<i32>(-1i, -12278i, var_0.a)), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1685f, abs(2147483647i) & -u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, 110f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1834f, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1388f, 669f)))))), vec2<u32>(1u, 1u));
}

