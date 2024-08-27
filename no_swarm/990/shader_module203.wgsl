struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<u32>, 23>;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<i32, 23> = array<i32, 23>(1i, -21064i, 33828i, -3945i, -1i, -1i, -23776i, 0i, 2147483647i, -2746i, 45884i, 21949i, -13525i, 2147483647i, 2147483647i, -18384i, 58234i, 0i, -39100i, -27528i, -1i, -43291i, 0i);

var<private> global4: array<i32, 27> = array<i32, 27>(2147483647i, 1i, 15841i, 1i, 24082i, -12284i, -14961i, 12003i, -1i, 1i, 23883i, -16026i, 2147483647i, 0i, 22129i, 26643i, 25990i, -1i, 35036i, 10297i, i32(-2147483648), 2147483647i, 2890i, 43153i, i32(-2147483648), 3380i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> u32 {
    global3 = array<i32, 23>();
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(countOneBits(u_input.b.x), 42178u)), u_input.b.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 286f) - vec2<f32>(-978f, _wgslsmith_f_op_f32(abs(627f))))));
    return 0i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), global0.x))));
    global3 = array<i32, 23>();
    let var_1 = u_input.b.xw;
    var var_2 = Struct_1(-669f, vec2<bool>(any(!vec3<bool>(arg_0, false, arg_0)), any(vec2<bool>(any(vec4<bool>(true, arg_0, arg_0, arg_0)), u_input.a.x != -1i))), arg_0, all(select(vec4<bool>(arg_0, arg_0, false, false), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true)), 61131u == var_1.x)) | !((arg_0 | false) | true), firstLeadingBit(firstLeadingBit(vec3<i32>(func_3(Struct_1(global0.x, vec2<bool>(arg_0, true), arg_0, arg_0, vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], -38529i)), Struct_1(1000f, vec2<bool>(arg_0, arg_0), false, true, vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 27u)], -2147483647i, 9677i))), _wgslsmith_sub_i32(u_input.e.x, global4[_wgslsmith_index_u32(var_1.x, 27u)]), -global3[_wgslsmith_index_u32(var_1.x, 23u)]))));
    global3 = array<i32, 23>();
    return Struct_1(global0.x, select(var_2.b, vec2<bool>(true, all(select(vec3<bool>(false, var_2.b.x, var_2.d), vec3<bool>(var_2.c, arg_0, true), vec3<bool>(arg_0, var_2.b.x, var_2.c)))), false), true, select(select(!(-1000f > var_2.a), true, true), true, ~u_input.b.x > var_1.x), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global4 = array<i32, 27>();
    global3 = array<i32, 23>();
    let var_1 = vec4<u32>(u_input.b.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(sign(global0.x))) - global0.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 830f) - _wgslsmith_f_op_f32(max(2249f, global0.x))), select(vec2<bool>(false, true), vec2<bool>(true, true), true), false, false, ~(vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 27u)], global3[_wgslsmith_index_u32(u_input.d, 23u)], u_input.e.x) << (global1[_wgslsmith_index_u32(u_input.b.x, 23u)] % vec3<u32>(32u)))), u_input.e.x), ~(~u_input.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zw, u_input.b.xx), (~vec2<u32>(u_input.b.x, u_input.d) >> (~u_input.b.wx % vec2<u32>(32u))) ^ (~vec2<u32>(u_input.d, 1u) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.b.yw))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.d, 29u)];
    let var_3 = func_2(any(vec3<bool>(!(var_2.d && false), true, false)));
    let var_4 = var_2.e.x;
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_5.c).e.x, ~_wgslsmith_mult_u32(firstLeadingBit(u_input.b.x) >> (var_1.x % 32u), ~(~1u)), var_1.x, var_3.e.xy, ~(~_wgslsmith_clamp_u32(u_input.b.x, var_1.x, 0u << (u_input.d % 32u))));
}

