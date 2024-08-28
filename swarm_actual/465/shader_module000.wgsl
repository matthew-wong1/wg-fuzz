struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(43390u, 4294967295u), vec2<u32>(61694u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(25718u, 13463u), vec2<u32>(1819u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 42360u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8868u, 1u), vec2<u32>(25297u, 1u), vec2<u32>(1u, 2350u), vec2<u32>(22190u, 4294967295u), vec2<u32>(1668u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 2368u));

var<private> global1: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(1000f, -424f), vec2<f32>(1038f, -636f), vec2<f32>(-1586f, -182f), vec2<f32>(808f, 1000f), vec2<f32>(-1925f, 1000f), vec2<f32>(394f, 505f), vec2<f32>(-121f, -775f), vec2<f32>(-1234f, 1186f), vec2<f32>(-1535f, -710f), vec2<f32>(-237f, -745f), vec2<f32>(-1460f, -1000f), vec2<f32>(-1000f, 1864f), vec2<f32>(-578f, 964f), vec2<f32>(-938f, 2316f), vec2<f32>(396f, 117f), vec2<f32>(1466f, 733f), vec2<f32>(1000f, -108f), vec2<f32>(854f, -2160f), vec2<f32>(1000f, 1731f), vec2<f32>(553f, 784f), vec2<f32>(-1346f, 1224f), vec2<f32>(-1595f, 275f), vec2<f32>(-135f, 624f), vec2<f32>(-933f, 1123f), vec2<f32>(-760f, -1882f), vec2<f32>(1200f, -136f), vec2<f32>(1000f, 390f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(~1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, 26653u, arg_0.a), vec4<u32>(arg_2, arg_0.a, 18092u, arg_2)) & ~arg_0.a)), arg_0.b);
    var_0 = arg_0;
    var var_1 = arg_3.yx;
    var var_2 = ~2147483647i;
    let var_3 = vec3<i32>(1i, arg_1.x, 1i);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1244f + arg_0.b.x))))), _wgslsmith_f_op_f32(floor(-1084f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(324f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f * 1128f)));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global1 = array<vec2<f32>, 27>();
    return Struct_1(_wgslsmith_dot_vec4_u32(~reverseBits(select(vec4<u32>(33491u, 115486u, 42257u, 1u), vec4<u32>(25666u, 1u, 4294967295u, 2738u), true)), abs(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-412f, var_0, -169f, 450f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1097f, var_0, var_0, 1000f), vec4<f32>(1586f, 1000f, var_0, arg_0.x), vec4<bool>(false, false, false, false)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, var_0, 549f, var_0) * vec4<f32>(-1206f, arg_0.x, -552f, var_0)))));
}

fn func_3(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), !any(vec3<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true)), true)), !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))), -u_input.b.x <= u_input.a);
    var var_1 = ~max(max(abs(firstLeadingBit(u_input.a)), ~(-1i << (arg_0.x % 32u))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.b.x), 1i));
    global0 = array<vec2<u32>, 17>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_3 = -1243f;
    return Struct_1(max(4294967295u, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1791f, var_3, var_2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2, vec4<f32>(-3323f, var_2.x, var_3, -1355f), vec4<bool>(true, var_0.x, true, true)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(func_3(~(vec3<u32>(15403u, arg_0.a.a, arg_3.a) ^ vec3<u32>(arg_3.a, arg_3.a, arg_1.a))).b * arg_3.b), arg_0.a, arg_0.d);
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(46168u, 31445u), vec4<f32>(-1216f, -793f, arg_2.b.x, _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-2253f + _wgslsmith_f_op_f32(179f - arg_0.b.x)), arg_1.b.x, -614f, func_3(~vec3<u32>(15677u, 6689u, 34661u)).b.x))), func_3(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(1u, var_0.c.a, arg_2.a), vec3<u32>(arg_1.a, arg_2.a, 41469u), var_0.d.x), ~vec3<u32>(18458u, arg_1.a, 0u) ^ vec3<u32>(arg_0.c.a, 71741u, 0u))), !(!vec3<bool>(true, !var_0.d.x, u_input.a < u_input.b.x)));
    global1 = array<vec2<f32>, 27>();
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.b.x)))), _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x + 557f), _wgslsmith_f_op_f32(993f + arg_1.b.x))))), arg_1.b.x));
    return !vec3<bool>(false | any(vec3<bool>(true, true, var_0.d.x)), all(vec3<bool>(false, false, var_2.d.x)) == var_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(419f)))) > 2425f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f));
    global0 = array<vec2<u32>, 17>();
    let var_1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -301f, -1071f, var_0) - _wgslsmith_div_vec4_f32(vec4<f32>(965f, -1195f, var_0, 1000f), vec4<f32>(var_0, -321f, 1830f, var_0)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), var_0), 928f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(53485u, vec4<f32>(1233f, -631f, var_0, var_0)), vec2<i32>(-30115i, u_input.b.x), 1u, vec3<f32>(var_0, var_0, 342f))))))), func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1386f, var_0), vec3<f32>(-196f, 1026f, var_0)), vec3<f32>(var_0, 1310f, -602f), true)), vec3<f32>(_wgslsmith_div_f32(244f, var_0), _wgslsmith_f_op_f32(abs(183f)), _wgslsmith_div_f32(var_0, var_0))))), select(vec3<bool>(_wgslsmith_mult_i32(-22269i, 55455i) < u_input.b.x, true, true), func_4(Struct_2(Struct_1(2289u, vec4<f32>(var_0, var_0, 1969f, var_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1173f, var_0, -1783f, var_0))), func_2(vec3<f32>(var_0, var_0, 627f)), vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, 1744f, var_0))), func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 28398u, 50600u), vec3<u32>(49820u, 1u, 1u))), Struct_1(func_3(vec3<u32>(4294967295u, 45034u, 4294967295u)).a, vec4<f32>(-558f, var_0, 937f, var_0))), true));
    let var_2 = ~5802i;
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    var var_3 = var_1.a;
    var_3 = var_1.a;
    var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~4822u);
}

