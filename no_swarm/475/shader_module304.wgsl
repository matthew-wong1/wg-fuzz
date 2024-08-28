struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -3375f;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(16008u, 6713u, 27000u, 79681u));

var<private> global2: f32;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, 1547f));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f), 110f);
    let var_1 = 14128u;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(814f)) * _wgslsmith_div_f32(-281f, -1173f)) + _wgslsmith_f_op_f32(-1325f * _wgslsmith_f_op_f32(floor(549f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(716f - -183f) - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(504f, -821f, false)) + _wgslsmith_f_op_f32(max(-1000f, 2114f)))))));
    global3 = !select(select(arg_1, vec4<bool>(arg_0, false, arg_1.x, true), true), !select(arg_1, arg_1, select(vec4<bool>(arg_0, global3.x, arg_0, global3.x), vec4<bool>(false, false, arg_0, true), vec4<bool>(global3.x, true, false, arg_0))), countOneBits(reverseBits(global1.a.x)) > ~global1.a.x);
    return any(arg_1);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))));
    let var_1 = Struct_3(global1.a);
    global1 = var_1;
    var var_2 = all(!(!vec4<bool>(global3.x, any(vec4<bool>(false, true, false, global3.x)), true, func_3(global3.x, vec4<bool>(global3.x, false, true, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -1490f), _wgslsmith_f_op_f32(var_0.x * arg_0.x), _wgslsmith_div_f32(1118f, var_0.x), -458f)))));
    return Struct_5(vec2<i32>(19908i >> (u_input.b % 32u), i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.e.zx, u_input.e.xz)), vec2<f32>(_wgslsmith_f_op_f32(min(257f, arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x + var_3.x)))), _wgslsmith_f_op_f32(select(918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-650f))), all(vec4<bool>(true, global3.x, !global3.x, global3.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = 4294967295u;
    global2 = arg_1.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x - 611f))))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25738u), ~(global1.a.yz << (u_input.c % vec2<u32>(32u))));
    let var_2 = func_2(arg_1.d, firstLeadingBit(u_input.a));
    return _wgslsmith_f_op_f32(var_2.c + arg_1.a) <= _wgslsmith_f_op_f32(104f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c)) * _wgslsmith_f_op_f32(1226f - var_2.c)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_1.d.x * var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(857f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1265f, 1526f))), 614f, func_1(~u_input.e.x, Struct_1(1187f, global3.x, vec3<f32>(-647f, -1013f, 477f), vec4<f32>(-1000f, -598f, 727f, -317f)))))), !(true && global3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, 308f, 109f)), vec3<f32>(300f, -1076f, 830f))) * vec3<f32>(_wgslsmith_div_f32(1523f, -571f), _wgslsmith_f_op_f32(1028f + 156f), -114f)) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1469f, -362f)), _wgslsmith_f_op_f32(-692f * -658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), -572f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1489f, -1000f, 1067f, 1240f), vec4<f32>(611f, -366f, -354f, 545f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, -741f, -335f, -1547f) + vec4<f32>(-1677f, 217f, 2563f, 1202f)), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1260f, 643f, -1676f, 1984f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1796f, 1263f, 354f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1661f, 759f, -221f, 1090f)))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - var_0.d.x));
    var var_1 = ~u_input.d.x;
    global2 = _wgslsmith_f_op_f32(175f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1209f + _wgslsmith_f_op_f32(-var_0.d.x)), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-462f, 1360f)))));
    let var_2 = !global3.ywy;
    var var_3 = Struct_4(~min(u_input.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, global1.a.x), ~u_input.d)));
    var_1 = u_input.b;
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(1373f, 354f), true, var_0.c, vec4<f32>(826f, -1297f, _wgslsmith_f_op_f32(-1545f + _wgslsmith_f_op_f32(abs(928f))), 873f)), _wgslsmith_f_op_vec4_f32(ceil(var_0.d)), var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(808f))), global3.x, var_0.d.zyx, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), -1547f)), -1000f, 710f, -1000f)));
    var var_5 = firstTrailingBit(-47057i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.c.x) * _wgslsmith_f_op_f32(-var_4.a.c.x)), _wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-func_2(vec4<f32>(var_4.b.x, 1002f, 425f, var_0.c.x), 4294967295u).b.x), 2469f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(var_4.a.c.x, var_4.a.d.x, var_0.a, -226f))))));
}

