struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(arg_1.b, false);
    global1 = _wgslsmith_add_u32(0u, (countOneBits(~21823u) | arg_0) ^ ~u_input.c);
    return vec4<bool>(any(!(!(!vec4<bool>(global2.b, true, arg_1.b, false)))), true, any(!(!vec2<bool>(var_0.a, false))), all(select(!select(vec4<bool>(var_0.a, true, false, arg_1.a), vec4<bool>(arg_1.b, var_0.b, true, global2.b), vec4<bool>(arg_1.b, true, var_0.a, true)), vec4<bool>(!arg_1.b, arg_1.b, global2.b & arg_1.a, select(arg_1.a, arg_1.b, false)), select(!vec4<bool>(false, arg_1.b, false, var_0.b), vec4<bool>(true, true, true, false), !arg_1.a))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~(~vec3<u32>(0u, u_input.c, 1u) | ~vec3<u32>(u_input.a, u_input.c, u_input.a))), select(firstTrailingBit(vec3<u32>(u_input.a, 16165u, 58251u)), vec3<u32>(u_input.a, min(1u, 4294967295u), 0u >> (u_input.a % 32u)), false) & ((vec3<u32>(u_input.c, u_input.a, 0u) >> (vec3<u32>(44487u, 81867u, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(max(16665u, 4294967295u), ~u_input.c, firstTrailingBit(16127u)) % vec3<u32>(32u))));
    return arg_0.x;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = !arg_0.x;
    var var_1 = Struct_1(-1i, global2.b);
    let var_2 = ~abs(_wgslsmith_mult_u32(u_input.c, u_input.a)) >= u_input.a;
    global2 = Struct_1(-32736i, false == !var_1.b);
    var var_3 = 1u ^ u_input.a;
    return !(!(834f < _wgslsmith_f_op_f32(func_3(vec4<f32>(1f, 1f, 1f, 1f), Struct_3(true, global2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 6>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1290f + -379f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-805f)) + _wgslsmith_f_op_f32(-1294f - -648f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f) - _wgslsmith_f_op_f32(f32(-1f) * -645f))), 245f)), 936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f)) - -1000f));
    let var_1 = vec3<bool>(!global2.b, func_2(func_1(abs(_wgslsmith_add_u32(4294967295u, u_input.a)), Struct_3(false, !global2.b))), true);
    global2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, max(_wgslsmith_add_i32(u_input.d, 57058i), 17270i)), vec2<i32>(0i, 13975i)), true);
    let var_2 = -vec2<i32>(0i, (_wgslsmith_add_i32(global2.a, u_input.b) ^ global2.a) & global2.a);
    global0 = array<vec4<u32>, 6>();
    let var_3 = any(vec4<bool>(false, any(vec4<bool>(false, false, false || global2.b, !var_1.x)), all(select(vec4<bool>(global2.b, var_1.x, global2.b, true), vec4<bool>(var_1.x, global2.b, true, global2.b), true)), !(!global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) - var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))), -186f), firstTrailingBit(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 34554u)))), var_0.x, _wgslsmith_mod_u32(u_input.a, (_wgslsmith_clamp_u32(29435u, 1u, u_input.a) & u_input.a) << (~max(0u, u_input.a) % 32u)), vec4<u32>(~u_input.a, reverseBits(select(_wgslsmith_sub_u32(61975u, u_input.a), u_input.c, global2.b)), 0u, ~22404u));
}

