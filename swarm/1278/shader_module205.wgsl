struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(20784i, -2349i), vec2<i32>(-1i, -1i), vec2<i32>(-10925i, 48477i), vec2<i32>(-26194i, i32(-2147483648)), vec2<i32>(-33175i, -31023i), vec2<i32>(15109i, 1i), vec2<i32>(1i, 55608i), vec2<i32>(-1i, -6550i), vec2<i32>(11243i, -38624i), vec2<i32>(1i, -24600i), vec2<i32>(-15906i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -42819i), vec2<i32>(i32(-2147483648), -7866i), vec2<i32>(-45010i, -6106i), vec2<i32>(2147483647i, 1i), vec2<i32>(-19293i, i32(-2147483648)), vec2<i32>(2080i, 74974i), vec2<i32>(-19819i, 0i), vec2<i32>(1136i, 11600i), vec2<i32>(-26168i, -1i), vec2<i32>(31377i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-52541i, 1i), vec2<i32>(6018i, 0i), vec2<i32>(1i, 1i), vec2<i32>(14551i, -42439i), vec2<i32>(6612i, -32448i), vec2<i32>(2147483647i, 138i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    var var_0 = Struct_2(arg_1.d, arg_1, u_input.b.yx);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, arg_2.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(186f, arg_1.a) + vec2<f32>(var_0.b.a, var_0.b.a)))))));
    return firstTrailingBit(-(~arg_1.c.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = vec2<i32>(-10406i, func_3(-12375i, arg_2, arg_1));
    global0 = array<vec2<i32>, 28>();
    var var_1 = select(arg_0, arg_0, !vec2<bool>(arg_0.x, true & (var_0.x >= 0i)));
    let var_2 = arg_1;
    var var_3 = var_2.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -507f);
}

fn func_1() -> Struct_4 {
    return Struct_4(~u_input.b.x, Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), Struct_3(-1505f, 606f), Struct_1(-527f, u_input.a, vec4<i32>(-1i, 19094i, 13111i, -35494i), false, vec3<i32>(-2147483647i, 16617i, 0i)), 18124i))), 56702u, -vec4<i32>(17394i, 2147483647i, 1i, -2147483647i), !(u_input.a == 4294967295u), -vec3<i32>(9111i, 0i, -61124i)), vec2<u32>(24329u, abs(u_input.b.x) & _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), Struct_2(true, Struct_1(-877f, u_input.b.x, vec4<i32>(18403i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 47076i), vec3<i32>(3474i, 60771i, 983i)), ~(-9231i), ~52817i), 0u <= countOneBits(u_input.b.x), vec3<i32>(1i, 1i, 1i)), ~vec2<u32>(u_input.b.x, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 255f, -1390f) + vec3<f32>(794f, 646f, -460f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(775f, -905f, -1933f) - vec3<f32>(534f, 944f, -1000f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), Struct_3(431f, -772f), Struct_1(312f, 0u, vec4<i32>(-2147483647i, 1i, 0i, 20405i), false, vec3<i32>(49525i, 0i, 1i)), 55870i)))), 4294967295u, ~select(-vec4<i32>(-1i, -67777i, -13272i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), all(vec4<bool>(true, true, true, true))), false, vec3<i32>(-1i, -2147483647i, _wgslsmith_add_i32(1i, ~0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 28>();
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-346f)) + var_0.e.a)));
    global0 = array<vec2<i32>, 28>();
    let var_2 = select(!select(vec3<bool>(var_0.e.d, var_0.b.a, var_0.e.d), select(vec3<bool>(var_0.e.d, false, var_0.e.d), !vec3<bool>(var_0.b.a, var_0.c.b.d, false), select(vec3<bool>(var_0.b.b.d, var_0.c.b.d, true), vec3<bool>(false, true, true), false)), select(true, false, var_0.e.d) && true), !vec3<bool>(var_0.e.d, var_0.c.b.d, false), vec3<bool>(var_0.e.d, func_1().c.a, 26793u == countOneBits(_wgslsmith_clamp_u32(u_input.a, var_0.a, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(var_0.e.e.x >> (firstLeadingBit(56039u) % 32u))), _wgslsmith_f_op_f32(-var_1));
}

