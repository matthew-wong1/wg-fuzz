struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = arg_0;
    let var_0 = vec3<bool>(false, u_input.a.x <= (2147483647i & _wgslsmith_div_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), u_input.a.yy))), true);
    let var_1 = ~(~firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(46882u, u_input.d.x), vec2<u32>(u_input.c, 0u)), max(759u, u_input.d.x), 42474u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b)))), -585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + _wgslsmith_f_op_f32(867f + 584f)))));
    global0 = arg_0;
    return !vec3<bool>(arg_0.a, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    global0 = arg_0;
    var var_0 = !func_3(Struct_1(1255f >= _wgslsmith_f_op_f32(select(-967f, arg_0.b, arg_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), -840f))), vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -1182f)), _wgslsmith_f_op_f32(sign(-1000f))));
    let var_1 = vec4<u32>(~reverseBits(u_input.d.x), ~(_wgslsmith_mod_u32(~u_input.c, u_input.c) ^ ~(~u_input.c)), u_input.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, ~23716u, u_input.d.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.d.x), u_input.d, vec4<u32>(14681u, u_input.c, 0u, u_input.d.x))));
    var_0 = vec3<bool>(!(!(u_input.d.x == 4294967295u)) || false, global0.a, !(!func_3(Struct_1(true, 583f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b, arg_0.b, global0.b), vec3<f32>(1298f, global0.b, global0.b))).x));
    var var_2 = _wgslsmith_f_op_f32(select(arg_0.b, -438f, !(!all(!vec4<bool>(global0.a, arg_0.a, true, arg_1.x)))));
    return 494f;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(~u_input.d.zzz), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 44367u), ~u_input.d.xxy)), max(select(vec3<u32>(u_input.d.x, 0u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 32507u), arg_0.x) >> (firstLeadingBit(u_input.d.xyw) % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, min(55507u, 1u)))));
    global0 = arg_2;
    var_0 = u_input.d.wxw;
    var_0 = u_input.d.zzy;
    let var_1 = false;
    return arg_1;
}

fn func_1() -> vec3<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_add_u32(u_input.c, 37643u));
    let var_1 = !global0.a;
    global0 = func_4(!vec2<bool>(_wgslsmith_f_op_f32(func_2(Struct_1(true, -713f), vec2<bool>(false, false))) <= 1988f, false), Struct_1(any(vec4<bool>(select(true, var_1, global0.a), var_1, global0.a && global0.a, true)), -188f), Struct_1(true, global0.b));
    let var_2 = vec3<bool>(any(vec3<bool>(true, true, true)), global0.a, global0.a);
    let var_3 = Struct_1(any(!(!select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(global0.a, false, global0.a, true)))), global0.b);
    return min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, abs(var_0), u_input.d.x), vec3<u32>(~67324u, _wgslsmith_sub_u32(u_input.d.x, var_0), abs(38285u))) << ((vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d.www, u_input.d.yzy), 4294967295u, abs(43789u)) ^ min(~u_input.d.xxz, _wgslsmith_div_vec3_u32(u_input.d.ywy, u_input.d.yxy))) % vec3<u32>(32u)), vec3<u32>(min(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 0u)), ~var_0), abs(var_0) | ~max(var_0, var_0), 35467u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!(0u != u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1352f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), -1811f)));
    var var_0 = ~(-73478i);
    var_0 = u_input.a.x;
    var var_1 = ~_wgslsmith_mult_u32(~select(u_input.c, u_input.d.x, global0.a) << (~_wgslsmith_mod_u32(u_input.d.x, u_input.c) % 32u), ~8919u);
    var var_2 = -224f;
    let var_3 = global0.b;
    let var_4 = u_input.d.x;
    let var_5 = func_1();
    let var_6 = Struct_1(true, _wgslsmith_f_op_f32(abs(181f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(var_6.b * _wgslsmith_f_op_f32(-global0.b)), u_input.b);
}

