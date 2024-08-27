struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!(!select(select(arg_0.a, arg_0.a, arg_0.a), arg_0.a, true)), arg_0.c, arg_0.c);
    var var_1 = false;
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(29895i ^ -u_input.a, ~1i)), -46825i);
    global0 = array<vec4<bool>, 15>();
    var var_3 = arg_0;
    return Struct_1(var_3.a, var_0.c, var_0.c);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), 1248f, _wgslsmith_div_f32(-996f, 2473f)), Struct_1(select(vec3<bool>(true, all(vec2<bool>(true, false)), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, -40753i <= u_input.a, func_2(Struct_1(vec3<bool>(true, true, true), -1000f, 257f)).a.x)), _wgslsmith_f_op_f32(f32(-1f) * -271f), func_2(func_2(func_2(Struct_1(vec3<bool>(true, true, false), 872f, -1653f)))).b), Struct_1(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-290f, -1139f))), _wgslsmith_f_op_f32(-242f * _wgslsmith_f_op_f32(round(1000f)))), -504f), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u), vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x)) | vec4<u32>(arg_0.x << (4294967295u % 32u), arg_0.x, select(abs(arg_0.x), ~arg_0.x, true), ~(~4294967295u)));
    let var_1 = !vec2<bool>(any(select(select(vec3<bool>(var_0.a.a.x, var_0.b.a.x, false), var_0.c.a, var_0.a.a), var_0.b.a, all(var_0.b.a.zy))), !((var_0.c.a.x != var_0.a.a.x) != var_0.a.a.x));
    global0 = array<vec4<bool>, 15>();
    let var_2 = var_0.c;
    var_0 = Struct_2(func_2(func_2(var_0.c)), var_0.a, Struct_1(vec3<bool>(false, var_2.a.x, func_2(func_2(var_0.a)).a.x), -1609f, 905f), _wgslsmith_mult_vec4_u32(abs(select(var_0.d, countOneBits(var_0.d), false)), var_0.d));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -580f), var_2.c)) + -742f), _wgslsmith_f_op_f32(327f - -131f));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = func_2(arg_0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.b.b)))) + _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-arg_2))), -257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.d.zzy))), func_2(func_2(arg_0.b)).c));
    var var_2 = 1u;
    let var_3 = Struct_2(Struct_1(vec3<bool>(any(arg_0.c.a.zx) || false, any(vec4<bool>(true, var_0.a.x, var_0.a.x, true)), all(var_0.a.zy)), 1f, arg_0.a.b), func_2(func_2(func_2(arg_0.c))), func_2(arg_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~(~arg_0.d.x), arg_0.d.x, 1u), ~vec4<u32>(arg_0.d.x, _wgslsmith_div_u32(arg_0.d.x, 25358u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, 3073u), vec2<u32>(41345u, 51400u)))));
    var var_4 = !(!var_0.a);
    return -1574f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(801f * 1879f))) + -167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(false, true, false), 898f, -654f), Struct_1(vec3<bool>(true, true, false), 1000f, 817f), Struct_1(vec3<bool>(true, true, true), -1373f, -1893f), vec4<u32>(0u, 0u, 0u, 0u)), vec2<f32>(-597f, 422f), 615f, u_input.a)) - func_2(Struct_1(vec3<bool>(true, false, true), -103f, -604f)).c)))), -364f, -1812f, _wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(false, true, false), 1292f, -1110f), Struct_1(vec3<bool>(true, true, true), -1628f, 504f), Struct_1(vec3<bool>(false, true, true), -211f, 729f), vec4<u32>(95329u, 16112u, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(620f, -438f), vec2<f32>(-418f, -919f), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-1467f + -1000f), _wgslsmith_sub_i32(13589i, u_input.a))))));
    global0 = array<vec4<bool>, 15>();
    let var_1 = vec4<bool>(true, !(true | (~0i > u_input.a)), !(1u != ~select(125468u, 0u, true)), true);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63666u, abs(~54414u)), abs(select(vec2<u32>(11719u, 32416u), vec2<u32>(1u, 4294967295u), vec2<bool>(var_1.x, var_1.x))) ^ ~(~vec2<u32>(0u, 100810u))), abs(max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)))));
    var_2 = 4294967295u;
    let var_3 = Struct_2(func_2(Struct_1(vec3<bool>(true, any(vec3<bool>(var_1.x, var_1.x, false)), all(vec3<bool>(true, var_1.x, var_1.x))), var_0.x, var_0.x)), Struct_1(var_1.zww, var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(1099f, -935f)))), func_2(Struct_1(select(func_2(Struct_1(vec3<bool>(false, true, false), 1000f, var_0.x)).a, var_1.xww, select(vec3<bool>(true, var_1.x, false), var_1.xzx, var_1.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(false, true, true), 1088f, 321f), Struct_1(var_1.yyx, var_0.x, -536f), Struct_1(vec3<bool>(false, var_1.x, var_1.x), -494f, var_0.x), vec4<u32>(14038u, 1u, 26499u, 1u)), var_0.wz, 1185f, -1i))))), _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 100260u, 0u, 4294967295u), vec4<u32>(4294967295u, 35791u, 14146u, 1u)), ~(~41243u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var_2 = ~(~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_3.d.x, 1u), _wgslsmith_sub_u32(24010u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(-583f, var_3.c.b)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -636f), -1188f))))), vec3<i32>(reverseBits(~u_input.a), ~u_input.a, 2147483647i << (~(~var_3.d.x) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zzw + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2155f, var_0.x) + vec3<f32>(var_3.a.c, 444f, 1077f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 758f, var_3.c.b)))))), var_0.zx);
}

