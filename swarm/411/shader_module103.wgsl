struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: bool,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(-1i, 40488i), ~max(firstTrailingBit(u_input.c), ~(-25706i)), 29998i);
    var var_1 = Struct_4(-748f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-306f)), 1382f)), vec2<u32>(15149u, ~4294967295u));
    var var_2 = Struct_1(!select(select(vec3<bool>(arg_0, var_1.a, false), select(vec3<bool>(true, var_1.a, arg_0), vec3<bool>(var_1.a, arg_0, arg_0), vec3<bool>(var_1.a, arg_0, true)), !vec3<bool>(false, arg_0, arg_0)), !(!vec3<bool>(var_1.a, arg_0, true)), select(!vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, var_1.a, true), true)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c, -1004i), var_0.xx), u_input.b));
    var_0 = ~((reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -44847i, 26643i), vec3<i32>(var_0.x, var_0.x, var_0.x))) & firstLeadingBit(vec3<i32>(-4756i, var_2.b, 2147483647i))) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, u_input.c, -41879i) & vec3<i32>(2147483647i, 6896i, -2147483647i), vec3<i32>(-1i, 3183i, 2147483647i) << (vec3<u32>(43516u, var_1.b.x, 4294967295u) % vec3<u32>(32u))));
    var_2 = Struct_1(!select(vec3<bool>(-17359i <= var_2.b, var_2.a.x, all(vec3<bool>(arg_0, true, false))), select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), !var_2.a, select(arg_0, true, var_1.a)), vec3<bool>(all(vec3<bool>(false, false, arg_0)), all(var_2.a.xx), !var_2.a.x)), _wgslsmith_clamp_i32(var_2.b << (select(~u_input.a, var_1.b.x, true) % 32u), 0i, -36189i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1589f, -1223f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1000f), vec2<f32>(-156f, 256f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-764f, -558f), vec2<f32>(-942f, -662f), var_2.a.x)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-490f + 1298f), _wgslsmith_f_op_f32(f32(-1f) * -1715f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1335f, 812f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1186f, -1087f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(202f, 513f))), vec2<bool>(true, true))))));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1546f), _wgslsmith_f_op_f32(round(var_0.a.x))));
    let var_1 = ~_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(0i, 2147483647i, 0i, 0i), vec4<i32>(1i, u_input.d, 1i, 0i), false) & reverseBits(vec4<i32>(u_input.c, 1i, -10846i, u_input.d)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 40684i, u_input.c, u_input.b), firstLeadingBit(vec4<i32>(-1i, 2147483647i, u_input.c, u_input.b))), vec4<i32>(u_input.c, 13559i, u_input.c, u_input.b) << (~vec4<u32>(u_input.a, u_input.a, 41436u, 10379u) % vec4<u32>(32u))), max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.b), ~vec4<i32>(u_input.b, 0i, -2147483647i, u_input.d)), vec4<i32>(-9152i, firstLeadingBit(1i), 43989i << (u_input.a % 32u), 1i)));
    let var_2 = Struct_5(any(vec3<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), reverseBits(u_input.a) != ~u_input.a)), Struct_4(select(u_input.a != abs(47541u), true, true), ~(vec2<u32>(u_input.a, 0u) >> (vec2<u32>(4294967295u, 25728u) % vec2<u32>(32u)))), !(!any(vec3<bool>(true, false, false))), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), min(vec2<u32>(u_input.a, 18977u), vec2<u32>(1u, 48622u)) << ((vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(13367u, _wgslsmith_dot_vec4_u32(vec4<u32>(54876u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), 0u & _wgslsmith_div_u32(u_input.a, u_input.a)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(80701u, 1u), vec2<u32>(0u, 1u)))), Struct_3(vec2<f32>(-291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)))));
    return Struct_1(!vec3<bool>(true, false | (var_2.b.a || var_2.a), !(!var_2.c)), u_input.b);
}

fn func_1() -> f32 {
    let var_0 = func_2();
    let var_1 = Struct_5(true, Struct_4(select(!var_0.a.x | true, 1i >= func_2().b, var_0.a.x), vec2<u32>(0u, abs(22323u))), var_0.a.x, select(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(69043u, u_input.a, u_input.a)), vec3<u32>(24573u, countOneBits(abs(u_input.a)), u_input.a), false), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -284f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(-140f + 359f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_1.e.a.x - var_1.e.a.x), _wgslsmith_dot_vec3_u32(reverseBits(var_1.d), var_1.d), var_1.e.a.x, vec4<i32>(-12892i, abs(u_input.c), -max(var_0.b, u_input.d), 1i), -1089f);
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.e.a)), _wgslsmith_f_op_vec2_f32(-var_1.e.a)) + vec2<f32>(-341f, _wgslsmith_div_f32(var_1.e.a.x, var_1.e.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e.a) - _wgslsmith_div_vec2_f32(vec2<f32>(497f, var_2.c), _wgslsmith_f_op_vec2_f32(-var_1.e.a)))));
    var var_4 = -(i32(-1i) * -52319i);
    return var_1.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = ~u_input.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(sign(1256f)))));
    let var_3 = vec3<i32>(u_input.b, var_1, -1i) << ((vec3<u32>(u_input.a, 9687u, u_input.a) ^ vec3<u32>(26723u, ~(~6686u), ~u_input.a)) % vec3<u32>(32u));
    var var_4 = any(select(vec3<bool>(any(func_2().a), u_input.a > ~u_input.a, true), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !func_2().a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true)));
    let var_5 = 70858i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(42964u, 4294967295u)), vec2<u32>(u_input.a, 42237u)));
}

