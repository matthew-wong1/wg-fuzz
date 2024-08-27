struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1003f, 1956f)))))));
    var var_1 = ~(~(~8595u) << (arg_2.x % 32u));
    global0 = array<vec3<i32>, 29>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -442f);
    return Struct_1(2147483647i, select(firstTrailingBit(0u), arg_1.b, false && !(!arg_0.x)), arg_1.c, _wgslsmith_clamp_vec3_i32(arg_1.d, -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, arg_1.a), arg_1.d), _wgslsmith_add_vec3_i32(firstTrailingBit(global0[_wgslsmith_index_u32(56068u, 29u)]) | countOneBits(arg_1.d), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(84969u, arg_1.c), 29u)])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32) -> f32 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = ~arg_0;
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_1 = ~countOneBits(max(vec2<u32>(max(147047u, 4294967295u), min(0u, 1295u)), vec2<u32>(~62751u, ~43312u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-487f * _wgslsmith_f_op_f32(func_3(-36729i, true, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1025f, 1000f) - 875f))))));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(-abs(-1i), u_input.b.x), u_input.a.x, max(_wgslsmith_dot_vec3_i32(countOneBits(global0[_wgslsmith_index_u32(arg_0.b, 29u)]), vec3<i32>(u_input.a.x, 49865i, arg_0.a) << (vec3<u32>(25363u, 0u, 0u) % vec3<u32>(32u))), _wgslsmith_mult_i32(~arg_0.a, u_input.a.x)), u_input.b.x) << (min(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.b, arg_0.b), vec4<u32>(arg_0.c, 1u, 0u, 0u)), vec4<u32>(17373u, 1u, arg_0.b, 1u)) >> (firstLeadingBit(vec4<u32>(4294967295u, arg_0.c, 36403u, 0u)) % vec4<u32>(32u)), ~(vec4<u32>(6542u, 0u, 1u, arg_0.c) >> (vec4<u32>(arg_0.c, arg_0.b, 0u, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1335f, _wgslsmith_f_op_f32(trunc(-161f)), _wgslsmith_f_op_f32(floor(-1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1778f, -133f, -1183f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(545f, -1057f, -156f), vec3<f32>(-755f, 768f, -905f))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, 1000f, -562f, -277f))))))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    var var_0 = arg_1 || select(false, arg_1, arg_1);
    let var_1 = ~_wgslsmith_dot_vec3_u32(~(select(vec3<u32>(4294967295u, 4294967295u, arg_0.c), vec3<u32>(arg_0.b, arg_0.b, 63672u), true) >> (~vec3<u32>(arg_0.c, arg_0.c, arg_0.c) % vec3<u32>(32u))), vec3<u32>(abs(arg_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, arg_0.b), vec3<u32>(arg_0.b, arg_0.c, arg_0.c)), ~arg_0.c) << (~(~vec3<u32>(0u, arg_0.c, 0u)) % vec3<u32>(32u)));
    return ~_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.d.x, -22370i), vec2<i32>(4819i, u_input.b.x), vec2<i32>(u_input.b.x, 1i)) >> (~vec2<u32>(var_1, arg_0.b) % vec2<u32>(32u))), vec2<i32>(countOneBits(arg_0.d.x << (4294967295u % 32u)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 29>();
    var var_0 = vec3<i32>(max(func_4(func_2(func_1(vec3<bool>(false, false, true), Struct_1(-1i, 32143u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<u32>(53184u, 39716u, 45844u))), true), u_input.a.x), 1i, u_input.a.x);
    var_0 = vec3<i32>(u_input.a.x, firstLeadingBit(min(1i, -16724i)), var_0.x);
    let var_1 = Struct_1(-var_0.x, reverseBits(1u), 66132u, ~_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(var_0.x), u_input.b.x, var_0.x), vec3<i32>(i32(-1i) * -19045i, 1i, -u_input.a.x)));
    var var_2 = any(vec2<bool>(true, true));
    global0 = array<vec3<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1218f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-839f, -390f)))));
}

