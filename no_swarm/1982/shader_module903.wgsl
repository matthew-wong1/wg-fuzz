struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -15196i;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(arg_1.a, (arg_1.a <= abs(u_input.a)) | arg_3.b, true, 1u, _wgslsmith_f_op_f32(floor(1000f)));
    var var_1 = arg_1;
    global1 = ~(~countOneBits(i32(-1i) * -27027i) >> (_wgslsmith_mult_u32(abs(arg_3.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d, var_0.d, arg_2, 1u), vec4<u32>(arg_2, 1u, 74209u, var_1.d)), vec4<u32>(var_1.d, 46819u, 0u, arg_3.a.x))) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.c, var_1.e) + vec2<f32>(-1003f, var_0.e)) * vec2<f32>(-244f, -1119f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.e, -235f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1297f, var_1.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.e, 1000f))) + vec2<f32>(arg_1.e, var_0.e))), arg_3.e.xz)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c), -959f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-537f, arg_1.e)))))))));
    let var_3 = Struct_2(43752i, any(arg_3.e.xz), arg_2 == ~(~_wgslsmith_mult_u32(var_1.d, arg_2)), ~(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * -107f)));
    return reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.d, var_3.d & arg_1.d, 3681u), vec3<u32>(~4294967295u, arg_1.d & var_3.d, ~(1u ^ arg_3.a.x))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global0 = 1u;
    global0 = _wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(1u, 1u, 1u))), ~(~abs(vec3<u32>(0u, 4294967295u, 0u)))) | countOneBits(_wgslsmith_mult_u32(1u, 8017u));
    let var_0 = Struct_1(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 51624u), vec3<u32>(91459u, 31539u, 4294967295u)), vec3<u32>(1u, 1u, 1u), false), vec3<u32>(40812u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(26218u, 1u), vec2<u32>(1u, 4488u))))), false, 2105f, ~(~_wgslsmith_add_u32(~72018u, _wgslsmith_dot_vec4_u32(vec4<u32>(49148u, 4294967295u, 4294967295u, 1u), vec4<u32>(17509u, 31667u, 24819u, 1u)))), !(!select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), !vec3<bool>(true, arg_0.x, true))));
    var var_1 = u_input.a;
    var var_2 = Struct_2(-4148i, var_0.e.x || true, select(true, ((24218u << (var_0.d % 32u)) << (30446u % 32u)) == select(4294967295u | var_0.d, func_2(vec3<i32>(u_input.a, 2147483647i, u_input.a), Struct_2(-2147483647i, arg_0.x, arg_0.x, 1u, 224f), var_0.a.x, var_0).x, any(vec4<bool>(arg_0.x, false, false, var_0.b))), all(arg_0)), ~(~min(~1u, 4294967295u << (0u % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) * var_0.c)), 281f)));
    return ~38190u;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(0u, 1u, ~_wgslsmith_dot_vec3_u32(func_2(vec3<i32>(-1i, -54109i, 34671i), Struct_2(2147483647i, false, true, 1u, -919f), 0u, Struct_1(vec2<u32>(4294967295u, 2575u), true, 1641f, 1u, vec3<bool>(true, false, true))) << (abs(vec3<u32>(1u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 0u, 1u))), 1u);
    global0 = ~(~(var_0.x | var_0.x)) >> (((_wgslsmith_dot_vec3_u32(~var_0.xyx, var_0.yww & vec3<u32>(var_0.x, 5945u, var_0.x)) ^ ~func_3(vec2<bool>(false, true))) << (_wgslsmith_mod_u32(94055u, ~(~34472u)) % 32u)) % 32u);
    var var_1 = Struct_1(var_0.xy, true, -172f, min(reverseBits(75310u) | var_0.x, ~(~var_0.x)), !vec3<bool>(false, false, select(any(vec3<bool>(true, true, true)), true, true)));
    return Struct_1(min(var_1.a << (~var_1.a % vec2<u32>(32u)), var_1.a), !(!(!(var_1.c >= 1128f))), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(362f, var_1.c), var_1.c)))), min(4294967295u, _wgslsmith_mult_u32(~(~var_0.x), 14341u)), !vec3<bool>(!(true && var_1.b), all(var_1.e) || var_1.e.x, !any(vec4<bool>(var_1.b, var_1.e.x, var_1.b, var_1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !(!vec2<bool>(_wgslsmith_div_i32(u_input.a, 2147483647i) > u_input.a, !var_0.b));
    var var_2 = _wgslsmith_f_op_f32(floor(var_0.c));
    var var_3 = !var_1.x;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(-var_0.c)));
    global0 = select(var_0.a.x, _wgslsmith_mod_u32(var_0.d, _wgslsmith_sub_u32(_wgslsmith_div_u32(func_1().a.x, 1u), ~(4294967295u >> (var_0.a.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), var_0.c))) != var_0.c);
    var var_4 = Struct_2(_wgslsmith_mult_i32(-2147483647i, ~u_input.a), false & all(select(select(var_1, var_0.e.xx, var_0.e.yy), var_1, vec2<bool>(var_0.e.x, false))), var_0.e.x, 4294967295u, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.c, var_0.c)), -1302f)), var_0.c));
    let var_5 = Struct_2(u_input.a, true && any(vec2<bool>(!var_1.x, true)), !var_1.x, 56552u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_4.e)), _wgslsmith_f_op_f32(ceil(-707f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~78241u, firstLeadingBit(31961u), ~var_0.a.x) << (~select(vec3<u32>(0u, var_0.a.x, 13440u), vec3<u32>(54014u, var_0.a.x, var_0.a.x), var_0.e) % vec3<u32>(32u)), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(var_5.d, 20308u, var_5.d), vec3<u32>(var_0.d, var_5.d, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, var_4.d, var_5.d), vec3<u32>(50635u, var_5.d, 3479u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_4.e)) != var_4.e), vec4<u32>(firstLeadingBit(var_0.d), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(3394u, var_5.d, var_0.a.x, var_5.d), min(vec4<u32>(1u, var_4.d, 32921u, 0u), vec4<u32>(var_0.a.x, var_4.d, var_0.a.x, 43866u))), var_5.d, ~(~firstLeadingBit(4986u))), var_4.a);
}

