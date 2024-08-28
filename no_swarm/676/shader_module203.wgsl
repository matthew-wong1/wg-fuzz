struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec4<bool> {
    return !vec4<bool>(true, !(!arg_0.a.x & (arg_2 < -5357i)), arg_0.a.x, false);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<bool>) -> bool {
    let var_0 = reverseBits(_wgslsmith_div_vec2_u32(countOneBits(u_input.a.yz), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 29533u), _wgslsmith_mod_u32(0u, 4294967295u)))));
    let var_1 = 917f;
    var var_2 = Struct_1(arg_2, var_0);
    var_2 = Struct_1(vec3<bool>(false, func_1(Struct_1(func_1(Struct_1(vec3<bool>(arg_0.x, arg_1, arg_1), var_0), var_0.x, u_input.b.x).ywy, vec2<u32>(4294967295u, var_2.b.x)), var_0.x ^ _wgslsmith_div_u32(0u, 66375u), u_input.b.x).x, true), vec2<u32>(firstTrailingBit(select(1u, 7636u, all(arg_0.yxy))), 1u));
    let var_3 = firstLeadingBit(vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_u32(18572u, _wgslsmith_mult_u32(var_0.x >> (32731u % 32u), 0u), u_input.a.x), ~(var_0.x << (var_2.b.x % 32u)) ^ 21816u, 2135u));
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(func_3(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), false, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true, !any(vec2<bool>(true, true))), reverseBits(u_input.a.yy));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)), 990f, !any(vec2<bool>(var_1.a.x, var_1.a.x)))), _wgslsmith_div_f32(-933f, _wgslsmith_f_op_f32(737f - _wgslsmith_f_op_f32(-1171f - -671f)))) + _wgslsmith_f_op_f32(ceil(-1000f)));
    var var_3 = u_input.b.yw;
    let var_4 = (_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, ~vec4<i32>(var_3.x, 26041i, 1i, var_3.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, u_input.b.x, u_input.b.x, 1i), abs(u_input.b))) & _wgslsmith_div_vec4_i32(~vec4<i32>(var_3.x, var_3.x, 2147483647i, u_input.b.x), vec4<i32>(-1i, select(u_input.b.x, 0i, false), -var_3.x, 0i))) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 16077u, var_1.b.x, var_0.b.x), vec4<u32>(var_0.b.x, 1u, 0u, 1u) << (vec4<u32>(0u, var_0.b.x, u_input.a.x, var_1.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    return 1u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(548f, _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-121f, _wgslsmith_f_op_f32(f32(-1f) * -527f), false)) * _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(f32(-1f) * -780f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, 1426f, 439f, 575f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-103f, 940f))), -436f, 1539f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1827f), _wgslsmith_f_op_f32(max(156f, 692f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(790f, -1000f, 590f, 1558f), vec4<f32>(840f, -2488f, 750f, -551f)))))));
    let var_2 = arg_0;
    let var_3 = reverseBits(max(_wgslsmith_clamp_vec2_u32(u_input.a.xz, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5313u, arg_2.b.x, arg_1.x), vec4<u32>(1u, 35166u, 16511u, arg_2.b.x)), ~1u), _wgslsmith_mult_vec2_u32(u_input.a.zz, arg_1)), var_2.b));
    return Struct_1(var_2.a, vec2<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(5429u, 4294967295u), vec2<u32>(25753u, 663u))), u_input.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, true || all(func_1(Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, u_input.a.x)), 0u, -4757i)), !all(vec4<bool>(false, true, true, false)) == ((u_input.a.x > 1u) == true)), ~select(abs(u_input.a.xz) ^ (vec2<u32>(0u, 4294967295u) >> (u_input.a.xz % vec2<u32>(32u))), max(~u_input.a.xx, vec2<u32>(6417u, 0u) | u_input.a.zy), any(func_1(Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, u_input.a.x)), 4294967295u, u_input.b.x).wx)));
    var_0 = func_5(Struct_1(var_0.a, vec2<u32>(~1u, 1u & (u_input.a.x << (35739u % 32u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(func_4(func_2(), Struct_1(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1826f, 1198f)))), ~25342u), ~vec2<u32>(~u_input.a.x, abs(8792u))), Struct_1(vec3<bool>(all(vec2<bool>(var_0.a.x, var_0.a.x)), false, all(select(var_0.a.zy, vec2<bool>(false, var_0.a.x), var_0.a.x))), select(_wgslsmith_mult_vec2_u32(var_0.b, _wgslsmith_add_vec2_u32(var_0.b, var_0.b)), u_input.a.zy, true)));
    let var_1 = vec2<i32>(1i, u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-607f, -618f, -319f, -568f), vec4<f32>(-464f, -1287f, -1173f, 1461f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, 1084f, -733f, 758f)), true & (31407u > u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2277f, 1184f, -364f, -386f)) + vec4<f32>(-602f, _wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(f32(-1f) * -823f), 1000f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(222f, var_2.x)) * -373f), -973f, -651f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -618f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1586f, -720f, 407f, var_2.x), vec4<f32>(var_2.x, 293f, 365f, 1345f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1618f, var_2.x, var_2.x, 705f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1189f, var_2.x, var_2.x) - vec4<f32>(var_2.x, var_2.x, -818f, 373f)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, var_2.x, 849f, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -704f, var_2.x, 243f), vec4<f32>(-420f, -690f, var_2.x, 1421f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, 1000f, 1453f), vec4<f32>(-207f, var_2.x, -1080f, var_2.x), var_0.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1298f, 1796f, 315f, var_2.x), vec4<f32>(169f, 490f, var_2.x, var_2.x), var_0.a.x)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)))));
    let var_3 = Struct_1(var_0.a, vec2<u32>(~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var var_4 = var_2.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.x, _wgslsmith_div_u32(10655u << ((var_0.b.x | 4294967295u) % 32u), 0u)), firstTrailingBit((i32(-1i) * -1i) & firstTrailingBit(var_1.x << (4294967295u % 32u))), var_2.xyx, -1567f);
}

