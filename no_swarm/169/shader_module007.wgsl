struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~(~global0.a ^ abs(u_input.b)), u_input.b), reverseBits(-vec3<i32>(~(-18492i), _wgslsmith_sub_i32(u_input.c, global0.b.x), ~global0.b.x)), 328f, select(global0.d, vec2<bool>(!global0.d.x, !global0.d.x), !select(!vec2<bool>(global0.d.x, false), !vec2<bool>(global0.d.x, false), select(vec2<bool>(false, false), vec2<bool>(true, false), global0.d.x))));
    global0 = Struct_1(countOneBits(countOneBits(abs(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(32002u, 75239u, u_input.b.x, 24200u))))), vec3<i32>(2147483647i, firstTrailingBit(~(~var_0.b.x)), max(~abs(var_0.b.x), _wgslsmith_mult_i32(0i, -16289i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(627f))) + _wgslsmith_f_op_f32(arg_0.x + global0.c))), var_0.d);
    let var_1 = -(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, -18934i, -2147483647i), vec3<i32>(13821i, 38429i, 1i)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(44595u, var_0.a.x, 35120u, 23395u)), ~global0.a.x, u_input.d ^ u_input.a) % vec3<u32>(32u))) | vec3<i32>(-11244i, _wgslsmith_mod_i32(1i, firstLeadingBit(~1i)), var_0.b.x);
    let var_2 = global0.a.x;
    global0 = Struct_1(_wgslsmith_mult_vec4_u32(~(~(~u_input.b)), ~(global0.a >> (select(var_0.a, global0.a, var_0.d.x) % vec4<u32>(32u)))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(42826i, -1i, 42907i), global0.b), _wgslsmith_mult_vec3_i32(select(global0.b, var_0.b, var_0.d.x), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 693f) + _wgslsmith_f_op_f32(-var_0.c)))), select(vec2<bool>(any(select(vec3<bool>(global0.d.x, false, true), vec3<bool>(false, var_0.d.x, global0.d.x), var_0.d.x)), any(global0.d)), !global0.d, vec2<bool>(true, all(vec3<bool>(false, false, global0.d.x)))));
    return 0u | global0.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> bool {
    global0 = Struct_1(vec4<u32>(1u, 59835u, global0.a.x, func_3(arg_0.yz) & min(_wgslsmith_dot_vec2_u32(arg_2, arg_2), ~0u)), reverseBits(max(_wgslsmith_mult_vec3_i32(vec3<i32>(4762i, -26709i, arg_3), vec3<i32>(arg_3, global0.b.x, -54891i)) & global0.b, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global0.b, global0.b), global0.b))), -714f, !global0.d);
    let var_0 = vec4<bool>(global0.d.x, true, global0.d.x, any(global0.d));
    let var_1 = Struct_1(countOneBits(u_input.b), ~global0.b, _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(1602f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), !vec2<bool>(true, !var_0.x));
    let var_2 = Struct_1(max(var_1.a, u_input.b) << (_wgslsmith_add_vec4_u32(abs(u_input.b), _wgslsmith_add_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, arg_2.x, var_1.a.x, u_input.a))) % vec4<u32>(32u)), reverseBits(_wgslsmith_mod_vec3_i32(~(var_1.b ^ vec3<i32>(arg_1, u_input.c, arg_1)), _wgslsmith_add_vec3_i32(global0.b, vec3<i32>(arg_1, arg_1, -28847i)))), 276f, !select(select(vec2<bool>(var_1.d.x, var_0.x), vec2<bool>(global0.d.x, false), select(vec2<bool>(false, false), var_1.d, global0.d)), select(var_1.d, !var_0.zy, !vec2<bool>(var_0.x, false)), select(global0.d, global0.d, select(var_0.zw, var_1.d, var_0.x))));
    let var_3 = var_2;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = ~global0.b.x;
    var var_1 = func_2(vec3<f32>(_wgslsmith_div_f32(global0.c, -359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))))), _wgslsmith_mod_i32(0i, 1i), vec2<u32>(u_input.a, 4294967295u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~19983i), global0.b.yz));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_div_u32(~max(global0.a.x, 0u), min(_wgslsmith_mod_u32(81210u, global0.a.x), 1u)), reverseBits(1u), global0.a.x, u_input.b.x), global0.b, _wgslsmith_f_op_f32(252f - 855f), select(vec2<bool>(global0.b.x <= -34969i, global0.d.x), !select(!global0.d, vec2<bool>(false, global0.d.x), global0.d.x | false), !any(!vec4<bool>(global0.d.x, global0.d.x, true, false))));
    var var_3 = Struct_1(select(u_input.b, var_2.a, all(vec3<bool>(!var_2.d.x, false, true))), firstTrailingBit(~var_2.b), _wgslsmith_div_f32(-650f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c)) + global0.c), _wgslsmith_f_op_f32(-505f * -730f)))), vec2<bool>(global0.d.x, global0.a.x < 15859u));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(542f, var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f - _wgslsmith_f_op_f32(min(var_3.c, var_3.c)))), -1261f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(906f)))), 865f, _wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) * _wgslsmith_f_op_f32(-var_3.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-765f, 882f, 1000f, 1000f), vec4<f32>(global0.c, var_2.c, -238f, 383f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, global0.c, -281f, 464f), vec4<f32>(global0.c, var_2.c, global0.c, -347f), var_2.d.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1196f, 713f, -590f, -578f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_3.c, -208f, 728f))))))));
    return Struct_1(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(var_2.a.x, 1u, var_3.a.x, 10122u)), ~(~vec4<u32>(3551u, 35811u, 79254u, 22670u)) | global0.a), countOneBits(vec3<i32>(~_wgslsmith_add_i32(-2147483647i, u_input.c), -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.b.x, -55361i, 1i, 0i), vec4<i32>(u_input.c, var_3.b.x, -2147483647i, -1i) << (u_input.b % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), select(select(vec2<bool>(true, !var_2.d.x), !var_2.d, vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(-var_3.c) >= _wgslsmith_f_op_f32(step(var_2.c, -1556f)), true), !global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1372f);
    let var_1 = global0.a.ww;
    global0 = func_1();
    global0 = func_1();
    var var_2 = u_input.a;
    var var_3 = global0.d.x || global0.d.x;
    let var_4 = _wgslsmith_f_op_f32(-global0.c);
    let var_5 = func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1787f)), 494f)))), ~(~vec4<u32>(u_input.d | 1u, global0.a.x, 0u, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(520f)), _wgslsmith_f_op_f32(round(-1501f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1266f, var_0, 1637f))))))));
}

