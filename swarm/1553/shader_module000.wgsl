struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1984f, -1015f, -180f) * vec3<f32>(544f, 1285f, -139f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1204f, 1536f, -1702f))))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-974f, _wgslsmith_f_op_f32(f32(-1f) * -514f)))));
    let var_1 = !select(!(!vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x)), !select(vec4<bool>(true, true, var_0.b.x, false), !vec4<bool>(var_0.b.x, var_0.b.x, false, true), u_input.c >= 4294967295u), true);
    var var_2 = var_0;
    var_2 = Struct_4(var_0.a, vec3<bool>(true, all(!vec4<bool>(var_1.x, var_0.b.x, false, false)) | var_2.b.x, any(var_1)), -153f);
    let var_3 = Struct_2(var_2.b, Struct_1(var_0.b.yz, _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.c, 26156u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, u_input.d.x, arg_0.x), vec3<u32>(u_input.a, arg_0.x, u_input.a)) << (vec3<u32>(0u, u_input.c, 59220u) % vec3<u32>(32u))), var_0.b, reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(u_input.b.x, -1i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-25603i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))))), vec4<i32>((-u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, arg_0.x), arg_0) % 32u)) ^ -23798i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, 16775i) ^ _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 13265i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(24499i, -2147483647i), vec2<i32>(u_input.b.x, u_input.b.x))), ~_wgslsmith_add_i32(-47327i, _wgslsmith_sub_i32(0i, 1i)), 2147483647i), var_1);
    return vec3<u32>(~u_input.a, var_3.b.b.x, 4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = Struct_3(!vec3<bool>(!arg_1.b.x, arg_1.b.x, !(503f > arg_1.a.x)), vec4<i32>(u_input.b.x, 8371i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(-37811i, u_input.b.x), vec2<i32>(-24755i, u_input.b.x)), -18914i), Struct_2(vec3<bool>(arg_0, !(u_input.a > 27374u), !(arg_1.a.x > -606f)), Struct_1(!arg_1.b.yx, firstLeadingBit(func_3(vec3<u32>(18798u, u_input.c, 11543u))), arg_1.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-10475i, 39066i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -1i)) << ((vec3<u32>(u_input.c, 1u, u_input.c) << (vec3<u32>(84078u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))), -vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, 24715i), vec3<i32>(u_input.b.x, 70337i, 58975i)), u_input.b.x & u_input.b.x, -16323i >> (u_input.c % 32u)), vec4<bool>(all(!vec4<bool>(arg_1.b.x, true, true, arg_1.b.x)), !arg_1.b.x, any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_1.b.x, false, true), arg_1.b)), !any(arg_1.b.zy))), _wgslsmith_f_op_f32(step(211f, 469f)), Struct_1(arg_1.b.zy, func_3(vec3<u32>(u_input.a, u_input.a, u_input.d.x) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 85241u, u_input.a), vec3<u32>(4294967295u, 1u, 1u))), vec3<bool>(arg_0, arg_0, arg_1.b.x), -(~vec3<i32>(u_input.b.x, 21764i, u_input.b.x) & -vec3<i32>(-1i, u_input.b.x, 67412i))));
    var var_1 = vec2<i32>(u_input.b.x, ~firstLeadingBit(u_input.b.x));
    var_1 = abs(-select(-(u_input.b << (vec2<u32>(1u, var_0.c.b.b.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(max(vec2<i32>(55305i, u_input.b.x), vec2<i32>(var_0.c.b.d.x, -31480i)), ~vec2<i32>(u_input.b.x, var_1.x)), vec2<bool>(40400u != var_0.e.b.x, true || var_0.c.a.x)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(-216f, arg_1.a.x, 944f)))), vec3<bool>(false, any(!select(vec3<bool>(var_0.c.b.c.x, arg_0, var_0.a.x), var_0.c.b.c, vec3<bool>(false, false, var_0.a.x))), var_0.e.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)))) + arg_1.a.x));
    var var_3 = 49099i;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, 1000f, var_2.b.x)) + arg_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.c, arg_1.c, arg_1.b.x)), _wgslsmith_f_op_f32(min(-2459f, var_2.a.x)), true))))), var_2.c);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1501f, 215f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(false, Struct_4(vec3<f32>(-827f, 346f, -1193f), vec3<bool>(true, false, false), 1760f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1325f, -907f) * vec2<f32>(-997f, -793f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1316f, 1470f), _wgslsmith_f_op_f32(f32(-1f) * -963f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2629f, -2724f), vec2<f32>(1000f, 1166f)) * vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(step(691f, -309f))) - vec2<f32>(-731f, -396f)) + vec2<f32>(1553f, 1000f)));
    var var_1 = reverseBits(_wgslsmith_mod_i32(u_input.b.x, 7673i));
    let var_2 = func_3(vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 28150u), u_input.c), ~(~u_input.d.x)) | _wgslsmith_mod_vec3_u32(func_3(firstTrailingBit(vec3<u32>(44589u, u_input.c, 83960u))), ~select(vec3<u32>(u_input.c, 129342u, 42526u), vec3<u32>(19741u, u_input.d.x, u_input.a), vec3<bool>(true, false, false)))).zx;
    let var_3 = ~((_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.d.x), countOneBits(vec4<u32>(0u, 33555u, 21488u, u_input.c))) & var_2.x) >> (~reverseBits(0u) % 32u));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(770f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    return vec4<f32>(_wgslsmith_f_op_f32(-668f + 1683f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(var_0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_add_i32(u_input.b.x, firstTrailingBit(u_input.b.x)) == 2147483647i, Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_1.xyx, arg_0.c.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yxy - vec3<f32>(1940f, -141f, 231f)) + arg_1.zzy))), select(!arg_0.e.c, !(!arg_0.c.d.zyx), vec3<bool>(true, true, arg_0.e.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)))))).x;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.e.d.x, 1i), arg_0.c.b.d.yx)), arg_0.b.x | 40842i), arg_0.c.b.d.zz);
    var var_2 = Struct_4(arg_1.wxw, select(vec3<bool>(arg_0.e.c.x, !all(arg_0.c.d), arg_0.e.b.x >= ~4294967295u), vec3<bool>(false, false, any(vec4<bool>(arg_0.e.a.x, false, false, true)) && (arg_0.c.c.x != u_input.b.x)), arg_0.c.b.c), _wgslsmith_f_op_f32(714f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))))));
    let var_3 = min(~arg_0.c.b.b, ~(~(~vec3<u32>(u_input.a, u_input.c, 57011u))));
    let var_4 = arg_0.c;
    return !(!var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f + -1266f) * _wgslsmith_f_op_f32(f32(-1f) * -766f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(-799f * 710f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1253f, 1197f), _wgslsmith_f_op_f32(max(-844f, 352f)))))), true));
    var var_1 = firstLeadingBit(~(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, u_input.d.x), vec3<u32>(u_input.c, u_input.d.x, u_input.a)), ~vec3<u32>(u_input.d.x, 0u, u_input.d.x))));
    var var_2 = Struct_2(select(!vec3<bool>(any(vec3<bool>(false, false, true)), any(vec3<bool>(false, true, false)), true), vec3<bool>(func_4(Struct_3(vec3<bool>(true, true, false), vec4<i32>(u_input.b.x, -38854i, u_input.b.x, 27429i), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, true), vec3<i32>(-1i, 2147483647i, u_input.b.x)), vec4<i32>(17520i, 1i, 4614i, -23369i), vec4<bool>(true, true, true, false)), -1316f, Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 11304u, u_input.a), vec3<bool>(true, true, true), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(func_1()), vec3<f32>(-104f, -545f, -1345f)), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(select(false, true, true), true, false), true)), Struct_1(vec2<bool>(true, true), abs(vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, 13178u), var_1.x, var_1.x)), vec3<bool>(true, true, true), vec3<i32>(u_input.b.x, -reverseBits(1i), select(23203i, firstLeadingBit(2147483647i), true))), firstLeadingBit(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x | -u_input.b.x)), vec4<bool>(false || ((var_1.x >= 10430u) == true), _wgslsmith_f_op_f32(-1434f * _wgslsmith_f_op_f32(select(-1352f, 125f, true))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-360f))), select(false, true, all(vec4<bool>(true, true, true, true))), true));
    let var_3 = var_2.b.b;
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(812f, -120f, 1450f)))))), vec3<bool>(all(!vec2<bool>(true, var_2.d.x)), var_2.a.x, false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1889f, 2123f)))) + _wgslsmith_f_op_f32(abs(631f))), 1897f, any(select(!var_2.a, var_2.a, !var_2.d.xxw)))));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(var_4.c + _wgslsmith_div_f32(_wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(-2486f + var_4.c)), 126f)), _wgslsmith_f_op_f32(var_4.a.x - -604f), var_4.a.x, -474f);
    var var_6 = 874f;
    var var_7 = vec4<u32>(_wgslsmith_dot_vec4_u32(((vec4<u32>(u_input.d.x, u_input.a, var_3.x, 5671u) ^ vec4<u32>(27361u, var_3.x, var_2.b.b.x, var_2.b.b.x)) | select(vec4<u32>(1u, 4294967295u, var_1.x, var_2.b.b.x), vec4<u32>(15459u, 1u, var_2.b.b.x, 23609u), var_4.b.x)) | ~(~vec4<u32>(1u, 58571u, var_2.b.b.x, 0u)), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_2.b.b.x, var_3.x, var_1.x, 0u)), ~vec4<u32>(4294967295u, var_2.b.b.x, 90484u, 511u))), u_input.a, 1u, 1u);
    var_7 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~var_3.x, var_7.x, u_input.c, 4686u | _wgslsmith_div_u32(var_2.b.b.x, 9732u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_3.x, ~30422u, ~36619u), 4294967295u, 23831u, 89519u), select(vec4<u32>(var_2.b.b.x, var_3.x, ~1u, var_3.x), ~vec4<u32>(33315u, var_1.x, var_2.b.b.x, var_1.x) | reverseBits(vec4<u32>(var_2.b.b.x, 1u, 441u, var_1.x)), true)), ~(~firstLeadingBit(vec4<u32>(0u, 30847u, var_3.x, 46092u) | vec4<u32>(var_3.x, var_7.x, 126896u, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - var_4.c) + _wgslsmith_f_op_f32(var_4.c + var_4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x * var_4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1702f)))), _wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_f_op_f32(-var_5.x)))));
}

