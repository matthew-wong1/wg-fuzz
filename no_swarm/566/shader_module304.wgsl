struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> vec2<u32> {
    let var_0 = !select(!(!select(arg_1.a.c.d.zz, arg_1.a.c.d.zy, arg_1.a.c.d.yx)), arg_1.a.b.d.xz, select(arg_1.a.c.d.x, arg_1.a.c.d.x, any(!vec4<bool>(arg_1.a.c.d.x, arg_1.a.b.d.x, true, true))));
    let var_1 = all(var_0);
    var var_2 = Struct_3(select(true, u_input.a.x >= (~0u >> ((u_input.a.x & arg_0.b.x) % 32u)), false), arg_1.a.c, arg_1.a.b);
    let var_3 = Struct_4(vec4<f32>(-289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.c.b, 753f)))), var_2.b.b, var_2.c.b));
    var_2 = arg_1.a;
    return u_input.a;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = !arg_2.d.x;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-1805f, -587f), _wgslsmith_f_op_f32(floor(991f)), -2267f, _wgslsmith_div_f32(arg_2.b, arg_2.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1984f), _wgslsmith_f_op_f32(-arg_2.b), -1142f, _wgslsmith_f_op_f32(f32(-1f) * -1138f))))));
    let var_2 = var_1.a.xx;
    var var_3 = ~((-countOneBits(vec2<i32>(arg_2.a, 0i)) | arg_1.yx) & ~(-(arg_1.yz << (u_input.a % vec2<u32>(32u)))));
    var_3 = min(-(max(vec2<i32>(1i, -10570i), arg_1.zz) & _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, arg_2.c), vec2<i32>(var_3.x, arg_2.c))) >> (func_3(Struct_2(vec2<i32>(arg_1.x, 0i), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 85581u), vec4<u32>(4294967295u, u_input.a.x, 38445u, u_input.a.x))), Struct_5(Struct_3(arg_2.d.x, arg_2, Struct_1(-28753i, 2160f, 1i, vec3<bool>(false, true, false))))) % vec2<u32>(32u)), firstTrailingBit(arg_1.zx) >> (~u_input.a % vec2<u32>(32u)));
    return ~((arg_1.zy ^ abs(arg_1.xx)) ^ ~vec2<i32>(arg_2.c, abs(-28364i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.a.x)))) <= _wgslsmith_f_op_f32(-1740f + -302f)), true, any(vec2<bool>((arg_0.x | arg_0.x) < arg_0.x, select(true, all(vec4<bool>(false, true, false, true)), true))));
    let var_1 = ~u_input.a;
    let var_2 = ~vec3<i32>(min(arg_0.x, ~arg_0.x), 29430i, _wgslsmith_mod_i32(arg_0.x ^ _wgslsmith_clamp_i32(arg_0.x, 23436i, 0i), ~arg_0.x));
    let var_3 = Struct_5(Struct_3(var_0.x, Struct_1(-var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + -2165f)), 35991i, select(var_0.xzy, select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.yxz), true)), Struct_1(-arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(230f - 1010f))), ~var_2.x & var_2.x, vec3<bool>(true, var_0.x & var_0.x, var_0.x))));
    var_0 = !select(vec4<bool>(var_3.a.b.d.x || all(vec4<bool>(var_3.a.b.d.x, var_3.a.b.d.x, false, var_3.a.b.d.x)), all(var_3.a.c.d), select(any(vec2<bool>(false, false)), var_0.x | false, var_3.a.c.b < var_3.a.b.b), true), vec4<bool>(any(select(vec4<bool>(var_0.x, var_3.a.b.d.x, var_0.x, var_3.a.c.d.x), vec4<bool>(true, true, true, false), vec4<bool>(false, var_0.x, true, var_0.x))), true, false, false), vec4<bool>(!any(vec4<bool>(var_3.a.a, var_3.a.a, var_3.a.b.d.x, var_0.x)), all(!var_0.ww), var_3.a.a, !(!var_0.x)));
    return _wgslsmith_div_u32(~(20022u << (~abs(u_input.a.x) % 32u)), _wgslsmith_dot_vec2_u32(var_1, ~u_input.a));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<u32>(38924u, ~(_wgslsmith_sub_u32(13096u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) | arg_2), ~(~u_input.a.x), func_4(~select(vec2<i32>(44156i, 3076i), func_2(Struct_4(vec4<f32>(1255f, -373f, arg_1, 281f)), vec3<i32>(-25642i, 0i, -1i), Struct_1(-2147483647i, arg_1, -1i, vec3<bool>(arg_0, true, false)), vec3<bool>(arg_0, false, arg_0)), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true)), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(sign(1094f)), _wgslsmith_f_op_f32(min(arg_1, arg_1)), 384f, arg_1))));
    var var_1 = any(!select(select(!vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, false, true)), vec4<bool>(true, arg_0, arg_0 & arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, false)));
    let var_2 = arg_0;
    var var_3 = var_0.xzw;
    var_1 = false;
    return Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(0i, 1i, -41216i)), vec3<i32>(-1i, -26015i, 23276i))), vec3<i32>(1i, ~(-36228i), ~(-6544i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-479f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))))), (i32(-1i) * -_wgslsmith_clamp_i32(-54620i, 0i, -4254i)) << (abs(~(~arg_2)) % 32u), !select(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, arg_0), true), false), !(!vec3<bool>(arg_0, true, false))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_4(vec4<f32>(-1480f, 840f, -355f, 566f));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.a)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-689f, var_0.a.x, var_0.a.x, 580f)))))) - var_0.a));
    let var_1 = u_input.a.x;
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1904f * arg_0.c.b) - _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(sign(906f)))), -289f, arg_0.c.b, _wgslsmith_f_op_f32(1273f + _wgslsmith_f_op_f32(-arg_0.b.b))));
    var_0 = Struct_4(var_0.a);
    return func_1(!(abs(1u) == firstTrailingBit(~17914u)), _wgslsmith_div_f32(2131f, arg_0.c.b), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = ~u_input.a.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(720f)) != -1164f, func_5(Struct_3(all(vec4<bool>(true, true, true, true)), Struct_1(~35400i, _wgslsmith_f_op_f32(trunc(912f)), 1i, vec3<bool>(false, false, false)), func_1(true, 1359f, ~u_input.a.x)), _wgslsmith_div_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(-6342i, -1i))), -vec2<i32>(-2147483647i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -46301i, -45832i, i32(-1i) * -1i), vec4<i32>(1i, 1i, 1i, 1i))), func_1(true, -693f, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), ~4294967295u) ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(74760u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(70816u, 1u), true)));
    var_0 = 0u;
    var var_2 = Struct_3(var_1.c.d.x && var_1.c.d.x, var_1.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(vec4<u32>(abs(4294967295u), u_input.a.x, 1u, abs(0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(6368u, 673u, u_input.a.x, u_input.a.x), vec4<u32>(12670u, 46954u, 0u, u_input.a.x))), vec3<u32>(_wgslsmith_div_u32(~4294967295u, min(u_input.a.x, u_input.a.x)) | u_input.a.x, _wgslsmith_clamp_u32(0u, ~(~36959u), 4294967295u), u_input.a.x));
}

