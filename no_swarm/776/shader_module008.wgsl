struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = true;
    var var_1 = arg_0.b.c.x;
    var_1 = -753f;
    let var_2 = vec2<i32>(-1i) * -(vec2<i32>(-1i) * -abs(vec2<i32>(-1i, u_input.b)));
    var_1 = -978f;
    return -7198i;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_3(Struct_1(func_3(Struct_2(arg_0.x & true, Struct_1(arg_1, vec4<f32>(-1186f, -1825f, -165f, 414f), arg_2.yx, false, 302f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -264f, arg_2.x, arg_2.x)))), arg_2.zx, all(vec3<bool>(0u <= u_input.a.x, all(vec4<bool>(true, false, arg_0.x, arg_0.x)), arg_0.x)), -2235f), ~firstTrailingBit(vec2<u32>(67212u, u_input.c & 0u)), Struct_2(!arg_0.x, Struct_1(abs(-13809i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 308f, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, arg_2.x, -1916f, -1509f)), vec4<f32>(arg_2.x, arg_2.x, 244f, -1476f))), vec2<f32>(arg_2.x, arg_2.x), select(false, false & arg_0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1448f * 975f)))));
    let var_1 = vec4<u32>(var_0.b.x | 12167u, ~_wgslsmith_mult_u32(42309u, ~_wgslsmith_mult_u32(u_input.c, 67620u)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_0.b.x >> (var_0.b.x % 32u), ~76627u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(52631u, 4294967295u, var_0.b.x, var_0.b.x), ~vec4<u32>(var_0.b.x, u_input.c, 0u, 4294967295u)))), ~_wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(0u, 70731u, var_0.b.x)))));
    var var_2 = abs(select(~0u, ~1u, true));
    var_2 = ~4294967295u;
    var_2 = _wgslsmith_div_u32(~(~35505u), _wgslsmith_add_u32(~reverseBits(~15216u), ~abs(~2981u)));
    return all(vec2<bool>(var_0.b.x >= ~abs(var_0.b.x), any(select(vec3<bool>(var_0.a.d, false, arg_0.x), vec3<bool>(false, var_0.c.a, var_0.a.d), true))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_4(u_input.a, !(!select(func_2(vec3<bool>(false, false, arg_2.x), arg_1.x, vec3<f32>(715f, -639f, -1163f)), arg_2.x == arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f * _wgslsmith_f_op_f32(min(-1157f, 1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1331f))))));
    var_0 = Struct_4(var_0.a >> ((~u_input.a ^ _wgslsmith_add_vec4_u32(select(vec4<u32>(18725u, u_input.c, var_0.a.x, 0u), vec4<u32>(arg_0, 82047u, 4294967295u, 0u), vec4<bool>(var_0.b, true, arg_2.x, true)), vec4<u32>(1u, arg_0, var_0.a.x, 0u))) % vec4<u32>(32u)), !arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(round(var_0.c)))) * var_0.c), var_0.c, arg_2.x)));
    var_0 = Struct_4(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(arg_0, 4294967295u, _wgslsmith_mult_u32(arg_0, 21066u), 1u) << (vec4<u32>(~arg_0, firstTrailingBit(arg_0), u_input.a.x ^ var_0.a.x, var_0.a.x) % vec4<u32>(32u))), !arg_2.x, -136f);
    var_0 = Struct_4(u_input.a, any(arg_2), var_0.c);
    var_0 = Struct_4(firstLeadingBit(~var_0.a), 4294967295u < ~var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c - var_0.c), var_0.c)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -1076f) * vec2<f32>(1133f, var_0.c)), vec2<f32>(-143f, _wgslsmith_f_op_f32(select(var_0.c, 1119f, var_0.b)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-405f, 159f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(538f, var_0.c), vec2<f32>(-469f, var_0.c))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(-1193f, var_0.c)), _wgslsmith_div_f32(-1517f, var_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~(~25025u), ~(vec2<i32>(u_input.b, 1i) >> (u_input.a.zz % vec2<u32>(32u))), vec2<bool>(true, true), _wgslsmith_div_i32(-u_input.b, abs(u_input.b)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1095f)) + 1832f), _wgslsmith_f_op_f32(sign(-587f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(f32(-1f) * -722f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-754f)) * -845f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.a.x, vec2<i32>(-58478i, u_input.b), vec2<bool>(true, false), -3402i)).x))));
    let var_1 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 27982u, u_input.c, u_input.a.x), vec4<u32>(15088u, 1u, u_input.a.x, u_input.a.x)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(0u), 1664u, 13986u), _wgslsmith_mult_u32(1u, 48417u)), _wgslsmith_mod_u32(max(75049u, 1u), ~(u_input.c >> (u_input.a.x % 32u))), 1u), any(select(vec4<bool>(false, all(vec2<bool>(false, false)), true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true), u_input.a.x == u_input.a.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))) + _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))));
    let var_2 = ~vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(select(8070u, 0u, var_1.b), ~var_1.a.x)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.a.x, 4294967295u), vec3<u32>(88796u, 1u, var_1.a.x)), 75767u));
    let var_3 = _wgslsmith_div_u32(~(40u | var_1.a.x), _wgslsmith_div_u32(select(var_1.a.x, u_input.c, false) ^ _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 40976u) ^ 1u);
    let var_4 = Struct_2((any(!vec4<bool>(var_1.b, false, true, false)) & var_1.b) && var_1.b, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), ~vec2<i32>(u_input.d, u_input.d)) | u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-432f, var_1.c, var_0.x, 2767f) * vec4<f32>(-438f, 109f, -394f, 1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2268f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-var_0)))), !any(vec2<bool>(var_1.b, var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)) - var_0.x)));
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.b & -2147483647i) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_4.b.b)))), firstTrailingBit(u_input.a.wy), select(select(select(select(vec3<u32>(52659u, var_2.x, var_2.x), vec3<u32>(var_3, 1u, 0u), vec3<bool>(var_4.a, var_4.a, var_1.b)), var_1.a.zwz >> (u_input.a.xxw % vec3<u32>(32u)), vec3<bool>(var_1.b, var_1.b, var_4.a)), _wgslsmith_add_vec3_u32(max(u_input.a.zyy, vec3<u32>(1u, 1u, 4294967295u)), select(vec3<u32>(var_1.a.x, 0u, 4294967295u), var_1.a.zyy, vec3<bool>(var_4.b.d, false, false))), true), vec3<u32>(1u, 0u, u_input.c), !select(select(vec3<bool>(var_1.b, true, var_4.b.d), vec3<bool>(false, true, false), false), !vec3<bool>(var_1.b, false, false), true)));
}

