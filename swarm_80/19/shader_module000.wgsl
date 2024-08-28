struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec3<i32> = vec3<i32>(-15908i, 1i, 12042i);

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = min(~abs(~(~1u)), _wgslsmith_div_u32(13046u, ~select(arg_0.a, global2.a.x >> (0u % 32u), arg_0.b)));
    var var_1 = Struct_1(global2.a, firstLeadingBit(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1163f, arg_1))));
    global2 = Struct_1(_wgslsmith_sub_vec4_u32(firstLeadingBit(var_1.a | vec4<u32>(var_1.a.x, 23691u, arg_0.a, 0u)) << (~(~global2.a) % vec4<u32>(32u)), global2.a), global2.b, _wgslsmith_f_op_f32(1037f - _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-587f - _wgslsmith_f_op_f32(-1174f - var_1.c)))));
    global2 = Struct_1(global2.a, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.c, -1000f, global0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(abs(680f))))));
    var var_2 = var_1.a.x;
    return var_1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_2(~arg_0.a.x, false, vec3<u32>(~(~1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(82255u, 20540u, arg_0.a.x), vec3<u32>(global2.a.x, global2.a.x, arg_0.a.x)) ^ ~arg_0.a.x, func_3(Struct_2(11376u, global0.x, vec3<u32>(global2.a.x, global2.a.x, 22693u)), _wgslsmith_f_op_f32(-632f * arg_0.c))), arg_0.a.x));
    return ~(~(65222u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 39469u, global2.a.x, var_0.a), max(vec4<u32>(arg_0.a.x, arg_0.a.x, 27330u, var_0.c.x), global2.a)) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = max(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global2.b, u_input.a), -vec3<i32>(global2.b, -27273i, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, -23838i), vec3<i32>(-263i, -2147483647i, arg_1)) ^ reverseBits(vec3<i32>(global1.x, arg_1, 9220i))), firstLeadingBit(-(~vec3<i32>(22188i, 2147483647i, -1i)))), vec3<i32>(~u_input.a, firstTrailingBit(firstTrailingBit(~(-2147483647i))), 75690i));
    let var_0 = Struct_1(~(~min(vec4<u32>(4294967295u, global2.a.x, 51545u, 2496u) ^ vec4<u32>(global2.a.x, 0u, 24692u, global2.a.x), global2.a)), _wgslsmith_add_i32(-(global1.x ^ u_input.b) >> (global2.a.x % 32u), global2.b), -300f);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1657f)))))));
    var var_2 = 568f;
    var var_3 = Struct_2(global2.a.x, !all(select(arg_0.zz, vec2<bool>(false, false), global0.x & arg_0.x)), vec3<u32>(max(~global2.a.x, (global2.a.x << (var_0.a.x % 32u)) << (var_0.a.x % 32u)), 12864u & abs(~global2.a.x), func_3(Struct_2(var_0.a.x | 1u, true, firstTrailingBit(var_0.a.xzy)), 349f)));
    return Struct_1(vec4<u32>(~_wgslsmith_mod_u32(var_0.a.x << (var_0.a.x % 32u), _wgslsmith_mult_u32(var_0.a.x, global2.a.x)), 17195u, ~(~10416u), var_3.a), 1i, -651f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = func_4(vec4<bool>(any(select(!vec4<bool>(global0.x, true, false, false), !vec4<bool>(arg_0.x, global0.x, global0.x, true), arg_0.x)), arg_1.x, _wgslsmith_sub_u32(2255u, _wgslsmith_sub_u32(25389u, arg_3)) < _wgslsmith_add_u32(func_2(Struct_1(vec4<u32>(arg_3, 6847u, arg_3, global2.a.x), 0i, 712f), vec4<f32>(-1128f, global2.c, arg_2, arg_2), arg_2, 1311f), _wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(4294967295u, 1u, 40235u, 0u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + arg_2))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-619f, -1000f)))), _wgslsmith_dot_vec3_i32((select(vec3<i32>(global1.x, 41592i, global2.b), vec3<i32>(global2.b, global1.x, 2147483647i), vec3<bool>(true, true, false)) ^ countOneBits(vec3<i32>(2147483647i, 2147483647i, u_input.b))) ^ min(vec3<i32>(global1.x, u_input.b, 56330i) & vec3<i32>(global2.b, u_input.a, -16316i), vec3<i32>(global1.x, -1i, 12762i)), vec3<i32>(33763i, u_input.b, global2.b)), _wgslsmith_f_op_f32(-arg_2));
    var_0 = func_4(select(select(vec4<bool>(true, true, all(vec4<bool>(arg_0.x, arg_0.x, global0.x, true)), true), !(!vec4<bool>(true, arg_1.x, arg_0.x, arg_1.x)), true), select(select(vec4<bool>(arg_0.x, false, arg_1.x, true), vec4<bool>(false, global0.x, arg_1.x, arg_0.x), true & arg_0.x), select(select(vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(arg_1.x, arg_0.x, true, global0.x)), !vec4<bool>(arg_0.x, true, arg_1.x, false), select(vec4<bool>(arg_0.x, true, true, arg_1.x), vec4<bool>(arg_1.x, true, global0.x, arg_1.x), vec4<bool>(true, global0.x, false, global0.x))), true), select(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(true, global0.x, arg_1.x, arg_0.x), vec4<bool>(true, arg_1.x, arg_0.x, global0.x)), select(select(vec4<bool>(false, global0.x, true, arg_0.x), vec4<bool>(arg_1.x, global0.x, true, arg_1.x), true), vec4<bool>(arg_0.x, arg_0.x, arg_1.x, global0.x), vec4<bool>(false, arg_1.x, arg_0.x, true)), -global2.b > countOneBits(1i))), var_0.b, var_0.c);
    var var_1 = 265f;
    let var_2 = var_0.c;
    var_0 = func_4(select(vec4<bool>(select(global0.x, all(vec2<bool>(arg_1.x, true)), arg_0.x & true), !global0.x, true, true), vec4<bool>(true, true, true, true), true), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-400f, arg_2)))) * _wgslsmith_f_op_f32(f32(-1f) * -1557f))));
    return _wgslsmith_mod_u32(~func_4(!vec4<bool>(true, false, arg_1.x, false), 1i, global2.c).a.x & var_0.a.x, 4294967295u << (~((2815u >> (var_0.a.x % 32u)) & 15156u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.c, global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1005f)), _wgslsmith_f_op_f32(-987f * -875f)))), _wgslsmith_f_op_f32(sign(global2.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, _wgslsmith_f_op_f32(-global2.c), -167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(-global2.c), -1405f, _wgslsmith_f_op_f32(min(1476f, global2.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, -688f, global2.c, -1491f) - vec4<f32>(247f, global2.c, 595f, -252f)))))));
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)));
    let var_3 = vec3<u32>(func_1(vec3<bool>(all(vec4<bool>(false, global0.x, false, false)) && all(vec2<bool>(false, false)), global0.x, false), vec2<bool>(global0.x, (global0.x || global0.x) | (-803f < global2.c)), var_1.x, 4294967295u), global2.a.x, 27063u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, true), true), vec2<bool>(global0.x, all(vec4<bool>(global0.x, true, global0.x, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(874f, -571f), _wgslsmith_f_op_f32(min(1000f, var_1.x))), min(_wgslsmith_div_u32(1u, 46525u), ~2134u)), _wgslsmith_mult_u32(max(var_3.x, var_3.x), ~1u)), func_4(vec4<bool>(false, true, any(vec3<bool>(global0.x, global0.x, false)), !all(vec4<bool>(false, false, global0.x, false))), -20943i, 220f).a, vec4<u32>(global2.a.x, abs(43349u), ~(~min(var_3.x, 21371u)), 66112u));
}

