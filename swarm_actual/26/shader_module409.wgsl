struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec2<u32> {
    return vec2<u32>(~firstTrailingBit(select(_wgslsmith_add_u32(15075u, 0u), 27504u, arg_0.x > arg_0.x)), ~4294967295u);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(~vec2<i32>(arg_1, arg_1 >> (_wgslsmith_div_u32(1u, 23483u) % 32u)), arg_2 << (vec2<u32>(reverseBits(0u >> (arg_0.x % 32u)), 34908u) % vec2<u32>(32u)), func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1855f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1206f, 777f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1214f, -863f) * vec2<f32>(271f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(722f, -521f) + vec2<f32>(142f, 710f))))), select(countOneBits(vec4<i32>(arg_1, -48224i, arg_2.x, arg_1)) << (firstTrailingBit(vec4<u32>(arg_0.x, 1u, u_input.a, 4294967295u)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(2147483647i, arg_2.x, arg_2.x, arg_2.x)), true)), true);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_mult_u32(1u, ~reverseBits(arg_0.x) ^ 1u), var_0.c.x);
    let var_2 = Struct_1(-arg_2, countOneBits(~abs(~vec2<i32>(arg_2.x, 0i))), arg_0.xy, all(vec4<bool>(true, false, true, any(!vec2<bool>(var_0.d, true)))));
    var_1 = min(_wgslsmith_dot_vec4_u32((firstLeadingBit(vec4<u32>(1u, 69349u, 31511u, 1u)) ^ max(vec4<u32>(arg_0.x, 0u, 0u, 4294967295u), vec4<u32>(var_2.c.x, var_2.c.x, 1u, arg_0.x))) | ~(vec4<u32>(4294967295u, var_2.c.x, u_input.a, 13670u) ^ vec4<u32>(126u, var_0.c.x, 31559u, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, arg_0.x, 0u, _wgslsmith_div_u32(0u, 37204u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, arg_0.x, 31324u), ~vec4<u32>(23415u, var_2.c.x, 46523u, 38853u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, 4294967295u, u_input.a, var_0.c.x), vec4<u32>(var_0.c.x, 1u, arg_0.x, 78259u))), reverseBits(~vec4<u32>(var_2.c.x, 30820u, 4294967295u, arg_0.x)))), var_2.c.x);
    var_1 = u_input.a;
    return var_2.b.x;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(func_2(vec3<u32>(1u, u_input.a, u_input.a), -15771i, vec2<i32>(2147483647i, 30953i)) ^ firstTrailingBit(0i), ~(~(-100636i))), _wgslsmith_mod_vec2_i32(abs(min(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, 26568i))), vec2<i32>(1i, 1i))), abs(min(~vec2<i32>(-14172i, 12101i), vec2<i32>(0i, -9052i))));
    var var_1 = 4294967295u;
    let var_2 = -1i;
    let var_3 = Struct_1(~(abs(min(vec2<i32>(1i, var_2), vec2<i32>(var_2, 0i))) & max(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -16146i), vec2<i32>(var_2, var_2)), ~vec2<i32>(var_2, var_2))), reverseBits(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(2147483647i, var_2)), ~(~vec2<i32>(var_2, var_2)))), select(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, -939f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, var_2, 0i, 42447i), vec4<i32>(10258i, 30665i, var_2, var_2), vec4<i32>(var_2, -31187i, var_2, 2147483647i)))), func_3(vec2<f32>(-123f, _wgslsmith_div_f32(-2044f, 1481f)), -(~vec4<i32>(37941i, var_2, 0i, -2147483647i))), vec2<bool>(true, true)), var_2 >= _wgslsmith_mult_i32(-33998i & firstTrailingBit(var_2), _wgslsmith_div_i32(-55883i, 1i) >> (abs(0u) % 32u)));
    var var_4 = u_input.a;
    return firstTrailingBit(_wgslsmith_clamp_i32(var_3.a.x, var_2, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 11481i, 630i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, 11790i)), -2147483647i), vec2<i32>(0i, ~_wgslsmith_mult_i32(-33361i, -11171i))), vec2<i32>(countOneBits(_wgslsmith_sub_i32(func_1(), 24380i)), -((0i << (u_input.a % 32u)) & abs(32419i))), ~(var_0.yy >> (vec2<u32>(u_input.a >> (u_input.a % 32u), var_0.x) % vec2<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), u_input.a) == func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1183f, -907f)))), abs(vec4<i32>(2147483647i, -61052i, -1545i, 3948i) >> (vec4<u32>(92601u, var_0.x, 17873u, u_input.a) % vec4<u32>(32u)))).x);
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~var_0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42261u, 0u, u_input.a), vec4<u32>(61203u, 25012u, u_input.a, var_0.x))), var_0.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(1u, var_1.c.x, var_0.x), vec3<u32>(252u, var_1.c.x, var_0.x), vec3<bool>(false, true, var_1.d))), abs(~vec3<u32>(u_input.a, 0u, u_input.a)))), vec3<u32>(_wgslsmith_mod_u32(~4294967295u, u_input.a), ~u_input.a >> (func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, 137f)), ~vec4<i32>(41988i, 31745i, var_1.b.x, 35997i)).x % 32u), ~(~(~var_0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1314f, -3022f) * vec2<f32>(170f, -1774f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(121f, -806f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f * 534f) - _wgslsmith_f_op_f32(sign(-661f))), _wgslsmith_f_op_f32(f32(-1f) * -1225f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, 889f) * vec2<f32>(-2429f, -255f)))))));
    var_0 = firstLeadingBit(vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(-var_2), (vec4<i32>(0i, var_1.a.x, var_1.a.x, 16213i) | vec4<i32>(-2147483647i, var_1.b.x, var_1.a.x, 13453i)) >> ((vec4<u32>(37758u, u_input.a, u_input.a, 105040u) << (vec4<u32>(29363u, 0u, var_1.c.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))).x, _wgslsmith_add_u32(~(~62057u), ~(~4144u)), ~countOneBits(var_0.x) >> (1u % 32u)));
    var_0 = min(vec3<u32>(u_input.a, ~var_1.c.x, u_input.a), vec3<u32>(firstTrailingBit(3396u), 4294967295u, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.a, 17491u, 994u), vec3<u32>(var_0.x, 3287u, 1u)), abs(~vec3<u32>(var_0.x, var_0.x, 28048u)))));
    var_1 = Struct_1(~abs(vec2<i32>(i32(-1i) * -1i, 33719i | var_1.b.x)), countOneBits(countOneBits(_wgslsmith_add_vec2_i32(-var_1.b, var_1.b))), ~_wgslsmith_add_vec2_u32(var_0.xy, var_0.xz), var_1.d & (-13683i == _wgslsmith_mult_i32(func_1(), -var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(var_1.b.x, var_1.a.x, -23003i)), -(~vec3<i32>(58992i, -1i, 2147483647i))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_1.a.x, -37140i, var_1.b.x), vec3<i32>(-2147483647i, -1i, 44478i)), countOneBits(vec3<i32>(var_1.b.x, 14461i, var_1.b.x)), max(vec3<i32>(28841i, -1i, 10888i), vec3<i32>(1i, var_1.a.x, -2147483647i))), ~(vec3<i32>(var_1.a.x, 2147483647i, 1i) | vec3<i32>(var_1.b.x, var_1.b.x, var_1.a.x)))), var_1.a.x, 119048u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(583f)), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(exp2(var_2)), false)), !vec2<bool>(var_1.d, var_1.d))) - _wgslsmith_f_op_vec2_f32(exp2(var_2))));
}

