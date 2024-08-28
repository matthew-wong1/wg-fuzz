struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-236f, 225f, 824f), vec3<f32>(-1668f, 214f, 815f), vec3<f32>(611f, -2237f, -309f), vec3<f32>(135f, 1118f, 969f), vec3<f32>(191f, 1637f, -1000f), vec3<f32>(220f, 1000f, 498f), vec3<f32>(1113f, -125f, -914f), vec3<f32>(-1896f, -159f, -1566f), vec3<f32>(1067f, 578f, 1300f), vec3<f32>(-1009f, 1212f, 947f), vec3<f32>(899f, 1528f, -284f), vec3<f32>(159f, 379f, 645f), vec3<f32>(322f, -473f, 302f), vec3<f32>(-1022f, 391f, -1165f), vec3<f32>(-299f, 907f, 478f), vec3<f32>(1137f, -134f, -229f), vec3<f32>(494f, -1779f, 505f), vec3<f32>(1000f, -1002f, 317f), vec3<f32>(1068f, -221f, 1349f), vec3<f32>(2309f, -335f, -560f), vec3<f32>(352f, -311f, -1605f), vec3<f32>(710f, -1427f, -1063f));

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.a;
    let var_1 = Struct_1(2147483647i & _wgslsmith_mod_i32(-9989i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, 2147483647i), vec2<i32>(0i, -57567i))), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a, arg_0, 0u)), ~vec4<u32>(5508u, arg_1.b.x, arg_1.b.x, 13211u) | ~arg_1.b), 10908u, ~12655u), 4294967295u, vec3<bool>(all(arg_3.d), false, any(arg_1.d.xz)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f), -218f));
    var var_3 = arg_3;
    var var_4 = _wgslsmith_mult_vec4_u32(arg_1.b, vec4<u32>(arg_1.c, reverseBits(arg_3.c), _wgslsmith_mult_u32(67506u, 1u), 48538u));
    return _wgslsmith_dot_vec2_u32(var_1.b.xx, select(vec2<u32>(57668u, 3465u), _wgslsmith_mult_vec2_u32(arg_3.b.wz, ~(~var_3.b.ww)), false));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<vec3<f32>, 22>();
    var var_0 = ~arg_1.b.x;
    var var_1 = arg_1.a;
    var var_2 = arg_1;
    let var_3 = vec4<bool>(true, all(select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(arg_1.d.x, var_2.d.x, var_2.d.x, false), false), select(vec4<bool>(var_2.d.x, true, arg_1.d.x, true), vec4<bool>(false, global1.x, true, var_2.d.x), var_2.d.x), vec4<bool>(global1.x, global1.x, true, arg_1.d.x))) & (arg_1.d.x | !select(var_2.d.x, global1.x, global1.x)), !any(!select(arg_1.d.xy, var_2.d.zx, true)), any(vec2<bool>(arg_1.d.x, var_2.d.x)));
    return arg_1.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 22>();
    return Struct_1(abs(_wgslsmith_clamp_i32(func_4(func_3(44626u, Struct_1(2147483647i, vec4<u32>(22114u, 1u, 23105u, 32250u), u_input.a, global1.zwz), vec4<u32>(0u, 82718u, 21550u, u_input.a), Struct_1(0i, vec4<u32>(u_input.a, u_input.a, u_input.a, 3008u), 4294967295u, global1.xzx)), Struct_1(2147483647i, vec4<u32>(u_input.a, 0u, 16205u, u_input.a), 4294967295u, vec3<bool>(false, global1.x, global1.x))), func_4(firstTrailingBit(22301u), Struct_1(-2147483647i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, vec3<bool>(global1.x, global1.x, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 37951i, -32459i), vec3<i32>(14659i, 15545i, -43668i)) & (i32(-1i) * -42258i))), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), 1u, !vec3<bool>(all(global1.xy), !global1.x, true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    return arg_0.b;
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    global0 = array<vec3<f32>, 22>();
    var var_0 = Struct_1(0i, firstLeadingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), vec4<u32>(u_input.a, u_input.a, 10184u, u_input.a) >> (vec4<u32>(u_input.a, 4294967295u, 0u, 0u) % vec4<u32>(32u)))) & _wgslsmith_clamp_vec4_u32(func_5(func_2(-307f), func_2(621f), 24834u), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 39511u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a), min(1u, 5256u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(115207u, 23357u)))), 48312u, select(global1.wxx, vec3<bool>(!func_2(292f).d.x, !any(global1.xzy), 1000f != arg_0.x), !select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, global1.x, false), select(global1.yzz, vec3<bool>(false, true, false), global1.x))));
    var var_1 = _wgslsmith_f_op_f32(floor(arg_0.x));
    let var_2 = vec4<i32>(-((var_0.a | -1i) ^ _wgslsmith_mult_i32(-30350i, var_0.a)), -50984i, 0i, -(i32(-1i) * -12709i)) | countOneBits(_wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(-1i, var_0.a, 1i, var_0.a)), select(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<i32>(var_0.a, 29356i, var_0.a, var_0.a), false & var_0.d.x)));
    let var_3 = arg_0.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i | _wgslsmith_dot_vec4_i32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(1557f, 1099f, 445f, 650f), vec4<f32>(-743f, -297f, -933f, 1000f))), ~(-vec4<i32>(-2147483647i, 526i, -13059i, -35271i))), _wgslsmith_sub_vec4_u32(vec4<u32>(33946u, firstLeadingBit(countOneBits(u_input.a)), firstLeadingBit(u_input.a), firstTrailingBit(~u_input.a)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(29173u, 58353u, 0u, u_input.a), ~vec4<u32>(u_input.a, 32584u, u_input.a, 11117u)))), 63014u, global1.zzy);
    var_0 = func_2(-513f);
    var var_1 = _wgslsmith_f_op_f32(-434f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(253f + -386f), _wgslsmith_div_f32(-1055f, 1783f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1794f, -1712f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-391f)))))));
    var var_2 = vec2<u32>(min(u_input.a, ~(~4294967295u)), firstTrailingBit((~23616u >> (var_0.c % 32u)) | 55778u));
    var var_3 = Struct_1(((_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.a, 0i), vec3<i32>(var_0.a, 4973i, 1i)) >> (~u_input.a % 32u)) & max(-13888i, firstLeadingBit(var_0.a))) | var_0.a, select(var_0.b, var_0.b, vec4<bool>(!all(vec4<bool>(var_0.d.x, global1.x, global1.x, var_0.d.x)), true, true, !(!global1.x))), firstLeadingBit(4294967295u), select(global1.wxx, select(vec3<bool>(any(vec2<bool>(false, global1.x)), !var_0.d.x, !var_0.d.x), !global1.yxx, global1.zyy), var_0.d));
    let var_4 = ~(~_wgslsmith_mod_u32(var_2.x, firstTrailingBit(~32748u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(func_1(vec4<f32>(1f, 1f, 1f, 1f)).zx, -vec2<i32>(func_2(1653f).a, 21835i)), -1890f);
}

