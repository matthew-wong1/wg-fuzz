struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(29991i, 1i, 1i, 17273i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    let var_0 = 2171f == _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-324f, arg_0.x)), true)))));
    return -_wgslsmith_mod_i32(firstTrailingBit(global0.x) ^ -(i32(-1i) * -2147483647i), ~(-(~1323i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 552f, arg_0.a));
    var var_1 = Struct_3(var_0.yz, arg_0.c, -vec4<i32>(~_wgslsmith_clamp_i32(global0.x, arg_1, global0.x), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0.a) * arg_0.b.wy), arg_0.c.x >> (1u % 32u), arg_0.c), arg_1, _wgslsmith_sub_i32(~(-18012i), max(arg_1, 0i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-106f, _wgslsmith_f_op_f32(floor(var_0.x)))) + var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + -1279f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.x, 529f), var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = ~(-global0.wyw);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yz - vec2<f32>(var_1.a.x, -1513f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, var_1.a.x) * var_1.a) + _wgslsmith_f_op_vec2_f32(-var_2.yw))) - arg_0.b.xx), vec3<u32>(11925u, _wgslsmith_div_u32(36757u, _wgslsmith_div_u32(arg_0.d.x, ~47693u)), 65416u), firstTrailingBit(var_1.c));
    return var_1.b.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, 9000u) ^ vec2<u32>(1u, 0u)), reverseBits(vec2<u32>(13042u, 81378u))), u_input.b.x), vec2<u32>(~reverseBits(~u_input.b.x), u_input.b.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(2188f + 733f), -1000f, -466f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 574f, -441f, 1066f)), vec4<bool>(any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, false)), select(false, false, true), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, -438f, 1759f), vec4<f32>(arg_1, -557f, 561f, arg_1)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.x, 624f, -842f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, arg_0.x, arg_0.x, -759f)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false))))), ~(vec3<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, u_input.b.x), func_2(Struct_1(arg_1, vec4<f32>(940f, -1306f, arg_1, arg_1), vec3<u32>(4294967295u, u_input.a.x, 55066u), vec2<u32>(var_0.x, var_0.x)), -2147483647i, vec4<bool>(true, true, true, true))) | ~vec3<u32>(u_input.b.x, var_0.x, u_input.a.x)), _wgslsmith_mod_vec2_u32(select(select(abs(vec2<u32>(u_input.b.x, 24928u)), _wgslsmith_sub_vec2_u32(u_input.a, u_input.b), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), ~select(var_0, u_input.a, vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), u_input.a));
    global0 = ~vec4<i32>(0i, ~(i32(-1i) * -8216i), 89051i, global0.x);
    var var_2 = Struct_5(var_1, ~firstLeadingBit(var_1.c.xz), var_1);
    let var_3 = Struct_5(Struct_1(_wgslsmith_f_op_f32(select(-624f, arg_0.x, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)))), var_2.a.b, _wgslsmith_clamp_vec3_u32(var_2.c.c, var_2.c.c, ~firstTrailingBit(var_1.c)), min(~firstTrailingBit(vec2<u32>(u_input.b.x, 4294967295u)), max(var_0, var_0))), ~vec2<u32>(~4294967295u, 38676u), var_1);
    return vec4<u32>(~var_0.x, countOneBits(abs(_wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), u_input.b.x | 14562u))), var_2.a.c.x >> (0u % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(6354u, u_input.b.x, 4294967295u)), var_2.a.c), 4294967295u, abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~func_1(vec3<f32>(-813f, 647f, -531f), -337f) << (abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(2223u, u_input.a.x, u_input.a.x, 40252u), vec4<u32>(u_input.a.x, 46255u, 4294967295u, u_input.a.x))) % vec4<u32>(32u)));
    global0 = firstLeadingBit(vec4<i32>(-2147483647i, ~(~global0.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-30444i, global0.x << (41594u % 32u)), -13747i), ~(-20243i)));
    var var_1 = Struct_2(false, min(vec4<i32>(global0.x ^ 78366i, ~global0.x, global0.x, i32(-1i) * -2147483647i) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(46107i, -1i, -38055i, global0.x), vec4<i32>(-12358i, -2147483647i, 2147483647i, global0.x)), -vec4<i32>(global0.x, firstLeadingBit(global0.x), global0.x, -global0.x)), 26576u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-465f, 206f, true)), _wgslsmith_f_op_f32(-279f + 424f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f * _wgslsmith_f_op_f32(f32(-1f) * -241f)))), -1010f);
    var_1 = Struct_2(false, var_1.b, abs(4294967295u), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(var_1.e + var_1.e)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(-var_1.e)));
    let var_2 = vec2<bool>(!var_1.a, ((abs(20008i) | var_1.b.x) <= _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 0i, 2147483647i, var_1.b.x) & var_1.b, var_1.b)) & (any(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, var_1.a))) & var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-406f, 1000f), vec2<f32>(1868f, var_1.d))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, 313f)))), vec3<u32>(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(19692u, 0u, abs(0u), var_1.c & u_input.b.x)), ~(~(0u | u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.c, ~1u, abs(1u)), ~var_0.www)), reverseBits(vec2<i32>(global0.x, 1i)));
}

