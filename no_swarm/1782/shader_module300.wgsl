struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<i32, 27> = array<i32, 27>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 39369i, -1i, -49872i, -4900i, 45983i, -14543i, 15660i, 1i, 2929i, 10025i, 2147483647i, -1i, 2147483647i, i32(-2147483648), 2147483647i, -15808i, 6632i, 2147483647i, 0i, i32(-2147483648), -42583i, i32(-2147483648));

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    global4 = array<Struct_1, 22>();
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    return 85209u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global3 = array<i32, 27>();
    global0 = vec2<u32>(~(~(~(0u >> (u_input.e % 32u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(vec4<bool>(false, arg_0.d.x, false, true), arg_0.d.x), global0.x, ~u_input.e, ~0u), abs(~vec4<u32>(1u, u_input.c, 12643u, u_input.e))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(900f)) + _wgslsmith_div_f32(-118f, 1000f))) * 921f));
    return ~u_input.e;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = abs(vec2<u32>(~global0.x, _wgslsmith_clamp_u32(~(~u_input.e), ~_wgslsmith_div_u32(1u, 11395u), global0.x)));
    var var_1 = global4[_wgslsmith_index_u32(~(~func_2(Struct_1(arg_1, vec2<i32>(arg_1.x, -2147483647i), -2147483647i, vec3<bool>(true, false, arg_0)))), 22u)];
    let var_2 = arg_1.x;
    let var_3 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(max(4294967295u, var_0.x), global0.x), 4294967295u, 77316u), vec3<u32>(_wgslsmith_add_u32(~0u, var_0.x), 4294967295u, func_3(!vec4<bool>(false, false, false, var_1.d.x), var_1.d.x)));
    global2 = array<Struct_1, 14>();
    return global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.x, _wgslsmith_add_u32(~abs(var_0.x), firstLeadingBit(global0.x))), _wgslsmith_add_u32(global0.x, ~(~0u)) ^ ~26836u), 22u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_i32(min(~arg_2.c, arg_0.c), ~arg_2.c);
    let var_1 = vec2<bool>(false, false);
    global2 = array<Struct_1, 14>();
    let var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_div_u32(global0.x, 1u)), arg_3.x, firstLeadingBit(_wgslsmith_div_u32(0u, 362u) << (_wgslsmith_sub_u32(global0.x, 57259u) % 32u))), 26729u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-432f)) - _wgslsmith_f_op_f32(select(238f, -1767f, false))), _wgslsmith_f_op_f32(f32(-1f) * -159f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(select(1000f, 1954f, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-275f, -330f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-193f * 2147f), -1000f)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3170f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2125f))))));
    var var_0 = global2[_wgslsmith_index_u32(u_input.e, 14u)];
    global4 = array<Struct_1, 22>();
    global4 = array<Struct_1, 22>();
    global0 = vec2<u32>(1u, global0.x);
    var var_1 = Struct_1(~var_0.a, u_input.d, ~1i, !vec3<bool>(true, true, any(var_0.d)));
    var var_2 = Struct_1(abs(vec3<i32>(1i, select(var_1.b.x, -28998i, var_1.d.x || false), u_input.d.x)), vec2<i32>(~(-1i) ^ -(var_1.a.x ^ var_0.a.x), ~0i), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.a.x, 8769i), -countOneBits(_wgslsmith_div_i32(u_input.b, var_0.a.x))), !(!var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_4(func_1(true, var_2.a, 593f), !vec4<bool>(true, var_0.d.x, var_2.d.x, true), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 64445u, u_input.c), vec3<u32>(1u, 4294967295u, u_input.c)), 22u)], vec2<u32>(77220u, 21751u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1316f - 180f), _wgslsmith_f_op_f32(380f * 533f))), var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1653f - -142f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))))), firstLeadingBit((var_1.a | max(var_2.a, vec3<i32>(global3[_wgslsmith_index_u32(global0.x, 27u)], -2147483647i, -31526i))) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c, 20188u), ~vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(var_1.a)), var_1.a), ~_wgslsmith_clamp_i32(~var_1.b.x, var_2.a.x, firstLeadingBit(var_0.b.x)), _wgslsmith_dot_vec2_i32(~u_input.d, var_2.a.xz << (vec2<u32>(37413u, global0.x) % vec2<u32>(32u)))), ~abs(vec3<u32>(60343u, func_3(vec4<bool>(false, true, var_0.d.x, var_1.d.x), var_0.d.x), u_input.e)));
}

