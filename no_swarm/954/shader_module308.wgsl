struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, true, true, true, true, true, false, false, true, true, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -1533f))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-896f, 2487f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(699f, arg_0) - vec2<f32>(arg_0, arg_0)), all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, global0[_wgslsmith_index_u32(30108u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])))))))));
    var var_1 = Struct_1(1u >> (~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 44264u)), max(vec2<u32>(0u, 4294967295u), vec2<u32>(84070u, 17276u))) % 32u), -1000f, arg_0, true, _wgslsmith_f_op_f32(step(-780f, -1301f)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_1(_wgslsmith_sub_u32(1u, ~56680u << (countOneBits(0u << (var_1.a % 32u)) % 32u)), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(202f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * arg_0)) + _wgslsmith_f_op_f32(-var_0.x)), false, -626f);
    let var_4 = _wgslsmith_f_op_f32(sign(164f));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(763f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_3.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 999f)));
    var_1 = _wgslsmith_f_op_f32(-1500f - arg_2.x);
    var var_2 = -2251f;
    var var_3 = arg_1;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, var_3.a, 36939u) & vec3<u32>(1u, arg_0.a, 48224u)), vec3<u32>(1u, max(_wgslsmith_add_u32(var_3.a, 4294967295u), 30314u), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.a, 4294967295u), ~57289u))), ~countOneBits(arg_1.a), min(0u, 0u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a, arg_3.a, 57820u), vec3<u32>(arg_0.a, arg_0.a, arg_1.a))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = ~(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 1u, arg_2.a)), countOneBits(vec3<u32>(arg_2.a, 4294967295u, arg_1.a))) << (abs(func_4(arg_2, arg_2, _wgslsmith_f_op_vec2_f32(func_3(-2427f)), arg_1)) % vec3<u32>(32u)));
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return vec3<bool>(all(vec3<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.d, arg_2.d, var_0.d, arg_1.d), vec4<bool>(false, arg_0, true, arg_2.d))), true || (9594i != u_input.b.x), var_1.d)), false, ~_wgslsmith_div_u32(var_1.a, 32348u) == ~var_1.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(45062u, 39040u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.yy | vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(0u, 0u))), ~45845u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(146f, -670f, global0[_wgslsmith_index_u32(1u, 14u)])) + _wgslsmith_f_op_f32(ceil(-771f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1207f * -532f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(992f, 2124f, arg_2.x)), -1700f)), arg_2.x)), 1408f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(794f + -874f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1224f)).x)));
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_1 = var_0;
    let var_2 = true;
    return var_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(~vec4<i32>(u_input.b.x, u_input.c.x ^ u_input.c.x, -u_input.b.x, -1i >> (arg_0.a % 32u))) << (~vec4<u32>(arg_0.a, ~0u, arg_0.a & arg_0.a, ~select(0u, arg_0.a, global0[_wgslsmith_index_u32(54737u, 14u)])) % vec4<u32>(32u));
    let var_1 = -1146f;
    let var_2 = arg_0;
    global0 = array<bool, 14>();
    let var_3 = 287f;
    return func_5(~(~countOneBits(countOneBits(vec3<u32>(16656u, 4294967295u, arg_0.a)))), u_input.a.x, vec4<bool>((_wgslsmith_f_op_f32(f32(-1f) * -329f) < var_2.b) | any(func_2(false, arg_0, Struct_1(10559u, 626f, var_3, true, var_2.c))), !(firstLeadingBit(u_input.b.x) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(1i, u_input.c.x))), var_2.d, any(select(!vec4<bool>(var_2.d, global0[_wgslsmith_index_u32(0u, 14u)], var_2.d, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], var_2.d, false), vec4<bool>(arg_0.d, global0[_wgslsmith_index_u32(26761u, 14u)], false, arg_0.d), global0[_wgslsmith_index_u32(arg_0.a, 14u)]), !var_2.d))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = func_5(max(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4294967295u, 3761u, arg_1.a)), vec3<u32>(0u, arg_0, 11663u)), ~firstLeadingBit(vec3<u32>(39563u, arg_2.a, arg_3.a))), ~vec3<u32>(_wgslsmith_sub_u32(arg_1.a, 1u), 47256u, ~0u)), countOneBits(u_input.a.x), select(vec4<bool>(func_5(~vec3<u32>(arg_2.a, arg_3.a, arg_1.a), ~(-1i), select(vec4<bool>(false, arg_2.d, true, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_3.a, 14u)]), vec4<bool>(arg_3.d, true, arg_1.d, false))).d, !all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a, 14u)], global0[_wgslsmith_index_u32(arg_1.a, 14u)], true, false)), true & all(vec4<bool>(arg_1.d, false, false, arg_1.d)), true), !(!vec4<bool>(true, arg_3.d, false, arg_1.d)), vec4<bool>(false, arg_3.d, all(vec3<bool>(false, true, true)), true))).a;
    let var_1 = ~(abs(arg_2.a) ^ ~1u);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_2 = 0u;
    return vec2<u32>(arg_2.a, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1055f, _wgslsmith_f_op_f32(f32(-1f) * -1135f))) + vec2<f32>(1f, 1f)), max(func_6(1u, Struct_1(4294967295u, _wgslsmith_f_op_f32(-1667f - 2163f), -559f, global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -866f)), func_1(Struct_1(1u, 851f, 901f, true, -942f)), Struct_1(1u, -1475f, -852f, global0[_wgslsmith_index_u32(65709u, 14u)], _wgslsmith_f_op_f32(1006f * -103f))), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(17394u, 0u), vec2<u32>(1u, 9972u))) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, 60700u)), vec2<u32>(1u, 1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(462f, -157f, 1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(893f, -357f, -624f), vec3<f32>(-267f, 1001f, 879f), global0[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1433f - -783f), _wgslsmith_f_op_f32(1337f * -962f), _wgslsmith_f_op_f32(floor(1268f))))));
}

