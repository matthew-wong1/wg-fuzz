struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(~(-1i), arg_0.b >> ((arg_0.b | firstTrailingBit(vec3<u32>(96740u, 77167u, 30175u))) % vec3<u32>(32u)));
    var var_1 = Struct_3(!vec4<bool>(!arg_1.b.x, false, true, _wgslsmith_f_op_f32(f32(-1f) * -418f) > _wgslsmith_f_op_f32(step(527f, -773f))), Struct_2(!arg_1.a, !arg_1.b, max(arg_1.c, 22745u), 14794u), var_0, vec3<u32>(_wgslsmith_add_u32(1u, abs(arg_0.b.x) & arg_0.b.x), ~arg_0.b.x, 1u));
    var var_2 = arg_1;
    let var_3 = countOneBits(select(select(~(~vec4<u32>(16250u, var_0.b.x, 4294967295u, arg_0.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(var_1.d.x, var_2.d, 25308u, var_0.b.x)), !var_1.a.x | true), _wgslsmith_div_vec4_u32(~vec4<u32>(16911u, 4294967295u, 0u, 3746u) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, 1115u, 25918u), vec4<u32>(var_1.c.b.x, var_1.d.x, var_2.c, 23543u)), vec4<u32>(1u, 0u, 1u, var_2.c) & _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, 618u, var_1.d.x, 1u), vec4<u32>(88339u, 31558u, var_1.b.c, arg_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(440f - -1397f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), 1f)));
    var_1 = Struct_3(var_2.a, Struct_2(select(vec4<bool>(all(var_2.b), arg_1.a.x, true, !var_1.b.a.x), var_2.a, false), var_2.b, 1u, ~55613u), Struct_1(~(~countOneBits(-1i)), ~vec3<u32>(~27255u, var_2.c, _wgslsmith_mod_u32(var_0.b.x, 1u))), vec3<u32>(_wgslsmith_mod_u32(1u, var_1.c.b.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.b.x, ~var_1.d.x, var_1.d.x), abs(arg_0.b.x | 4294967295u)), 0u));
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(-13991i & (u_input.a.x ^ u_input.b), ~_wgslsmith_sub_i32(-1i, u_input.b), abs(i32(-1i) * -23865i), func_3(Struct_1(u_input.a.x, vec3<u32>(4294967295u, 1u, 14668u)), Struct_2(vec4<bool>(false, false, true, true), vec2<bool>(false, false), 46735u, 0u)))), u_input.a);
    var_0 = firstTrailingBit(-_wgslsmith_mult_vec4_i32(-vec4<i32>(-3142i, u_input.a.x, var_0.x, u_input.b), select(~u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, u_input.a), true)));
    var_0 = ~u_input.a;
    var var_1 = Struct_3(vec4<bool>(true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true)) | any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true)), !any(vec2<bool>(false, false))), Struct_2(vec4<bool>(true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false), select(vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), !all(vec3<bool>(true, false, true))), 1u, ~(~reverseBits(0u))), Struct_1(_wgslsmith_mod_i32(max(max(u_input.b, u_input.b), -var_0.x), countOneBits(u_input.a.x) | -11485i), min(vec3<u32>(_wgslsmith_div_u32(0u, 144824u), ~0u, select(89608u, 4294967295u, false)), ~countOneBits(vec3<u32>(0u, 9567u, 0u)))), abs(vec3<u32>(1u, 1u, 1u)));
    let var_2 = var_1.c;
    return Struct_1(_wgslsmith_dot_vec2_i32(select(-var_0.xx, vec2<i32>(-u_input.b, 28282i), !var_1.a.x || select(var_1.a.x, true, var_1.b.b.x)), vec2<i32>(_wgslsmith_div_i32(~15860i, _wgslsmith_add_i32(-14748i, var_0.x)), firstLeadingBit(-1i))), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, var_2.b.x, 74201u)) & var_2.b, select(~vec3<u32>(16123u, 0u, var_1.c.b.x), ~vec3<u32>(var_2.b.x, 29629u, var_2.b.x), select(var_1.a.wyw, vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.a.x), false))), var_1.d.x, ~_wgslsmith_sub_u32(~1u, var_1.c.b.x >> (4294967295u % 32u))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = u_input.a.x;
    let var_1 = !vec2<bool>(true | !(arg_0.b.a.x | false), true);
    var var_2 = Struct_3(!select(select(arg_0.b.a, select(arg_0.a, arg_0.b.a, vec4<bool>(false, false, arg_1.b.x, false)), select(arg_0.a, arg_1.a, true)), arg_1.a, arg_0.b.a), arg_1, func_2(), vec3<u32>(274u, _wgslsmith_clamp_u32(firstTrailingBit(arg_1.d << (45219u % 32u)), arg_1.d, arg_0.b.d), ~arg_1.c));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-316f, 126f, -936f, -2383f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1164f, 469f, -573f, 1681f), vec4<f32>(-166f, 1000f, -448f, -202f))))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(705f + 1249f))) + _wgslsmith_f_op_f32(max(-119f, 1519f))), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-1f), -510f));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), Struct_2(select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, true), vec4<bool>(true, true, true, true), func_1(Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec4<bool>(true, true, true, true), vec2<bool>(false, true), 29693u, 0u), Struct_1(-3315i, vec3<u32>(4294967295u, 4294967295u, 5553u)), vec3<u32>(1u, 1u, 0u)), Struct_2(vec4<bool>(false, true, true, false), vec2<bool>(false, false), 50639u, 72738u))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), ~firstLeadingBit(1u), select(3051u, 11668u, !any(vec2<bool>(false, true)))), Struct_1(u_input.a.x >> (~1u % 32u), vec3<u32>(_wgslsmith_clamp_u32(1u, 50591u, 1u), countOneBits(func_2().b.x), 1u)), abs(countOneBits(max(vec3<u32>(32985u, 1u, 54636u), vec3<u32>(1u, 40294u, 50817u)))) | vec3<u32>(~countOneBits(42611u), ~(1u >> (0u % 32u)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(55365u, 14034u), vec2<u32>(4294967295u, 1u)))));
    var_0 = min(1i, u_input.a.x);
    var_0 = -3562i;
    let var_2 = Struct_3(var_1.a, Struct_2(var_1.a, vec2<bool>(!var_1.a.x != true, all(vec3<bool>(false, var_1.a.x, false))), ~abs(_wgslsmith_mult_u32(1u, var_1.c.b.x)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_1.b.d, var_1.b.d)), var_1.c.b.yz)), func_2(), abs(abs(var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -max(u_input.a.wwx, vec3<i32>(7368i, 14975i, var_2.c.a)), vec3<i32>(-1i) * -u_input.a.yyx), ~(((vec4<u32>(var_2.d.x, 0u, var_1.b.c, var_2.c.b.x) >> (vec4<u32>(var_1.c.b.x, 4648u, 4294967295u, var_2.d.x) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, 16256u, var_2.c.b.x, var_1.c.b.x)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.c, 0u, 1u, 1u), vec4<u32>(var_2.d.x, 28300u, 51605u, 1u)), firstTrailingBit(vec4<u32>(var_2.b.c, var_1.b.d, 10684u, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-707f, _wgslsmith_f_op_f32(min(1000f, 802f)), _wgslsmith_f_op_f32(f32(-1f) * -401f), -2568f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, 137f, 421f, 601f)) + vec4<f32>(-700f, 238f, -242f, 476f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, -1033f, 835f, -356f) - vec4<f32>(-1032f, 544f, 109f, -622f)), vec4<f32>(294f, -463f, -750f, -1050f), select(vec4<bool>(true, var_1.a.x, true, var_1.a.x), vec4<bool>(var_2.b.b.x, var_1.b.b.x, var_1.a.x, var_2.b.b.x), vec4<bool>(true, true, var_1.b.a.x, var_2.b.b.x)))))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, -(~var_1.c.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i >> (1u % 32u), -276i, 1i), -vec3<i32>(-52039i, 0i, u_input.b)), ~1i, _wgslsmith_div_i32(-1i, u_input.a.x)));
}

