struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    let var_0 = vec3<u32>(~(~(~1u)), 34239u, 0u);
    let var_1 = _wgslsmith_f_op_f32(2160f - -1724f);
    global0 = u_input.b;
    let var_2 = Struct_1(true);
    var var_3 = 2147483647i;
    return !(0i < u_input.b);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> f32 {
    global0 = -15768i;
    var var_0 = countOneBits(0u);
    var var_1 = vec3<u32>(1u, 4294967295u, arg_2.a.x);
    let var_2 = -316f;
    var var_3 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x), false), vec4<bool>(!arg_0.x, arg_0.x, arg_0.x, -2147483647i == ~u_input.b), !(!func_2()));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-560f - _wgslsmith_div_f32(286f, -100f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(1697f + 1f))), _wgslsmith_f_op_f32(-var_2)))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(arg_0.a.x, _wgslsmith_clamp_u32(~arg_0.a.x, ~arg_0.a.x, arg_0.a.x), arg_0.a.x, select(select(arg_0.a.x, 4294967295u, false), arg_0.a.x ^ 8920u, func_2()))));
    var_0 = Struct_3(firstLeadingBit(vec4<u32>(arg_0.a.x, var_0.a.x, ~(~arg_0.a.x), _wgslsmith_mult_u32(min(1u, arg_0.a.x), var_0.a.x))));
    var var_1 = var_0.a.zxx;
    var_1 = arg_0.a.ywx;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), -9508i, Struct_3(vec4<u32>(28410u, var_0.a.x, arg_0.a.x, var_1.x))))), -990f))));
    return Struct_3(firstLeadingBit(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, var_1.x, 40679u, var_1.x)), _wgslsmith_sub_vec4_u32(~arg_0.a, vec4<u32>(var_0.a.x, var_1.x, 3576u, 21751u) >> (vec4<u32>(arg_0.a.x, var_1.x, var_0.a.x, 1u) % vec4<u32>(32u))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_add_i32(-(abs(_wgslsmith_mult_i32(-1i, u_input.a)) ^ 1i), firstLeadingBit(u_input.a & _wgslsmith_sub_i32(~12793i, u_input.a)));
    var var_0 = vec3<bool>(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -2147483647i), -23272i) != -(~select(-6369i, 53302i, false)), any(vec3<bool>(true, 8519u <= arg_0, all(vec4<bool>(true, true, true, false)))), true);
    let var_1 = Struct_1(!any(vec3<bool>(true, var_0.x, -33418i == u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f - -275f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1727f)) * _wgslsmith_f_op_f32(func_3(var_0.xx, i32(-1i) * -33012i, Struct_3(arg_1.a)))))));
    let var_3 = 301f;
    return Struct_3(abs(vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, ~4294967295u)) >> (abs(min(~vec4<u32>(arg_0, arg_0, arg_1.a.x, arg_0), _wgslsmith_mult_vec4_u32(arg_1.a, arg_1.a))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = max(abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(-27951i, u_input.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(18288i, u_input.a)), -31306i))), u_input.b);
    let var_0 = arg_3.a;
    let var_1 = var_0;
    let var_2 = Struct_3(func_1(arg_0).a);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(926f, 112f) * _wgslsmith_f_op_vec2_f32(floor(arg_1.yz))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(376f, arg_1.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + arg_1.xz)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.x)), arg_1.xx));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(85740u, func_1(Struct_3(~vec4<u32>(0u, 0u, 0u, 23455u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-499f, 958f, 1782f), vec3<f32>(-338f, -439f, -549f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1636f, -677f, -1960f) + vec3<f32>(-384f, 658f, 2676f))), any(vec3<bool>(true, false, true)))))), !vec3<bool>(true, _wgslsmith_sub_i32(u_input.b, -54316i) != u_input.a, select(func_2(), true, any(vec4<bool>(true, false, false, false)))), Struct_2(Struct_1(all(vec4<bool>(true, false, true, true)))));
    var_0 = func_5(func_4(reverseBits(~1u), func_1(func_4(30874u, Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-318f, 1288f, -304f), vec3<f32>(530f, 1353f, -193f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(540f, -766f, 557f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1261f, -1099f, -1374f)))), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(300f * _wgslsmith_f_op_f32(ceil(-737f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -258f))))), vec3<bool>(any(!(!vec4<bool>(false, true, var_0.a.a, var_0.a.a))), all(vec4<bool>(true, true, true, var_0.a.a)), false), Struct_2(func_5(Struct_3(~vec4<u32>(130025u, 1u, 58711u, 11189u)), vec3<f32>(-412f, _wgslsmith_f_op_f32(abs(-240f)), _wgslsmith_f_op_f32(min(-623f, 465f))), !select(vec3<bool>(true, var_0.a.a, var_0.a.a), vec3<bool>(false, var_0.a.a, var_0.a.a), true), Struct_2(func_5(Struct_3(vec4<u32>(1u, 46063u, 1314u, 4294967295u)), vec3<f32>(-810f, 952f, -583f), vec3<bool>(true, var_0.a.a, false), Struct_2(Struct_1(true))).a)).a));
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-315f, -892f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1262f, 354f), vec2<f32>(1900f, 837f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.a.a, var_0.a.a), -2147483647i, Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 5945u)))), _wgslsmith_f_op_f32(min(-309f, -614f))), 641f)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-671f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * 162f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 63523u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 65603u)))), ~_wgslsmith_sub_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-7427i, -1i, u_input.b, -9128i), vec4<i32>(1i, -53463i, 1i, -1i)), vec4<i32>(-38296i, 20926i, 0i, u_input.b)), vec4<i32>(u_input.a | 0i, select(0i, 1i, var_0.a.a), -1i, ~u_input.b)), countOneBits(vec4<i32>(~(-103932i), 31555i, _wgslsmith_sub_i32(-17342i, u_input.a), 0i)));
}

