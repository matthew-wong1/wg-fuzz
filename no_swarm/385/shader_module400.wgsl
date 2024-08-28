struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec3<f32> {
    let var_0 = vec4<bool>(arg_0.c.x, _wgslsmith_f_op_f32(round(591f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1136f, 1554f), -551f))), false, !arg_0.a.a.x);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1))));
    let var_2 = -202f;
    global0 = array<vec4<bool>, 27>();
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a.b, _wgslsmith_f_op_f32(min(-1000f, var_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_0.a.b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(!vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), -1296f, ~u_input.c.x | ~(~1u)), ~_wgslsmith_sub_i32(8735i, -27456i), select(vec3<bool>(true, any(vec2<bool>(true, true)), (u_input.e.x < u_input.e.x) && true), vec3<bool>(true, true, true), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-460f, 506f, 390f) - vec3<f32>(1000f, -1278f, -837f)), _wgslsmith_div_vec3_f32(vec3<f32>(1100f, 297f, -1018f), vec3<f32>(2211f, -635f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 904f, -1083f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(vec3<bool>(false, false, true), -661f, 4294967295u), -2147483647i, vec3<bool>(false, false, false), vec3<f32>(-337f, 792f, -1796f)), -277f))))));
    global0 = array<vec4<bool>, 27>();
    var var_1 = u_input.d;
    let var_2 = ~(~abs(~(vec4<u32>(1u, 2098u, 4294967295u, 40549u) | vec4<u32>(u_input.d, 0u, 4225u, u_input.c.x))));
    var var_3 = u_input.b.zwy;
    return Struct_1(vec3<bool>(var_0.c.x, var_0.c.x, false), 939f, var_0.a.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<u32>) -> i32 {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    var var_0 = vec2<f32>(-569f, 1f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - 814f)), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), false)));
    let var_2 = func_2();
    return _wgslsmith_clamp_i32(3176i, -12979i, u_input.b.x >> (35233u % 32u));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> bool {
    global0 = array<vec4<bool>, 27>();
    let var_0 = ~select(~(~abs(vec2<u32>(0u, arg_1))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_2.a.x, 14668u)), vec2<u32>(u_input.a.x, arg_1)), vec2<bool>(arg_2.b.a.x, arg_2.b.a.x & (-894f >= arg_2.b.b)));
    let var_1 = vec4<u32>(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, arg_1), vec3<u32>(var_0.x, u_input.d, 36342u))), 145452u, (~1u << (firstLeadingBit(arg_1 ^ 1u) % 32u)) & ~_wgslsmith_clamp_u32(63596u | arg_1, 4294967295u, 1u), 0u);
    var var_2 = arg_2.b;
    var_2 = arg_2.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = vec2<bool>(func_4(abs(func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec4<u32>(0u, 0u, 89914u, u_input.a.x) << (vec4<u32>(u_input.d, u_input.c.x, 22432u, 0u) % vec4<u32>(32u)), 53496i, vec4<u32>(4294967295u, u_input.d, u_input.c.x, u_input.d) ^ vec4<u32>(u_input.a.x, 69394u, 9942u, 1u))), ~countOneBits(1u), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-788f + 115f), ~4294967295u))), false);
    var var_1 = func_2();
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(59489u, var_1.c)) ^ 19605u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.a.x), select(u_input.c, u_input.a, var_1.a.yy)), _wgslsmith_mod_vec2_u32(max(u_input.c, vec2<u32>(var_1.c, var_1.c)), abs(u_input.c))), 4294967295u, abs(~min(9407u, _wgslsmith_sub_u32(1u, var_1.c))), select(vec4<u32>(27076u, _wgslsmith_div_u32(u_input.c.x, u_input.a.x), 0u, var_1.c) << (reverseBits(select(vec4<u32>(26018u, var_1.c, 4294967295u, 4294967295u), vec4<u32>(u_input.d, 29023u, 1u, 31278u), var_0.x)) % vec4<u32>(32u)), vec4<u32>(u_input.d, var_1.c, _wgslsmith_dot_vec2_u32(abs(u_input.c), vec2<u32>(0u, u_input.a.x)), u_input.d), global0[_wgslsmith_index_u32((~u_input.d ^ 0u) & 4294967295u, 27u)]));
}

