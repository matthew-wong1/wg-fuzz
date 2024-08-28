struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    global0 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(45633u, 4294967295u)), ~vec2<u32>(~_wgslsmith_mod_u32(u_input.a, 4294967295u), ~u_input.a));
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(73199u, ~49645u, 91770u), 53664u);
    global0 = vec2<u32>(37516u, _wgslsmith_sub_u32(var_0 << (min(0u, u_input.a) % 32u), _wgslsmith_mult_u32(0u, 0u)) & (global0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, global0.x)))));
    let var_1 = true;
    global0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(u_input.a, 14146u)), vec2<u32>(var_0, _wgslsmith_mod_u32(_wgslsmith_mod_u32(38994u, 4294967295u), u_input.a | global0.x))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(15153u, u_input.a)), ~vec2<u32>(~u_input.a, ~4294967295u), ~firstLeadingBit(vec2<u32>(1u, 31311u)) << (~firstTrailingBit(vec2<u32>(21766u, 1u)) % vec2<u32>(32u))), ~(~vec2<u32>(_wgslsmith_mod_u32(0u, global0.x), ~0u)));
    return arg_0;
}

fn func_3(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(arg_0.x, -1000f, false))), _wgslsmith_f_op_f32(-arg_0.x)) - arg_0.zy) * vec2<f32>(-876f, 509f));
    var var_1 = var_0;
    let var_2 = u_input.a;
    global0 = _wgslsmith_div_vec2_u32(min(min(~vec2<u32>(global0.x, 15558u) ^ ~vec2<u32>(var_2, 67259u), abs(~vec2<u32>(66076u, global0.x))), vec2<u32>(_wgslsmith_sub_u32(1u, 1u), ~select(global0.x, 1u, true))), ~(~vec2<u32>(~29479u, 4294967295u)));
    let var_3 = !vec2<bool>(true, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)));
    return Struct_4(Struct_3(firstTrailingBit(0u), select(!select(vec4<bool>(var_3.x, false, false, true), vec4<bool>(false, var_3.x, true, false), vec4<bool>(var_3.x, false, true, var_3.x)), vec4<bool>(true, true, true, 1u <= var_2), true), var_3));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f - _wgslsmith_f_op_f32(sign(-769f))) + -106f))), -898f));
    global0 = ~reverseBits(select(abs(vec2<u32>(4294967295u, 22398u)), vec2<u32>(73448u, 1u) & vec2<u32>(global0.x, arg_1.a), vec2<bool>(false, true)) << (abs(abs(vec2<u32>(arg_1.a, 55094u))) % vec2<u32>(32u)));
    let var_1 = func_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -880f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(abs(1000f)), !arg_0.x)), 1752f, -2092f));
    var var_2 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(arg_1.a, u_input.a, var_1.a.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, global0.x), vec3<u32>(global0.x, 63809u, 0u), vec3<u32>(0u, var_1.a.a, 4294967295u))), ~(~min(vec3<u32>(1u, 4294967295u, arg_1.a), vec3<u32>(var_1.a.a, arg_1.a, 29398u))));
    let var_3 = countOneBits(_wgslsmith_div_i32(i32(-1i) * -(~(-2147483647i)), ~9440i));
    return !select(!var_1.a.c, arg_0, !func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(969f, 783f, -536f, -839f) + vec4<f32>(-202f, -1491f, 831f, -822f))).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec2<u32>(1u, 0u << (u_input.a % 32u)));
    let var_0 = Struct_4(Struct_3(global0.x, vec4<bool>(!(4294967295u > global0.x), -u_input.b.x <= _wgslsmith_dot_vec3_i32(u_input.b.zxw, vec3<i32>(u_input.b.x, 14433i, u_input.b.x)), true, true), select(func_1(vec2<bool>(true, true), Struct_3(35644u, vec4<bool>(true, false, true, true), vec2<bool>(false, false))), func_1(func_3(vec4<f32>(-1044f, -1213f, -275f, 1149f)).a.c, Struct_3(10891u, vec4<bool>(false, true, false, false), vec2<bool>(true, false))), select(func_1(vec2<bool>(false, true), Struct_3(0u, vec4<bool>(true, true, false, false), vec2<bool>(false, true))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)))));
    var var_1 = min(u_input.a & ~u_input.a, 0u) | global0.x;
    var var_2 = global0.x | u_input.a;
    var var_3 = _wgslsmith_sub_u32(global0.x, u_input.a);
    var var_4 = min(~(~u_input.a), abs(4294967295u));
    var_3 = ~(min(u_input.a, ~global0.x) >> (1u % 32u));
    let var_5 = ~(~(vec4<u32>(~global0.x, ~global0.x, ~981u, _wgslsmith_mult_u32(12508u, 64346u)) & countOneBits(max(vec4<u32>(var_0.a.a, u_input.a, global0.x, 1781u), vec4<u32>(4294967295u, u_input.a, 19865u, 19309u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

