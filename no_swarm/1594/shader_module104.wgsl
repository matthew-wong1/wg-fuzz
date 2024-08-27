struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 4294967295u, 16866u, 1u), vec4<u32>(4294967295u, 7943u, 0u, 1u), vec4<u32>(1u, 37434u, 12450u, 4294967295u), vec4<u32>(3504u, 1206u, 1u, 0u), vec4<u32>(4294967295u, 67501u, 4294967295u, 23554u), vec4<u32>(4294967295u, 87072u, 1u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global2 = array<vec4<u32>, 6>();
    let var_0 = Struct_2(true || (true && (1u == _wgslsmith_dot_vec2_u32(vec2<u32>(66886u, u_input.a.x), u_input.a.ww))), -732f, 262f, 62761u, ~(_wgslsmith_dot_vec4_i32(~vec4<i32>(-24474i, -1i, 5516i, 8233i), vec4<i32>(1i, 1i, 1i, 1i)) | -1i));
    let var_1 = vec2<bool>(true, all(select(select(!vec4<bool>(var_0.a, var_0.a, var_0.a, false), !vec4<bool>(true, var_0.a, var_0.a, false), select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, true, var_0.a), var_0.a)), vec4<bool>(true, true, true, true || var_0.a), var_0.a)));
    global2 = array<vec4<u32>, 6>();
    let var_2 = true;
    return -1052f;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3;
    let var_1 = ~u_input.a.x;
    var var_2 = ~_wgslsmith_div_i32(arg_2.a, arg_3.e);
    var_2 = abs(_wgslsmith_dot_vec2_i32(min(vec2<i32>(countOneBits(var_0.e), _wgslsmith_add_i32(-2147483647i, 2147483647i)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -28124i), vec2<i32>(9111i, -1i)), vec2<i32>(13116i, -1i))), vec2<i32>(1i, reverseBits(0i))));
    let var_3 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-4533i, ~(-46699i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(21131i, -1i), vec2<i32>(0i, -1i), vec2<bool>(arg_1, true)), vec2<i32>(arg_3.e, 54251i) | vec2<i32>(var_0.e, 73406i))), 20455i));
    return firstLeadingBit(max(max(var_3.a, -arg_0), arg_0));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_3(func_4(_wgslsmith_sub_i32(2147483647i, ~select(-14135i, 39939i, arg_0)), arg_0, Struct_1(-abs(0i), u_input.a.wy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1397f, -1000f, -1109f)))), _wgslsmith_div_u32(1u, ~0u)), Struct_2(true, _wgslsmith_f_op_f32(round(-1301f)), _wgslsmith_f_op_f32(func_3()), ~4294967295u, ~(~1i))));
    var var_1 = 442f;
    var var_2 = vec4<i32>(1i, (~(-1i | var_0.a) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 65820u, 42129u, u_input.a.x), vec4<u32>(u_input.a.x, 77685u, 58724u, 53189u)), u_input.a << (u_input.a % vec4<u32>(32u))) % 32u)) & ~(-2147483647i), -(~var_0.a), reverseBits(_wgslsmith_add_i32(~_wgslsmith_mult_i32(1i, var_0.a), var_0.a)));
    global1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(23567u, u_input.a.x, 14716u)), ~4294967295u);
    var_2 = vec4<i32>(abs(-14521i), var_2.x, -max(_wgslsmith_div_i32(16058i << (u_input.a.x % 32u), 1i), ~_wgslsmith_clamp_i32(var_0.a, var_2.x, var_2.x)), -1i);
    return var_2.wz;
}

fn func_1() -> u32 {
    var var_0 = select(~func_2(true), firstLeadingBit(vec2<i32>(max(2147483647i, 0i), -68329i) ^ (~vec2<i32>(-18948i, -1i) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), vec2<bool>(true, true));
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    var var_1 = true;
    global0 = array<vec3<bool>, 31>();
    return select(min(_wgslsmith_div_u32(max(u_input.a.x, abs(83906u)), select(u_input.a.x, u_input.a.x, all(vec3<bool>(true, false, false)))), ~0u), u_input.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 31>();
    var var_0 = global2[_wgslsmith_index_u32(~35807u, 6u)];
    global2 = array<vec4<u32>, 6>();
    var var_1 = 33128i;
    global1 = var_0.x | ~(_wgslsmith_sub_u32(~u_input.a.x, func_1()) << (~(31342u ^ u_input.a.x) % 32u));
    var var_2 = countOneBits(-13424i);
    var var_3 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f * -595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(401f, -472f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1167f)), _wgslsmith_f_op_f32(round(1527f)))));
    var_3 = !all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(-26310i), -1975f, abs(~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(2129u, var_0.x, u_input.a.x, 4294967295u)))));
}

