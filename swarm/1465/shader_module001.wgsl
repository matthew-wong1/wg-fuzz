struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    let var_0 = arg_0.xz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(480f, -477f, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1226f)))), 504f), _wgslsmith_div_vec3_f32(vec3<f32>(1680f, _wgslsmith_f_op_f32(f32(-1f) * -459f), 1381f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1462f, 153f, -776f))))));
    let var_2 = all(!select(select(vec3<bool>(false, arg_1, false), select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true), true), vec3<bool>(!arg_1, all(vec4<bool>(false, arg_1, false, arg_1)), all(vec2<bool>(arg_1, false))), select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, true), false), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, false)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), var_1.x, _wgslsmith_div_f32(-293f, _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2514f, var_1.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -507f), 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 2266f, -3183f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -171f)), all(vec3<bool>(false, true, true)))))));
    var var_3 = Struct_1(select(!select(vec4<bool>(var_2, true, false, var_2), select(vec4<bool>(var_2, arg_1, true, false), vec4<bool>(true, var_2, arg_1, arg_1), var_2), var_1.x == 818f), vec4<bool>(var_2, any(select(vec4<bool>(var_2, true, false, var_2), vec4<bool>(var_2, false, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, var_2))), var_0.x < ~1u, _wgslsmith_f_op_f32(abs(-693f)) <= _wgslsmith_f_op_f32(sign(var_1.x))), !var_2), vec4<i32>(-1i, u_input.b, u_input.b, max(abs(firstLeadingBit(-33491i)), abs(-u_input.b))), firstLeadingBit(~1u));
    return ~1u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3.b.x;
    var var_1 = arg_2.a;
    let var_2 = ~vec3<u32>(u_input.c, func_3(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 0u, u_input.d.x)) & ~vec4<u32>(arg_3.c, 0u, u_input.c, 1u), any(!vec3<bool>(arg_0, true, true))), min(0u, abs(u_input.c)));
    let var_3 = Struct_2(arg_3);
    var var_4 = select(!(!(!arg_3.a.zx)), var_3.a.a.zz, select(!vec2<bool>(!arg_0, arg_3.a.x == arg_0), vec2<bool>(34363u < func_3(vec4<u32>(var_3.a.c, 0u, var_3.a.c, 53670u), false), true), var_3.a.a.x));
    return 1i;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(arg_0, func_2(true, true, Struct_4(991f, -7178i), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-2634i, -2147483647i, 13227i, -2147483647i), 25454u)) | -2147483647i)));
    let var_1 = ~vec2<i32>(u_input.b, -countOneBits(1i));
    let var_2 = ~arg_1;
    var_0 = _wgslsmith_dot_vec4_i32(abs((_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, u_input.b, u_input.b), vec4<i32>(-8797i, arg_0, 0i, 0i)) ^ (vec4<i32>(52675i, var_1.x, -25749i, u_input.b) << (vec4<u32>(u_input.c, arg_1.x, 4294967295u, var_2.x) % vec4<u32>(32u)))) ^ ~select(vec4<i32>(arg_0, u_input.a, u_input.b, -50945i), vec4<i32>(u_input.b, u_input.a, 36888i, 3009i), false)), -vec4<i32>(i32(-1i) * -1i, 1i, reverseBits(var_1.x), max(2147483647i, abs(u_input.a))));
    var var_3 = Struct_2(Struct_1(select(vec4<bool>(any(vec3<bool>(false, false, true)), true, -2147483647i <= var_1.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<i32>(-2147483647i, u_input.b | 35166i, arg_0 ^ u_input.b, -1i) << (~vec4<u32>(var_2.x, u_input.d.x, 4294967295u, 1u) % vec4<u32>(32u)), countOneBits(_wgslsmith_mult_u32(abs(var_2.x), ~u_input.d.x))));
    return ((reverseBits(var_3.a.c) ^ ((var_3.a.c << (26558u % 32u)) >> (0u % 32u))) >> (~var_2.x % 32u)) ^ abs(abs(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_u32(min(_wgslsmith_mult_u32(~u_input.c, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 24420u), vec2<u32>(u_input.c, 0u)) ^ func_1(u_input.b, vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), vec2<f32>(-522f, 633f), -1040f)), 525u), Struct_1(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false))), _wgslsmith_mod_vec4_i32(-min(vec4<i32>(u_input.b, u_input.a, 26569i, 2147483647i), vec4<i32>(-10635i, 33764i, -42464i, u_input.b)), -vec4<i32>(u_input.a, u_input.a, u_input.b, 47213i)), ~1u));
    var var_1 = any(!(!select(select(vec4<bool>(true, var_0.b.a.x, false, true), var_0.b.a, var_0.b.a.x), !var_0.b.a, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1995f, _wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(-500f * -558f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1055f))))))));
    var var_3 = !var_0.b.a.x;
    var_1 = any(var_0.b.a.wyy);
    var_0 = Struct_3(59559u >> (_wgslsmith_add_u32(4294967295u, firstTrailingBit(countOneBits(var_0.a))) % 32u), var_0.b);
    var_3 = true;
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1000f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(662f, -368f)))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, 1435f))))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(trunc(var_4.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(160f)))), 779f, _wgslsmith_f_op_f32(sign(1f))) - vec3<f32>(var_4.x, _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(var_2 * var_2))), _wgslsmith_f_op_f32(-var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_0.a, ~abs(0u)));
}

