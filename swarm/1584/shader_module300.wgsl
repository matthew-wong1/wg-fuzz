struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-227f, 654f, 1000f), vec3<f32>(-447f, -374f, -1000f), vec3<f32>(-245f, 1113f, -533f), vec3<f32>(1328f, -1341f, -974f), vec3<f32>(-694f, 1387f, 187f), vec3<f32>(-1180f, -975f, -1115f), vec3<f32>(763f, 1642f, 206f), vec3<f32>(-225f, -429f, 2595f), vec3<f32>(1000f, -1026f, -2037f), vec3<f32>(-790f, -1317f, 1089f), vec3<f32>(1128f, -880f, 389f), vec3<f32>(253f, 1975f, 1162f), vec3<f32>(-680f, 444f, -445f), vec3<f32>(214f, -980f, 985f), vec3<f32>(-1296f, 1890f, -556f), vec3<f32>(-1400f, -474f, 1228f), vec3<f32>(-643f, -1309f, 592f), vec3<f32>(-1046f, -1218f, 589f), vec3<f32>(391f, 1915f, 225f), vec3<f32>(-2268f, 683f, -1000f), vec3<f32>(623f, 292f, -483f), vec3<f32>(1000f, -1659f, 1500f), vec3<f32>(-153f, -755f, -1143f), vec3<f32>(1748f, -1403f, 928f), vec3<f32>(368f, 1001f, -629f), vec3<f32>(-454f, 1000f, 1425f), vec3<f32>(1401f, 372f, -135f), vec3<f32>(-1225f, -2283f, 1192f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.b.yz);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> i32 {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = vec4<bool>(arg_1.x, !(!(func_1().a.x > abs(10819u))), select(select(true, any(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, arg_1.x), arg_1)), any(select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, arg_1.x), false))), arg_1.x, any(!select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, true, true), arg_1.x))), arg_1.x);
    let var_3 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b - 1000f)) >= _wgslsmith_f_op_f32(floor(-344f))) || !((arg_1.x && false) == (var_0.c.a.x == var_1.b.a.x)));
    var var_4 = -countOneBits(~(-(~vec4<i32>(arg_3, arg_3, arg_3, arg_3))));
    return arg_3;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<f32>, 28>();
    var var_0 = Struct_5(vec4<bool>(!select(any(vec4<bool>(false, false, false, false)), false, true), true, true, false), Struct_3(Struct_2(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1410f), Struct_1(u_input.b.yz)), Struct_1(firstTrailingBit(vec2<u32>(1u, u_input.b.x))), arg_1));
    var var_1 = ~_wgslsmith_add_i32(~func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0.c.a.x), u_input.b), var_0.a.yy, Struct_3(var_0.b.a, arg_0.c, Struct_1(arg_1.a)), ~(-2147483647i)), -34419i);
    var_1 = -6891i;
    var var_2 = vec2<u32>(arg_1.a.x, ~(~u_input.a & ~arg_1.a.x) << (arg_1.a.x % 32u));
    return -467f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)));
    global0 = array<vec3<f32>, 28>();
    let var_1 = Struct_1(vec2<u32>(u_input.a ^ ~1u, 0u));
    let var_2 = _wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(Struct_1(var_1.a), 504f, var_1), var_1, var_1), func_1())))));
    var var_3 = any(vec3<bool>(true, !all(!vec2<bool>(var_0, var_0)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-40242i, reverseBits(-11899i)), ~firstLeadingBit(firstLeadingBit(-7102i))), vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2216i, 10019i), vec3<i32>(27977i, 0i, 89244i))), _wgslsmith_div_i32(~1i, 50726i)), ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-17820i, 2896i, 33520i, -4129i), vec4<i32>(3102i, 0i, 44469i, 6212i)))));
}

