struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, global1.a.a)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-673f, global1.a.a, arg_1.a))))))));
    let var_1 = select(~u_input.c.zzy, ~(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, arg_1.e), vec3<u32>(arg_2, global1.a.e, u_input.a)) << (vec3<u32>(0u, countOneBits(u_input.b), arg_1.e) % vec3<u32>(32u))), all(!vec4<bool>(arg_1.d, true, all(vec4<bool>(arg_0.x, global1.a.d, arg_0.x, true)), global1.a.e == 34277u)));
    var var_2 = 1u;
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.a, -180f), _wgslsmith_f_op_f32(f32(-1f) * -181f)))), global1.a.b, -11779i, any(select(select(vec3<bool>(arg_0.x, arg_1.d, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, global1.a.d), vec3<bool>(arg_0.x, true, true)), vec3<bool>(true, false, arg_0.x), any(vec4<bool>(false, false, true, arg_1.d)))), _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec3_u32(var_1, u_input.c.xwy), _wgslsmith_add_u32(global1.a.e, arg_1.e)), global1.a.e, _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(30143u, arg_2, 0u)) & countOneBits(4294967295u))));
    var var_3 = Struct_2(Struct_1(global1.a.a, arg_1.b, -1589i, arg_1.d, 4294967295u));
    return ~_wgslsmith_div_u32(10095u, 4294967295u);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_add_u32(~func_3(vec2<bool>(arg_1.a.b > -1i, false), Struct_1(_wgslsmith_f_op_f32(step(arg_1.a.a, 828f)), arg_1.a.c, 21463i, arg_1.a.d, 0u), arg_0), _wgslsmith_dot_vec4_u32(~u_input.c, select(u_input.c, select(~u_input.c, vec4<u32>(12624u, 4294967295u, 24431u, arg_1.a.e), select(vec4<bool>(arg_1.a.d, true, global1.a.d, arg_1.a.d), vec4<bool>(global1.a.d, arg_1.a.d, false, false), arg_1.a.d)), (u_input.c.x == 40969u) | true)));
    let var_0 = true;
    var var_1 = select(vec2<bool>(2147483647i != _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.b, 7879i), select(vec2<i32>(arg_1.a.b, -16133i), vec2<i32>(-2147483647i, arg_1.a.c), vec2<bool>(true, arg_1.a.d))), !arg_1.a.d), vec2<bool>(all(!vec4<bool>(false, arg_1.a.d, false, true)) && !var_0, true & arg_1.a.d), !(false && arg_1.a.d));
    let var_2 = Struct_2(arg_1.a);
    var var_3 = all(vec2<bool>(false, !(false & var_1.x) & arg_1.a.d));
    return Struct_2(var_2.a);
}

fn func_1() -> u32 {
    global1 = func_2(_wgslsmith_mult_u32(20947u, _wgslsmith_clamp_u32(global1.a.e, _wgslsmith_dot_vec4_u32(reverseBits(u_input.c), firstLeadingBit(vec4<u32>(u_input.b, 1u, global1.a.e, u_input.c.x))), ~51035u)), Struct_2(global1.a));
    global1 = func_2(global1.a.e, func_2(~(~global1.a.e) & _wgslsmith_dot_vec3_u32(~u_input.c.zyw, max(vec3<u32>(4294967295u, 18213u, u_input.c.x), u_input.c.xww)), Struct_2(global1.a)));
    var var_0 = func_2(global1.a.e, Struct_2(func_2(~max(0u, 4294967295u), Struct_2(Struct_1(357f, global1.a.b, -2147483647i, false, 4294967295u))).a)).a;
    let var_1 = -abs(~abs(vec4<i32>(var_0.c, -42323i, global1.a.c, global1.a.c)));
    var var_2 = ~min(max(-7811i, var_1.x), global1.a.b);
    return ~abs(~4294967295u) << (func_3(select(select(vec2<bool>(var_0.d, false), vec2<bool>(false, var_0.d), true), !select(vec2<bool>(false, true), vec2<bool>(var_0.d, true), global1.a.d), any(!vec2<bool>(var_0.d, var_0.d))), Struct_1(global1.a.a, _wgslsmith_sub_i32(var_0.c, ~global1.a.c), max(_wgslsmith_mult_i32(-3801i, global1.a.b), -12807i), true, ~var_0.e << (global1.a.e % 32u)), u_input.b) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~13663u << (func_1() % 32u)));
    global2 = ~global1.a.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a, global1.a.a) + vec2<f32>(-984f, global1.a.a)))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a.a, global1.a.a))), global1.a.a)));
    global1 = func_2(31682u & _wgslsmith_add_u32(global1.a.e, 0u), Struct_2(global1.a));
    let var_1 = Struct_3(~1u, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-43944i)), min(vec4<u32>(global1.a.e, firstLeadingBit(select(var_1.a, 95567u, global1.a.d)), func_1(), firstLeadingBit(~0u)), abs(firstTrailingBit(u_input.c) | vec4<u32>(global1.a.e, 1u, 90084u, u_input.a))));
}

