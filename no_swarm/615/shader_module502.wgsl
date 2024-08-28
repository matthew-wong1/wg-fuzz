struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec2<i32>(2147483647i, 22779i), vec2<u32>(96189u, 198u), false, 47921i, vec2<bool>(true, true)), true, vec4<i32>(2147483647i, 1524i, 22753i, -41655i), true, vec3<u32>(82767u, 0u, 0u)), Struct_3(Struct_1(vec2<i32>(-1i, 23343i), vec2<u32>(1u, 1u), false, 0i, vec2<bool>(false, true)), false, vec4<i32>(0i, -1i, -2808i, 2147483647i), false, vec3<u32>(7855u, 15351u, 4294967295u)), Struct_3(Struct_1(vec2<i32>(-4826i, 11504i), vec2<u32>(114589u, 34687u), false, 15344i, vec2<bool>(true, false)), true, vec4<i32>(1i, 12366i, -67153i, 91953i), true, vec3<u32>(1u, 32850u, 1u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<u32>(4294967295u, 38332u), false, -62243i, vec2<bool>(false, false)), true, vec4<i32>(59935i, -40691i, 0i, 1i), false, vec3<u32>(13179u, 1u, 0u)), Struct_3(Struct_1(vec2<i32>(2147483647i, 70122i), vec2<u32>(32769u, 0u), false, 2147483647i, vec2<bool>(true, false)), true, vec4<i32>(1i, -27318i, i32(-2147483648), 0i), true, vec3<u32>(18071u, 53737u, 1u)), Struct_3(Struct_1(vec2<i32>(148i, -1i), vec2<u32>(4294967295u, 0u), true, 64740i, vec2<bool>(false, false)), true, vec4<i32>(-1i, 21257i, 0i, i32(-2147483648)), false, vec3<u32>(3197u, 1u, 12690u)), Struct_3(Struct_1(vec2<i32>(0i, 0i), vec2<u32>(4294967295u, 19213u), true, 2147483647i, vec2<bool>(true, false)), true, vec4<i32>(1i, 20201i, -31660i, 44541i), false, vec3<u32>(96396u, 37721u, 10939u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(arg_0 * -489f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_0)))))));
    global1 = array<Struct_3, 7>();
    var var_1 = abs(vec3<i32>(8168i, -_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zx & u_input.b.yz), -2147483647i));
    var_1 = _wgslsmith_clamp_vec3_i32(u_input.b, countOneBits(-abs(vec3<i32>(-2147483647i, 2147483647i, -37299i))), -vec3<i32>(var_1.x, reverseBits(-1i), _wgslsmith_clamp_i32(2147483647i ^ u_input.b.x, 1i, 1i)));
    return ~(~select(_wgslsmith_mult_u32(84496u, _wgslsmith_clamp_u32(1u, 4294967295u, 16028u)), 4294967295u, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> u32 {
    global1 = array<Struct_3, 7>();
    var var_0 = arg_0.a;
    global1 = array<Struct_3, 7>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(262f, arg_1, true))), _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2037f, 1000f, any(vec3<bool>(false, arg_0.b, true)))))), 2311f);
    var_0 = arg_0.a;
    return _wgslsmith_mult_u32(max(var_0.b.x, ~arg_0.e.x), 4294967295u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> bool {
    global0 = array<Struct_3, 6>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(select(0u, ~53222u, true), abs(func_4(global1[_wgslsmith_index_u32(func_3(arg_0.x), 7u)], _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), 6u)];
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(89208u, var_0.e.x, 8214u), vec3<u32>(83815u, var_0.e.x, var_0.e.x))), ~(~(~var_0.e.x))), 7u)];
    var var_1 = global0[_wgslsmith_index_u32(var_0.a.b.x, 6u)];
    var var_2 = var_1.a.e;
    return true;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = select(vec2<bool>(false && !select(false, true, false), !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, 1697f) - vec2<f32>(1000f, 263f)), vec3<bool>(true, true, true), select(vec3<i32>(0i, u_input.a, 2147483647i), vec3<i32>(arg_0.a, 15576i, 9605i), vec3<bool>(true, false, false)))), select(vec2<bool>(arg_0.a <= -20140i, true), vec2<bool>(true, true || any(vec3<bool>(true, true, false))), (-589f < _wgslsmith_f_op_f32(round(825f))) | true), true == func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(1082f - 584f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), ~vec3<i32>(arg_0.a, arg_0.a, u_input.a)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, u_input.b.xy), vec2<i32>(arg_0.a, u_input.c)), ~(u_input.b.xz & u_input.b.xz)), select(~vec2<u32>(0u, arg_0.b), vec2<u32>(arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8155u, arg_0.b, arg_0.b), vec4<u32>(26697u, arg_0.b, 4294967295u, arg_0.b))), vec2<bool>(true, true)), select(all(!vec3<bool>(var_0.x, true, true)), var_0.x, arg_0.b >= ~4294967295u), _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, u_input.c), u_input.b)), var_0), true, -countOneBits(-vec4<i32>(0i, 19176i, 28441i, -2147483647i)), true, select(~(vec3<u32>(arg_0.b, 34566u, 13721u) | vec3<u32>(8797u, 26799u, 0u)), _wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(arg_0.b, arg_0.b, 4294967295u), vec3<u32>(arg_0.b, 4294967295u, 53375u))), _wgslsmith_div_vec3_u32(vec3<u32>(1187u, 0u, 1u), ~vec3<u32>(arg_0.b, 4294967295u, 10191u))), true));
    global1 = array<Struct_3, 7>();
    var var_2 = -u_input.a;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-3632i, abs(1u));
    let var_1 = vec4<bool>(all(select(vec2<bool>(true, func_1(var_0)), vec2<bool>(all(vec3<bool>(true, true, true)), true), any(vec2<bool>(true, true)))), true, true, func_1(Struct_2(~u_input.a ^ _wgslsmith_sub_i32(var_0.a, -2147483647i), _wgslsmith_mult_u32(var_0.b, var_0.b))));
    global0 = array<Struct_3, 6>();
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 0u)), ~var_0.b, ~var_0.b))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~692u, 10989u << (~var_0.b % 32u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1552u, 0u, var_0.b), vec3<u32>(var_0.b, 0u, var_0.b)))));
    var var_3 = Struct_2(_wgslsmith_mod_i32(min(-_wgslsmith_dot_vec4_i32(vec4<i32>(-15341i, u_input.c, 63403i, -1i), vec4<i32>(31136i, -2147483647i, 1i, u_input.a)), _wgslsmith_clamp_i32(-21555i, 2147483647i, var_0.a)), u_input.a), 56908u);
    global1 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(756f, -715f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1717f) + -406f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) - _wgslsmith_f_op_f32(-479f * 858f))), -1402f);
}

