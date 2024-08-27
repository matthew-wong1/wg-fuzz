struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_3.b);
    var var_1 = select(select(!arg_3.d, vec3<bool>(!arg_3.d.x, arg_3.d.x, all(select(vec4<bool>(true, true, false, arg_3.d.x), vec4<bool>(arg_3.d.x, true, arg_3.d.x, false), arg_3.d.x))), any(select(arg_3.d.zz, arg_3.d.zx, vec2<bool>(true, arg_0))) & false), arg_3.d, vec3<bool>(true, all(vec3<bool>(true, false, arg_3.d.x)), arg_0));
    let var_2 = arg_3.c.x;
    var_1 = !select(select(select(!vec3<bool>(arg_0, arg_3.d.x, true), vec3<bool>(false, arg_3.d.x, true), select(vec3<bool>(false, true, arg_3.d.x), arg_3.d, false)), arg_3.d, true), select(vec3<bool>(true, false && arg_3.d.x, arg_3.d.x), !(!arg_3.d), !vec3<bool>(arg_3.d.x, arg_3.d.x, var_1.x)), select(select(select(vec3<bool>(true, arg_3.d.x, false), vec3<bool>(arg_0, true, arg_0), true), vec3<bool>(var_1.x, false, arg_3.d.x), false), arg_3.d, select(vec3<bool>(true, false, true), !arg_3.d, true)));
    var var_3 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 10271u), arg_3.c.zx));
    return select(vec2<u32>(_wgslsmith_div_u32(~countOneBits(1u), 4294967295u), var_2), firstTrailingBit(vec2<u32>(28429u, var_2)), !arg_3.d.x);
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec2<u32>(~0u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 0u), 30675u)));
    var var_1 = any(!(!vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)))));
    var_0 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(~var_0.a), func_3(all(vec4<bool>(false, false, false, true)), u_input.b, var_0.a, Struct_1(-2001i, vec4<f32>(-412f, -856f, -338f, 808f), vec4<u32>(var_0.a.x, var_0.a.x, 1u, 50211u), vec3<bool>(false, true, false)))), vec2<u32>(4294967295u, 1u)));
    let var_2 = Struct_1(~(i32(-1i) * -u_input.b.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f + -165f)), -980f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f - -692f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -425f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1464f, -377f)), _wgslsmith_f_op_f32(1000f - 1937f), true)))), ~abs(~reverseBits(vec4<u32>(var_0.a.x, 0u, var_0.a.x, var_0.a.x))), !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), true));
    let var_3 = vec2<bool>(false, !var_2.d.x);
    return false && (u_input.c == _wgslsmith_div_i32(-43394i, u_input.b.x));
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f * _wgslsmith_f_op_f32(-arg_0.b))));
    var var_1 = arg_0.d.yx;
    var var_2 = -(~firstTrailingBit(-firstLeadingBit(vec4<i32>(u_input.c, u_input.a.x, -45337i, 2147483647i))));
    var var_3 = arg_0.c;
    var var_4 = select(select(vec4<bool>(var_3.d.x, !all(vec3<bool>(true, var_3.d.x, var_3.d.x)), all(!vec2<bool>(false, var_3.d.x)), false), !vec4<bool>(true, !arg_0.c.d.x, true, arg_0.e), select(vec4<bool>(var_3.d.x, var_3.d.x, func_2(), all(vec2<bool>(true, var_3.d.x))), select(select(vec4<bool>(var_3.d.x, true, true, var_3.d.x), vec4<bool>(arg_0.c.d.x, var_3.d.x, false, arg_0.c.d.x), true), !vec4<bool>(true, false, false, var_3.d.x), -1419f != var_3.b.x), !select(vec4<bool>(var_3.d.x, arg_0.c.d.x, true, arg_0.c.d.x), vec4<bool>(var_3.d.x, arg_0.e, true, false), vec4<bool>(var_3.d.x, false, true, false)))), vec4<bool>(false, any(select(select(var_3.d.zx, vec2<bool>(var_3.d.x, true), var_3.d.x), select(arg_0.c.d.zz, arg_0.c.d.zx, vec2<bool>(false, arg_0.e)), !arg_0.c.d.xy)), all(vec2<bool>(true, false | var_3.d.x)), select((var_3.d.x | true) | any(vec4<bool>(arg_0.c.d.x, arg_0.e, var_3.d.x, true)), var_3.d.x, any(!vec3<bool>(var_3.d.x, arg_0.e, false)))), select(!vec4<bool>(arg_0.c.d.x, all(arg_0.c.d.yx), var_3.d.x && true, var_3.d.x), vec4<bool>(true, any(var_3.d), all(select(vec4<bool>(arg_0.e, false, false, arg_0.e), vec4<bool>(arg_0.c.d.x, arg_0.e, var_3.d.x, true), var_3.d.x)), (27553u & var_3.c.x) < var_1.x), all(select(select(vec4<bool>(var_3.d.x, true, var_3.d.x, var_3.d.x), vec4<bool>(false, var_3.d.x, var_3.d.x, false), vec4<bool>(var_3.d.x, arg_0.c.d.x, arg_0.e, false)), select(vec4<bool>(true, arg_0.e, false, arg_0.e), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.e, var_3.d.x, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, var_3.d.x), vec4<bool>(true, var_3.d.x, false, true))))));
    return vec2<u32>(_wgslsmith_mod_u32(func_3(true, u_input.a, arg_0.c.c.zy | arg_0.c.c.xx, Struct_1(u_input.c, vec4<f32>(arg_0.c.b.x, 805f, 669f, -1000f), vec4<u32>(0u, var_3.c.x, 12556u, 4294967295u), var_4.xyx)).x ^ ~(~var_1.x), _wgslsmith_dot_vec4_u32(abs(var_3.c), vec4<u32>(~arg_0.a.x, arg_0.c.c.x, var_1.x & 4294967295u, var_3.c.x))), ~18273u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1088f;
    let var_1 = Struct_2(func_1(Struct_3(vec2<u32>(~85461u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20170u, 54914u), vec3<u32>(0u, 19795u, 0u))), 609f, Struct_1(_wgslsmith_clamp_i32(84223i, u_input.c, 1i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1629f, 525f, var_0, 171f), vec4<f32>(var_0, var_0, 521f, var_0))), vec4<u32>(1u, 0u, 70725u, 4294967295u), vec3<bool>(true, true, true)), vec3<u32>(1u, 1u, 1u), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))))));
    let var_2 = select(!vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true & any(vec3<bool>(false, false, false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), false);
    let var_3 = ~(~firstLeadingBit(44079u));
    let var_4 = var_1;
    var var_5 = Struct_2(countOneBits(~(~var_1.a)));
    var_5 = Struct_2(~(countOneBits(vec2<u32>(var_4.a.x, var_1.a.x) >> (vec2<u32>(19326u, 60710u) % vec2<u32>(32u))) ^ max(func_1(Struct_3(vec2<u32>(var_4.a.x, 35195u), var_0, Struct_1(-3201i, vec4<f32>(-343f, var_0, 1227f, var_0), vec4<u32>(var_3, var_3, 4294967295u, var_1.a.x), vec3<bool>(false, false, var_2.x)), vec3<u32>(0u, var_4.a.x, var_3), true)), abs(vec2<u32>(6095u, 5664u)))));
    let var_6 = Struct_1(countOneBits(1i) ^ select(-1i, firstTrailingBit(u_input.a.x) ^ 8736i, all(!vec3<bool>(true, true, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-295f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -897f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-278f, -871f))), 1000f)), vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, ~firstTrailingBit(var_3)) ^ ~(~(~vec4<u32>(0u, var_1.a.x, 48816u, 11855u))), vec3<bool>(all(vec3<bool>(false, any(vec3<bool>(var_2.x, var_2.x, false)), all(vec2<bool>(var_2.x, var_2.x)))), all(vec4<bool>(1u != var_5.a.x, false, true, true)), any(select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x)), !vec3<bool>(false, var_2.x, true), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -select(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(var_6.a, var_6.a)), _wgslsmith_add_vec2_i32(u_input.b, u_input.b), true), ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, var_6.a, var_6.a, var_6.a), -vec4<i32>(u_input.c, 1i, u_input.c, 30534i), reverseBits(vec4<i32>(28272i, u_input.c, var_6.a, -1043i)))), _wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -2147483647i, var_6.a)) | vec3<i32>(0i, ~u_input.a.x, ~u_input.c), vec3<i32>(u_input.b.x, reverseBits(1i), u_input.c)));
}

