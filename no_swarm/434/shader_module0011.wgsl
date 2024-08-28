struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-575f, -1906f, -186f, 1220f), vec4<f32>(-552f, 558f, 249f, 977f), vec4<f32>(-1273f, -950f, 1289f, 851f), vec4<f32>(-195f, 483f, -1000f, 148f), vec4<f32>(-421f, 1973f, 1000f, -429f), vec4<f32>(1000f, -589f, 324f, -150f), vec4<f32>(-1472f, 409f, 1865f, -1000f), vec4<f32>(-1991f, -137f, -262f, 969f), vec4<f32>(681f, -871f, -1000f, -520f), vec4<f32>(842f, -331f, -693f, 2015f), vec4<f32>(1269f, 1659f, 1000f, 1000f), vec4<f32>(1386f, 454f, 316f, -314f), vec4<f32>(-1515f, 904f, 1158f, 692f), vec4<f32>(-1000f, -1000f, 1012f, 831f), vec4<f32>(1334f, -1009f, 661f, 1596f), vec4<f32>(-1596f, 124f, -1194f, -667f), vec4<f32>(-436f, 322f, 601f, -1139f), vec4<f32>(-1153f, 285f, 801f, -1457f), vec4<f32>(-2452f, 480f, -1956f, -898f), vec4<f32>(-1087f, 1496f, -535f, -208f), vec4<f32>(-1000f, -538f, 190f, -564f), vec4<f32>(-881f, -1661f, 312f, -161f), vec4<f32>(1893f, 193f, -1077f, 769f), vec4<f32>(1000f, -1158f, 2398f, 115f), vec4<f32>(2451f, 1000f, -192f, 1784f), vec4<f32>(1768f, -543f, -877f, -1428f), vec4<f32>(291f, 213f, 1159f, 967f));

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(floor(1177f))), -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1030f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1710f - 1000f), _wgslsmith_f_op_f32(-736f - -243f))))) - _wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 234f)))));
    var var_0 = arg_0;
    var var_1 = vec3<u32>(countOneBits(~(~u_input.a.x)), 56027u, ~(~29215u));
    let var_2 = _wgslsmith_div_vec2_i32(select(vec2<i32>(-22822i, -(i32(-1i) * -59219i)), ~(~vec2<i32>(-8211i, -11759i)), false), -(~(~vec2<i32>(1i, 1i))));
    global3 = var_2.x;
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.x), arg_0.c)) ^ u_input.a.x), var_1.x), 5u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = ~(~(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_2.x, arg_2.x, 32161u, arg_2.x), vec4<u32>(u_input.a.x, 62957u, u_input.a.x, u_input.a.x)), max(vec4<u32>(27536u, arg_2.x, u_input.a.x, 0u), vec4<u32>(37447u, 1u, u_input.a.x, 4294967295u)), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, arg_2.x, u_input.a.x)))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-40700i, -15397i), abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -12815i, 1i), vec4<i32>(55082i, -1i, -2846i, 22960i)), _wgslsmith_sub_i32(-2147483647i, -1i)) << (_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u)));
    return ~1u | ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 6044u, 4294967295u), vec3<u32>(arg_2.x, var_0.x, u_input.a.x)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1302f);
    global3 = _wgslsmith_add_i32(firstTrailingBit(~1i), firstLeadingBit(-_wgslsmith_mod_i32(1i, ~0i)));
    let var_0 = Struct_1(arg_1);
    let var_1 = ~0u ^ max(func_4(vec3<bool>(true, true, true), !func_3(Struct_3(true, arg_0.b, arg_0.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(17106u, 0u, 1u), vec3<u32>(36309u, arg_0.c.x, 43068u)) ^ vec3<u32>(u_input.a.x, 81903u, 1u), vec4<bool>(true, any(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), all(vec3<bool>(true, arg_0.b, true)), arg_0.a)), _wgslsmith_dot_vec2_u32(~(u_input.a & vec2<u32>(1428u, 47599u)), (vec2<u32>(0u, 11661u) | vec2<u32>(var_0.a, var_0.a)) | abs(vec2<u32>(0u, u_input.a.x))));
    let var_2 = 24676u;
    return all(select(vec3<bool>(false, (false | arg_0.b) == any(vec3<bool>(arg_0.a, arg_0.a, false)), all(vec3<bool>(true, false, true))), !(!vec3<bool>(arg_0.b, arg_0.a, false)), vec3<bool>(true, all(!global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), arg_0.a)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> bool {
    global3 = _wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(i32(-1i) * -21062i, firstLeadingBit(0i))), _wgslsmith_div_i32(0i, firstLeadingBit(0i)), -14888i);
    global1 = array<vec2<bool>, 5>();
    var var_0 = !select(!(!(!vec2<bool>(true, arg_1.b))), vec2<bool>(true, true), func_3(arg_1).x);
    var var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 18203i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -47110i), vec2<i32>(4420i, 1i))), -vec2<i32>(-18256i, 1i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, -1i), -1i), vec2<i32>(1i, min(min(-2147483647i, 1i), _wgslsmith_div_i32(-2085i, 1i))), vec2<i32>(abs(-36292i), -(~1i)));
    var var_2 = Struct_4(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(arg_1.b, arg_1.a, var_0.x)), !(!vec3<bool>(var_0.x, true, true)), any(vec2<bool>(false, true)) || true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 1583f, arg_2), vec3<f32>(368f, -998f, arg_2))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-283f, arg_0.x, arg_2), vec3<f32>(arg_0.x, arg_2, arg_2)))))), !(!(!vec3<bool>(arg_1.b, true, false))));
    return func_2(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_1.c.x, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, 4725u, arg_1.c.x), firstLeadingBit(vec4<u32>(22841u, u_input.a.x, 4294967295u, arg_1.c.x))) < (17128u << (firstTrailingBit(u_input.a.x) % 32u)), true, arg_1.c), _wgslsmith_sub_u32(88982u, _wgslsmith_mod_u32(abs(~u_input.a.x), firstLeadingBit(~35335u))));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<bool>, 5>();
    let var_0 = true;
    let var_1 = select(select(select(!(!vec3<bool>(var_0, false, false)), select(select(vec3<bool>(var_0, true, false), vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, var_0)), select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(true, var_0, false)), !vec3<bool>(var_0, true, true)), vec3<bool>(false, func_5(vec2<f32>(301f, -821f), Struct_3(var_0, true, u_input.a), -413f, func_2(Struct_3(var_0, var_0, vec2<u32>(36109u, u_input.a.x)), u_input.a.x)), true), !select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, false), !var_0)), select(vec3<bool>(!(var_0 || true), any(vec2<bool>(false, var_0)), var_0), select(!vec3<bool>(var_0, true, true), !select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, true, true), var_0), false), all(vec3<bool>(var_0, true, !var_0))), true);
    global2 = array<vec4<f32>, 27>();
    global3 = -56040i;
    return Struct_3(all(vec2<bool>(var_0, false)) | !(!var_0), any(!var_1.zx), select(vec2<u32>(~reverseBits(u_input.a.x), ~_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 45969u)), false));
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = func_1();
    return arg_1.a;
}

fn func_7(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = firstLeadingBit(vec4<i32>(-abs(arg_1), arg_1, ~arg_1, 13416i));
    global3 = 1i;
    global1 = array<vec2<bool>, 5>();
    global3 = var_0.x;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.a.x, u_input.a.x), u_input.a.x) ^ select(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a), !vec2<bool>(arg_2.a.x, arg_2.a.x)), abs(u_input.a)), ~(~_wgslsmith_mod_u32(3631u, u_input.a.x)) | u_input.a.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, true)), func_6(-1000f, func_1(), Struct_2(vec4<i32>(17244i, 0i, -2147483647i, 4875i)), false), true, true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), reverseBits(-2147483647i), Struct_4(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-799f, -656f, -127f) + vec3<f32>(-1731f, 472f, -425f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1197f, -814f, 1000f) * vec3<f32>(-1000f, 1340f, 216f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-955f, 279f, 817f) * vec3<f32>(-1000f, -211f, 746f)))))), vec3<bool>(true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

