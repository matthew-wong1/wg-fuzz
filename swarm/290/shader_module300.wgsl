struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32) -> bool {
    return !all(arg_0.xz);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: bool) -> vec3<f32> {
    var var_0 = firstLeadingBit(select(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, 2928i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-14551i, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x) | vec4<i32>(u_input.b.x, -1i, 0i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 15319i, u_input.c.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, 7563i, u_input.b.x)), abs(vec4<i32>(u_input.b.x, 1i, 1i, u_input.b.x))) ^ ((vec4<i32>(u_input.b.x, u_input.c.x, 0i, -2147483647i) >> (vec4<u32>(1u, 1u, 1u, 4294967295u) % vec4<u32>(32u))) << (max(vec4<u32>(arg_2, 28451u, arg_2, 4294967295u), vec4<u32>(arg_2, arg_2, 66171u, 16740u)) % vec4<u32>(32u))), !select(vec4<bool>(true, false, true, arg_1), !vec4<bool>(arg_3, arg_3, false, arg_3), arg_1)));
    var var_1 = ~select(select(~vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 4294967295u), vec2<u32>(arg_2, 0u)), vec2<bool>(arg_1 || false, any(global0[_wgslsmith_index_u32(25485u, 9u)]))), ~vec2<u32>(max(1u, arg_2), 4294967295u), vec2<bool>(true, true));
    var_0 = vec4<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, u_input.c.x, -80804i, -1i) ^ vec4<i32>(-39655i, 2147483647i, -2147483647i, 40050i), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), firstTrailingBit(vec4<i32>(var_0.x, 32208i, 6486i, 2147483647i)))), u_input.a.x, var_0.x);
    var var_2 = _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-arg_0));
    var var_3 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -22204i, var_0.x, u_input.b.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, 0i, 1i), vec4<i32>(2147483647i, -55935i, u_input.a.x, var_0.x), vec4<i32>(u_input.a.x, u_input.c.x, var_0.x, u_input.a.x)), vec4<i32>(u_input.a.x, 1i, var_0.x, _wgslsmith_mult_i32(u_input.b.x, 62762i))), u_input.b.x << (arg_2 % 32u));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(arg_0.x, arg_0.x))) + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2260f, var_2.x), _wgslsmith_f_op_f32(129f * var_2.x), true))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f * -1243f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)));
}

fn func_2() -> u32 {
    let var_0 = -20674i;
    let var_1 = Struct_3(vec3<bool>(true, u_input.b.x < var_0, any(vec2<bool>(true, select(false, false, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(_wgslsmith_div_f32(252f, -1599f), -1281f), true, 1u, any(vec3<bool>(false, true, true)) && false))), Struct_2(Struct_1(_wgslsmith_mult_u32(4881u, 1u), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 22823u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u))), reverseBits(vec2<i32>(0i, 10505i))), 1000f, select(!global0[_wgslsmith_index_u32(9195u, 9u)], vec3<bool>(true, true, true), all(vec2<bool>(true, true)))));
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    let var_2 = var_1.c.a.a;
    return 1u >> (var_1.c.a.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !((true || func_1(vec4<bool>(false, true, true, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), -172f)) && !all(vec2<bool>(true, false))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, -884f, -742f)))))));
    let var_2 = 1u;
    var var_3 = -vec2<i32>(u_input.c.x, ~u_input.c.x);
    let var_4 = ~vec3<u32>(var_2, ~var_2, ~0u);
    var var_5 = Struct_2(Struct_1(func_2(), vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(var_2), ~var_2, var_2), var_4.x), u_input.b.xx), 1f, !vec3<bool>(all(global0[_wgslsmith_index_u32(min(8030u, 4294967295u), 9u)]), var_0.x, _wgslsmith_f_op_f32(min(var_1.x, -473f)) < -252f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1296f, _wgslsmith_f_op_f32(-var_5.b)), -648f, _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.b, 1000f)), var_1.x, var_5.b) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b + var_5.b) * _wgslsmith_f_op_f32(var_5.b + -1000f)), 1139f, var_1.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(sign(var_5.b))), _wgslsmith_f_op_f32(round(547f))), -2237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1528f)))), u_input.a.yx);
}

