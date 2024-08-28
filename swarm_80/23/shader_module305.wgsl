struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(97410u, 42465u), vec3<u32>(4294967295u, 16947u, 0u), 4294967295u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = ~vec3<u32>(arg_3.d.a.x, min(36115u, ~(92605u >> (global0.c % 32u))), ~u_input.b.x);
    var_0 = _wgslsmith_sub_vec3_u32(arg_3.b.b, arg_0.b.b);
    global0 = Struct_1(arg_0.b.a, ~(~select(~vec3<u32>(arg_0.b.c, arg_0.b.c, global0.b.x), arg_3.b.b & vec3<u32>(0u, 4294967295u, global0.b.x), any(vec4<bool>(true, true, true, true)))), arg_0.d.a.x);
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(global0.b, _wgslsmith_add_vec3_u32(arg_1.b.b, arg_3.d.b)), ~(~arg_0.d.c)), arg_1.b.b);
    var var_1 = arg_1;
    return vec2<u32>(arg_3.b.b.x, 4294967295u);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1640f), Struct_1(firstTrailingBit(vec2<u32>(4294967295u, arg_3)), ~u_input.b, global0.a.x), vec4<i32>(-_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x)) ^ -43921i, u_input.c.x, 0i, ~(1i << (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u))), Struct_1(func_3(Struct_2(_wgslsmith_f_op_f32(abs(arg_1)), Struct_1(u_input.b.xz, u_input.b, 21977u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -44791i, u_input.c.x, -12895i), vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x)), Struct_1(u_input.b.zx, global0.b, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(vec2<u32>(arg_2, arg_2), vec3<u32>(22964u, 1u, 0u), 0u), firstTrailingBit(vec4<i32>(u_input.c.x, -70575i, u_input.c.x, u_input.c.x)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(arg_3, 32739u, u_input.b.x), 0u)), Struct_1(select(u_input.b.zy, global0.b.yz, vec2<bool>(true, false)), countOneBits(vec3<u32>(u_input.b.x, global0.c, arg_2)), 0u), Struct_2(arg_1, Struct_1(vec2<u32>(12008u, arg_2), vec3<u32>(arg_2, global0.c, global0.a.x), arg_3), vec4<i32>(7808i, -44815i, 2147483647i, u_input.c.x) >> (vec4<u32>(arg_2, arg_2, u_input.a, arg_3) % vec4<u32>(32u)), Struct_1(vec2<u32>(17853u, 63066u), global0.b, arg_3))), abs(vec3<u32>(13889u, arg_2, min(4294967295u, u_input.b.x))), _wgslsmith_dot_vec2_u32(abs(u_input.b.xy), ~vec2<u32>(arg_2, u_input.a))));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(var_0.d.c) | global0.c, ~(~arg_2)), ~_wgslsmith_dot_vec3_u32(global0.b, select(vec3<u32>(arg_3, 1u, var_0.b.a.x), u_input.b, vec3<bool>(false, false, false)))), abs(reverseBits(~var_0.d.b)), var_0.b.a.x);
    let var_2 = reverseBits(-min(_wgslsmith_dot_vec4_i32(countOneBits(var_0.c), reverseBits(vec4<i32>(var_0.c.x, var_0.c.x, 2147483647i, var_0.c.x))), abs(-2147483647i)));
    let var_3 = Struct_2(973f, Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 21466u, 5504u, 50346u), vec4<u32>(6136u, var_1.c, 9338u, 1u)), 0u) >> ((vec2<u32>(1u, var_1.b.x) | ~vec2<u32>(var_0.d.b.x, 4294967295u)) % vec2<u32>(32u)), ~global0.b, ~_wgslsmith_add_u32(1u, _wgslsmith_div_u32(0u, arg_3))), var_0.c, Struct_1(vec2<u32>(4294967295u, countOneBits(1u)), _wgslsmith_div_vec3_u32(u_input.b, u_input.b), 4294967295u));
    return var_3.b;
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    global0 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2248f * 603f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f))))), ~u_input.a, global0.a.x);
    let var_1 = global0.b.zy;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 16532u), global0.b), ~(~u_input.a | 4294967295u)), _wgslsmith_mult_vec3_u32(~countOneBits(firstTrailingBit(vec3<u32>(46092u, global0.a.x, var_1.x))), vec3<u32>(global0.c, ~(~global0.a.x), ~(~15448u))), u_input.a);
    global0 = Struct_1(var_2.a, var_2.b, _wgslsmith_add_u32(~10998u, ~abs(global0.b.x ^ 4294967295u)));
    return Struct_1(vec2<u32>(var_2.c, min(_wgslsmith_sub_u32(var_2.c, 1u), firstLeadingBit(var_2.c))), vec3<u32>(0u, var_0, firstLeadingBit(~36303u & var_0)), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = ~_wgslsmith_div_u32(~arg_1.b.x, global0.c);
    global0 = arg_1;
    let var_2 = Struct_2(960f, func_1(), -countOneBits(select(vec4<i32>(26966i, -1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.c.x), vec4<bool>(true, true, true, true))), func_1());
    let var_3 = var_2;
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_3.a - 611f), _wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(var_2.a * -949f), 249f)))), _wgslsmith_f_op_f32(1023f + var_2.a), 14008u, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(global0.b, ~vec3<u32>(~_wgslsmith_mult_u32(u_input.a, 27153u), ~global0.a.x, global0.b.x));
    global0 = func_4(Struct_1(vec2<u32>(1u, _wgslsmith_add_u32(1u, ~global0.a.x)), vec3<u32>(~countOneBits(17039u), 1u, ~(~global0.b.x)), global0.a.x), func_1());
    global0 = Struct_1(var_0.xz, vec3<u32>(var_0.x, _wgslsmith_sub_u32(~u_input.b.x, var_0.x), ~global0.c), ~firstLeadingBit(0u));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1190f - -422f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f))), 1000f, 963f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1155f, -271f, -1023f, 2030f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1732f, 142f, -219f, 1052f))))))));
    global0 = Struct_1(func_1().b.yx, vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.xz, _wgslsmith_sub_vec2_u32(u_input.b.yy, global0.b.zx)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.a, var_0.yx, vec2<u32>(u_input.b.x, global0.a.x)), vec2<u32>(var_0.x, var_0.x)) % 32u), func_3(Struct_2(var_1.x, Struct_1(vec2<u32>(var_0.x, var_0.x), u_input.b, u_input.b.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(global0.b.yy, vec3<u32>(0u, global0.a.x, 0u), global0.a.x)), Struct_2(var_1.x, Struct_1(vec2<u32>(global0.b.x, 4294967295u), vec3<u32>(1u, 38554u, var_0.x), u_input.b.x), select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 1i), true), Struct_1(global0.a, global0.b, 94905u)), Struct_1(global0.a << (vec2<u32>(var_0.x, 556u) % vec2<u32>(32u)), ~global0.b, ~global0.b.x), Struct_2(-664f, Struct_1(vec2<u32>(4294967295u, 61473u), global0.b, var_0.x), abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(vec2<u32>(u_input.b.x, var_0.x), vec3<u32>(79089u, 4294967295u, global0.b.x), var_0.x))).x, 132531u), _wgslsmith_sub_u32(25596u, var_0.x));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, 398f, 243f), vec4<bool>(false, false, true, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-779f, var_1.x, 1913f, var_1.x), vec4<f32>(var_1.x, var_1.x, 717f, var_1.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 229f, -353f, var_1.x), vec4<f32>(1601f, var_1.x, -1000f, var_1.x)))))));
    let var_2 = Struct_1(~global0.a, reverseBits(~firstLeadingBit(func_4(Struct_1(vec2<u32>(global0.a.x, u_input.a), vec3<u32>(u_input.b.x, 1u, 4294967295u), 1u), Struct_1(u_input.b.zy, vec3<u32>(10851u, 5022u, 4294967295u), 4294967295u)).b)), firstLeadingBit(0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zw) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.xw + vec2<f32>(var_1.x, var_1.x))))))), u_input.c.x, ~vec3<u32>(_wgslsmith_mod_u32(var_0.x, u_input.b.x), 3300u, 0u >> (0u % 32u)), u_input.b.x, 811f);
}

