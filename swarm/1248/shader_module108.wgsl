struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1597f))))))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f) * _wgslsmith_f_op_f32(-807f + 1056f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1823f) * _wgslsmith_f_op_f32(f32(-1f) * -511f)))))));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return 1i ^ abs(-(arg_2.c.a.x | ~u_input.c));
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.a.zww;
    var_0 = -vec3<i32>(firstTrailingBit(u_input.b), var_0.x, u_input.b << (reverseBits(1u) % 32u));
    var_0 = ~((countOneBits(vec3<i32>(var_0.x, u_input.c, 36823i)) & vec3<i32>(-10497i, u_input.b, 2147483647i)) >> (countOneBits(~vec3<u32>(20331u, 79692u, 4294967295u)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, 0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(647u, 10720u, 26795u), vec3<u32>(2034u, 4294967295u, 4294967295u)), ~0u)), ~1u, 0u) % vec3<u32>(32u));
    let var_1 = select(select(select(vec3<bool>(true, true, !global0[_wgslsmith_index_u32(58024u, 25u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(22791u, 25u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(80238u, 25u)], true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 25u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4486u, 25u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], false), global0[_wgslsmith_index_u32(35112u, 25u)]))), !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(55966u, 25u)], false))), !vec3<bool>(select(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(10640u, 25u)], false), global0[_wgslsmith_index_u32(abs(0u), 25u)], u_input.b <= var_0.x)), !vec3<bool>(_wgslsmith_mult_u32(1u, 4294967295u) > _wgslsmith_clamp_u32(31257u, 54459u, 8376u), false, func_3(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(44220u, 25u)], global0[_wgslsmith_index_u32(10748u, 25u)], false)), 1u, Struct_2(53466u, Struct_1(vec2<i32>(var_0.x, -1906i)), Struct_1(vec2<i32>(-17062i, -2147483647i)), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x)), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)) >= ~var_0.x), !(!global0[_wgslsmith_index_u32(~(~0u), 25u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-992f)) - _wgslsmith_f_op_f32(f32(-1f) * -1200f));
    return vec4<bool>(true, false, all(vec4<bool>(!global0[_wgslsmith_index_u32(~7825u, 25u)], true, !var_1.x, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f * -684f) + _wgslsmith_f_op_f32(710f + 1000f)))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1011f * 969f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1096f))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_4 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51486u, 14624u), vec2<u32>(1u, 767u)), 0u, min(20638u, 15102u), 1u)), 1u), Struct_1(u_input.a.ww), Struct_1(u_input.a.zx), vec3<i32>(-1i, 2147483647i, u_input.b));
    let var_1 = Struct_2(firstTrailingBit(~(~(~var_0.a))), Struct_1(u_input.a.xy), var_0.b, ~var_0.d);
    let var_2 = -781f;
    return Struct_4(!select(!func_2().xyw, !(!arg_0.ywx), !select(vec3<bool>(true, true, true), arg_0.xwy, arg_0.xzy)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global0 = array<bool, 25>();
    let var_0 = ~arg_0;
    let var_1 = func_4(func_2(), true);
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return Struct_1(~(-select(min(u_input.a.yy, vec2<i32>(37363i, -2147483647i)), u_input.a.yy << (vec2<u32>(24277u, 24351u) % vec2<u32>(32u)), true || var_1.a.x)));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    let var_0 = 34630u == firstTrailingBit(firstTrailingBit(~arg_0) ^ 4294967295u);
    var var_1 = vec4<bool>(arg_3, any(!vec3<bool>(all(arg_1), global0[_wgslsmith_index_u32(1u, 25u)], arg_0 > 4294967295u)), true, true);
    var var_2 = -3147f;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -591f);
    var var_4 = u_input.a;
    return Struct_3(Struct_2(~(~countOneBits(57392u)), Struct_1(vec2<i32>(func_1(vec3<u32>(arg_0, arg_0, arg_0), vec4<f32>(562f, 1602f, 762f, -2297f), -1i, global0[_wgslsmith_index_u32(15505u, 25u)]).a.x, ~var_4.x)), func_1(select(max(vec3<u32>(arg_0, 4294967295u, 52000u), vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(24682u, 48829u, arg_0), !vec3<bool>(global0[_wgslsmith_index_u32(20679u, 25u)], arg_1.x, true)), vec4<f32>(-524f, _wgslsmith_f_op_f32(step(1113f, -469f)), -644f, _wgslsmith_f_op_f32(1450f - -2058f)), select(46859i, 1i, func_4(vec4<bool>(false, arg_3, true, var_1.x), true).a.x), true), -countOneBits(firstTrailingBit(u_input.a.zxx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    var var_0 = !vec4<bool>(true & global0[_wgslsmith_index_u32(~(57663u >> (0u % 32u)), 25u)], all(select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(13637u, 25u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(29038u, 25u)], false), false), !vec3<bool>(global0[_wgslsmith_index_u32(18693u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], false), global0[_wgslsmith_index_u32(4294967295u, 25u)])), true, true);
    let var_1 = func_5(countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(min(43199u, 30088u), 1u), 26034u)), var_0.yy, func_1(~_wgslsmith_div_vec3_u32(vec3<u32>(72336u, 57202u, 19113u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1706f)), _wgslsmith_f_op_f32(f32(-1f) * -1168f), 450f, _wgslsmith_f_op_f32(154f * -924f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(739f, -511f, -1587f, 778f))))), -72614i, global0[_wgslsmith_index_u32(0u, 25u)]), global0[_wgslsmith_index_u32(29709u, 25u)]);
    global0 = array<bool, 25>();
    let var_2 = ~(-max(vec4<i32>(-1i) * -vec4<i32>(var_1.a.d.x, var_1.a.c.a.x, 47826i, 0i), vec4<i32>(-u_input.c, -1i, -49843i, _wgslsmith_dot_vec3_i32(u_input.a.ywx, u_input.a.zwy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(506f, -132f) * _wgslsmith_div_vec2_f32(vec2<f32>(1974f, 1222f), vec2<f32>(-2067f, -362f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1113f, -573f)))))), ~(~vec3<u32>(~var_1.a.a, _wgslsmith_clamp_u32(var_1.a.a, 56536u, 4294967295u), var_1.a.a)), -1000f, -1i);
}

