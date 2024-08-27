struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.x);
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, firstTrailingBit(~14843u), abs(~(~1u)), 51722u), ~_wgslsmith_mod_vec4_u32(~select(vec4<u32>(4294967295u, 95044u, 53844u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 29808u), arg_2), min(~vec4<u32>(58987u, 27947u, 4294967295u, 45471u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = Struct_1(-(~(arg_0.x & -arg_0.x)));
    let var_4 = true;
    return Struct_1(~_wgslsmith_add_i32(max(~arg_1, _wgslsmith_mod_i32(-13232i, 2444i)), max(0i, i32(-1i) * -14674i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(-22039i);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e, arg_0.a), ~1i), -2147483647i));
    let var_1 = false;
    var_0 = Struct_1(1i);
    var_0 = func_2(arg_2);
    var var_2 = !select(!vec3<bool>(true, true, any(vec2<bool>(false, var_1))), !select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, true)), vec3<bool>(var_1, true, true), !var_1), select(vec3<bool>(var_1, !var_1, var_1), !vec3<bool>(var_1, true, var_1), all(select(vec3<bool>(var_1, true, true), vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(37711u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(62598u, 74368u, 7879u), max(vec3<u32>(43718u, 25191u, 59172u), vec3<u32>(30224u, 29572u, 37723u)))), vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(86618u, 1u)), _wgslsmith_mod_u32(abs(0u), 10203u >> (0u % 32u)), ~1u)) & select(vec3<u32>(1u, 1u, 1u) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(72948u, 4574u, 4294967295u, 17405u), vec4<u32>(1u, 23104u, 0u, 7937u)), 1u, ~0u), abs(~reverseBits(vec3<u32>(22573u, 18663u, 1u))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec3<bool>(true, true, false)), select(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)));
    var var_1 = Struct_1(u_input.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1134f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(abs(1077f)))))));
    var_1 = func_3(Struct_1(1816i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, 763f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f) + var_2.x))), func_2(func_1(vec3<i32>(-1i & u_input.b, var_1.a << (1u % 32u), -var_1.a), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-18646i, -58608i), _wgslsmith_clamp_i32(u_input.a.x, -14219i, var_1.a)), true, vec4<f32>(_wgslsmith_f_op_f32(select(-1065f, var_2.x, false)), _wgslsmith_f_op_f32(var_2.x * -544f), _wgslsmith_f_op_f32(abs(var_2.x)), 1397f))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, 632f)) - vec2<f32>(-788f, _wgslsmith_f_op_f32(ceil(-288f))))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(252f)), _wgslsmith_f_op_f32(abs(var_2.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1006f * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1082f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(771f, var_2.x) + vec2<f32>(-1000f, -184f)), vec2<f32>(-1550f, -515f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(var_2.x, var_2.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, var_2.x))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1456f, var_2.x)))));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(var_1.a, func_2(Struct_1(func_1(vec3<i32>(var_1.a, -1i, u_input.c), u_input.a.x, false, vec4<f32>(1833f, var_2.x, var_2.x, var_2.x)).a)).a, var_1.a));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(-384f)), _wgslsmith_f_op_f32(round(-301f)), var_2.x)))), ~abs(func_3(Struct_1(var_1.a), vec2<f32>(-567f, var_2.x), Struct_1(-28326i)).a >> (var_0.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 660f, -1000f) + vec4<f32>(var_2.x, var_2.x, var_2.x, -581f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 361f, -1000f, -384f), vec4<f32>(var_2.x, -522f, -1497f, var_2.x), true)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1582f, -1199f), vec4<f32>(var_2.x, 1000f, var_2.x, var_2.x)), select(false, true, true)))))), vec4<u32>(_wgslsmith_add_u32(4294967295u, var_0.x), var_0.x, 0u, 12083u));
}

