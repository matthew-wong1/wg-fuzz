struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: u32 = 62750u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    let var_0 = min(u_input.a.x, abs(~_wgslsmith_div_u32(0u, ~u_input.a.x)));
    let var_1 = any(vec2<bool>(!select(arg_1, true, arg_0.x), false));
    var var_2 = Struct_1(min(~_wgslsmith_mod_u32(36544u, u_input.a.x), 10697u), vec3<u32>(36731u, 4294967295u, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1369u), u_input.a.xzx)), firstLeadingBit(select(vec3<u32>(4294967295u, u_input.a.x, arg_2), vec3<u32>(var_0, u_input.a.x, var_0), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(613f, 1000f)), 600f)) + 159f), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(24659i, -1i)), ~vec2<i32>(-22015i, -2147483647i)), vec2<i32>(firstTrailingBit(8801i), 24471i)) >> (~(select(vec2<u32>(1u, arg_2), u_input.a.xy, vec2<bool>(var_1, true)) << (vec2<u32>(var_0, 41267u) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a.zxw);
    var_2 = Struct_1(countOneBits(~4294967295u >> (arg_2 % 32u)), ~vec3<u32>(1u, ~firstTrailingBit(var_2.a), 4294967295u), _wgslsmith_f_op_f32(ceil(197f)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.d.x, 1i), abs(_wgslsmith_div_vec2_i32(var_2.d, var_2.d) & ~var_2.d)), ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, 34640u), var_2.b), 40084u, arg_2), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(51682u, 7590u)), abs(arg_2), _wgslsmith_mod_u32(u_input.a.x, 4294967295u))));
    global0 = 4294967295u;
    return ~var_2.b.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(abs(u_input.a.x & ~func_3(vec4<bool>(true, false, false, true), false, 37057u, vec3<bool>(false, false, true))), u_input.a.wyz, -1000f, vec2<i32>(select(firstLeadingBit(i32(-1i) * -11070i), 1i, 1000f < _wgslsmith_f_op_f32(step(-249f, 1719f))), 17279i), abs(u_input.a.wxx));
    global0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1826f, -737f, -489f, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -1089f, var_0.c))))));
    let var_2 = _wgslsmith_add_i32(var_0.d.x, var_0.d.x);
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 2147f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1043f) + var_1.x)) - vec4<f32>(-1708f, -1016f, _wgslsmith_f_op_f32(max(var_0.c, 1000f)), -1697f));
    return u_input.a.wwz << (~abs(~vec3<u32>(0u, 18764u, var_0.e.x)) % vec3<u32>(32u));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(~abs(u_input.a.x), func_2(), 144f, ~countOneBits(~vec2<i32>(-24668i, -43936i)), vec3<u32>(0u, ~(u_input.a.x & 4294967295u), _wgslsmith_add_u32(select(0u, 1u, true), abs(u_input.a.x)))));
    global0 = 1u;
    let var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x << (28845u % 32u), ~1u), vec3<u32>(1u, ~26903u, select(var_0.a.a, 0u, true)), 296f, reverseBits(reverseBits(var_0.a.d)), vec3<u32>(68235u, 54074u, u_input.a.x))), var_0, vec4<bool>(true, false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec3<bool>(true, true, true))));
    return Struct_4(var_1.a, Struct_3(var_0.a), select(var_1.c, vec4<bool>(all(vec2<bool>(var_1.c.x, true)), 0u > _wgslsmith_mod_u32(var_0.a.b.x, var_1.a.a.a), (var_1.a.a.d.x <= var_1.b.a.d.x) & var_1.c.x, select(var_1.c.x, any(var_1.c), !var_1.c.x)), vec4<bool>(!(!var_1.c.x), true, false, var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(abs((u_input.a.x & u_input.a.x) ^ u_input.a.x) & 87893u);
    let var_1 = func_1();
    let var_2 = var_1.b.a.b;
    global0 = 35866u;
    global0 = 81652u;
    var var_3 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, 1470f, 264f)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(574f, var_1.b.a.c, var_1.a.a.c)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a.c * -514f), var_1.b.a.c, 1000f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.a.c, var_1.a.a.c, 230f))))))));
}

