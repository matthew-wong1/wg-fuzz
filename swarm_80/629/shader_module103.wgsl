struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(1u, Struct_1(vec4<i32>(11039i, 2386i, 21401i, -12470i), 1u, -618f, false, 4294967295u), vec3<i32>(-1i, -58246i, i32(-2147483648)), vec2<bool>(false, false)), Struct_1(vec4<i32>(-2860i, 12277i, -17003i, -22080i), 40139u, 568f, true, 1u), true);

var<private> global1: i32;

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = (arg_0.b.b | arg_0.a) & firstLeadingBit(~global2.x << (_wgslsmith_dot_vec3_u32(global2.zxz, abs(vec3<u32>(30421u, 1u, 4294967295u))) % 32u));
    var var_1 = Struct_5(global0.b, -reverseBits(arg_0.c.x), ~36717u);
    let var_2 = var_0;
    let var_3 = 997f;
    var var_4 = any(!(!select(select(vec2<bool>(arg_0.d.x, true), global0.a.d, arg_0.d.x), !arg_0.d, !var_1.a.d)));
    return global0.a;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = global0.a.b;
    let var_1 = Struct_4(_wgslsmith_add_i32(global0.b.a.x, var_0.a.x));
    var var_2 = Struct_5(Struct_1(~(-var_0.a) >> (countOneBits(~vec4<u32>(var_0.b, var_0.e, global2.x, global2.x)) % vec4<u32>(32u)), ~func_2(func_2(Struct_2(global2.x, Struct_1(vec4<i32>(-2147483647i, 2147483647i, var_1.a, -42829i), var_0.e, 137f, false, var_0.b), vec3<i32>(-35439i, 24347i, arg_1.x), global0.a.d))).b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.b.c))))), var_0.b == firstTrailingBit(1u), global2.x), _wgslsmith_add_i32(abs(-753i), abs(min(~global0.b.a.x, -global0.b.a.x))), 4294967295u);
    let var_3 = global0.b.b;
    let var_4 = func_2(Struct_2(var_2.a.e, func_2(func_2(func_2(Struct_2(global0.a.b.b, var_2.a, vec3<i32>(var_0.a.x, global0.a.b.a.x, global0.a.c.x), global0.a.d)))).b, _wgslsmith_clamp_vec3_i32(global0.a.b.a.xxy, var_0.a.yzz, -var_2.a.a.yzw | vec3<i32>(2822i, -2147483647i, arg_1.x)), !select(select(vec2<bool>(global0.a.d.x, true), vec2<bool>(global0.c, false), var_0.d), !vec2<bool>(var_0.d, var_0.d), vec2<bool>(global0.a.b.d, global0.a.d.x))));
    return vec2<bool>(false, true);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_4(firstLeadingBit(~_wgslsmith_div_i32(_wgslsmith_div_i32(global0.b.a.x, global0.b.a.x), countOneBits(global0.a.c.x))));
    global0 = Struct_3(func_2(global0.a), func_2(global0.a).b, global0.a.b.d);
    let var_1 = select(global2.yy, ~u_input.c, func_3(!(global0.a.d.x && all(vec3<bool>(false, false, global0.c))), global0.a.b.a.zx));
    global2 = countOneBits(vec4<u32>(u_input.c.x, 19307u, ~(~global2.x), min(arg_0.x, min(global2.x << (u_input.e % 32u), var_1.x >> (37923u % 32u)))));
    return Struct_3(Struct_2(~22714u, func_2(global0.a).b, vec3<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(global0.b.a, global0.a.b.a)), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 34649i, global0.a.b.a.x), vec3<i32>(-1i, 2147483647i, global0.b.a.x))), firstTrailingBit(_wgslsmith_sub_i32(var_0.a, 1095i))), vec2<bool>(global0.a.b.d | !global0.b.d, global0.c)), func_2(func_2(Struct_2(4294967295u, Struct_1(vec4<i32>(global0.a.c.x, global0.a.c.x, global0.a.b.a.x, 1i), 1u, 1603f, global0.b.d, global0.a.a), ~vec3<i32>(-1i, -39621i, global0.b.a.x), select(global0.a.d, global0.a.d, true)))).b, global0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.c.x & min(_wgslsmith_div_i32(global0.b.a.x, 1i), 1i);
    global1 = ~(i32(-1i) * -2147483647i);
    global0 = func_1(vec4<u32>(~global0.a.a, _wgslsmith_mod_u32(global2.x << (75192u % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(47524u, 1u), vec2<u32>(global0.a.a, 1u)), _wgslsmith_clamp_u32(1u, 57730u, global0.a.b.b))), 18008u, u_input.a));
    var var_1 = max(1i, -1i);
    let var_2 = func_3(!(true & (global0.b.d && true)), firstTrailingBit(abs(vec2<i32>(global0.b.a.x, func_1(vec4<u32>(global0.a.b.e, u_input.a, 15629u, 1u)).a.c.x)))).x;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(func_1(~vec4<u32>(20350u, 4294967295u, 62784u, 36792u)).a.b.c)), 181f, func_1(~vec4<u32>(1u, 84058u, global0.b.e, global2.x)).a.b.d & (abs(global0.b.b) > func_2(func_2(Struct_2(1u, Struct_1(vec4<i32>(global0.a.c.x, -12924i, var_0, global0.a.c.x), 69408u, global0.a.b.c, true, 19887u), global0.a.b.a.xyz, vec2<bool>(global0.c, true)))).b.b)));
    global0 = func_1((~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.b, 0u, u_input.e, global2.x), vec4<u32>(global2.x, 0u, 12777u, u_input.a)) << (reverseBits(~vec4<u32>(global2.x, global2.x, 2944u, u_input.c.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_sub_u32(abs(u_input.b), 49268u), u_input.a, u_input.c.x, global2.x) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1100f, global0.a.c.x, -4509i, func_1(vec4<u32>(global2.x | global2.x, _wgslsmith_clamp_u32(1u, 59259u, global2.x), 74989u, u_input.c.x) >> (vec4<u32>(~global2.x, global2.x, global0.b.e, ~4033u) % vec4<u32>(32u))).b.c);
}

