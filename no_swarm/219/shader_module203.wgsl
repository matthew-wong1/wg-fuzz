struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(-645f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(231f, 2123f)))));
    let var_2 = Struct_5(-11926i, Struct_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(28370i, -1i, 2147483647i, -1604i)), vec4<i32>(-2470i, 55813i, 0i, -29622i) >> (arg_0 % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 0i, 0i, -1i), firstTrailingBit(vec4<i32>(2147483647i, -2312i, 20234i, 1i))), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) * _wgslsmith_f_op_f32(step(364f, var_1)))), false, vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.xzw), _wgslsmith_mult_vec3_u32(vec3<u32>(25333u, u_input.a, 5180u), arg_0.yxw)), 2380u, _wgslsmith_clamp_u32(1u, u_input.a, _wgslsmith_dot_vec3_u32(arg_0.yyz, vec3<u32>(arg_0.x, 39088u, arg_0.x)))), _wgslsmith_mult_i32(-1i, ~_wgslsmith_mod_i32(-1i, -11323i))), true);
    let var_3 = false;
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_4.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1387f - 324f), _wgslsmith_f_op_f32(-var_4.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -554f))) - _wgslsmith_f_op_f32(min(var_1, var_2.b.b))))), var_2.b.b));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(vec3<bool>(~u_input.a != ~u_input.a, select(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, true)) | any(vec3<bool>(true, false, false))), true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-232f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_u32(~vec4<u32>(14693u, 5999u, u_input.a, u_input.a), vec4<u32>(43850u, 106307u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 13457u, 1u, 32746u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(36077u, 33857u, u_input.a, 42003u))) + -232f), 1018f)))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(reverseBits(vec4<i32>(-23118i, ~min(1803i, 1i), -1i, -10526i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), 1u != u_input.a), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)))), firstLeadingBit(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25398u), vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 13491u)) << (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u)))), max(-1i, abs(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, -1i), vec2<i32>(-21490i, 14399i)), vec2<i32>(1i, 1i)))));
    let var_1 = Struct_1(var_0.a, var_0.b, !(!(!(!var_0.c))), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a, ~(~0u), u_input.a), vec3<u32>(1u, _wgslsmith_mult_u32(firstTrailingBit(u_input.a), 21789u), var_0.d.x)), ~(-24382i));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(717f)) - var_0.b), _wgslsmith_f_op_f32(floor(var_1.b)), -1356f);
    var_0 = var_1;
    var var_3 = Struct_1(vec4<i32>(26482i, var_0.e, select(var_1.e, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a.x, 2147483647i), 1i), false), firstTrailingBit(55453i)), var_1.b, true | !all(select(vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, true, false), vec3<bool>(var_1.c, var_1.c, var_0.c))), _wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(var_1.d.x, 1u, var_1.d.x)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(169122u, var_0.d.x, var_0.d.x), max(vec3<u32>(var_0.d.x, 60387u, 4294967295u), var_1.d)), var_1.d ^ ~vec3<u32>(var_1.d.x, u_input.a, u_input.a))), -(_wgslsmith_div_i32(var_0.e, var_1.a.x) >> (~0u % 32u)) ^ (~(-2935i) >> (firstTrailingBit(~var_1.d.x) % 32u)));
    return !all(select(select(vec2<bool>(false, false), vec2<bool>(true, var_0.c), select(vec2<bool>(var_0.c, false), vec2<bool>(var_3.c, false), var_0.c)), select(vec2<bool>(false, var_1.c), vec2<bool>(var_0.c, true), var_1.c), select(select(vec2<bool>(false, true), vec2<bool>(var_1.c, var_3.c), vec2<bool>(false, var_1.c)), select(vec2<bool>(true, false), vec2<bool>(true, var_3.c), var_1.c), !vec2<bool>(var_3.c, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(all(vec2<bool>(true, true)), select(u_input.a > u_input.a, true, false), !func_1(), true), vec4<bool>(select(all(vec3<bool>(false, false, false)), select(true, false, false), true), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), false);
    var_0 = !vec4<bool>(true, var_0.x, var_0.x, all(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wxx), vec3<bool>(var_0.x, var_0.x, var_0.x), func_1())));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f))));
    var var_2 = Struct_3(Struct_1(-(~vec4<i32>(2147483647i, -42754i, 2147483647i, 0i) << (abs(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_div_f32(-2068f, _wgslsmith_f_op_f32(-398f * 1f)), true, select(vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~u_input.a), vec3<u32>(54874u, u_input.a, 28457u) ^ ~vec3<u32>(29736u, u_input.a, u_input.a), func_1()), -2147483647i), Struct_1(firstTrailingBit(abs(vec4<i32>(33369i, -1i, 1i, -5277i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f * 428f))), !any(vec3<bool>(true, var_0.x, true)), select(vec3<u32>(1u, u_input.a, 30460u), ~(~vec3<u32>(5058u, u_input.a, u_input.a)), select(select(var_0.wyz, var_0.wzy, false), select(vec3<bool>(true, false, var_0.x), var_0.zyy, var_0.x), false)), -23704i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1602f * _wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1044f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1061f)) * _wgslsmith_f_op_f32(f32(-1f) * -143f))))), 4294967295u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-759f + -1545f), 620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1366f))), _wgslsmith_f_op_f32(ceil(2301f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1262f, 2158f), -632f, _wgslsmith_f_op_f32(f32(-1f) * -322f), -670f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(346f, 1288f, -148f, -722f), vec4<f32>(-986f, 857f, 1000f, 413f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-387f, 1118f, 1901f, 2046f), vec4<f32>(1640f, 473f, 105f, 928f), vec4<bool>(false, var_0.x, false, false))))), select(vec4<bool>(110270u >= u_input.a, false, true, var_0.x), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(var_0.x, false, select(var_0.x, var_0.x, false), true)))));
    var var_3 = var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, vec3<u32>(firstTrailingBit(var_2.a.d.x), 0u, var_2.d), ~vec4<u32>(u_input.a, var_2.a.d.x, 5468u, ~(~u_input.a)), ~95881u, reverseBits(_wgslsmith_div_i32(38225i, -2147483647i) ^ ~var_2.a.a.x));
}

