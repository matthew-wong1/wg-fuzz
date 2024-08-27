struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: bool;

var<private> global2: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_4(vec3<f32>(-273f, -127f, 481f))), Struct_5(Struct_4(vec3<f32>(-1707f, 1059f, 316f))), Struct_5(Struct_4(vec3<f32>(3624f, -946f, -1308f))), Struct_5(Struct_4(vec3<f32>(639f, 536f, -167f))), Struct_5(Struct_4(vec3<f32>(-357f, 400f, 624f))), Struct_5(Struct_4(vec3<f32>(-258f, 1157f, -2939f))), Struct_5(Struct_4(vec3<f32>(220f, -1345f, -771f))), Struct_5(Struct_4(vec3<f32>(329f, -1000f, -1045f))), Struct_5(Struct_4(vec3<f32>(1542f, 1000f, -139f))), Struct_5(Struct_4(vec3<f32>(306f, -894f, -2358f))), Struct_5(Struct_4(vec3<f32>(848f, -914f, -1000f))), Struct_5(Struct_4(vec3<f32>(803f, 1041f, -346f))), Struct_5(Struct_4(vec3<f32>(-1488f, 647f, 208f))), Struct_5(Struct_4(vec3<f32>(1135f, -258f, -234f))), Struct_5(Struct_4(vec3<f32>(1000f, 149f, 1229f))), Struct_5(Struct_4(vec3<f32>(-461f, 395f, -340f))), Struct_5(Struct_4(vec3<f32>(1290f, 705f, 1295f))), Struct_5(Struct_4(vec3<f32>(-1000f, 957f, 1967f))), Struct_5(Struct_4(vec3<f32>(-1000f, 536f, -342f))), Struct_5(Struct_4(vec3<f32>(-696f, -568f, 1168f))), Struct_5(Struct_4(vec3<f32>(1000f, 419f, 1036f))), Struct_5(Struct_4(vec3<f32>(-1000f, -2111f, -1310f))), Struct_5(Struct_4(vec3<f32>(1169f, 402f, -1258f))), Struct_5(Struct_4(vec3<f32>(341f, 1660f, 1047f))), Struct_5(Struct_4(vec3<f32>(1536f, 605f, -1224f))), Struct_5(Struct_4(vec3<f32>(680f, 1119f, 803f))), Struct_5(Struct_4(vec3<f32>(646f, 243f, 459f))), Struct_5(Struct_4(vec3<f32>(459f, 232f, 1000f))), Struct_5(Struct_4(vec3<f32>(382f, -537f, 148f))), Struct_5(Struct_4(vec3<f32>(2344f, 169f, 106f))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = true;
    global1 = any(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(abs(168f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1066f)), 344f)), _wgslsmith_f_op_f32(min(-1174f, _wgslsmith_f_op_f32(abs(-874f)))))));
    global0 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(525u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(19273u, global0.x, 12812u, 1u), vec4<u32>(global0.x, u_input.b, 0u, u_input.a)), vec4<u32>(1u, u_input.a, u_input.b, 0u))), reverseBits(abs(vec2<u32>(u_input.a, global0.x) >> (vec2<u32>(29859u, 1u) % vec2<u32>(32u))))));
    let var_1 = ~u_input.a;
    return select(_wgslsmith_add_u32(min(4294967295u, 4294967295u), ~(~_wgslsmith_mult_u32(global0.x, 0u))), u_input.b, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) | true);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(16908u, true), Struct_1(34284u, true), Struct_1(func_3(), any(vec4<bool>(true, true, true, true))), _wgslsmith_mult_i32(u_input.c, 44767i), select(true, true, true)), !vec3<bool>(false, true, !select(false, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -375f) * vec2<f32>(-231f, -285f))) + vec2<f32>(899f, 1539f)));
    global1 = !any(select(vec2<bool>(var_0.a.e, var_0.b.x & var_0.a.e), !vec2<bool>(var_0.b.x, var_0.b.x), false));
    global0 = reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~43448u, global0.x) >> (max(vec2<u32>(4099u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_0.a.c.a, 36624u))) % vec2<u32>(32u)), select(~vec2<u32>(0u, 27897u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(global0.x, global0.x), true) ^ vec2<u32>(global0.x, global0.x), true)));
    var var_1 = var_0;
    let var_2 = var_0.a.a.a;
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global2 = array<Struct_5, 30>();
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0;
    global0 = firstTrailingBit(vec2<u32>(reverseBits(abs(4294967295u)), 73171u)) & vec2<u32>(4294967295u, countOneBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, arg_0.a.b.a), ~u_input.b)));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + 892f))), 196f, var_0.c.x));
    let var_2 = _wgslsmith_f_op_f32(ceil(724f));
    let var_3 = var_0.a.b;
    return Struct_2(arg_0.a.c, Struct_1(u_input.a, any(vec4<bool>(false, true == arg_0.b.x, true, false))), Struct_1(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, 5571u)), vec2<u32>(arg_0.a.a.a >> (0u % 32u), 114612u)), any(var_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(1i), _wgslsmith_div_i32(abs(0i), abs(arg_0.a.d)), 16842i), vec3<i32>(countOneBits(-arg_0.a.d), _wgslsmith_sub_i32(func_1(arg_1).d, ~2147483647i), ~_wgslsmith_sub_i32(var_0.a.d, -46812i))), any(!select(!vec4<bool>(false, arg_1.x, arg_0.a.c.b, true), !vec4<bool>(var_3.b, true, var_3.b, false), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_3(func_1(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), false), vec2<f32>(1009f, _wgslsmith_div_f32(-1266f, 968f))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), func_4(Struct_3(Struct_2(Struct_1(1u, false), Struct_1(0u, true), Struct_1(u_input.b, false), 14626i, false), vec3<bool>(false, true, true), vec2<f32>(1192f, 800f)), vec3<bool>(false, false, true)).a.b), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-177f, -1281f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-101f, 116f), vec2<f32>(1240f, -913f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1136f, -188f), vec2<f32>(898f, 313f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(703f, -2083f) * vec2<f32>(1000f, -1443f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-761f - -1143f), -180f) + vec2<f32>(_wgslsmith_f_op_f32(min(-656f, 352f)), _wgslsmith_f_op_f32(round(-978f))))));
    let var_1 = 1i;
    global0 = vec2<u32>(~abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, 21178u)), ~vec2<u32>(4294967295u, u_input.b))), 4294967295u);
    let var_2 = ~(~((i32(-1i) * -13528i) >> (max(1u, global0.x) % 32u)));
    global2 = array<Struct_5, 30>();
    let var_3 = global2[_wgslsmith_index_u32(42755u, 30u)];
    global2 = array<Struct_5, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.a.d, ~(-max(42427i, 0i)), var_2, _wgslsmith_add_i32(_wgslsmith_mod_i32(17883i ^ var_0.a.d, -1i | var_2), 36442i)), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(4294967295u, 2705u)), firstTrailingBit(4294967295u), _wgslsmith_add_u32(var_0.a.b.a, 15555u), 6470u ^ u_input.b)), var_3.a.a);
}

