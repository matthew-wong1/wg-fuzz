struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: array<vec4<i32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    var var_0 = 0i;
    global0 = vec2<i32>(global0.x, ~min(global0.x | global0.x, global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(317f - _wgslsmith_f_op_f32(-arg_0.a.x))))));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    global0 = _wgslsmith_mod_vec2_i32(max(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-1i), global0.x), min(abs(vec2<i32>(-2147483647i, 42437i)), vec2<i32>(global0.x, -2147483647i))), select(abs(-vec2<i32>(global0.x, -1i)), vec2<i32>(_wgslsmith_mod_i32(-1i, 2499i), global0.x | global0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<i32>(4592i, ~global0.x));
    return _wgslsmith_div_vec3_u32(~(~vec3<u32>(13942u, 17926u, u_input.b) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, u_input.a, u_input.b)) | vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4988u, 1u, u_input.a, u_input.a), vec4<u32>(0u, u_input.b, u_input.b, u_input.a)), ~1u)) ^ min(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a, 12555u), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))), vec3<u32>(~72175u, u_input.b, abs(73611u)));
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    global1 = array<vec4<i32>, 29>();
    var var_0 = -arg_1 | global0.x;
    var var_1 = ~0i;
    var_0 = ~(_wgslsmith_dot_vec3_i32(~(vec3<i32>(arg_1, -2147483647i, -26107i) >> (vec3<u32>(u_input.a, 1u, 6342u) % vec3<u32>(32u))), min(reverseBits(vec3<i32>(-16444i, global0.x, global0.x)), -vec3<i32>(1i, global0.x, global0.x))) << (_wgslsmith_dot_vec3_u32(func_3(vec3<f32>(arg_0, 679f, 586f)), ~vec3<u32>(u_input.a, u_input.a, 1u)) % 32u));
    let var_2 = abs(abs(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 69982u, 27037u), vec4<u32>(u_input.b, u_input.a, 1u, 4294967295u)))));
    return all(vec3<bool>(false, true, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(~vec2<u32>(0u, u_input.a) | ~firstLeadingBit(~vec2<u32>(u_input.b, u_input.b)));
    let var_1 = Struct_4(vec4<f32>(-2184f, 1897f, 846f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(965f, 3205f, true))))))));
    global0 = -abs(vec2<i32>(-1i) * -arg_1.zy);
    let var_2 = arg_0;
    global0 = arg_1.yy;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1978f, -1607f, 1622f, 271f) + vec4<f32>(-188f, -638f, -1645f, -705f))), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1263f, -314f, -163f, -823f) + vec4<f32>(-121f, -1529f, 1448f, -995f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2246f, 1683f)) + _wgslsmith_f_op_f32(sign(-509f))))), -901f);
    let var_1 = func_4(!select(vec2<bool>(true, global0.x >= -1i), vec2<bool>(true, 1u < u_input.b), select(vec2<bool>(false, true), vec2<bool>(false, false), func_2(1186f, global0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2830i, 39651i) & vec3<i32>(-52187i, global0.x, global0.x), -vec3<i32>(-57726i, -2147483647i, global0.x)), 1i, _wgslsmith_mod_i32(~global0.x, -31387i)), vec3<i32>(6357i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15705i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, 1i)) >> (~4294967295u % 32u), _wgslsmith_mod_i32(1i, -global0.x))));
    let var_2 = _wgslsmith_mod_vec2_i32(~(-max(vec2<i32>(global0.x, global0.x), vec2<i32>(89457i, global0.x))), vec2<i32>(~global0.x, global0.x)) << (vec2<u32>(4294967295u, _wgslsmith_div_u32(max(abs(1u), u_input.b), 146353u)) % vec2<u32>(32u));
    global1 = array<vec4<i32>, 29>();
    global1 = array<vec4<i32>, 29>();
    var var_3 = ~(~vec4<u32>(select(1u, 1u, true), ~(~4294967295u), firstLeadingBit(_wgslsmith_mod_u32(27776u, u_input.a)), 72275u));
    var_3 = ~(~_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, var_3.x, 1u, 56263u)), vec4<u32>(var_3.x, 1u, _wgslsmith_dot_vec3_u32(var_3.xww, vec3<u32>(var_3.x, var_3.x, var_3.x)), 4294967295u)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(48950u, var_3.x, var_3.x, 4294967295u) << (min(vec4<u32>(u_input.a, var_3.x, var_3.x, 1u), ~vec4<u32>(u_input.a, var_3.x, 63552u, 58188u)) % vec4<u32>(32u))));
}

