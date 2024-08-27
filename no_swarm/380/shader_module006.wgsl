struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = arg_3.zz;
    var var_1 = Struct_1(vec2<bool>(true, !any(arg_0.c)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_0.b.x >> (arg_0.e % 32u), arg_2, ~3978i), firstLeadingBit(max(select(vec3<i32>(28444i, u_input.a, 76806i), u_input.c, arg_0.c.x), u_input.c)), -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-31366i, -3025i, 0i)), vec3<i32>(arg_0.b.x, arg_0.b.x, 1i) << (vec3<u32>(0u, arg_0.e, arg_0.e) % vec3<u32>(32u)))), arg_0.c, vec2<f32>(arg_3.x, arg_0.d.x), _wgslsmith_sub_u32(1u, u_input.b.x));
    let var_2 = arg_0;
    var var_3 = vec4<u32>(_wgslsmith_clamp_u32(17916u, 66820u, 37171u), ~var_1.e & ~(~0u), reverseBits(~abs(min(var_1.e, 9225u))), ~(~firstTrailingBit(~var_2.e)));
    return abs(vec3<i32>(_wgslsmith_clamp_i32(arg_2, firstLeadingBit(-22358i), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.b.x, arg_0.b.x, 0i), vec4<i32>(2147483647i, -2147483647i, var_1.b.x, 0i))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_2, 0i, 21980i, -2147483647i)), -vec4<i32>(2147483647i, var_2.b.x, var_1.b.x, var_2.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.b.x, 28731i, 2147483647i) & vec4<i32>(var_1.b.x, u_input.c.x, 1i, 1i), firstTrailingBit(vec4<i32>(u_input.a, arg_2, -2147483647i, -1i)))), -62353i));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = Struct_1(arg_1.c.wz, vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(-arg_1.b), func_3(arg_1, arg_1.a.x, -u_input.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(280f, arg_1.d.x, arg_0) - vec3<f32>(-559f, arg_0, arg_1.d.x)))), ~(-2147483647i)), select(select(arg_2, !(!arg_2), arg_1.c), select(select(vec4<bool>(arg_1.a.x, false, true, true), select(arg_2, arg_1.c, vec4<bool>(true, false, false, arg_1.c.x)), arg_1.c.x), select(vec4<bool>(false, true, true, false), arg_1.c, true), !arg_2), arg_1.e == (~47808u >> (_wgslsmith_div_u32(u_input.d.x, u_input.b.x) % 32u))), arg_1.d, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.e | u_input.d.x, u_input.b.x), 120816u));
    let var_1 = _wgslsmith_add_i32(select(arg_1.b.x, 55416i, select(select(arg_2.x, false, var_0.c.x) != arg_1.c.x, arg_1.a.x, !arg_2.x)), u_input.e.x);
    var var_2 = !(!arg_2.x);
    var_2 = (-1i | var_0.b.x) < arg_1.b.x;
    var_2 = any(vec2<bool>(any(vec2<bool>(true, arg_2.x & false)), !arg_2.x));
    return vec2<i32>(~3092i, -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_vec2_i32(select(arg_0.b.xz, u_input.e >> (vec2<u32>(firstTrailingBit(arg_2.e), u_input.b.x) % vec2<u32>(32u)), true), (func_2(-968f, var_0, arg_0.c) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(1u, 44863u)) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(u_input.d.yy, ~vec2<u32>(1u, 29649u)) % vec2<u32>(32u)));
    let var_3 = -2147483647i;
    var_1 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.x))))))) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1444f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1329f;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(519f + 1583f) + 261f)) - -891f), _wgslsmith_f_op_f32(select(1062f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -750f), -1297f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 34968i, 0i), vec4<bool>(true, false, false, false), vec2<f32>(-488f, -708f), u_input.b.x), vec3<f32>(-400f, -1682f, 137f), Struct_1(vec2<bool>(true, false), u_input.c, vec4<bool>(true, true, false, true), vec2<f32>(-600f, -1110f), 57549u), vec3<f32>(-578f, -222f, 190f))), _wgslsmith_f_op_f32(f32(-1f) * -1868f))), true)), false))));
    let var_1 = Struct_1(vec2<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1730f * 2867f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2640f)))), ~u_input.c, !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 1u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f - _wgslsmith_div_f32(904f, var_1.d.x)) + var_1.d.x))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(293f * 656f)), -1238f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x)))));
    var var_3 = u_input.b.zy;
    var_3 = ~vec2<u32>(reverseBits(4294967295u), abs(~countOneBits(4294967295u)));
    let var_4 = _wgslsmith_sub_vec2_u32(vec2<u32>(2087u, var_1.e), ~vec2<u32>(var_3.x ^ 63963u, 712u)) | (u_input.d.xz | _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, var_3.x >> (3088u % 32u)), ~u_input.d.yz, abs(vec2<u32>(var_3.x, 4926u))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2, var_2), 353f, true)) * _wgslsmith_f_op_f32(min(1f, var_1.d.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_5.d.x, var_1.d.x, !var_1.a.x)))), ~var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_div_u32(var_5.e, var_4.x), 1u);
}

