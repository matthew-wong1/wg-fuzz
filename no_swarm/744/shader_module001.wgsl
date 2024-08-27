struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(740f - -207f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1825f, -586f), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 1277f), _wgslsmith_f_op_f32(select(-316f, -1066f, true))))), 1849f));
    global0 = vec2<u32>(~(~23514u << (global0.x % 32u)), 16648u);
    return all(!vec3<bool>(-u_input.b <= u_input.b, all(vec2<bool>(true, false)), false));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, u_input.c, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 88658u, 24469u), vec3<u32>(370u, u_input.c, global0.x))), ~((vec3<u32>(1u, 0u, u_input.c) >> (vec3<u32>(0u, global0.x, u_input.c) % vec3<u32>(32u))) << (~vec3<u32>(0u, global0.x, u_input.c) % vec3<u32>(32u))), vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), Struct_1(vec3<bool>(true, true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec3<u32>(_wgslsmith_mod_u32(1553u, global0.x), ~4294967295u, 6938u)), arg_0.x), true & (abs(-8230i) < (1i << (select(5256u, global0.x, false) % 32u))), ~(~min(u_input.a, vec3<i32>(0i, -1i, arg_0.x))) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, global0.x, u_input.c), vec3<u32>(~global0.x, ~u_input.c, 4294967295u << (u_input.c % 32u))) % vec3<u32>(32u)), false);
    let var_1 = var_0.a.e;
    let var_2 = !select(!vec4<bool>(var_0.a.d.b.x, !var_0.b, var_0.d, false), select(vec4<bool>(true, var_0.a.c.x, false, var_0.a.c.x), vec4<bool>(var_0.a.d.a.x, true, true, var_0.d & var_0.b), func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), var_0.a.a, vec3<u32>(0u, u_input.c, 72186u)))), true);
    let var_3 = _wgslsmith_f_op_f32(ceil(1f));
    global0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15845u, u_input.c) >> (vec3<u32>(var_0.a.b.x, var_0.a.b.x, u_input.c) % vec3<u32>(32u)), var_0.a.a), var_0.a.b.x);
    return Struct_4(Struct_2(~var_0.a.d.c, ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b.x, 14957u, 73224u), var_0.a.a) & abs(abs(vec3<u32>(u_input.c, 0u, 31505u))), !select(vec2<bool>(false, var_2.x), !var_2.xx, vec2<bool>(var_0.b, false)), var_0.a.d, 18460i), var_2.x, countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.e, arg_0.x, 0i), vec3<i32>(arg_0.x, 7899i, -46017i)) ^ vec3<i32>(abs(var_0.c.x), arg_0.x, 13773i)), true & select(!var_0.d, true || (var_2.x || true), (u_input.c < u_input.c) & false));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = func_2(-_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-13704i, arg_2.x, -1i, -6398i), vec4<i32>(-1590i, u_input.b, arg_2.x, 510i)), ~vec4<i32>(0i, u_input.b, u_input.b, 0i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(776f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1269f))) * 1461f)), _wgslsmith_f_op_f32(round(1187f)), -530f, _wgslsmith_f_op_f32(floor(-110f)));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) + 265f), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.x)), 164f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(763f, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(741f, -142f)))))));
    return ~var_0.a.a >> (arg_1.c % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = abs(~vec2<u32>(~u_input.c, 86418u)) | ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.x) >> (vec2<u32>(24225u, 1u) % vec2<u32>(32u)), ~vec2<u32>(32148u, 17804u)));
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(~(~4294967295u), 70468u), global0.x, global0.x ^ 1u), _wgslsmith_add_vec3_u32(min(func_1(vec4<u32>(6908u, 1u, u_input.c, 4294967295u), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<u32>(25338u, 1u, global0.x)), u_input.a.xz), ~vec3<u32>(u_input.c, u_input.c, global0.x)), ~(~vec3<u32>(1u, u_input.c, global0.x))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 10390u), vec3<u32>(1714u, 14716u, 23672u)), vec3<u32>(30886u, 3558u, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u), 0u, _wgslsmith_clamp_u32(6787u, u_input.c, global0.x))), select(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true))), false), func_2(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, u_input.b, u_input.b, -51735i), vec4<i32>(var_0, 8800i, u_input.b, -39813i)))).a.d, _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, ~0i), reverseBits(1i)));
    var var_2 = Struct_3(select(vec4<bool>(false, any(var_1.c), true, true), vec4<bool>(!var_1.c.x & var_1.d.a.x, any(vec2<bool>(var_1.c.x, false)), u_input.b <= (u_input.a.x ^ -17290i), true), true), var_1.a.x);
    let var_3 = select(!var_2.a.xxy, !(!var_2.a.wzy), select(!(!(!var_1.d.a)), select(var_2.a.wzw, select(var_1.d.a, !vec3<bool>(true, var_2.a.x, true), false), var_1.c.x), var_1.d.a));
    var var_4 = 140515u;
    let var_5 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1959f), _wgslsmith_f_op_f32(trunc(1370f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2102f, 1000f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-178f, 376f, -782f)))))), vec2<u32>(~var_1.a.x, global0.x & u_input.c));
}

