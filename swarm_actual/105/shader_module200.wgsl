struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> bool {
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.e.x, u_input.d, ~arg_0.a.a), _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_0.a.a, arg_1.b.a, arg_1.b.a) << (arg_0.a.b % vec4<u32>(32u)), ~vec4<i32>(3748i, u_input.e.x, arg_1.a.a.a, u_input.e.x)))) ^ min(_wgslsmith_sub_i32(abs(u_input.c), -_wgslsmith_add_i32(0i, arg_0.a.a)), _wgslsmith_mult_i32(-22006i, arg_1.b.a & u_input.d));
    global1 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_0 = Struct_3(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)), any(vec2<bool>(true, true))), u_input.c, ~u_input.b, arg_0, select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(arg_1.b.a > arg_1.b.a, all(vec3<bool>(false, true, false)), all(vec2<bool>(false, false))), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)))));
    global0 = -(~firstLeadingBit(~firstTrailingBit(arg_0.a.a)));
    let var_1 = var_0;
    return any(!(!select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_1.e.x, var_0.e.x), false)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = all(select(arg_2.e, vec3<bool>((arg_2.c.x ^ 1u) != ~0u, _wgslsmith_f_op_f32(-arg_0.a.b) == arg_3.a.b, func_3(arg_2.d, Struct_4(Struct_2(Struct_1(11318i, vec4<u32>(4294967295u, 73416u, arg_2.c.x, 69930u)), arg_2.d.b), arg_2.d.a), _wgslsmith_mult_u32(arg_3.b.b.x, u_input.b.x))), select(select(arg_2.a, !vec3<bool>(false, arg_2.a.x, true), !arg_2.a), arg_2.a, any(vec2<bool>(arg_2.e.x, false)))));
    global1 = _wgslsmith_f_op_f32(458f * arg_0.a.b);
    var var_1 = arg_2.e.x;
    var_1 = var_0;
    var var_2 = countOneBits(vec3<u32>(~countOneBits(arg_2.c.x), 1u, ~(~88611u)));
    return !(!(!select(arg_2.a.xz, arg_2.a.zz, true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = ~_wgslsmith_mod_i32(arg_2.a, _wgslsmith_mod_i32(arg_2.a, firstLeadingBit(-34204i)));
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~arg_2.b.x, ~(~arg_2.b.x)), _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec2_u32(arg_2.b.yx, vec2<u32>(4294967295u, u_input.b.x))), u_input.a, countOneBits(4294967295u)), _wgslsmith_sub_u32(54087u, min(arg_2.b.x, _wgslsmith_add_u32(u_input.b.x, 4294967295u ^ u_input.b.x))), ~(~arg_2.b.x));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) - arg_0.x))) - -745f);
    var var_1 = countOneBits(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), arg_2.b ^ u_input.b), 20467u));
    var var_2 = u_input.e.x;
    return Struct_2(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -631f));
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, 497f, -305f), vec3<f32>(155f, 1249f, 790f), true)))))), !select(vec2<bool>(true, true), !func_2(Struct_4(Struct_2(Struct_1(24689i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a)), -506f), Struct_1(u_input.c, vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u))), vec2<i32>(1i, u_input.e.x), Struct_3(vec3<bool>(false, true, false), 0i, vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), Struct_2(Struct_1(u_input.d, vec4<u32>(17989u, 1u, 39486u, u_input.a)), -388f), vec3<bool>(false, false, true)), Struct_4(Struct_2(Struct_1(17531i, u_input.b), 1000f), Struct_1(u_input.e.x, u_input.b))), vec2<bool>(true, true)), Struct_1(-2147483647i, u_input.b | vec4<u32>(~36303u, u_input.b.x, u_input.a | u_input.a, u_input.a)));
    let var_1 = var_0;
    let var_2 = var_0.a.a;
    let var_3 = 70720i > var_1.a.a;
    var var_4 = Struct_4(Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 128f, -1318f), vec3<f32>(1593f, var_0.b, 807f))), func_2(Struct_4(var_0, Struct_1(var_2, var_0.a.b)), abs(u_input.e), Struct_3(vec3<bool>(var_3, true, var_3), 39659i, u_input.b, var_0, vec3<bool>(false, false, var_3)), Struct_4(Struct_2(Struct_1(u_input.c, vec4<u32>(var_0.a.b.x, var_1.a.b.x, 52539u, 0u)), 1000f), Struct_1(u_input.e.x, var_1.a.b))), var_1.a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2199f)))), Struct_1(1i, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(var_1.a.b, vec4<u32>(4294967295u, 0u, var_0.a.b.x, 0u))), ~vec4<u32>(var_1.a.b.x, 4294967295u, var_1.a.b.x, u_input.b.x))));
    return firstTrailingBit(-17665i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~u_input.e.x, -u_input.e.x, firstLeadingBit(u_input.d), ~u_input.e.x);
    let var_1 = vec4<i32>(var_0.x, (max(u_input.e.x, -2147483647i) & ~var_0.x) & var_0.x, 33088i, -2147483647i) & vec4<i32>(var_0.x, reverseBits(-(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(u_input.e.x, abs(func_1())), select(max(var_0.x, var_0.x), 2147483647i, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(200f, 911f, 287f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, 700f, 1000f) * vec3<f32>(-470f, -1718f, -263f))) + vec3<f32>(-1390f, 394f, -254f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, 1000f, -724f) * vec3<f32>(1518f, -1032f, -1000f)))), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(true, func_3(Struct_2(Struct_1(var_0.x, u_input.b), -338f), Struct_4(Struct_2(Struct_1(var_1.x, vec4<u32>(5944u, 0u, u_input.b.x, 4294967295u)), 133f), Struct_1(var_1.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 0u))), 6355u), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))))));
    let var_3 = Struct_3(!vec3<bool>(false, !all(vec4<bool>(false, false, true, false)), true), -firstTrailingBit(var_1.x >> (u_input.a % 32u)) | var_0.x, u_input.b, Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, var_2.x)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1149f)), vec2<bool>(true, true), Struct_1(u_input.d, u_input.b)).a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)));
    var_0 = ~(-var_1);
    var var_4 = vec2<bool>(!var_3.e.x, any(vec3<bool>(any(!vec4<bool>(var_3.e.x, var_3.a.x, false, var_3.e.x)), true | !var_3.e.x, all(select(var_3.e.xy, var_3.e.zy, true)))));
    let var_5 = Struct_4(var_3.d, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -607f, var_3.d.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(357f, var_3.d.b, 1108f) - vec3<f32>(var_2.x, -1155f, var_3.d.b)))), var_3.e.zx, Struct_1(_wgslsmith_sub_i32(0i, var_0.x), vec4<u32>(~var_3.d.a.b.x, _wgslsmith_add_u32(u_input.b.x, 37117u), _wgslsmith_clamp_u32(u_input.b.x, 0u, 4294967295u), firstTrailingBit(u_input.a)))).a);
    global0 = _wgslsmith_add_i32(1i, min(u_input.e.x, 1i));
    var_4 = !var_3.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3.d.b, -2718f, false)), _wgslsmith_f_op_f32(var_5.a.b + 163f))))), -322f, _wgslsmith_f_op_f32(ceil(var_3.d.b))), _wgslsmith_div_u32(_wgslsmith_mult_u32(max(0u, firstTrailingBit(59439u)), var_5.a.a.b.x), _wgslsmith_div_u32(var_5.a.a.b.x >> (4294967295u % 32u), var_5.b.b.x)));
}

