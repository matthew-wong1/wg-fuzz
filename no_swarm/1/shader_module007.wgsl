struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = !select(vec3<bool>(false, !all(vec2<bool>(true, false)), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, false, false, false)) == true, select(all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, false, false)), true), true));
    let var_1 = vec2<bool>(any(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, true, false, true)))), !(!any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true))));
    var var_2 = arg_0;
    var var_3 = -22061i;
    let var_4 = arg_0;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, _wgslsmith_f_op_f32(var_2.b.x - var_4.a), _wgslsmith_f_op_f32(-903f - var_4.c)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = -15752i;
    var var_2 = Struct_1(arg_1.c, arg_1.b, _wgslsmith_f_op_f32(sign(392f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_2.b.x, vec3<f32>(553f, var_2.c, -1461f), -1110f), _wgslsmith_sub_u32(56645u, 55895u))).x, -1486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_2.c)))) * _wgslsmith_f_op_f32(1662f * _wgslsmith_f_op_f32(trunc(317f))))));
    let var_4 = -9236i;
    return reverseBits(abs(max(-(~vec2<i32>(var_4, -8590i)), vec2<i32>(var_4, -2147483647i))));
}

fn func_2() -> f32 {
    var var_0 = ~func_4(Struct_1(-695f, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-141f, vec3<f32>(-1246f, -364f, 282f), 1027f), 4294967295u)), _wgslsmith_f_op_f32(sign(-423f))), Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(896f, -1532f, 909f))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(581f, vec3<f32>(1497f, 220f, 489f), 462f), u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2048f, -1969f)) + -305f)));
    var var_1 = vec2<bool>(false && any(vec2<bool>(true, true)), true);
    var_1 = vec2<bool>(!((u_input.a.x > 4294967295u) || false) && var_1.x, !all(select(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, false))));
    var var_2 = Struct_1(1f, vec3<f32>(407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(433f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(464f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-365f)), _wgslsmith_f_op_f32(855f - 188f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, -700f)), _wgslsmith_f_op_f32(step(603f, _wgslsmith_f_op_f32(min(481f, 368f))))) - _wgslsmith_f_op_f32(select(-252f, 1f, var_1.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c, var_2.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_2.a) * vec4<f32>(-488f, -450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x) * _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_div_f32(var_2.c, 337f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -762f, var_2.a, var_2.c) * vec4<f32>(var_2.c, 779f, var_2.b.x, -882f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, var_2.b.x, var_2.c, -1000f)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_2.a, var_3.wxx, var_2.c), countOneBits(u_input.a.x))).x)))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-657f, arg_2.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1444f - _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.x + -1152f))), 1014f);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(624f - -308f), var_0.x, -200f, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(791f, arg_2.a, var_0.x, var_0.x), vec4<f32>(-1512f, var_0.x, var_0.x, 1041f)), _wgslsmith_div_vec4_f32(vec4<f32>(-949f, var_0.x, var_0.x, var_0.x), vec4<f32>(-573f, -867f, arg_2.b.x, 498f)), all(vec4<bool>(arg_1, arg_1, true, false)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, arg_2.c, -419f, arg_2.b.x), vec4<f32>(715f, var_0.x, var_0.x, arg_2.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, var_0.x, arg_2.a, 1958f))), vec4<f32>(520f, 1000f, _wgslsmith_f_op_f32(-var_0.x), -1099f), true)))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_vec3_i32(-(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, 3970i), vec3<i32>(arg_0, -2147483647i, arg_0)))), abs(reverseBits(abs(vec3<i32>(arg_0, -2147483647i, arg_0)))) | ~_wgslsmith_add_vec3_i32(vec3<i32>(-60894i, 1i, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(16290i, -2147483647i, 1i), vec3<i32>(arg_0, arg_0, -2147483647i))), max(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(arg_0, 1i, 11529i)) << (~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % vec3<u32>(32u)), max(~abs(vec3<i32>(arg_0, arg_0, 28099i)), vec3<i32>(-arg_0, ~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-57405i, 0i, arg_0, arg_0), vec4<i32>(arg_0, 1i, arg_0, arg_0))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a)), arg_2.c, 1055f, 215f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(457f + arg_2.c), _wgslsmith_f_op_f32(1084f - arg_2.c), _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1884f, 991f, _wgslsmith_f_op_f32(-2740f + _wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_f32(abs(var_0.x)))));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_1(1i, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.a.x, 26000u, u_input.a.x)), vec4<u32>(8619u, 23004u, u_input.a.x, 1u)) != 1038u, Struct_1(914f, vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-177f - -665f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1171f, 554f, -637f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(299f)))) + 2101f)));
    let var_1 = (vec4<i32>(abs(~60433i), _wgslsmith_div_i32(1i, -12400i), -_wgslsmith_div_i32(1i, -7617i), abs(reverseBits(-1i))) << ((abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 32044u)) & ~max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 4294967295u))) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_sub_i32(1i, ~(~0i)), _wgslsmith_add_i32(func_4(Struct_1(-378f, vec3<f32>(482f, -1096f, var_0.c), var_0.a), Struct_1(744f, var_0.b, -482f)).x, -6165i), -1i, ~(1i >> (_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 1u) % 32u)));
    var var_2 = abs(vec2<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, 1i), vec2<i32>(-36162i, -37313i)), var_1.x));
    var var_3 = vec3<bool>(true, true, true);
    var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~var_2.x, ~(var_2.x << (0u % 32u))), reverseBits(-var_1.x)), var_1.wz);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xx, ~var_2.x, vec2<i32>(var_2.x, var_2.x));
}

