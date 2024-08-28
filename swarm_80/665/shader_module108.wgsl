struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-206f, -1590f, 44420u);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = abs(global2.c.yw);
    var var_1 = Struct_3(!vec4<bool>(select(false, true, global1.x), true, global1.x, !any(vec4<bool>(true, global1.x, false, false))), Struct_1(_wgslsmith_f_op_f32(trunc(global2.a)), -888f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 35642u, global0.c), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, u_input.c, u_input.c), vec3<u32>(global0.c, 1u, arg_1.x)))), ~vec3<u32>(51579u, 105786u, ~(global0.c >> (u_input.d.x % 32u))));
    global0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.b - var_1.b.a), _wgslsmith_f_op_f32(-875f - 744f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-559f, global0.a))))))), var_1.b.c);
    global0 = Struct_1(global0.b, 863f, countOneBits(~_wgslsmith_div_u32(var_1.c.x, 4294967295u) ^ (global0.c << (1u % 32u))));
    return ~(~vec4<u32>(abs(~arg_1.x), ~4294967295u, ~_wgslsmith_mult_u32(1u, 69952u), ~u_input.d.x));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_1(1000f, 224f, 0u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.c, 89526u, u_input.c), arg_1));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) + var_0.b) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), false);
    let var_2 = Struct_5(vec2<i32>(arg_0, _wgslsmith_sub_i32(14391i, 42221i << (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u))));
    var var_3 = Struct_5(vec2<i32>(max(-4609i, firstLeadingBit(u_input.b)), -25683i << (global0.c % 32u)));
    let var_4 = Struct_5(vec2<i32>(_wgslsmith_mod_i32(global2.d, u_input.a), _wgslsmith_sub_i32(firstTrailingBit(~0i), _wgslsmith_clamp_i32(-39826i, var_3.a.x, 1i) ^ var_3.a.x)));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = func_3(countOneBits(-1i), (func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(591f, -158f))), u_input.d) >> ((~vec4<u32>(19937u, 4294967295u, u_input.c, arg_1.c) & ~vec4<u32>(global0.c, arg_1.c, arg_1.c, u_input.d.x)) % vec4<u32>(32u))) << (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(15049u, global0.c, global0.c, global0.c), vec4<u32>(9954u, 31187u, 4294967295u, 0u) | vec4<u32>(global0.c, 46u, 3962u, global0.c), ~vec4<u32>(global0.c, 5365u, global0.c, u_input.c)) % vec4<u32>(32u)), _wgslsmith_div_f32(global2.a, global2.a));
    var_0 = Struct_5(vec2<i32>(-(min(0i, u_input.e.x) | -47458i), reverseBits(_wgslsmith_mult_i32(global2.b.x, -2147483647i)) >> (arg_1.c % 32u)));
    let var_1 = firstTrailingBit(31882i);
    var_0 = func_3(_wgslsmith_mult_i32(reverseBits(0i), ~(-reverseBits(-13276i))), vec4<u32>(~1u, max(~(~1u), _wgslsmith_div_u32(global0.c, ~global0.c)), ~11622u, _wgslsmith_dot_vec2_u32(~u_input.d >> ((u_input.d << (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(71592u, arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))))) - global0.b));
    let var_2 = Struct_3(select(!select(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, arg_2, arg_2, false), vec4<bool>(global1.x, false, true, true)), !vec4<bool>(true, arg_2, true, true), !vec4<bool>(true, global1.x, arg_2, arg_2)), vec4<bool>(any(!vec4<bool>(false, true, true, arg_2)), all(!global1.wx), arg_3 >= 59591i, any(!global1.wwz)), all(global1.zx)), arg_1, ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.c, max(arg_1.c, 0u), _wgslsmith_div_u32(87958u, 33820u)), vec3<u32>(firstTrailingBit(4294967295u), ~40838u, 45109u)));
    return (all(select(!var_2.a, select(vec4<bool>(global1.x, true, false, false), var_2.a, true), !vec4<bool>(false, false, global1.x, true))) == global1.x) | !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(select(true, global1.x & false, !(false & global1.x)), all(vec3<bool>(global2.d == -22823i, global1.x, !global1.x)), true, !func_1(u_input.a, Struct_1(-2662f, 1198f, u_input.c), global1.x, _wgslsmith_mod_i32(u_input.b, u_input.a)));
    global1 = vec4<bool>(!(!(global1.x | (u_input.c >= 0u))), true, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.c, u_input.c, 33628u)), ~vec3<u32>(0u, global0.c, u_input.d.x)) >= global0.c, (u_input.a | global2.c.x) > countOneBits(~u_input.a & _wgslsmith_clamp_i32(global2.b.x, global2.c.x, global2.c.x)));
    var var_0 = vec3<u32>(108911u, _wgslsmith_div_u32(~(~u_input.d.x) & _wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), 16505u), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(1072f);
}

