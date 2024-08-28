struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = Struct_1(!(!(!(!arg_1.x))), select(arg_1.zz, arg_1.yy, vec2<bool>(arg_1.x, !arg_1.x)));
    var var_1 = Struct_1(!any(!vec3<bool>(arg_1.x, arg_1.x, false)), vec2<bool>(false, (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, u_input.c.x), 32u)] >= -1297f) || var_0.b.x));
    var var_2 = Struct_1(select(false, -u_input.b.x != u_input.b.x, u_input.c.x == (_wgslsmith_mult_u32(115287u, arg_0) ^ _wgslsmith_div_u32(u_input.c.x, arg_0))), vec2<bool>(true, true));
    return ~arg_0;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<f32, 32>();
    var var_0 = Struct_1(true, vec2<bool>(true, !select(33457i < u_input.b.x, true, true)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 32u)])))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 646f)))) + global0[_wgslsmith_index_u32(func_3(_wgslsmith_clamp_u32(1u, 0u, ~arg_0.x), !select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.a, var_0.b.x), vec4<bool>(var_0.b.x, var_0.a, false, var_0.a), var_0.b.x)), 32u)]), global0[_wgslsmith_index_u32(72582u, 32u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(-var_2)))));
    return Struct_1(any(var_0.b), var_0.b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_2.x;
    var var_1 = Struct_1(select(!select(all(vec3<bool>(arg_1.b.x, arg_1.a, true)), false | arg_0, true), false, true), arg_1.b);
    var_1 = Struct_1(arg_0, vec2<bool>(true, !(!(!arg_0))));
    var_1 = func_2(firstLeadingBit(~(~u_input.c.xxw)) & ~(~vec3<u32>(0u, u_input.a, arg_2.x) << (select(vec3<u32>(4959u, var_0, u_input.c.x), arg_2, arg_1.a) % vec3<u32>(32u))));
    global0 = array<f32, 32>();
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-311f, _wgslsmith_f_op_f32(floor(arg_1)), arg_2.a | true)))));
    global0 = array<f32, 32>();
    var var_1 = true;
    return any(select(vec4<bool>(!arg_0.a | (arg_2.a == false), arg_0.a, true, !arg_2.a), vec4<bool>(true, false, true, arg_0.b.x), select(!(!vec4<bool>(arg_0.a, false, false, arg_0.b.x)), vec4<bool>(!arg_0.a, false, !arg_2.a, arg_2.a), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(func_1(!all(vec3<bool>(false, false, true)), Struct_1(true, vec2<bool>(true, true)), u_input.c.xxx), global0[_wgslsmith_index_u32(~u_input.d, 32u)], func_1(true, func_1(false, Struct_1(true, vec2<bool>(false, false)), u_input.c.wwx), vec3<u32>(_wgslsmith_mod_u32(4294967295u, 7808u), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.d))), func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 1u, u_input.c.x, 0u)), _wgslsmith_add_u32(~4294967295u, ~u_input.c.x), ~u_input.a)).b);
    let var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(-8542i, ~(-44703i))), u_input.b.x, ~u_input.b.x);
    var var_2 = func_2(vec3<u32>(~u_input.c.x, 72982u << (_wgslsmith_mult_u32(~u_input.a, u_input.d) % 32u), countOneBits(~u_input.c.x)));
    var_0 = Struct_1(((~u_input.c.x | ~5200u) | abs(4294967295u)) > ((abs(u_input.a) >> (abs(u_input.d) % 32u)) | u_input.d), vec2<bool>(all(vec4<bool>(true, var_2.b.x, true, all(vec3<bool>(var_0.b.x, true, var_0.b.x)))), all(!vec3<bool>(var_0.a, false, var_0.a))));
    var var_3 = !var_2.a;
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yz >> (reverseBits(u_input.c.yz) % vec2<u32>(32u)), u_input.c.xy), abs(u_input.c.zz)) > ~(~reverseBits(reverseBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global0[_wgslsmith_index_u32(~(~u_input.d), 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], 383f, -447f), var_1.x, vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(5352u, ~(~1u)), 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29889u | _wgslsmith_sub_u32(119707u, u_input.a), 32u)]), 696f, global0[_wgslsmith_index_u32(56975u, 32u)]), u_input.b.x, countOneBits(46096u));
}

