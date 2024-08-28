struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 149f)), vec2<bool>(arg_0.c, arg_0.b.x))))))));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -364f);
    global1 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 228f) - vec3<f32>(-1659f, arg_0.a.x, arg_0.a.x))), vec3<f32>(700f, 823f, _wgslsmith_f_op_f32(-790f + -102f)), arg_0.b)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(abs(932f))))));
    let var_2 = Struct_2(!(!select(arg_0.b, select(vec3<bool>(true, arg_0.c, arg_0.c), arg_0.b, arg_0.b), 140f > arg_0.a.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(global0.x, global0.x), arg_0.zwx, arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(336f - 597f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1392f - global0.x), 566f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(sign(-2081f)))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) - vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(global0.x, -646f), arg_0.zxy, true)))))))));
    let var_0 = global1[_wgslsmith_index_u32(u_input.e, 24u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -881f, global0.x, _wgslsmith_f_op_f32(340f * 1020f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -271f, -1112f) + vec4<f32>(global0.x, global0.x, global0.x, -105f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(362f, global0.x, global0.x, 1042f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 491f, -541f, -123f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(994f, 1529f, 1153f, 917f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, global0.x, 549f, global0.x) + vec4<f32>(645f, -1271f, 537f, global0.x)))))));
    let var_2 = Struct_3(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, -265f, global0.x)), select(-1i < (_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.e, 24u)], -65197i) | _wgslsmith_div_i32(u_input.d, u_input.b.x)), !(arg_0.x | all(arg_0)), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global0.x, global0.x, 403f) + vec4<f32>(var_1.x, -941f, 192f, -302f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 432f, global0.x, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f + var_1.x)), global0.x, -174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), u_input.d);
    global1 = array<i32, 24>();
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, _wgslsmith_f_op_f32(-623f + var_1.x), global0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1643f, 762f, 1000f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.zxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -481f, 206f) * vec3<f32>(var_2.d.x, 1110f, 941f)))))), _wgslsmith_f_op_f32(-1819f + var_1.x), vec2<u32>(~countOneBits(~u_input.e), _wgslsmith_mult_u32(firstLeadingBit(u_input.e), countOneBits(_wgslsmith_mult_u32(u_input.e, 4294967295u)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> u32 {
    global1 = array<i32, 24>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(629f, 155f) * arg_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1), arg_1)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-520f, arg_1.x), arg_1, vec2<bool>(false, true))) + arg_1)))));
    var var_0 = func_2(vec4<bool>(!(!all(vec2<bool>(true, false))), !(u_input.e <= ~15147u), true, true));
    var var_1 = var_0.c.x | 66004u;
    var_0 = func_2(select(vec4<bool>(select(true, true, true), !(1231f >= arg_1.x), all(vec2<bool>(false, false)), true || (0i >= u_input.b.x)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, all(vec4<bool>(true, false, false, false)), false, true), -1187f <= _wgslsmith_f_op_f32(-var_0.a.x)), !(_wgslsmith_mod_u32(0u, arg_0.x) > ~1u)));
    return 41274u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~select(~0u, 1u, any(vec2<bool>(true, false))), abs(func_1(~vec2<u32>(u_input.e, 0u), vec2<f32>(-934f, 1455f))), firstTrailingBit(~(~u_input.e)), 5625u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(46439u, 99810u | u_input.e, u_input.e << (4294967295u % 32u)), ~(~0u), ~u_input.e | u_input.e, ~_wgslsmith_mod_u32(u_input.e, u_input.e)), _wgslsmith_add_vec4_u32(reverseBits(reverseBits(vec4<u32>(u_input.e, 22024u, 0u, u_input.e))), vec4<u32>(func_1(vec2<u32>(u_input.e, 1u), vec2<f32>(global0.x, -1053f)), 18228u, u_input.e, ~40084u))));
    global1 = array<i32, 24>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 775f, -613f), vec3<f32>(1672f, global0.x, -290f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1214f, 338f, global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1103f), vec3<f32>(-485f, global0.x, global0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x), _wgslsmith_f_op_f32(-global0.x))), vec2<u32>(abs(var_0.x), ~u_input.e));
    global0 = var_1.a.yz;
    var var_2 = any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))) | any(vec2<bool>(true && all(vec3<bool>(true, true, false)), true));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f))), vec3<bool>(all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), false)), true, !(firstLeadingBit(var_0.x) <= 0u)), true);
    var_1 = func_2(select(vec4<bool>(all(var_3.b.yy), var_0.x > ~64704u, var_3.b.x, !var_3.c), !(!(!vec4<bool>(false, var_3.b.x, false, true))), !(true && var_3.c)));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.zx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f * var_3.a.x)), -822f, var_1.b) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), -1501f, _wgslsmith_f_op_f32(select(-628f, global0.x, true)))))), abs(vec3<u32>(0u, var_0.x, 4294967295u)), vec2<f32>(-480f, var_3.a.x));
}

