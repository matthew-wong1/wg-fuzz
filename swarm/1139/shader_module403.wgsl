struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(1020f, -1000f), vec2<f32>(1000f, 1628f), vec2<f32>(-835f, -328f), vec2<f32>(-1122f, -1132f), vec2<f32>(-1020f, 1174f), vec2<f32>(-488f, 2128f), vec2<f32>(-372f, -247f), vec2<f32>(-2108f, 111f), vec2<f32>(1000f, 1066f), vec2<f32>(-550f, -291f), vec2<f32>(1488f, 1203f), vec2<f32>(837f, -880f), vec2<f32>(-2167f, -101f), vec2<f32>(-310f, 1144f), vec2<f32>(309f, -656f), vec2<f32>(720f, 677f), vec2<f32>(-878f, -1358f), vec2<f32>(910f, -1085f), vec2<f32>(-1000f, 214f), vec2<f32>(709f, -588f), vec2<f32>(-199f, -1073f), vec2<f32>(-109f, -766f), vec2<f32>(-2922f, 868f), vec2<f32>(-467f, -574f), vec2<f32>(-325f, 1125f), vec2<f32>(1602f, 681f), vec2<f32>(-1000f, 1000f));

var<private> global1: vec4<f32> = vec4<f32>(614f, 952f, -987f, 424f);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * global2.c.x)), _wgslsmith_f_op_f32(742f - 217f))), ~(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, -8098i), ~global2.b)), vec2<f32>(-1682f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = true & (any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))) | true);
    var_0 = true;
    let var_1 = _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(78117i, 25038i, global2.b, -global2.b), vec4<i32>(_wgslsmith_mult_i32(0i, abs(42966i)), func_2(u_input.e.xxw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_1))).b, select(-2147483647i, _wgslsmith_sub_i32(-506i, global2.b), false), abs(-50426i))));
    var var_2 = arg_2;
    let var_3 = 423f;
    return !(!vec4<bool>(true, !any(vec4<bool>(false, false, false, true)), false, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = vec2<u32>(4294967295u, countOneBits(4294967295u << (u_input.c % 32u)) | 700u) | countOneBits(vec2<u32>(~52647u, 0u));
    var var_1 = func_2(_wgslsmith_mod_vec3_u32(u_input.e.wxw, vec3<u32>(_wgslsmith_div_u32(select(u_input.d.x, 1u, false), 25128u), 20833u, var_0.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(375f, global1.x), vec2<f32>(834f, global2.a.x))), vec2<f32>(global1.x, 1386f))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), -1000f, 618f)), 26898i & _wgslsmith_clamp_i32(~var_1.b, -33444i, abs(-1i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))));
    var_1 = func_2(~abs(vec3<u32>(29689u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), select(var_0.x, u_input.e.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, -1000f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(0u, 27u)])))))));
    let var_2 = func_2(vec3<u32>(~_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x) << (~firstLeadingBit(4294967295u) % 32u), 1u, ~61240u | ~firstLeadingBit(u_input.e.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 827f))), _wgslsmith_f_op_f32(f32(-1f) * -614f)));
    return func_2(firstLeadingBit(vec3<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(u_input.e, countOneBits(vec4<u32>(1u, u_input.c, u_input.e.x, 4294967295u))), countOneBits(~u_input.e.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-720f, global2.a.x), _wgslsmith_f_op_vec2_f32(-global2.a.yy)))), var_2.a.zy));
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(global2.a.x, global1.x)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-246f + -444f)), global2.a.x), global2.b, _wgslsmith_f_op_vec2_f32(-global1.zz)));
    let var_1 = !vec2<bool>(arg_1, true);
    var_0 = Struct_2(func_4(select(func_3(~arg_0, _wgslsmith_f_op_f32(-global1.x), func_2(vec3<u32>(0u, 4294967295u, 19458u), global2.c)), vec4<bool>(true, var_0.a.b == 1i, false, true | arg_1), true), all(select(vec3<bool>(false, arg_1, false), vec3<bool>(true, true, true), vec3<bool>(true, false, var_1.x)))));
    global0 = array<vec2<f32>, 27>();
    let var_2 = select(vec3<i32>(abs(-33065i), var_0.a.b << (_wgslsmith_sub_u32(u_input.d.x, 8977u) % 32u), arg_0 | global2.b), reverseBits(~select(abs(vec3<i32>(1i, 1i, -27729i)), ~vec3<i32>(var_0.a.b, global2.b, global2.b), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, arg_1, false), var_1.x))), !(arg_1 & arg_1));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_0.a.c, vec2<f32>(-180f, _wgslsmith_f_op_f32(-global1.x)))), reverseBits(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(max(-2147483647i, u_input.a), select(true, u_input.e.x != _wgslsmith_mod_u32(~u_input.c, 1u), true));
}

