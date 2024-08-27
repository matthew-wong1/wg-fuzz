struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> bool {
    let var_0 = vec4<bool>(select(!any(vec4<bool>(false, false, false, false)), true, false) & true, ~select(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(u_input.a.x), true) == ~u_input.a.x, !((u_input.a.x ^ u_input.a.x) < _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u))), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, arg_0.a.x, arg_2.a.x, 302f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, -716f, -1552f, global0.x) * vec4<f32>(arg_0.a.x, 1000f, arg_2.a.x, -823f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1107f, arg_2.a.x, arg_2.a.x, 114f), vec4<f32>(1000f, -1000f, arg_2.a.x, arg_2.a.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec4<f32>(arg_0.a.x, -138f, global0.x, arg_2.a.x), vec4<bool>(var_0.x, false, true, false)))))));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, abs(u_input.a.x)), u_input.a.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - vec3<f32>(global0.x, arg_2.a.x, _wgslsmith_f_op_f32(sign(823f))))));
    global2 = array<Struct_2, 32>();
    return any(select(var_0.wz, var_0.yx, !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(sign(arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3))) - 667f), -1196f, _wgslsmith_f_op_f32(arg_3 - global0.x)));
    var var_0 = func_3(Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(2018f)), -627f)))), 2147483647i, Struct_3(_wgslsmith_f_op_vec3_f32(-global0.yxz)));
    var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.b.x, abs(1u)), 32u)];
    var_0 = true;
    return (abs(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, 81933i, arg_2.c.b)), min(vec3<i32>(arg_2.c.b, 1i, -2147483647i), vec3<i32>(-29758i, arg_2.c.b, var_1.c.b)))) << (arg_2.b % vec3<u32>(32u))) << (vec3<u32>(firstLeadingBit(34774u), _wgslsmith_dot_vec2_u32(~vec2<u32>(49117u, u_input.a.x), vec2<u32>(_wgslsmith_mult_u32(var_1.a, 0u), max(arg_2.c.c.x, var_1.a))), var_1.a & (var_1.a >> (47883u % 32u))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = vec3<bool>(!(!all(select(vec4<bool>(true, true, arg_2.c.a, false), vec4<bool>(arg_2.c.a, arg_2.c.a, arg_2.c.a, arg_2.c.a), vec4<bool>(arg_2.c.a, true, arg_2.c.a, false)))), any(!select(vec2<bool>(arg_2.c.a, arg_2.c.a), vec2<bool>(true, true), true)), arg_2.c.a);
    global2 = array<Struct_2, 32>();
    var var_1 = u_input.a.x;
    var_1 = 1u;
    let var_2 = max(vec3<i32>(arg_2.c.b, u_input.b, ~_wgslsmith_mod_i32(~arg_1.x, 1i)), ~countOneBits(func_2(vec3<f32>(825f, 391f, arg_3), var_0.x, Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, 0u, 25224u), Struct_1(var_0.x, -2147483647i, vec2<u32>(arg_2.a, arg_2.b.x), vec4<f32>(911f, global0.x, arg_2.c.d.x, arg_3))), global0.x) << (arg_2.b % vec3<u32>(32u))));
    return ~arg_2.c.c.x <= 69935u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 2130f)) * global0.x);
    global2 = array<Struct_2, 32>();
    let var_1 = !func_1(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -35362i)), ~vec2<i32>(2147483647i, u_input.b)), _wgslsmith_mod_i32(-2147483647i >> (1u % 32u), u_input.b ^ 2147483647i), -16840i), select(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 30290i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -34263i)), -vec2<i32>(28034i, -71292i)), true), global2[_wgslsmith_index_u32(u_input.a.x, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) - -430f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(461f)))));
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstTrailingBit(firstLeadingBit(vec2<i32>(1i, var_2)))), ~reverseBits(_wgslsmith_clamp_i32(-var_2, 1i, max(var_2, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(545f * global0.x)))));
}

