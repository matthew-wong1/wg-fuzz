struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-223f, -810f, -1731f, 925f), vec4<f32>(1750f, 837f, 160f, 786f), vec4<f32>(-1695f, -1408f, 1445f, -981f), vec4<f32>(-1000f, 1240f, 893f, 865f), vec4<f32>(497f, 849f, 652f, 1162f), vec4<f32>(-904f, -1246f, 1180f, -817f), vec4<f32>(2034f, -808f, -1688f, -939f), vec4<f32>(-742f, 1232f, -732f, -1277f), vec4<f32>(1379f, -448f, -764f, 1357f), vec4<f32>(-459f, 100f, 889f, -2257f), vec4<f32>(-1323f, 1131f, 840f, -316f), vec4<f32>(-1422f, 425f, -1113f, 125f), vec4<f32>(769f, -650f, 1509f, 974f), vec4<f32>(1272f, -1229f, 1680f, 353f), vec4<f32>(2560f, -3406f, 544f, -1000f), vec4<f32>(1416f, -1350f, -797f, 1773f), vec4<f32>(175f, 1000f, -1255f, 2269f), vec4<f32>(545f, 1140f, 453f, -655f), vec4<f32>(1330f, -166f, -518f, 848f), vec4<f32>(-1000f, 421f, 1100f, -211f), vec4<f32>(704f, -152f, -127f, -766f), vec4<f32>(-1201f, -950f, 1241f, 920f), vec4<f32>(-105f, -1632f, -436f, 556f), vec4<f32>(-820f, -159f, 1719f, 911f), vec4<f32>(-2093f, 794f, 530f, 175f), vec4<f32>(-357f, -1893f, -269f, 1000f), vec4<f32>(640f, 1000f, 1599f, -377f));

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1852f, 1010f), 166f)))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(arg_2.b.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.e * vec3<f32>(arg_2.b.e.x, -1036f, arg_2.b.d.x))))))));
    return vec2<bool>(false, any(vec3<bool>(false, !select(true, true, true), true)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(u_input.b.x, any(!func_4(_wgslsmith_add_u32(0u, 0u), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false))), Struct_2(vec2<u32>(4294967295u, 53513u), global1[_wgslsmith_index_u32(4294967295u, 21u)], vec4<u32>(40976u, 13222u, 60540u, 16938u)))), _wgslsmith_add_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 18495u, 1u)), ~107999u), vec2<u32>(_wgslsmith_mult_u32(48820u, 33026u), _wgslsmith_mod_u32(0u, 39494u)), vec2<bool>(true, true)), ~(~(~vec2<u32>(0u, 4294967295u)))), vec2<u32>(1u, 1u), !(!func_4(1u, 1898f, Struct_2(vec2<u32>(4294967295u, 19361u), Struct_1(u_input.d.xz, 0u, u_input.b, vec2<f32>(977f, -281f), vec3<f32>(1363f, -943f, -968f)), vec4<u32>(1u, 1u, 4294967295u, 0u))).x));
    var var_1 = Struct_4(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.a, -27212i, -2147483647i) ^ 1i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-18504i, var_0.a, var_0.a), u_input.d))) | ~(var_0.a << (_wgslsmith_mult_u32(1u, var_0.c.x) % 32u)), !(!(!var_0.e | any(vec3<bool>(false, var_0.b, false)))), select(_wgslsmith_mod_vec2_u32(~var_0.d, vec2<u32>(4294967295u, var_0.d.x) ^ var_0.d) ^ abs(~var_0.d), vec2<u32>(var_0.d.x, ~firstLeadingBit(var_0.d.x)), vec2<bool>(true || !var_0.b, (u_input.b.x != u_input.c) && !var_0.e)), reverseBits(_wgslsmith_mod_vec2_u32(~(vec2<u32>(var_0.d.x, var_0.c.x) ^ vec2<u32>(var_0.d.x, var_0.d.x)), select(abs(vec2<u32>(18604u, var_0.d.x)), var_0.d, false))), select(false, _wgslsmith_dot_vec4_u32(vec4<u32>(59140u, var_0.d.x, var_0.c.x, var_0.c.x) & vec4<u32>(94422u, 38998u, var_0.c.x, 37608u), abs(vec4<u32>(var_0.c.x, 36628u, var_0.d.x, 30269u))) > countOneBits(0u), any(!vec4<bool>(var_0.e, var_0.e, var_0.b, var_0.e))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-536f, -722f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(907f, -1154f)))))));
    global1 = array<Struct_1, 21>();
    var_1 = var_0;
    return Struct_2(var_0.d, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_1.c.x), 21u)], ~(~(vec4<u32>(var_0.d.x, var_0.c.x, var_0.c.x, 16965u) & ~vec4<u32>(var_1.c.x, 4294967295u, 7174u, var_0.d.x))));
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = u_input.d;
    var var_1 = func_2();
    var var_2 = select(!vec3<bool>(true, true, !(arg_0 | false)), !(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, true), select(false, arg_0, arg_0))), !select(select(vec3<bool>(true, arg_0, true), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, arg_0), true), vec3<bool>(true, true, true)), select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0), !vec3<bool>(arg_0, false, false)), vec3<bool>(true, true, !arg_0)));
    global0 = array<vec4<f32>, 27>();
    var var_3 = Struct_1(select(~(~vec2<i32>(var_1.b.c.x, var_1.b.c.x)), ~u_input.b.wy, arg_0), ~firstLeadingBit(min(4294967295u, 4294967295u)), max(vec4<i32>(var_1.b.c.x << (3248u % 32u), 57738i, -2147483647i, 25739i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.c.x, var_1.b.c.x, 42786i, var_1.b.a.x), u_input.b, vec4<i32>(2147483647i, 45554i, u_input.c, u_input.a)), var_1.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.e.xx, var_1.b.e.xx, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1729f, 145f, var_1.b.d.x))))), vec3<f32>(-258f, var_1.b.e.x, _wgslsmith_f_op_f32(-var_1.b.d.x))) * var_1.b.e));
    return var_1.c.zz & reverseBits(countOneBits(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)), true);
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(func_1(var_0.x), vec2<u32>(~21092u, _wgslsmith_mult_u32(1u, 1u))));
    var_0 = !(!select(select(vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, false))), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, false), true)), vec3<bool>(false, var_0.x, var_0.x)));
    global0 = array<vec4<f32>, 27>();
    global1 = array<Struct_1, 21>();
    var_0 = vec3<bool>(true, any(!select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(firstLeadingBit(var_1))), 0u, select(-1i & -abs(u_input.c), u_input.d.x, !var_0.x), func_2().b.a);
}

