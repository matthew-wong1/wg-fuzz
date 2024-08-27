struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1 = Struct_1(-41944i, 39361u, vec2<bool>(true, true));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0i, 4294967295u, vec2<bool>(true, false)), Struct_1(i32(-2147483648), 0u, vec2<bool>(false, true)), Struct_1(1i, 0u, vec2<bool>(true, false)), Struct_1(i32(-2147483648), 13571u, vec2<bool>(true, false)), Struct_1(-1i, 18089u, vec2<bool>(false, true)), Struct_1(32453i, 4294967295u, vec2<bool>(false, false)), Struct_1(166i, 0u, vec2<bool>(false, false)), Struct_1(i32(-2147483648), 13152u, vec2<bool>(false, false)), Struct_1(0i, 4294967295u, vec2<bool>(false, true)), Struct_1(2147483647i, 47263u, vec2<bool>(true, false)), Struct_1(8911i, 0u, vec2<bool>(true, false)), Struct_1(5298i, 50797u, vec2<bool>(true, false)), Struct_1(-333i, 51079u, vec2<bool>(false, false)), Struct_1(-16232i, 17709u, vec2<bool>(true, false)), Struct_1(0i, 48456u, vec2<bool>(false, true)), Struct_1(-1i, 20126u, vec2<bool>(true, true)), Struct_1(2147483647i, 0u, vec2<bool>(true, true)), Struct_1(-5887i, 1u, vec2<bool>(false, true)), Struct_1(-23254i, 26243u, vec2<bool>(false, true)), Struct_1(49026i, 17237u, vec2<bool>(true, false)), Struct_1(1i, 1u, vec2<bool>(false, true)), Struct_1(2147483647i, 1u, vec2<bool>(false, false)), Struct_1(28423i, 86645u, vec2<bool>(false, false)), Struct_1(571i, 0u, vec2<bool>(false, true)), Struct_1(-12601i, 1u, vec2<bool>(false, false)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = countOneBits(~vec4<u32>(global1.b, 67222u, arg_1, ~(~4294967295u)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1094f, -225f) - vec2<f32>(-1603f, 629f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1925f, 367f), vec2<f32>(368f, -1061f), global1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1285f, 850f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2046f, 754f) * vec2<f32>(509f, 779f))))), vec2<f32>(-2610f, _wgslsmith_f_op_f32(f32(-1f) * -215f)), false)));
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0, var_0), 25u)];
    let var_2 = var_0;
    global2 = array<Struct_1, 25>();
    return select(global1.c, select(select(select(!arg_2.wz, arg_2.zz, !arg_2.zy), select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(global1.c.x, arg_2.x), global1.c.x), vec2<bool>(true, true)), vec2<bool>(!(u_input.a.x < var_0.x), !any(arg_2)), true), global1.c.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_1(-(~2147483647i), global1.b, vec2<bool>(!global1.c.x, any(vec2<bool>(false, false))));
    var var_1 = global1.a;
    global0 = global1.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f - 521f) - _wgslsmith_div_f32(644f, -1776f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 + arg_0)))), arg_0));
    let var_3 = !global1.c.x;
    return !select(!vec2<bool>(!arg_2.c.x, false), !func_3(vec4<i32>(arg_3, arg_3, arg_3, arg_2.a), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), select(vec4<bool>(arg_2.c.x, arg_2.c.x, false, arg_1.c.x), vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x)), any(select(vec3<bool>(var_0.c.x, true, arg_2.c.x), select(vec3<bool>(true, arg_1.c.x, false), vec3<bool>(true, arg_2.c.x, var_0.c.x), var_0.c.x), false)));
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 25>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, max(_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.b, global1.b), u_input.a.x), firstTrailingBit(~abs(global1.b)))), 25u)];
    global1 = Struct_1(-1i, _wgslsmith_div_u32(u_input.a.x, 39113u), select(vec2<bool>(!(var_0.c.x | false), true || (false | global1.c.x)), !select(!vec2<bool>(false, global1.c.x), global1.c, vec2<bool>(false, false)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1076f), global2[_wgslsmith_index_u32(var_0.b, 25u)], Struct_1(global1.a, _wgslsmith_div_u32(0u, u_input.b), vec2<bool>(true, global1.c.x)), global1.a)));
    var var_1 = func_2(2025f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(var_0.b, 25u)], _wgslsmith_add_i32(-23804i, u_input.c)).x;
    let var_2 = vec2<bool>(all(select(vec4<bool>(global1.c.x, all(vec4<bool>(var_0.c.x, false, false, global1.c.x)), false, true), !select(vec4<bool>(var_0.c.x, true, true, true), vec4<bool>(var_0.c.x, global1.c.x, var_0.c.x, false), vec4<bool>(global1.c.x, global1.c.x, var_0.c.x, global1.c.x)), !(!vec4<bool>(var_0.c.x, false, global1.c.x, true)))), var_0.c.x);
    return select(~(-1i), global1.a, false) & _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -u_input.c, ~var_0.a, _wgslsmith_clamp_i32(1i, 1i, -15394i)), vec4<i32>(var_0.a, ~var_0.a, _wgslsmith_div_i32(u_input.c, u_input.c), ~var_0.a) | ((vec4<i32>(11629i, -19931i, 2147483647i, u_input.c) >> (vec4<u32>(global1.b, u_input.b, 83085u, 4294967295u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, u_input.c, 42422i, var_0.a), vec4<i32>(u_input.c, u_input.c, -18118i, 379i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 25u)];
    global1 = Struct_1(0i, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, var_0.b, u_input.a.x & global1.b), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.b, 31977u, var_0.b), global1.b) | u_input.b), vec2<bool>(global1.c.x, !any(!vec4<bool>(global1.c.x, var_0.c.x, var_0.c.x, var_0.c.x))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(-128f, -707f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, _wgslsmith_f_op_f32(1000f - 604f))))))));
    let var_3 = all(!vec4<bool>(true, true, any(var_0.c), !(var_0.b <= global1.b)));
    let var_4 = max(_wgslsmith_add_vec4_u32((~vec4<u32>(var_0.b, global1.b, global1.b, global1.b) >> (~vec4<u32>(global1.b, 77091u, u_input.b, 73331u) % vec4<u32>(32u))) | ~(vec4<u32>(116340u, global1.b, 44580u, 1u) << (vec4<u32>(0u, 14580u, var_0.b, u_input.b) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(var_0.b, 4294967295u, global1.b, 0u) | ~vec4<u32>(global1.b, 0u, global1.b, u_input.b))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, global1.b, var_0.b), vec4<u32>(var_0.b, u_input.a.x, 62467u, u_input.a.x)), min(vec4<u32>(69718u, global1.b, 24687u, u_input.b), vec4<u32>(1u, u_input.b, 52252u, 17161u))), countOneBits(vec4<u32>(u_input.a.x, 2517u, global1.b, 8247u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(-1i, firstTrailingBit(-u_input.c)), func_1(), -47970i, u_input.c), ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(10991u, global1.b), select(59907u, 26899u, var_3)) << (4294967295u % 32u)), _wgslsmith_mod_u32(0u, u_input.a.x), ~10257u);
}

