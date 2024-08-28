struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = vec3<u32>(23205u, select(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x, true), _wgslsmith_dot_vec4_u32(~(firstTrailingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u)) >> (reverseBits(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u))), vec4<u32>(1240u, u_input.b.x, 4294967295u, 9495u)));
    var var_1 = Struct_1(-(_wgslsmith_mod_i32(arg_2.a, -2147483647i) & arg_2.a) << (1u % 32u), vec4<bool>(arg_2.b.x, arg_2.c, arg_0.b.x, !arg_2.c), ((u_input.b.x < var_0.x) || any(arg_2.b.xz)) | arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-805f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_0.d)))));
    let var_2 = arg_0.d;
    var_1 = Struct_1(20105i, select(!(!(!vec4<bool>(true, true, false, arg_0.c))), select(arg_2.b, !select(arg_0.b, var_1.b, arg_2.b), !all(var_1.b.yyy)), !select(arg_0.b, select(arg_2.b, var_1.b, var_1.b.x), false)), !arg_2.c, -1272f);
    var var_3 = var_1.a;
    return any(vec2<bool>(all(!select(arg_0.b.zyz, var_1.b.yzz, vec3<bool>(arg_2.c, arg_2.c, var_1.b.x))), var_1.c));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(1i, select(select(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), vec4<bool>(func_3(Struct_1(-1203i, vec4<bool>(true, false, true, arg_0), false, -747f), -1246f, Struct_1(28887i, vec4<bool>(false, false, arg_0, false), false, 189f), vec3<f32>(174f, 3458f, 921f)), arg_0, true, true), any(select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false)))), vec4<bool>(arg_0, true, arg_0, true), !vec4<bool>(true, arg_0 | arg_0, false, !arg_0)), any(vec3<bool>(!all(vec2<bool>(arg_0, arg_0)), arg_0, false)), arg_1.a.x);
    let var_1 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_add_i32(min(var_0.a, u_input.c), 5378i), -2147483647i), !var_0.b, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1398f + -453f), _wgslsmith_f_op_f32(-arg_1.a.x), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f) * _wgslsmith_f_op_f32(1666f - -2295f))))));
    let var_2 = !select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0, false, arg_0, var_0.c), var_0.c), var_0.b, var_1.b), vec4<bool>(false, false, false, arg_0), select(!select(var_0.b, var_1.b, var_1.b), vec4<bool>(any(var_1.b), true, select(arg_0, var_0.c, false), true == var_0.b.x), true));
    let var_3 = vec4<u32>(6228u, ~countOneBits(~5939u), ~59u, u_input.b.x);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.d)), _wgslsmith_f_op_f32(round(arg_1.a.x)))), 1f, _wgslsmith_f_op_f32(703f * var_0.d) == arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x))), 2469f));
    return var_0;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = func_2(all(vec4<bool>(any(vec4<bool>(false, false, true, false)) && true, true, true, true & all(vec4<bool>(true, true, true, true)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(1603f)))));
    var_0 = Struct_1(0i, !vec4<bool>(false, false, var_0.d >= _wgslsmith_f_op_f32(-var_0.d), !all(var_0.b.yz)), var_0.a >= (var_0.a | -_wgslsmith_mult_i32(u_input.c, 2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), 1950f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-243f, 456f), arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1499f, var_0.d)))))));
    var var_1 = func_2(var_0.c, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, 1226f)))))));
    let var_2 = ~(abs(reverseBits(-vec4<i32>(var_0.a, 14764i, u_input.a, 28204i))) & countOneBits(vec4<i32>(-var_1.a, u_input.a, ~(-2147483647i), -1i)));
    var var_3 = 1u;
    return Struct_2(vec2<f32>(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(-arg_0)) * -1783f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1705f - -849f))), _wgslsmith_div_f32(1974f, _wgslsmith_div_f32(813f, -884f)), true))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, 54098i), -1i))), i32(-1i) * -56151i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a));
    let var_3 = Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 1596f) * _wgslsmith_div_f32(var_0.a.x, 719f)))));
    var_0 = Struct_2(var_2.a);
    let var_4 = ~(~(~(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(27941u, 1u, 42889u, u_input.b.x) % vec4<u32>(32u))))));
    let var_5 = var_0.a.x;
    var var_6 = Struct_1((35242i | (var_1.x & _wgslsmith_div_i32(var_1.x, var_1.x))) & 1i, !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), func_2(true, Struct_2(var_3.a)).c, true, false), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, select(false, false, true)), all(vec2<bool>(true, true))), true, _wgslsmith_f_op_f32(ceil(func_1(-1103f).a.x)));
    let var_7 = vec2<f32>(_wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f * _wgslsmith_div_f32(-731f, -2587f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, var_2.a.x)), var_0.a.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1888f, 443f)), -1108f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~max(var_6.a & u_input.c, -34009i), var_1.x, 2147483647i, ~(-2382i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1306f, var_0.a.x, var_3.a.x) * vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x * var_3.a.x), 472f, 1199f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7.x, -2545f, var_6.d)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_7.x, var_3.a.x, var_6.d) * vec3<f32>(799f, var_2.a.x, var_2.a.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-837f, -892f, -969f), vec3<f32>(-465f, 1000f, -186f), var_6.b.xyy))))), var_4.x | (22556u >> (_wgslsmith_mult_u32(~var_4.x, var_4.x) % 32u)), _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(36456u, u_input.b.x)) & ~vec2<u32>(1u, 1u), var_4.ww), _wgslsmith_mod_i32(-(~_wgslsmith_mult_i32(-62035i, u_input.c)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(abs(u_input.c), 0i), ~u_input.a, 1i)));
}

