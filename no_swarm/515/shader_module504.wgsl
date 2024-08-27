struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_5, 2>;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(16107u, vec4<u32>(4294967295u, 0u, 1u, 74510u)), Struct_4(9308u, vec4<u32>(1u, 13043u, 4294967295u, 4294967295u)));

var<private> global3: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(4294967295u, 34864i, vec3<bool>(false, false, true)), Struct_5(21454u, -23435i, vec3<bool>(false, false, false)), Struct_5(10618u, 32502i, vec3<bool>(true, false, false)), Struct_5(81557u, 2147483647i, vec3<bool>(true, true, false)), Struct_5(1u, i32(-2147483648), vec3<bool>(false, true, false)), Struct_5(10764u, 10192i, vec3<bool>(true, true, true)), Struct_5(1u, -1i, vec3<bool>(false, true, true)), Struct_5(23205u, -10515i, vec3<bool>(false, false, false)), Struct_5(4294967295u, -18765i, vec3<bool>(true, true, false)), Struct_5(44879u, -10579i, vec3<bool>(false, false, false)), Struct_5(47734u, 67155i, vec3<bool>(false, false, false)), Struct_5(4294967295u, i32(-2147483648), vec3<bool>(false, false, true)), Struct_5(1u, i32(-2147483648), vec3<bool>(false, false, false)), Struct_5(4294967295u, 1i, vec3<bool>(true, true, false)), Struct_5(1u, -6212i, vec3<bool>(true, true, true)), Struct_5(41492u, 0i, vec3<bool>(true, false, false)), Struct_5(0u, 65817i, vec3<bool>(true, false, false)), Struct_5(66469u, -78106i, vec3<bool>(true, true, false)), Struct_5(4294967295u, 0i, vec3<bool>(true, false, true)));

var<private> global4: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(379f, 1244f), vec2<f32>(1660f, 1008f), vec2<f32>(-1000f, 2247f), vec2<f32>(-947f, -2234f), vec2<f32>(621f, -132f), vec2<f32>(-267f, 1277f), vec2<f32>(2490f, -898f), vec2<f32>(-318f, -513f), vec2<f32>(-712f, -127f), vec2<f32>(929f, -119f), vec2<f32>(1292f, 1095f), vec2<f32>(432f, 376f), vec2<f32>(-1965f, 1251f), vec2<f32>(-1067f, 1052f), vec2<f32>(-890f, -257f), vec2<f32>(1998f, -792f), vec2<f32>(-417f, 1156f), vec2<f32>(490f, 2643f), vec2<f32>(1294f, 649f), vec2<f32>(1414f, 850f), vec2<f32>(1823f, -679f), vec2<f32>(-1978f, 844f), vec2<f32>(-694f, -1791f), vec2<f32>(-626f, -166f), vec2<f32>(443f, -1221f), vec2<f32>(378f, -536f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    global1 = array<Struct_5, 2>();
    let var_0 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), true | all(vec3<bool>(false, false, true))), !any(vec2<bool>(true, true))));
    let var_1 = global1[_wgslsmith_index_u32(~0u, 2u)];
    let var_2 = select(vec4<bool>(any(!vec3<bool>(var_1.c.x, var_1.c.x, false)), false, (_wgslsmith_mod_u32(var_1.a, 6588u) == _wgslsmith_sub_u32(0u, u_input.a.x)) | false, var_1.c.x && var_1.c.x), !vec4<bool>(var_0 == !var_1.c.x, all(vec3<bool>(var_0, false, true)), true, !var_1.c.x), vec4<bool>(var_0, false, !all(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_0)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.b, 0i, 14155i), vec3<i32>(1i, 4701i, arg_0), false), vec3<i32>(var_1.b, global0[_wgslsmith_index_u32(var_1.a, 12u)], var_1.b)) != _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_1.a, 12u)], var_1.b, -u_input.e.x)));
    var var_3 = var_1.a;
    return ~(_wgslsmith_sub_u32(48640u, abs(_wgslsmith_mult_u32(29726u, arg_1.x))) ^ ~(~(~45139u)));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    global4 = array<vec2<f32>, 26>();
    let var_0 = global4[_wgslsmith_index_u32(~87977u, 26u)];
    let var_1 = -2147483647i & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, max(30158u, 1u ^ func_3(global0[_wgslsmith_index_u32(1u, 12u)], vec4<u32>(0u, 4294967295u, 4294967295u, u_input.d.x), -1639f))), 12u)];
    global1 = array<Struct_5, 2>();
    var var_2 = Struct_1(_wgslsmith_sub_i32(var_1, i32(-1i) * -48493i), vec2<i32>(18455i ^ global0[_wgslsmith_index_u32(~(~u_input.a.x), 12u)], reverseBits(~_wgslsmith_dot_vec2_i32(u_input.e.zz, vec2<i32>(-46883i, 0i)))));
    return -1i;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(-1i, ~(-1i)));
    global1 = array<Struct_5, 2>();
    var var_1 = true && (func_2(true, u_input.d.x == _wgslsmith_div_u32(u_input.a.x, u_input.d.x)) > -_wgslsmith_add_i32(0i, 30553i));
    global4 = array<vec2<f32>, 26>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 19>();
    global3 = array<Struct_5, 19>();
    var var_0 = vec4<i32>(-35300i, u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 24052u), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a)), 12u)], _wgslsmith_add_i32(func_1(), select(u_input.e.x >> (4294967295u % 32u), i32(-1i) * -36920i, all(vec4<bool>(true, false, false, false))))) >> (~_wgslsmith_add_vec4_u32(max(select(vec4<u32>(0u, u_input.a.x, u_input.d.x, u_input.a.x), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<bool>(false, true, false, true)), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, u_input.a.x)), select(~vec4<u32>(0u, u_input.a.x, 1138u, u_input.d.x), ~vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.a.x), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))) % vec4<u32>(32u));
    let var_1 = Struct_1(-26121i, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.xwx, ~vec3<i32>(var_0.x, -14174i, u_input.c)), 12461i >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1736f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f - -944f) - 122f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1212f * 285f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-129f))))), 4294967295u);
}

