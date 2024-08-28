struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(18033u, vec4<bool>(true, true, true, true));

var<private> global1: array<bool, 15>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = 1u >> (_wgslsmith_dot_vec2_u32((_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, u_input.a.x), vec2<u32>(global0.a, 60938u)) >> (~u_input.a.yy % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(vec2<u32>(43416u, arg_0), countOneBits(vec2<u32>(global0.a, 28889u))), _wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.yx)) % 32u);
    let var_1 = u_input.a;
    let var_2 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, global0.a, var_1.x), _wgslsmith_dot_vec3_u32(u_input.a.wyx, vec3<u32>(30167u, 4294967295u, arg_0))), ~(~(~arg_0))) << (vec2<u32>(reverseBits(_wgslsmith_mod_u32(1u, u_input.a.x)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_0), u_input.a.xw), firstLeadingBit(var_1.wx)) % 32u), u_input.a.x) % vec2<u32>(32u));
    var var_3 = var_2.x;
    var var_4 = Struct_3(32861u, select(vec4<bool>(global0.b.x, true, any(!global0.b), false), select(select(vec4<bool>(global0.b.x, global0.b.x, true, global1[_wgslsmith_index_u32(0u, 15u)]), global0.b, !global0.b), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 15u)], global0.b.x, true), global0.b), false));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    var var_0 = !vec3<bool>(global0.b.x, arg_0.c.a.x, arg_0.c.a.x);
    var var_1 = arg_3;
    global0 = Struct_3(_wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(global0.a, 6713u)), _wgslsmith_add_u32(_wgslsmith_div_u32(40679u, 4294967295u) << (1u % 32u), arg_1), ~0u), !vec4<bool>(func_3(53722u) & true, arg_0.b.a.x, true, true));
    let var_2 = global0.a;
    var var_3 = Struct_1(select(var_1.c.a, !select(!vec2<bool>(var_1.b.a.x, false), select(global0.b.wx, vec2<bool>(true, false), vec2<bool>(false, arg_3.b.a.x)), any(vec3<bool>(false, false, false))), var_0.x && false));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~u_input.a.x)), 15u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1938f));
    global0 = Struct_3(43229u, select(!(!vec4<bool>(global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 15u)], arg_0.b.a.x, false)), select(select(select(global0.b, vec4<bool>(false, false, true, arg_2.b.x), global0.b), vec4<bool>(arg_1.x, false, false, global1[_wgslsmith_index_u32(arg_2.a, 15u)]), !arg_1.x), vec4<bool>(!arg_1.x, all(vec4<bool>(false, false, arg_2.b.x, arg_0.b.a.x)), var_0 == 110f, func_2(Struct_2(vec3<i32>(u_input.d, 2147483647i, 0i), arg_0.c, arg_0.b), 32236u, vec4<u32>(4310u, u_input.a.x, arg_2.a, 1645u), arg_0)), true), arg_0.c.a.x));
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    let var_1 = arg_2;
    return _wgslsmith_dot_vec3_u32(reverseBits(u_input.a.yzw), vec3<u32>(~firstLeadingBit(u_input.a.x) >> (~1u % 32u), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 44933u, global0.a), vec3<u32>(0u, 65640u, u_input.a.x)), vec3<u32>(var_1.a, global0.a, 0u))), 66156u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !global0.b.x;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(max(u_input.d, -_wgslsmith_sub_i32(-26554i, u_input.b)), 45325i), u_input.d << (~47453u % 32u));
    let var_2 = ~vec4<i32>(u_input.d, u_input.d, -2147483647i, var_1);
    var var_3 = Struct_3(_wgslsmith_mult_u32(1u, ~abs(~1323u)), global0.b);
    let var_4 = ~vec2<u32>(~4294967295u, 3345u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~var_4), u_input.a.zy), var_4.x), vec2<u32>(~abs(1u & var_4.x), ~(func_1(Struct_2(var_2.zzy, Struct_1(var_3.b.yz), Struct_1(vec2<bool>(true, true))), global0.b, Struct_3(12895u, var_3.b)) | 1u)), ~u_input.a, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_4, vec2<u32>(0u, 17506u)), var_4));
}

