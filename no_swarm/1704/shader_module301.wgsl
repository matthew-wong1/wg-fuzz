struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1376f, -555f), vec2<f32>(-1279f, -157f), vec2<f32>(-715f, 129f), vec2<f32>(-291f, -115f), vec2<f32>(-556f, -1000f), vec2<f32>(-625f, 354f));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(4294967295u, -647f, -1278f), Struct_1(47905u, -1494f, -161f), Struct_1(19749u, 144f, -975f), Struct_1(0u, 1000f, 1212f), Struct_1(45236u, 1466f, 136f), Struct_1(34233u, -315f, -442f), Struct_1(4294967295u, 2908f, -1096f), Struct_1(1u, 213f, -219f), Struct_1(0u, 906f, 1519f), Struct_1(0u, -1000f, 1000f), Struct_1(4983u, -270f, -2090f), Struct_1(19873u, 1000f, 275f), Struct_1(4294967295u, 233f, -1346f));

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global3: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1313f, 1556f), vec2<f32>(1215f, -1505f), vec2<f32>(-409f, 2106f), vec2<f32>(427f, 462f), vec2<f32>(598f, 128f), vec2<f32>(406f, 524f), vec2<f32>(691f, -644f), vec2<f32>(879f, 2035f), vec2<f32>(538f, 285f), vec2<f32>(-439f, 1792f), vec2<f32>(1407f, -848f), vec2<f32>(-654f, -223f), vec2<f32>(513f, -613f), vec2<f32>(481f, 942f), vec2<f32>(100f, 893f), vec2<f32>(268f, 744f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    var var_0 = ~(~vec4<u32>(firstTrailingBit(1u), (u_input.d >> (0u % 32u)) << (abs(50660u) % 32u), u_input.a.x | 1u, u_input.c.x));
    var_0 = u_input.a;
    var var_1 = Struct_1(~(var_0.x ^ 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) * -705f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, -277f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(464f, 742f, false)))) - 1000f));
    var var_2 = abs(select(vec2<i32>(0i, _wgslsmith_add_i32(u_input.b, u_input.b)) ^ -(~vec2<i32>(22578i, u_input.b)), vec2<i32>(-u_input.b ^ min(u_input.b, u_input.b), -18703i), all(vec2<bool>(true, true))));
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(max(u_input.b, var_2.x), var_2.x), var_2.x, 3177i), -select(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, u_input.b, 6275i), ~vec3<i32>(u_input.b, 6374i, var_2.x)), -(~vec3<i32>(1i, 0i, u_input.b)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(-var_1.c);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    global2 = array<vec2<bool>, 6>();
    var var_0 = vec4<i32>(-28137i, u_input.b, max(-2147483647i, arg_0.x), select(arg_0.x, u_input.b, u_input.a.x >= ~56177u));
    let var_1 = Struct_1(0u, _wgslsmith_f_op_f32(trunc(-396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1000f));
    let var_2 = ~(~(~1u));
    let var_3 = Struct_1(var_2 ^ ~(~_wgslsmith_dot_vec4_u32(u_input.a, arg_1)), 352f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(179f, var_1.b)))))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<vec2<bool>, 6>();
    global0 = array<vec2<f32>, 6>();
    let var_0 = Struct_1(13594u, _wgslsmith_f_op_f32(abs(arg_1)), arg_1);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~firstTrailingBit(arg_0.a) | _wgslsmith_clamp_u32(~arg_0.a, arg_0.a, _wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zyw, vec3<u32>(4294967295u, arg_0.a, arg_0.a)), countOneBits(~u_input.d)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 1543f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(175f, -2254f, true)))) * arg_1))));
    global2 = array<vec2<bool>, 6>();
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(0u, 16u)];
    let var_1 = func_4(Struct_1(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1614i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), u_input.a, 14757u) | ((1u & u_input.a.x) ^ 4294967295u), var_0.x, -1000f), -619f, firstLeadingBit(19879u) >= (((0u >> (1u % 32u)) | arg_0.a) << (_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u)), ~(-((vec4<i32>(2147483647i, -1i, 2147483647i, 49279i) >> (vec4<u32>(arg_0.a, arg_0.a, 4294967295u, arg_0.a) % vec4<u32>(32u))) | -vec4<i32>(u_input.b, 0i, -29997i, -2147483647i))));
    var var_2 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))), ~_wgslsmith_mod_u32(arg_0.a, var_1.a) > 14535u, !all(vec3<bool>(true, true, false))), true);
    global1 = array<Struct_1, 13>();
    global3 = array<vec2<f32>, 16>();
    return _wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.b, 192f, true)), var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global0 = array<vec2<f32>, 6>();
    var var_0 = ~(~firstLeadingBit(u_input.d));
    var var_1 = vec2<i32>(~(-countOneBits(~40689i)), u_input.b);
    let var_2 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(230f, _wgslsmith_f_op_f32(231f * -385f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1585f) + _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(0u, 13u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(func_4(Struct_1(var_2.a, var_2.c, 926f), var_2.c, true, vec4<i32>(var_1.x, var_1.x, u_input.b, 0i)))), 121f, _wgslsmith_f_op_f32(-var_2.c) >= var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(388f * 511f) - _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_2.c) * _wgslsmith_div_f32(var_2.c, 791f))), var_2.c), ~(~reverseBits(~u_input.c)));
}

