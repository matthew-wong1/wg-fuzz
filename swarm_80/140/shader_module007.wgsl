struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = !(~select(_wgslsmith_add_i32(27739i, u_input.c.x), 0i >> (arg_1.x % 32u), false) > -(_wgslsmith_mod_i32(arg_0.x, 5935i) >> (~0u % 32u)));
    global1 = array<vec4<i32>, 14>();
    global0 = array<Struct_1, 13>();
    global1 = array<vec4<i32>, 14>();
    let var_1 = arg_1.x;
    return global0[_wgslsmith_index_u32(29025u, 13u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = !(!all(vec3<bool>(0u != u_input.a.x, true, false)));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    global2 = array<Struct_1, 14>();
    global1 = array<vec4<i32>, 14>();
    let var_0 = arg_0;
    var var_1 = ~(~(~u_input.a.xy));
    global2 = array<Struct_1, 14>();
    return ~_wgslsmith_mult_u32(0u ^ ~var_1.x, ~(~14184u));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_1, 14>();
    var var_0 = min(0u ^ (min(u_input.a.x & 0u, _wgslsmith_mult_u32(50306u, u_input.b)) << (53573u % 32u)), u_input.b << (53411u % 32u));
    global2 = array<Struct_1, 14>();
    global1 = array<vec4<i32>, 14>();
    let var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0 << (u_input.b % 32u), u_input.c.x) << (func_4(func_2(vec4<i32>(0i, arg_0, 2147483647i, 1i), vec3<u32>(u_input.b, 3016u, 1u), -1306f), func_3(vec4<u32>(u_input.a.x, u_input.b, 13760u, 1034u), vec3<u32>(u_input.a.x, 0u, 0u), global1[_wgslsmith_index_u32(u_input.a.x, 14u)])) % 32u), 32973i | select(~(-2147483647i), min(arg_0, arg_0), func_2(global1[_wgslsmith_index_u32(78836u, 14u)], vec3<u32>(1u, 5992u, u_input.b), arg_1.x).d.x), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, -20406i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f)))), vec3<i32>(-2147483647i, firstTrailingBit(1i), ~2147483647i) | (reverseBits(~vec3<i32>(-1i, 2147483647i, -22457i)) & _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0, -1i, 2147483647i), abs(vec3<i32>(u_input.c.x, arg_0, 41432i)))), !func_2(~(-vec4<i32>(arg_0, u_input.c.x, u_input.c.x, 7968i)), vec3<u32>(u_input.b, 0u, u_input.b) << (u_input.a % vec3<u32>(32u)), arg_1.x).d);
    return global0[_wgslsmith_index_u32(~select(firstLeadingBit(0u), ~func_4(Struct_1(u_input.c.x, -870f, var_1.c, vec3<bool>(true, var_1.d.x, true)), true), var_1.d.x), 13u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_div_u32(abs(u_input.b | abs(1u)), 1u) | (1u << (0u % 32u));
    let var_1 = Struct_1(u_input.c.x, 1000f, vec3<i32>(arg_1.a, 2147483647i, max(arg_1.c.x, ~_wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c))), arg_1.d);
    let var_2 = arg_1.d.x | var_1.d.x;
    return _wgslsmith_f_op_f32(var_1.b * -501f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~1i, u_input.c.x), 1i, u_input.c.x), firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-60509i, u_input.c.x, u_input.c.x), ~vec3<i32>(0i, 19785i, -31355i)), -(vec3<i32>(u_input.c.x, -2131i, u_input.c.x) ^ vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, 43818i, 43089i), vec3<i32>(13407i, -8334i, -6919i)), ~vec3<i32>(u_input.c.x, u_input.c.x, -1i)))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = u_input.a.x >> (u_input.a.x % 32u);
    global2 = array<Struct_1, 14>();
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(!var_1, func_1(u_input.c.x, vec4<f32>(1361f, 988f, 864f, 877f)))), _wgslsmith_f_op_f32(f32(-1f) * -1892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(global1[_wgslsmith_index_u32(var_2, 14u)], u_input.a, -543f).b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-299f - -1841f), -867f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, 419f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-376f, 560f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-854f, -791f) + vec2<f32>(1000f, 228f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1115f, -211f))))));
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

