struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(964f, 2099f, -1822f, 1152f), vec4<f32>(-1000f, -466f, -152f, 640f), vec4<f32>(-674f, 115f, -536f, 585f), vec4<f32>(-212f, 821f, -497f, 1654f), vec4<f32>(-801f, 1152f, 176f, 1920f), vec4<f32>(-904f, -1066f, -1050f, 1000f), vec4<f32>(2065f, -912f, 539f, -1359f), vec4<f32>(-1110f, -1012f, -170f, -389f), vec4<f32>(-285f, -395f, 1020f, -508f), vec4<f32>(-2591f, 100f, -419f, -1446f), vec4<f32>(-525f, -766f, 1591f, -3794f), vec4<f32>(-1364f, 179f, -1123f, 801f), vec4<f32>(-1844f, -1550f, -231f, -664f), vec4<f32>(-1000f, -1112f, 1714f, -455f), vec4<f32>(-947f, -1441f, -702f, -867f), vec4<f32>(598f, 472f, -2472f, 911f), vec4<f32>(-1533f, -1657f, 107f, -598f), vec4<f32>(-581f, 324f, -168f, -584f), vec4<f32>(-132f, 1164f, 370f, -1526f), vec4<f32>(514f, -777f, -972f, 514f), vec4<f32>(-1560f, 956f, 297f, 512f), vec4<f32>(-681f, -857f, 546f, -285f));

var<private> global1: Struct_2 = Struct_2(Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = global1.a;
    return Struct_2(Struct_1(true), global1.c, Struct_1(!arg_1.b.a));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = 1u;
    var_0 = 4294967295u;
    let var_1 = countOneBits(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-10371i, u_input.a, -38109i), vec3<i32>(-18442i, u_input.a, arg_2)), ~vec3<i32>(u_input.a, 2147483647i, 2147483647i), firstTrailingBit(vec3<i32>(-52063i, 2147483647i, -18778i)))) << (max(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 67131u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u) | vec3<u32>(u_input.d, u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(u_input.d, u_input.d, 37516u) >> (vec3<u32>(19349u, u_input.b, 62432u) % vec3<u32>(32u)))), vec3<u32>(u_input.c.x, 4294967295u, 22636u)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.d, u_input.c.x, 10522u), vec3<u32>(1u, u_input.c.x, 26708u)), ~vec3<u32>(u_input.d, 1119u, u_input.b)), vec3<u32>(u_input.c.x, u_input.d, 2385u) | vec3<u32>(u_input.c.x, u_input.d, 0u))), ~23727u);
    var var_3 = -1021f;
    return u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = Struct_3(~reverseBits(u_input.c.x | 82013u) & abs(func_3(true, func_2(arg_1.a, Struct_3(arg_1.a, Struct_1(true), arg_1.c), true), -2147483647i >> (u_input.c.x % 32u), func_2(arg_1.a, Struct_3(0u, global1.b, arg_1.c), arg_1.b.a).a)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.c, arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1223f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + 1420f) - _wgslsmith_f_op_f32(min(arg_1.c, 177f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1156f)));
    let var_1 = vec3<u32>(u_input.c.x, ~_wgslsmith_div_u32(~13973u, 1u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(var_0.a, 1u, 2466u, arg_1.a), vec4<u32>(arg_1.a, 0u, arg_1.a, u_input.b)), countOneBits(vec4<u32>(0u, 4294967295u, arg_1.a, 1u))), max(vec4<u32>(arg_1.a, 44631u, 0u, u_input.c.x), vec4<u32>(58259u, 4294967295u, 4294967295u, 4499u) << (vec4<u32>(var_0.a, 0u, 1u, 1u) % vec4<u32>(32u)))));
    let var_2 = select(-vec2<i32>(~(-44714i), -28678i), vec2<i32>(u_input.a, -2147483647i), any(!vec2<bool>(any(vec4<bool>(arg_2.a, global1.b.a, arg_1.b.a, var_0.b.a)), arg_0.a)));
    global1 = Struct_2(Struct_1(!var_0.b.a), Struct_1(true), global1.b);
    let var_3 = vec3<bool>(any(select(select(vec2<bool>(var_0.b.a, arg_2.a), !vec2<bool>(false, global1.b.a), true), vec2<bool>(all(vec4<bool>(arg_0.a, true, true, var_0.b.a)), false), vec2<bool>(var_0.b.a, true))), false, true);
    return var_3.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = func_2(19574u, Struct_3(~u_input.b, Struct_1(false || (u_input.d != u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))))), all(select(select(!vec3<bool>(arg_0.a.a, global1.b.a, false), !vec3<bool>(global1.a.a, arg_0.b.a, global1.a.a), u_input.c.x <= 1u), select(vec3<bool>(arg_0.c.a, global1.c.a, global1.b.a), !vec3<bool>(false, global1.b.a, true), vec3<bool>(global1.c.a, global1.b.a, arg_0.a.a)), any(vec3<bool>(true, arg_0.b.a, arg_0.c.a)))));
    var var_0 = _wgslsmith_f_op_f32(-1622f + 950f);
    return Struct_1(func_4(global1.a, Struct_3(func_3(func_2(u_input.c.x, Struct_3(4294967295u, arg_0.b, 1511f), global1.c.a).b.a, arg_0, 2147483647i, func_2(u_input.d, Struct_3(u_input.d, arg_0.a, -150f), arg_0.b.a).a), Struct_1(!global1.c.a), 1f), func_2(firstTrailingBit(62893u), Struct_3(~u_input.b, func_2(u_input.d, Struct_3(4294967295u, arg_0.c, -1084f), global1.b.a).a, _wgslsmith_f_op_f32(-712f * -293f)), !all(vec4<bool>(false, arg_0.c.a, arg_0.c.a, arg_0.a.a))).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(global1.c, global1.c, global1.b));
    var var_1 = Struct_1(!any(select(!vec4<bool>(false, var_0.a, false, false), select(vec4<bool>(true, false, global1.a.a, global1.a.a), vec4<bool>(global1.a.a, true, false, global1.a.a), vec4<bool>(global1.a.a, false, true, global1.c.a)), global1.a.a)));
    let var_2 = -u_input.a;
    var var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -5165i, 1488i), vec4<i32>(-25882i, 1i, var_2, u_input.a))), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(8147i, -1i)), vec2<i32>(var_2, -2147483647i) << (u_input.c % vec2<u32>(32u)))), _wgslsmith_clamp_i32(-60324i, _wgslsmith_div_i32(-11529i, 1i ^ u_input.a), ~abs(-1i))));
    let var_4 = Struct_1(var_0.a);
    global0 = array<vec4<f32>, 22>();
    let var_5 = Struct_3(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(~u_input.b, ~u_input.c.x, _wgslsmith_mod_u32(7865u, 63146u), ~u_input.d)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 15653u, u_input.d, 11961u) >> (vec4<u32>(u_input.d, u_input.d, u_input.b, 12644u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, u_input.d, u_input.b, u_input.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(76523u, 0u, 26245u, 12644u), vec4<u32>(61987u, u_input.b, u_input.d, u_input.c.x), vec4<u32>(65810u, 4294967295u, u_input.c.x, u_input.c.x)) | ~vec4<u32>(25138u, 43247u, 0u, 1u))), Struct_1(true), -3518f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(var_2 >> (_wgslsmith_div_u32(u_input.d, 8505u) % 32u), countOneBits(_wgslsmith_div_i32(2147483647i, -36253i)), var_5.b.a), var_2, var_2), firstLeadingBit(var_2), firstTrailingBit(reverseBits(vec4<u32>(44588u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 23688u, 2130u), vec4<u32>(u_input.b, 1u, var_5.a, 6150u)), ~u_input.d, var_5.a))));
}

