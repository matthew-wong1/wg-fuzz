struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<Struct_4, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, ~54724u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~0u, 1u, _wgslsmith_clamp_u32(41927u, 4628u, 23u))));
    global1 = array<Struct_2, 28>();
    global2 = array<Struct_4, 29>();
    global1 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1550f * _wgslsmith_f_op_f32(f32(-1f) * -209f))) + _wgslsmith_div_f32(1000f, 125f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = arg_0;
    global1 = array<Struct_2, 28>();
    let var_2 = Struct_3(_wgslsmith_clamp_i32(~(_wgslsmith_mult_i32(0i, arg_0) >> (var_0.a.x % 32u)), -(-2147483647i ^ -u_input.a), u_input.a), _wgslsmith_mult_u32(~(~(~1u)), 1u));
    var var_3 = Struct_3(var_2.a | 10679i, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(83902u, 0u, arg_1.a.x), abs(vec3<u32>(21811u, 16363u, var_0.b.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(round(-1377f))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(arg_3.a, vec2<u32>(arg_3.a.x, arg_3.a.x)))), -1677f, _wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(arg_1.x * -392f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, -1684f, 468f, -869f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(108f, 1678f, -424f, arg_1.x) * vec4<f32>(arg_1.x, -294f, 1284f, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(-1015f, arg_1.x, arg_1.x, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 2388f, 903f, 640f))))));
    let var_1 = Struct_3(-2147483647i ^ -(~firstLeadingBit(u_input.a)), ~arg_3.a.x << (arg_2.x % 32u));
    let var_2 = !all(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_3 = ~4079u;
    let var_4 = ~abs(2147483647i);
    return -(~(arg_0 << (_wgslsmith_mod_u32(76870u << (0u % 32u), ~var_1.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(-22035i ^ select(u_input.a, func_1(u_input.a, vec4<f32>(-1028f, -2082f, -276f, -1396f), vec3<u32>(35311u, 40164u, 68200u), Struct_1(vec2<u32>(93977u, 1264u), vec2<u32>(86265u, 677u))), true)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 14082u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(30509u, 15243u)), vec2<u32>(1u, 1u), true), firstTrailingBit(~vec2<u32>(0u, 1u)))));
    let var_1 = -1000f;
    var var_2 = _wgslsmith_sub_u32(var_0.b, _wgslsmith_sub_u32(1u, 0u));
    let var_3 = global1[_wgslsmith_index_u32(~var_0.b, 28u)];
    var var_4 = select(~vec2<u32>(19059u, 1u) | (~(~vec2<u32>(var_3.b.b.x, var_0.b)) << (abs(vec2<u32>(4294967295u, 24225u)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(0u, ~var_3.b.b.x), ~var_3.b.b.x), vec2<bool>(var_3.a, true));
    var_4 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(~(vec3<u32>(66252u, var_3.b.b.x, var_0.b) & vec3<u32>(18388u, var_0.b, var_4.x)), abs(vec3<u32>(var_0.b, 28960u, 1u))));
}

