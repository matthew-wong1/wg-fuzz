struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(50622u, vec4<bool>(true, false, false, false)), Struct_1(0u, vec4<bool>(true, false, false, false)), true), Struct_2(Struct_1(4294967295u, vec4<bool>(true, true, true, true)), Struct_1(77772u, vec4<bool>(false, true, false, true)), false), Struct_2(Struct_1(0u, vec4<bool>(true, false, false, false)), Struct_1(43335u, vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(0u, vec4<bool>(false, false, true, true)), Struct_1(51539u, vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(0u, vec4<bool>(true, true, false, false)), Struct_1(0u, vec4<bool>(false, false, false, true)), false), Struct_2(Struct_1(1u, vec4<bool>(true, false, false, true)), Struct_1(28064u, vec4<bool>(false, false, false, false)), false), Struct_2(Struct_1(53912u, vec4<bool>(true, true, false, true)), Struct_1(0u, vec4<bool>(false, true, true, true)), true), Struct_2(Struct_1(18961u, vec4<bool>(false, false, false, true)), Struct_1(4294967295u, vec4<bool>(true, false, false, false)), true), Struct_2(Struct_1(134076u, vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec4<bool>(true, true, true, false)), true), Struct_2(Struct_1(33066u, vec4<bool>(false, true, true, true)), Struct_1(1u, vec4<bool>(false, true, false, false)), false), Struct_2(Struct_1(0u, vec4<bool>(false, false, true, true)), Struct_1(0u, vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(23872u, vec4<bool>(false, true, true, true)), Struct_1(0u, vec4<bool>(false, false, false, false)), true));

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 12>();
    return ~(~4294967295u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = 22454i;
    var var_1 = Struct_1(((_wgslsmith_dot_vec2_u32(vec2<u32>(30416u, u_input.a.x), u_input.a) & 1u) & ~select(19252u, 13582u, false)) << (u_input.a.x % 32u), vec4<bool>(!(!(u_input.a.x != 0u)), true, !(u_input.a.x <= 4294967295u) | false, true));
    var_1 = Struct_1(_wgslsmith_mod_u32(u_input.a.x, var_1.a), var_1.b);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(945f * -1000f), -1015f, 1397f, _wgslsmith_f_op_f32(select(-1119f, 298f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1051f, -2220f, 1138f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, 354f, 834f, 1112f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, -1000f, -2185f, -1892f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-886f, -829f, 630f, -2002f), vec4<f32>(1574f, 1697f, 1208f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(396f, -1200f, -2139f, 1088f) - vec4<f32>(1562f, -663f, -2576f, -170f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(804f, 501f, -387f, 989f), vec4<f32>(329f, -259f, -820f, 441f), true))))))));
    let var_3 = var_2.yx;
    return any(vec4<bool>(false, false, all(vec3<bool>(!var_1.b.x, var_1.b.x && var_1.b.x, 81255u >= var_1.a)), !var_1.b.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = !vec2<bool>(func_3(32647i), false);
    global1 = array<vec4<i32>, 16>();
    global1 = array<vec4<i32>, 16>();
    global0 = array<Struct_2, 12>();
    let var_1 = abs(~vec3<u32>(arg_1.a, 1u, countOneBits(37457u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(62901u, 4294967295u), u_input.a.x), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(3572i, 0i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), ~vec2<i32>(-u_input.b, u_input.b)), vec2<i32>(3509i, _wgslsmith_mod_i32(~countOneBits(2147483647i), 52881i)));
    var var_1 = 1u;
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-630f)))))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(1u, u_input.a.x), func_1()), vec3<u32>(1u, _wgslsmith_mult_u32(0u, u_input.a.x), u_input.a.x)), !vec4<bool>(true, all(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, true, true)))));
    var var_3 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -518f), Struct_1(~u_input.a.x, vec4<bool>(var_2.a.b.x || false, !(false && var_2.c), false, func_2(1000f, func_2(-1491f, var_2.a).a).b.b.x))).b;
    var_2 = Struct_2(var_2.a, var_2.b, all(!func_2(-1019f, func_2(1138f, var_2.a).b).a.b.zxz));
    global0 = array<Struct_2, 12>();
    var var_4 = var_0.x | -1742i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, firstTrailingBit(u_input.b), 926f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1649f + -905f), _wgslsmith_div_f32(413f, -440f)))) - _wgslsmith_f_op_f32(219f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -906f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1072f, 397f), vec2<f32>(-153f, 953f))))))));
}

