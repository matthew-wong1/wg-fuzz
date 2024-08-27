struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(34284u, 12693u, 0u, 0u), 1i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = Struct_1(select(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.d, global0.a.x), 24169u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(u_input.e, 46225u, global0.a.x, 0u)), ~64862u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.d, arg_0, u_input.d, 48198u) << (vec4<u32>(1u, 0u, 0u, global0.a.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, global0.a.x)), vec4<u32>(arg_0, 1u, 19646u, 1u))), vec4<bool>(true, true, true, true)), max(countOneBits(firstLeadingBit(u_input.b)), global0.b));
    global0 = Struct_1(~(~global0.a), 1i);
    global0 = Struct_1(select(~firstLeadingBit(vec4<u32>(35189u, global0.a.x, 48529u, 51017u)), ~global0.a, vec4<bool>(false, true, _wgslsmith_f_op_f32(min(607f, 708f)) >= _wgslsmith_f_op_f32(floor(-1000f)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)))), -23324i);
    global0 = Struct_1(~firstLeadingBit(max(vec4<u32>(global0.a.x, u_input.a, arg_0, arg_0), global0.a)), _wgslsmith_mod_i32(max(u_input.b, -21905i), global0.b));
    global0 = Struct_1(global0.a, reverseBits(u_input.b));
    return countOneBits(reverseBits(abs(vec4<u32>(1u, u_input.e, ~107804u, 4294967295u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_i32(firstLeadingBit(global0.b), max(~(~(-1i)), 17790i));
    var var_1 = global0.b;
    global0 = Struct_1(select(global0.a, vec4<u32>(42012u, arg_3.a.x, arg_3.a.x, 1u ^ _wgslsmith_mod_u32(global0.a.x, 0u)), vec4<bool>(true, false, arg_1 && !arg_1, arg_1)), arg_3.b);
    var var_2 = 48696u;
    var var_3 = !(!select(!(!vec4<bool>(arg_2, false, false, arg_2)), vec4<bool>(any(vec4<bool>(true, arg_2, arg_1, true)), 27498u >= u_input.d, true || arg_1, all(vec2<bool>(false, true))), vec4<bool>(any(vec4<bool>(arg_1, arg_2, arg_2, arg_2)), false, arg_1, arg_1)));
    return vec4<u32>(~(~arg_0.x) << (56585u % 32u), 43933u, select(5737u, arg_0.x, true && !(!var_3.x)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, arg_3.a.x, ~_wgslsmith_add_u32(arg_3.a.x, 4294967295u)), 110473u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), arg_3.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = !(!(false != all(vec4<bool>(true, true, false, true)))) || false;
    global0 = Struct_1(func_4(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.x, u_input.e, 4294967295u, 10424u), arg_3.a), func_3(4294967295u), max(~arg_3.a, min(arg_1.a, arg_2.a))), select(-2147483647i, -2147483647i, true) != u_input.b, any(!select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), Struct_1(~global0.a, ~_wgslsmith_clamp_i32(arg_0.x, 0i, -1i))), -arg_1.b | min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_0.x, 47655i) | arg_0.wyy, vec3<i32>(-1i, 6411i, 1i)), ~countOneBits(-13641i)));
    let var_1 = Struct_1(~arg_3.a, ~max(2147483647i, -(i32(-1i) * -67694i)));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(sign(593f));
    return ~arg_1.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 37930u <= ~(min(firstTrailingBit(u_input.a), u_input.e) << (21667u % 32u));
    var var_1 = _wgslsmith_mult_vec2_u32(arg_1.a.wx, _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(62811u, func_2(vec4<i32>(-26253i, -18323i, 1i, arg_1.b), Struct_1(vec4<u32>(arg_1.a.x, 4294967295u, arg_3.a.x, u_input.e), global0.b), arg_1, arg_1))), arg_1.a.yy));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(689f, arg_2, arg_2) + vec3<f32>(-1072f, arg_2, -1234f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-679f, -1682f, -409f) + vec3<f32>(arg_2, 779f, 314f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, -1613f, arg_2))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, _wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(select(-1124f, 124f, false)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -116f, 585f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 610f))))))), var_0 & ((arg_2 != _wgslsmith_f_op_f32(1000f + arg_2)) & var_0)));
    var_1 = arg_3.a.wz;
    var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(abs(arg_1.a.x), ~u_input.e) << (((vec2<u32>(23211u, 72773u) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))) ^ arg_3.a.zy) % vec2<u32>(32u)), select(vec2<u32>(_wgslsmith_mult_u32(arg_1.a.x, 17940u), _wgslsmith_sub_u32(41675u, 0u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(68314u, var_1.x), arg_1.a.ww), select(false, any(vec2<bool>(false, var_0)), 5848i >= arg_0)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, -539f) + vec2<f32>(-1364f, -391f)))))))));
    global0 = func_1(-14809i, Struct_1(global0.a, _wgslsmith_mult_i32(-reverseBits(u_input.b), u_input.b >> ((u_input.d ^ 0u) % 32u))), 175f, Struct_1(vec4<u32>(~global0.a.x, ~(~u_input.e), _wgslsmith_add_u32(_wgslsmith_mod_u32(82867u, u_input.d), ~u_input.d), 48394u), u_input.b));
    let var_1 = func_1(~(-(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, u_input.c.x, 21026i, 2147483647i), vec4<i32>(global0.b, -1i, 1i, global0.b)) & -u_input.b)), Struct_1(~func_4(vec4<u32>(global0.a.x, 22734u, 1u, global0.a.x) & global0.a, false, true, Struct_1(vec4<u32>(0u, global0.a.x, global0.a.x, global0.a.x), 2917i)), i32(-1i) * -1i), _wgslsmith_f_op_f32(f32(-1f) * -1688f), Struct_1(global0.a, 0i));
    var var_2 = select(!select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-341f, var_0.x) * _wgslsmith_f_op_f32(var_0.x - var_0.x)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -310f))))));
    var_3 = -2767f;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-19554i);
}

