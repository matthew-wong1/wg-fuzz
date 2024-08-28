struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(519f, 252f, -2048f, 1000f), vec4<f32>(-1171f, 943f, 1237f, 954f), vec4<f32>(-1000f, -234f, 1389f, -922f), vec4<f32>(462f, -1159f, -768f, 1136f), vec4<f32>(325f, -437f, -163f, -1933f), vec4<f32>(135f, 157f, -1084f, 208f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = arg_0;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-742f, -709f, true))))))), _wgslsmith_f_op_f32(abs(1000f)), true));
}

fn func_2() -> vec4<u32> {
    global0 = array<vec4<f32>, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2454f)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1000f, 394i), false, Struct_1(-1390f, 40854i), false)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(575f)), all(vec3<bool>(false, false, true))))), ~(~_wgslsmith_mod_i32(u_input.b, u_input.b))), _wgslsmith_mod_u32(u_input.a, ~u_input.a >> (1u % 32u)), Struct_1(-503f, min(u_input.b, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(21802i, u_input.b)), countOneBits(vec2<i32>(33311i, u_input.b))))), vec3<u32>(_wgslsmith_mod_u32(109835u, _wgslsmith_sub_u32(4294967295u & u_input.a, 104313u)), 1u, u_input.a));
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    var var_1 = !(!select(vec4<bool>(true, true, true, select(true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return ~vec4<u32>(_wgslsmith_add_u32(8122u, var_0.c), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c, u_input.a, 1u), var_0.e)), u_input.a, u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(117f));
    var var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(24008u, u_input.a), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, 77995u)), firstTrailingBit(vec4<u32>(47221u, 4294967295u, 22919u, 6087u))), _wgslsmith_mult_vec4_u32(func_2(), ~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 37918u), vec4<u32>(u_input.a, 0u, 0u, 1u), vec4<bool>(true, true, true, false))), select(countOneBits(vec4<u32>(50765u << (u_input.a % 32u), ~1u, 1u, u_input.a)), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u)), vec4<u32>(u_input.a, 4294967295u, 92246u, 13758u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))));
    var_1 = vec4<u32>(4294967295u, 64564u, u_input.a, _wgslsmith_mod_u32(30683u, u_input.a));
    var_1 = countOneBits(vec4<u32>(45708u, var_1.x, ~var_1.x, _wgslsmith_add_u32(u_input.a, 4294967295u)) & vec4<u32>(0u, reverseBits(var_1.x), var_1.x | 0u, 12857u)) ^ ~func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f - 405f)))), Struct_1(-668f, _wgslsmith_sub_i32(u_input.b, u_input.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 37056u), reverseBits(1u)), var_1.xy), Struct_1(1399f, _wgslsmith_sub_i32(-52536i, -2147483647i) & _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), -vec2<i32>(u_input.b, -4172i))), vec3<u32>(u_input.a, u_input.a, select(14934u, firstTrailingBit(~var_1.x), all(vec4<bool>(false, true, true, false)))));
    return Struct_1(982f, -20668i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_1();
    let var_2 = vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(false, true, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))), ((_wgslsmith_clamp_i32(-2147483647i, 10907i, -4115i) << (~17564u % 32u)) < -var_1.b) | (u_input.a == ~u_input.a));
    global0 = array<vec4<f32>, 6>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a, 2771f), _wgslsmith_f_op_f32(-var_1.a)))) - _wgslsmith_f_op_f32(f32(-1f) * -1284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(231f - var_1.a))))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(90019u, 6u)]))))));
    global0 = array<vec4<f32>, 6>();
    let var_4 = Struct_2(-433f, Struct_1(var_1.a, ~(~_wgslsmith_mult_i32(u_input.b, -1i))), ~5864u >> (select(_wgslsmith_dot_vec2_u32(vec2<u32>(100076u, 54052u), func_2().zw), ~u_input.a, false) % 32u), func_1(), vec3<u32>(67602u, (reverseBits(u_input.a) << ((64748u >> (0u % 32u)) % 32u)) << (~(~u_input.a) % 32u), max(0u, ~u_input.a)));
    var_0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, 12103i, 0i, u_input.a);
}

