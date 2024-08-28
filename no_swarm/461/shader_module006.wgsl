struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 1u, 2303u, 4294967295u, 0u, 51272u, 1u, 33055u, 1u, 55473u, 12173u, 4294967295u, 18983u, 4294967295u, 0u, 53051u, 85230u, 4294967295u, 65837u, 0u, 54456u, 67740u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> u32 {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_0 = _wgslsmith_mod_u32(46107u ^ max(abs(u_input.a), ~u_input.a), firstLeadingBit(u_input.a >> ((global0[_wgslsmith_index_u32(~4294967295u, 23u)] ^ _wgslsmith_mod_u32(u_input.a, global0[_wgslsmith_index_u32(21211u, 23u)])) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-819f - 850f))), 1202f));
    return u_input.a;
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_i32(-51708i, ~(~_wgslsmith_add_i32(-6059i, 0i)), 1i);
    global0 = array<u32, 23>();
    var var_1 = ~firstTrailingBit(global0[_wgslsmith_index_u32(1u, 23u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1609f, _wgslsmith_div_f32(-894f, -812f))))) - _wgslsmith_f_op_f32(step(845f, -261f))));
    let var_3 = u_input.a;
    return select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec2<bool>(false, false)))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), false), vec2<bool>(false, true)), true), select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), vec2<bool>(true, true), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_1 + arg_1);
    let var_1 = Struct_5(Struct_1(vec3<i32>(_wgslsmith_add_i32(~14279i, -15797i), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, -21611i, -2147483647i)), ~vec3<i32>(arg_0.c.a.x, arg_0.c.a.x, 0i)), arg_0.c.a.x), arg_0.c.b, arg_0.b, 45552u < func_2()));
    let var_2 = arg_0;
    let var_3 = select(vec2<bool>(true, select(arg_0.a.x, u_input.a == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(484u, 57406u), 23u)], 23u)], var_2.a.x)), !arg_0.c.b, true == !arg_0.b);
    let var_4 = arg_0;
    return any(vec4<bool>(true, all(vec2<bool>(any(vec2<bool>(true, arg_0.a.x)), true)), var_4.c.c, all(func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_0 = Struct_5(Struct_1(select(firstTrailingBit(select(vec3<i32>(43986i, -57966i, -65938i), vec3<i32>(35541i, -1i, 15288i), vec3<bool>(true, false, true))), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true)), vec2<bool>(true, func_1(Struct_3(vec3<bool>(true, true, true), false, Struct_1(vec3<i32>(2147483647i, 19146i, -9122i), vec2<bool>(true, false), false, false)), 855f)), true, true));
    let var_1 = _wgslsmith_mult_u32(~0u, ~(firstLeadingBit(~u_input.a) & max(~global0[_wgslsmith_index_u32(3849u, 23u)], _wgslsmith_div_u32(u_input.a, u_input.a))));
    var_0 = Struct_5(var_0.a);
    var_0 = Struct_5(var_0.a);
    var var_2 = Struct_5(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.a.a.x, ~(-max(var_2.a.a.x, var_2.a.a.x)), countOneBits(var_2.a.a.x), firstLeadingBit(i32(-1i) * -1i) << (~u_input.a % 32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, firstTrailingBit(~global0[_wgslsmith_index_u32(var_1, 23u)]), countOneBits(35443u)), ~(~vec3<u32>(global0[_wgslsmith_index_u32(var_1, 23u)], 1u, global0[_wgslsmith_index_u32(0u, 23u)]) | vec3<u32>(u_input.a, 1u, var_1))), -2147483647i, _wgslsmith_mod_i32(~(~var_0.a.a.x), _wgslsmith_div_i32(i32(-1i) * -var_2.a.a.x, firstLeadingBit(-var_2.a.a.x))));
}

