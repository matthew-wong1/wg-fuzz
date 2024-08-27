struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    let var_0 = select(select(!select(select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global0.a.a, false), vec2<bool>(true, global0.a.a)), !vec2<bool>(true, global0.a.a), global0.a.a), select(vec2<bool>(false, global0.a.a), select(vec2<bool>(false, global0.a.a), vec2<bool>(global0.a.a, global0.a.a), all(vec3<bool>(global0.a.a, global0.a.a, true))), select(global0.a.a, true, global0.a.a) && global0.a.a), !(true || any(vec4<bool>(global0.a.a, global0.a.a, false, false)))), !select(select(vec2<bool>(global0.a.a, true), vec2<bool>(true, true), all(vec2<bool>(global0.a.a, global0.a.a))), select(!vec2<bool>(false, global0.a.a), vec2<bool>(global0.a.a, true), vec2<bool>(true, true)), !global0.a.a), select(vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(global0.a.a, false), true))), !(!select(vec2<bool>(global0.a.a, false), vec2<bool>(true, true), vec2<bool>(global0.a.a, global0.a.a))), vec2<bool>(global0.a.a, any(vec3<bool>(global0.a.a, true, global0.a.a)))));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, global0.b)), global0.b) - _wgslsmith_div_f32(1058f, -228f)), global0.a.c)));
    global0 = Struct_4(Struct_3(var_0.x, global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - 1404f) * _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(abs(-1000f)));
    let var_1 = -global0.a.b.b.wx;
    return _wgslsmith_dot_vec2_u32(arg_1.yy, ~(~(reverseBits(vec2<u32>(arg_0, 21702u)) & arg_1.zz)));
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = Struct_4(Struct_3(global0.a.a, arg_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + 1000f) * _wgslsmith_f_op_f32(-903f + -181f)), global0.a.c)), global0.a.c);
    let var_1 = 0u;
    var var_2 = abs(~vec2<u32>(var_1, func_3(88024u, abs(vec3<u32>(20845u, var_1, var_1)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global0.b, var_0.b) * vec3<f32>(arg_0.b, 677f, -1179f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -257f, arg_0.a.c) + vec3<f32>(718f, -1599f, 712f)))))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -897f);
    return select(select(select(!select(vec4<bool>(global0.a.a, true, false, true), vec4<bool>(var_0.a.a, true, global0.a.a, var_0.a.a), vec4<bool>(true, var_0.a.a, true, false)), select(select(vec4<bool>(global0.a.a, true, arg_0.a.a, global0.a.a), vec4<bool>(true, false, var_0.a.a, false), vec4<bool>(global0.a.a, true, global0.a.a, var_0.a.a)), vec4<bool>(var_0.a.a, true, false, true), !vec4<bool>(false, arg_0.a.a, var_0.a.a, global0.a.a)), !(!vec4<bool>(var_0.a.a, true, false, false))), vec4<bool>(false, false, any(select(vec2<bool>(arg_0.a.a, global0.a.a), vec2<bool>(global0.a.a, false), vec2<bool>(var_0.a.a, arg_0.a.a))), true), false), select(!(!(!vec4<bool>(false, arg_0.a.a, false, true))), !select(!vec4<bool>(global0.a.a, var_0.a.a, arg_0.a.a, global0.a.a), vec4<bool>(false, false, global0.a.a, false), !vec4<bool>(var_0.a.a, global0.a.a, var_0.a.a, true)), all(select(!vec2<bool>(arg_0.a.a, var_0.a.a), !vec2<bool>(arg_0.a.a, var_0.a.a), vec2<bool>(true, global0.a.a)))), true);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    global0 = arg_1;
    global0 = arg_0;
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.c + _wgslsmith_f_op_f32(abs(204f)));
    let var_1 = _wgslsmith_dot_vec2_u32(~abs(~countOneBits(vec2<u32>(1u, 1680u))), firstLeadingBit(vec2<u32>(1u, ~4294967295u)));
    return select(select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_1.a.a, false, arg_1.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, true, arg_0.a.a)), vec4<bool>(global0.a.a, arg_0.a.a, false, true), arg_1.a.a), !select(!vec4<bool>(false, arg_0.a.a, global0.a.a, arg_0.a.a), func_2(arg_0), arg_0.a.a | arg_1.a.a), select(!vec4<bool>(arg_1.a.a, arg_1.a.a, global0.a.a, global0.a.a), select(!vec4<bool>(arg_1.a.a, false, false, true), select(vec4<bool>(true, arg_0.a.a, true, true), vec4<bool>(false, arg_1.a.a, global0.a.a, arg_0.a.a), arg_1.a.a), true), !select(vec4<bool>(global0.a.a, false, arg_1.a.a, false), vec4<bool>(arg_1.a.a, false, true, arg_0.a.a), vec4<bool>(true, arg_1.a.a, global0.a.a, global0.a.a)))), select(func_2(arg_0), !(!vec4<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a, true)), !all(vec2<bool>(false, arg_0.a.a))), vec4<bool>(-2147483647i == countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.b.b.x, arg_1.a.b.a), arg_1.a.b.b.zz)), !arg_0.a.a, true, all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(13077u >> (0u % 32u), 47752u, ~58406u, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(14419u, 0u, 47178u, 40387u), vec4<u32>(37421u, 69307u, 1u, 4294967295u))), select(abs(vec4<u32>(22531u, 7159u, 36424u, 1u)), firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 31276u)), arg_0.x > 1141f) << (~(~vec4<u32>(24253u, 1u, 4294967295u, 0u)) % vec4<u32>(32u))), ~(~(~vec4<u32>(1u, 0u, 0u, 30880u))));
    var var_1 = !all(vec2<bool>(true || (arg_1.a.x < 0i), func_2(Struct_4(Struct_3(arg_3.x, Struct_2(1i, vec4<i32>(0i, u_input.b, arg_1.a.x, 1i)), 983f), arg_0.x)).x && arg_3.x));
    var_0 = min(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 26704u, 0u, var_0.x), ~vec4<u32>(var_0.x, 14221u, 38793u, 28061u)), ~(~vec4<u32>(var_0.x, 32485u, var_0.x, var_0.x))), ~_wgslsmith_add_vec4_u32((vec4<u32>(61124u, 95350u, var_0.x, var_0.x) >> (vec4<u32>(21066u, var_0.x, 78243u, var_0.x) % vec4<u32>(32u))) ^ ~vec4<u32>(44097u, 34488u, var_0.x, 32263u), vec4<u32>(var_0.x, firstTrailingBit(var_0.x), abs(var_0.x), ~46082u)));
    let var_2 = ~(~var_0.x) >> (_wgslsmith_sub_u32(var_0.x, ~86318u) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1877f, 1107f, arg_2.x, arg_2.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, global0.a.c, 2010f, global0.b), vec4<f32>(-862f, arg_2.x, global0.a.c, 905f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-462f, arg_2.x, arg_2.x, -185f), vec4<f32>(-1413f, arg_0.x, arg_0.x, 1298f), arg_3)))), arg_3)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.a.c, global0.b) + vec3<f32>(global0.a.c, -423f, global0.b)), Struct_1(global0.a.b.b.ww, global0.a.b.b.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, 512f) + vec2<f32>(global0.b, -270f)), func_1(Struct_4(Struct_3(false, Struct_2(50844i, global0.a.b.b), global0.a.c), global0.a.c), Struct_4(Struct_3(global0.a.a, global0.a.b, global0.b), -1261f))), countOneBits(4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(83147u, 0u, 9113u, 43115u), vec4<u32>(4294967295u, 1u, 32290u, 4099u)), ~1573u, 0u));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(102f - global0.b), global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + -794f) * _wgslsmith_f_op_f32(floor(506f)))) * _wgslsmith_f_op_f32(trunc(global0.b))));
    global0 = Struct_4(Struct_3(func_2(Struct_4(global0.a, global0.a.c)).x, Struct_2(1i << (var_0.x % 32u), vec4<i32>(-1i, u_input.a, -1i, i32(-1i) * -11356i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.b, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(391f, _wgslsmith_f_op_f32(-1250f + -391f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.c)))));
    var var_1 = _wgslsmith_f_op_f32(-1268f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.c + 160f), _wgslsmith_f_op_f32(round(-873f)))))));
    var var_2 = -68722i << (_wgslsmith_sub_u32(reverseBits(~33047u), var_0.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~min(vec3<u32>(var_0.x, 77618u, 69845u), vec3<u32>(1u, 2368u, 0u))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(countOneBits(vec2<u32>(var_0.x, 1u)), vec2<u32>(var_0.x, var_0.x), select(false, global0.a.a, false)), vec2<u32>(~40714u, var_0.x)), var_0.yy), vec4<u32>(14108u, 0u, ~(_wgslsmith_mod_u32(13181u, var_0.x) & _wgslsmith_add_u32(var_0.x, 980u)), 31269u), reverseBits(global0.a.b.b.zz), vec3<u32>(~0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, 0u) >> ((65243u ^ var_0.x) % 32u), func_3(var_0.x, select(var_0.zww, vec3<u32>(var_0.x, 100775u, 4294967295u), false)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_0.x), vec2<u32>(44956u, var_0.x))), ~(var_0.x >> (1u % 32u)) | 0u));
}

