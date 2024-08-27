struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<bool>, 8>();
    var var_0 = Struct_1(select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), false), all(vec3<bool>(true, true, select(true, false, true)))), firstLeadingBit(~(-vec3<i32>(u_input.b, 2147483647i, u_input.a))) & (vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 19753i, u_input.b), vec3<i32>(u_input.a, 1i, -2838i))), ~_wgslsmith_dot_vec3_u32(u_input.c << (u_input.c % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.c.x, 8763u, u_input.c.x))) << (0u % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1167f))) - -810f));
    var_0 = Struct_1(select(!select(var_0.a, select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), var_0.a), var_0.a, !select(var_0.a, var_0.a, all(vec2<bool>(true, false)))), countOneBits(vec3<i32>(_wgslsmith_mod_i32(min(u_input.a, 4713i), var_0.b.x), reverseBits(~var_0.b.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.b, 2147483647i, -2147483647i), vec4<i32>(-17412i, 1i, 16181i, -1i)))), 4294967295u);
    global0 = array<vec3<bool>, 8>();
    return !(!vec4<bool>(var_0.a.x, all(vec2<bool>(var_0.a.x, false)), false, true));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 8>();
    let var_0 = Struct_1(!(!func_3()), select(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a & -2147483647i, ~(-2147483647i)), vec3<i32>(u_input.b, u_input.b, u_input.b)), ~vec3<i32>(2147483647i, u_input.b, abs(u_input.a)), true), reverseBits(_wgslsmith_div_u32(firstLeadingBit(u_input.c.x) << (u_input.c.x % 32u), (u_input.c.x & u_input.c.x) << (u_input.c.x % 32u))));
    global0 = array<vec3<bool>, 8>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.c, u_input.c.x), firstLeadingBit(countOneBits(4294967295u))) | 22851u;
    global0 = array<vec3<bool>, 8>();
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<u32> {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a, -vec3<i32>(_wgslsmith_sub_i32(u_input.a, min(var_0.b.x, -21863i)), ~(0i ^ u_input.a), min(countOneBits(var_0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.b), var_0.b.xz))), 0u);
    var var_1 = _wgslsmith_sub_i32(var_0.b.x, 40466i);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), 1116f, _wgslsmith_f_op_f32(min(443f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - -1216f), arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, 1000f, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, arg_1.x, -1075f, 1000f) + vec4<f32>(arg_1.x, -672f, 2322f, arg_1.x))))));
    let var_3 = false;
    return max(vec4<u32>(abs(~1u), arg_2.x, ~(~var_0.c), ~(u_input.c.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 3129u), u_input.c.yz))), select(firstTrailingBit(vec4<u32>(52250u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 77066u), arg_2), firstLeadingBit(arg_0))), ~max(vec4<u32>(arg_2.x, arg_0, arg_2.x, 1u), vec4<u32>(25518u, 0u, arg_0, arg_2.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(8364u, u_input.c.x, u_input.c.x, ~1u), _wgslsmith_div_vec4_u32(reverseBits(select(vec4<u32>(50297u, 100018u, u_input.c.x, 33821u), vec4<u32>(u_input.c.x, 81827u, u_input.c.x, 623u), false)), firstLeadingBit(select(vec4<u32>(u_input.c.x, 9452u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 38994u, 1u), false)))), ~(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 47931u), vec4<u32>(36239u, 29387u, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, 107900u, 65575u, u_input.c.x)) >> ((func_1(16461u, vec3<f32>(1000f, 1843f, 231f), vec2<u32>(u_input.c.x, 0u)) >> (func_1(4294967295u, vec3<f32>(240f, 1002f, -1650f), u_input.c.yy) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(-_wgslsmith_add_i32(u_input.a, u_input.b), -u_input.a), (0i & _wgslsmith_mult_i32(var_1.b.x, var_1.b.x)) >> (~1u % 32u)));
}

