struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> u32 {
    return select(_wgslsmith_add_u32(arg_2.b.a.x >> (min(_wgslsmith_dot_vec4_u32(arg_2.b.a, vec4<u32>(arg_0.b.a.x, 1u, u_input.b, arg_0.b.a.x)), 1u) % 32u), countOneBits(u_input.d)), ~_wgslsmith_sub_u32(~2075u, 1u) >> (1u % 32u), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = false;
    var var_1 = abs(~26425u);
    let var_2 = ~(func_3(arg_1, select(true, false, true), Struct_2(true, Struct_1(arg_1.b.a, -1i, vec3<bool>(arg_1.a, true, arg_0.c.x)), -vec2<i32>(arg_0.b, arg_0.b), select(vec3<i32>(arg_1.b.b, 1i, -2147483647i), arg_1.d, vec3<bool>(var_0, arg_1.a, true)))) << (7586u % 32u));
    var var_3 = _wgslsmith_mult_u32(20784u, max(4294967295u, _wgslsmith_clamp_u32(var_2, var_2, 54553u)));
    let var_4 = !any(!arg_1.b.c);
    return ~(-firstTrailingBit(arg_1.d.zz));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.d;
    let var_1 = Struct_1(arg_0.b.a, abs(var_0.x), !(!arg_0.b.c));
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = Struct_1(vec4<u32>(var_2.b.a.x, 4294967295u, ~(~0u | var_1.a.x), arg_0.b.a.x), -u_input.c, arg_0.b.c);
    return Struct_2(var_2.a != (~(~var_1.a.x) > ~_wgslsmith_dot_vec2_u32(arg_0.b.a.zz, vec2<u32>(60643u, var_3.a.x))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(5252u, 29128u, var_1.a.x, ~0u), min(var_3.a, ~vec4<u32>(var_1.a.x, 1u, 73707u, var_1.a.x))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i | arg_0.c.x, abs(u_input.c)), func_2(Struct_1(arg_0.b.a, var_2.b.b, vec3<bool>(false, true, true)), Struct_2(var_1.c.x, Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, 1u), -8092i, vec3<bool>(var_2.b.c.x, var_1.c.x, true)), vec2<i32>(u_input.a, -1i), vec3<i32>(1i, 10168i, -1i))).x, _wgslsmith_add_i32(2147483647i, arg_0.b.b)), select(vec3<bool>(var_3.c.x, true, false), !select(vec3<bool>(var_2.a, true, true), vec3<bool>(var_2.b.c.x, var_3.c.x, var_1.c.x), false), !select(var_3.c, vec3<bool>(false, false, var_3.c.x), vec3<bool>(var_3.c.x, true, true)))), var_0.xz, var_0);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = func_4(Struct_2(arg_1.b.a.x < ~(~arg_3), arg_1.b, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_mult_i32(u_input.c, u_input.a)), func_2(Struct_1(vec4<u32>(arg_3, 1u, arg_3, 4294967295u), -43650i, vec3<bool>(arg_1.b.c.x, arg_1.a, true)), Struct_2(arg_1.a, arg_1.b, vec2<i32>(13209i, u_input.a), vec3<i32>(u_input.c, -7745i, -13369i)))), countOneBits(_wgslsmith_mod_vec3_i32(arg_1.d, arg_1.d))));
    var var_1 = false;
    var var_2 = func_4(Struct_2(!(!arg_1.b.c.x), Struct_1(var_0.b.a, var_0.c.x, select(vec3<bool>(true, true, true), var_0.b.c, vec3<bool>(arg_1.a, arg_1.a, arg_1.b.c.x))), vec2<i32>(u_input.c, -u_input.c), var_0.d)).b.a.x;
    var var_3 = -vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1.b.b, -4544i), abs(u_input.c)), ~4575i, -_wgslsmith_clamp_i32(var_0.b.b, u_input.a, u_input.c) | -firstTrailingBit(u_input.a));
    let var_4 = Struct_1(arg_1.b.a, select(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.x, -31498i, -2147483647i, var_3.x), vec4<i32>(-19039i, 1i, u_input.c, var_3.x)), firstTrailingBit(0i)) ^ 2147483647i, _wgslsmith_add_i32(0i, ~(~arg_1.d.x)), false), select(arg_1.b.c, var_0.b.c, arg_1.b.c.x));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 41966u, u_input.b) | abs(_wgslsmith_add_vec3_u32(vec3<u32>(73146u, u_input.d, u_input.d), vec3<u32>(u_input.d, 31853u, u_input.b))), firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))), 95007u, 17265u);
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(func_1(vec2<f32>(-250f, 280f), Struct_2(true, Struct_1(vec4<u32>(1u, u_input.b, u_input.d, 23606u), u_input.a, vec3<bool>(true, false, true)), vec2<i32>(-1i, u_input.c), vec3<i32>(u_input.a, u_input.a, 2147483647i)), -814f, u_input.d), u_input.b, ~var_0.x, u_input.d), vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.b), u_input.b, ~u_input.d, 36692u)), _wgslsmith_clamp_i32(2147483647i, 19987i, -45942i), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b, u_input.b), vec4<u32>(var_0.x, u_input.d, u_input.d, 4294967295u)) > var_0.x, true, true), vec3<bool>(select(true, true, func_4(Struct_2(true, Struct_1(vec4<u32>(18901u, u_input.d, 4294967295u, var_0.x), 6785i, vec3<bool>(true, true, false)), vec2<i32>(0i, u_input.c), vec3<i32>(19041i, u_input.a, 27284i))).a), (var_0.x >> (30660u % 32u)) <= 0u, true)));
    var var_2 = 1000f;
    let var_3 = vec2<u32>(30498u, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1183f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f - -1569f))))), -297f);
}

