struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(2479i, 0i, -1i), vec3<i32>(0i, 0i, 24946i), vec3<i32>(19001i, -19898i, 14134i), vec3<i32>(0i, 98114i, 25630i), vec3<i32>(1i, -1i, 63927i), vec3<i32>(-69143i, i32(-2147483648), -20572i), vec3<i32>(i32(-2147483648), 3877i, 68103i), vec3<i32>(-55533i, 1i, -6513i), vec3<i32>(1i, 467i, -1i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(690i, 5325i, -1i), vec3<i32>(-7066i, i32(-2147483648), i32(-2147483648)), vec3<i32>(7656i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -35663i), vec3<i32>(-48509i, i32(-2147483648), -6587i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(-51735i, 0i, 10047i), vec3<i32>(18243i, -1i, 1i), vec3<i32>(34234i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 22703i), vec3<i32>(16672i, i32(-2147483648), 2147483647i), vec3<i32>(3057i, 14310i, 0i), vec3<i32>(32210i, 31444i, -5678i), vec3<i32>(0i, -27527i, i32(-2147483648)), vec3<i32>(-3053i, 40775i, 2147483647i), vec3<i32>(-17659i, 2147483647i, 0i), vec3<i32>(11041i, -19117i, -10608i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: f32) -> vec4<f32> {
    let var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(countOneBits(u_input.c.zyy), abs(vec3<u32>(5988u, u_input.b, arg_2.c)), countOneBits(~u_input.c.wzw)));
    let var_1 = arg_2.a.a.c;
    global1 = array<vec3<i32>, 27>();
    let var_2 = arg_2.a;
    let var_3 = 1000f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_2.a.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1638f * arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.a.a.c.x), -481f, arg_1.a.x))))));
}

fn func_3(arg_0: Struct_4) -> Struct_4 {
    global1 = array<vec3<i32>, 27>();
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    global0 = array<f32, 7>();
    let var_0 = _wgslsmith_clamp_u32((~u_input.b << (countOneBits(~4294967295u) % 32u)) | abs(_wgslsmith_mult_u32(18844u, u_input.c.x)), 1u, ~0u);
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f + global0[_wgslsmith_index_u32(1u, 7u)]) * arg_1.a.x) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15978u, 1u), 7u)], arg_1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))))));
    return Struct_2(Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(20429i, 0i, u_input.d, u_input.a), vec4<i32>(-16528i, 27213i, u_input.a, u_input.d) << (vec4<u32>(var_0, 1u, 0u, 39525u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(-1i, 1i, -296i, u_input.a)), vec4<i32>(2147483647i, -18957i, -2147483647i, u_input.d) ^ vec4<i32>(u_input.d, -14889i, u_input.d, u_input.a), select(select(vec4<i32>(18478i, 2147483647i, -40656i, u_input.d), vec4<i32>(u_input.d, u_input.a, -2147483647i, 2147483647i), arg_0), -vec4<i32>(u_input.d, 36067i, 42189i, u_input.a), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1004f, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), 434f, -331f, _wgslsmith_f_op_f32(arg_2.a.x + -1278f)) * arg_2.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(false, func_3(Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.a, -2147483647i), Struct_5(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -923f), -2147483647i), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.d), vec4<i32>(-77886i, -9655i, u_input.d, -1i), vec4<f32>(454f, 1912f, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), vec3<f32>(-918f, global0[_wgslsmith_index_u32(52074u, 7u)], 1390f), 12661u, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), global0[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -958f, -705f, global0[_wgslsmith_index_u32(u_input.b, 7u)])))))), func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(34500u, 7u)], 755f, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<f32>(1406f, -1635f, global0[_wgslsmith_index_u32(105152u, 7u)], -1525f))))));
    let var_1 = func_3(func_3(func_3(Struct_4(vec4<f32>(global0[_wgslsmith_index_u32(44272u, 7u)], -172f, -677f, 522f)))));
    let var_2 = func_4(!any(vec4<bool>(true, true, true, true)), func_3(Struct_4(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(37579u, u_input.b), 7u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1859f), -1122f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))), 300f))).a;
    global0 = array<f32, 7>();
    let var_3 = func_4(true, Struct_4(var_0.a.c), Struct_4(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], func_3(Struct_4(var_0.a.c)).a.x, var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x))));
    return Struct_1(vec4<i32>(~var_3.a.a.x, -(~(i32(-1i) * -1i)), 1i, -5511i), var_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-928f, _wgslsmith_f_op_f32(max(353f, -2410f)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69627u, 7u)])), _wgslsmith_f_op_vec4_f32(func_2(var_2.a.yz, Struct_5(vec2<f32>(var_2.c.x, -392f), var_2.a.x), Struct_3(Struct_2(Struct_1(var_3.a.b, vec4<i32>(var_0.a.b.x, var_2.a.x, 19015i, var_0.a.b.x), var_2.c)), vec3<f32>(314f, var_0.a.c.x, 376f), 0u, global1[_wgslsmith_index_u32(31623u, 27u)]), _wgslsmith_f_op_f32(round(var_3.a.c.x))))) + func_3(var_1).a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 27>();
    global0 = array<f32, 7>();
    global1 = array<vec3<i32>, 27>();
    var var_0 = func_1();
    global1 = array<vec3<i32>, 27>();
    global0 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.c, firstLeadingBit(select(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.c.x, 25854u, u_input.c.x) ^ vec4<u32>(4294967295u, 36134u, u_input.b, 1u), vec4<bool>(true, true, true, true)))), u_input.b, ~u_input.c.xyz, -1000f);
}

