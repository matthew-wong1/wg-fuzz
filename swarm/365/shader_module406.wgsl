struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32266u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    var var_0 = false;
    var_0 = arg_2.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1335f, -404f) - _wgslsmith_div_f32(1298f, _wgslsmith_f_op_f32(arg_2.d - 223f))), _wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(f32(-1f) * -293f)))), _wgslsmith_f_op_f32(-arg_2.d));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -642f, arg_2.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d, var_1.x, arg_2.a.a) - vec3<f32>(-212f, var_1.x, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-498f, var_1.x, var_1.x), vec3<f32>(arg_2.a.a, 122f, arg_2.a.a)))) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-1300f + 622f), -1000f)))), arg_2, _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(20710u, 14645u, u_input.b), arg_0), vec3<u32>(~4294967295u, _wgslsmith_div_u32(arg_0.x, reverseBits(133243u)), 4294967295u)), i32(-1i) * -u_input.c.x);
    var var_3 = ~max(var_2.c, arg_0);
    return vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) - 1340f)), 1207f);
}

fn func_2() -> f32 {
    global0 = 1u;
    global0 = _wgslsmith_add_u32(u_input.b, ~23786u);
    global0 = ~_wgslsmith_mult_u32(u_input.b, 1u);
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2255f, -1246f, 1700f) * vec3<f32>(-399f, -1428f, 684f)) + _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(4294967295u, 1u, 33207u), -2147483647i, Struct_3(Struct_1(-411f), true, u_input.c.wy, 169f), u_input.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f + 682f) + _wgslsmith_f_op_f32(select(1232f, 1636f, true)))), true || select(true, all(vec2<bool>(true, true)), true))), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1119f)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true)), vec2<i32>(_wgslsmith_add_i32(-1i >> (u_input.b % 32u), u_input.a), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), 571f), _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(30209u, 38693u, 4294967295u))), ~vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 0u)), 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.b), 1u, u_input.b ^ u_input.b), firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b))))), _wgslsmith_div_i32(-abs(-2147483647i), abs(3487i)));
    let var_1 = Struct_4(var_0.a, var_0.b, vec3<u32>(54641u & _wgslsmith_mult_u32(firstTrailingBit(u_input.b), 4294967295u), u_input.b, max(u_input.b, 0u)), reverseBits(-_wgslsmith_div_i32(u_input.c.x, u_input.c.x) << ((~3729u | ~u_input.b) % 32u)));
    return var_0.b.a.a;
}

fn func_1() -> Struct_4 {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(59889u, 17837u, 5983u), vec3<u32>(9438u, u_input.b, 22454u))) & 0u, u_input.b), ~u_input.b, 0u);
    let var_0 = vec2<f32>(145f, _wgslsmith_f_op_f32(func_2()));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1774f, _wgslsmith_f_op_f32(f32(-1f) * -527f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = firstLeadingBit(u_input.b);
    global0 = max(~(~(56720u >> (u_input.b % 32u))), 1u) | (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), max(u_input.b, 0u)) >> (11823u % 32u));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_1.a, _wgslsmith_f_op_f32(round(-2326f)))))), Struct_3(var_1, true, vec2<i32>(2147483647i, u_input.c.x), 423f), reverseBits(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(53963u, 4294967295u, u_input.b)), min(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b))) & ~(~vec3<u32>(1u, u_input.b, 4294967295u))), _wgslsmith_dot_vec3_i32(u_input.c.xwz, u_input.c.zwx) << (~u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = abs(_wgslsmith_sub_u32(var_0.c.x, _wgslsmith_clamp_u32(1u, ~var_0.c.x, countOneBits(10112u)))) ^ (var_0.c.x >> (67991u % 32u));
    var var_1 = Struct_1(127f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.c, u_input.c, vec4<bool>(var_0.b.b, var_0.b.b, false, var_0.b.b)), u_input.c), u_input.c) | select(vec4<i32>(u_input.c.x >> (u_input.b % 32u), 0i, firstTrailingBit(20979i), firstTrailingBit(var_0.b.c.x)), -(vec4<i32>(var_0.b.c.x, 19483i, var_0.d, 33030i) & vec4<i32>(u_input.c.x, 45181i, var_0.b.c.x, -26972i)), var_0.b.b));
}

