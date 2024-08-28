struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<i32, 15>();
    var var_0 = _wgslsmith_div_i32(~(~u_input.a.x), u_input.a.x);
    global0 = array<i32, 15>();
    var_0 = max(-(~_wgslsmith_mod_i32(2001i, 25705i)), _wgslsmith_sub_i32(abs(-1i & u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24956u), vec2<u32>(1u, 1u)), 15u)])) | ~(~(-19822i));
    var var_1 = true;
    return abs(1u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~4294967295u, 1i, ~vec4<u32>(34673u, abs(_wgslsmith_sub_u32(44749u, 27695u)), ~firstTrailingBit(39779u), _wgslsmith_add_u32(func_3(), 1u)), 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1618f), _wgslsmith_f_op_f32(abs(-1454f)), -1180f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(343f, -489f, 393f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -1125f, -996f)))))));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_2 = all(vec2<bool>(arg_0.x, arg_0.x));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = abs(arg_0.c.x);
    let var_1 = _wgslsmith_mod_u32(arg_0.c.x, ~(~(_wgslsmith_clamp_u32(var_0, 1u, 1u) ^ var_0)));
    global0 = array<i32, 15>();
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_0, var_1)), arg_0.c.yz), arg_0.c.wy), min(-_wgslsmith_mod_i32(13596i, u_input.a.x) >> (_wgslsmith_div_u32(var_0, ~0u) % 32u), -1i), vec4<u32>(~_wgslsmith_mult_u32(var_1, _wgslsmith_clamp_u32(60231u, 48730u, 55441u)), arg_0.d, var_0, arg_0.c.x), firstLeadingBit(~reverseBits(_wgslsmith_mod_u32(arg_0.c.x, 16613u))));
    global0 = array<i32, 15>();
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), true);
    let var_2 = true;
    var_0 = arg_1;
    let var_3 = _wgslsmith_div_i32(~(-8528i) & global0[_wgslsmith_index_u32(2661u, 15u)], _wgslsmith_clamp_i32(arg_0.x, select(arg_0.x, 2147483647i, false) ^ arg_2.b, ~63451i));
    return arg_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f - 464f)), arg_1.x));
    var var_1 = func_5(-_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1513i) & vec2<i32>(global0[_wgslsmith_index_u32(arg_3.x, 15u)], -2147483647i)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.x, global0[_wgslsmith_index_u32(arg_3.x, 15u)]), vec2<i32>(-2147483647i, 112043i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(select(-766f, -1031f, true)))))), func_4(func_2(vec4<bool>(false, true, true, false), -(~vec4<i32>(arg_2, u_input.a.x, u_input.a.x, 2147483647i)))));
    let var_2 = !select(select(vec4<bool>(select(false, false, false), true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), all(vec2<bool>(false, true))), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(true, true, false))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), true, true, true));
    let var_3 = Struct_1(1u, 4431i, ~vec4<u32>(~firstTrailingBit(var_1.c.x), ~arg_3.x, firstLeadingBit(41716u), arg_3.x), var_1.c.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<f32>(232f, -247f, -938f, -430f), u_input.a.x, vec4<u32>(0u, 12985u, 52105u, 0u))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1303f)), -1471f), _wgslsmith_f_op_f32(-637f + -748f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, _wgslsmith_f_op_f32(-359f * -480f), _wgslsmith_f_op_f32(-345f * 345f), _wgslsmith_f_op_f32(768f - 574f)))));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_1 = !select(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 35153u), vec2<u32>(4294967295u, 0u)) == ~4294967295u, true, true), vec4<bool>(false, true, true, any(vec3<bool>(true, true, true))), vec4<bool>(false, false, true, _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(1000f - var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~select(select(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 43972u, 4294967295u), true), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, true), var_1.x))), u_input.a.yw, vec3<u32>(~_wgslsmith_mult_u32(74667u, func_5(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(31085u, 15u)]), 739f, Struct_1(4294967295u, 9974i, vec4<u32>(13377u, 0u, 46851u, 24748u), 29351u)).a), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(4294967295u), ~4294967295u, 1u), _wgslsmith_mod_u32(6167u, ~1u), ~4294967295u), abs(~firstTrailingBit(1309u))), ~vec2<u32>(_wgslsmith_clamp_u32(~1u, 59301u, countOneBits(1u)), ~(~4294967295u)));
}

