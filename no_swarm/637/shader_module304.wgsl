struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1i, 1i), Struct_1(2147483647i, -1i), Struct_1(-38545i, 47995i), Struct_1(22432i, 7525i), Struct_1(414i, 11866i), Struct_1(0i, 2147483647i), Struct_1(0i, 1i), Struct_1(-24121i, 26544i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(true, true, false, select(true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, 13928u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)))));
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = u_input.d.x <= (_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(72429u, u_input.d.x), ~u_input.d.x, u_input.d.x)) | _wgslsmith_mod_u32(~(~u_input.d.x), _wgslsmith_mult_u32(~66929u, _wgslsmith_div_u32(26605u, 4294967295u))));
    global0 = array<Struct_1, 8>();
    return u_input.d.x;
}

fn func_2() -> f32 {
    let var_0 = reverseBits(select(_wgslsmith_mult_i32(0i, u_input.c ^ u_input.a) ^ -(~u_input.a), -39886i, !(!all(vec4<bool>(true, false, true, true)))));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(1874f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1206f))));
    var var_2 = ~vec4<u32>(u_input.d.x, ~(~firstTrailingBit(1u)), _wgslsmith_mult_u32(u_input.d.x, func_3()), _wgslsmith_add_u32(~(1u ^ u_input.d.x), abs(max(1u, 4294967295u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1, -900f))) + var_1);
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1641f) * 1068f))), 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f - -2136f))))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_f_op_f32(floor(2277f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1034f))) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(160f))), _wgslsmith_f_op_f32(func_2()), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(411f, -1961f, 746f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-376f, 597f, -693f), vec3<f32>(-526f, 1002f, -1920f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(631f, -1000f, 1000f) * vec3<f32>(190f, -996f, -236f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -798f, -1665f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_1(u_input.a, ~reverseBits(u_input.a) & u_input.c);
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.x));
    var var_3 = var_1;
    global0 = array<Struct_1, 8>();
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(601f, 111f, _wgslsmith_div_f32(1159f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-517f, 225f)), _wgslsmith_f_op_f32(-154f + 1415f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(1299f, -1992f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1712f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-463f, var_0.x, var_0.x, var_0.x), vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x)))))))));
    var_3 = Struct_1(max(-2147483647i, 2147483647i), 2147483647i);
    var var_5 = global0[_wgslsmith_index_u32(u_input.d.x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), select(-min(-u_input.b, vec2<i32>(var_5.a, var_5.b)), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 27508i), vec2<i32>(-30016i, u_input.a))), all(vec2<bool>(true, any(vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x))), 1038f);
}

