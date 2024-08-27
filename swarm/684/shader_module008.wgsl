struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    var var_0 = 8924u;
    var_0 = u_input.b;
    var_0 = u_input.d.x;
    var_0 = _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(~4294967295u >> (u_input.b % 32u), 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.b), u_input.d.www), ~4294967295u)) << (min(~(~u_input.b) << ((u_input.b << ((u_input.b >> (1u % 32u)) % 32u)) % 32u), ~(~min(0u, 1u))) % 32u);
    var var_1 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-9002i, -11455i, 1i, 2361i), vec4<i32>(u_input.c, 37122i, 1i, u_input.c)), u_input.c << (u_input.d.x % 32u)), -abs(u_input.c), _wgslsmith_mult_i32(-27626i, u_input.c), 1i | -u_input.c) ^ abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -27235i, u_input.c, u_input.c), vec4<i32>(u_input.c, 30472i, u_input.c, 6271i))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c, 6579i, 1i, u_input.c), firstTrailingBit(vec4<i32>(36792i, -34894i, -2147483647i, u_input.c)), vec4<i32>(-18413i, 1i, 35880i, -2147483647i) ^ vec4<i32>(u_input.c, u_input.c, -18564i, -2147483647i))));
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1459f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(412f + -827f))))), _wgslsmith_f_op_f32(808f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(250f)) - _wgslsmith_f_op_f32(round(1278f)))))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(357f, -408f), vec2<f32>(-1639f, -417f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, 354f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, -731f))))));
    let var_1 = Struct_2(true, select(vec4<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-var_0.x) <= 1545f, ~u_input.a.x >= ~u_input.a.x), !vec4<bool>(all(vec2<bool>(false, true)), var_0.x >= var_0.x, u_input.a.x > 4294967295u, true), vec4<bool>(false, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, false)), select(-2147483647i, u_input.c, false) > _wgslsmith_add_i32(2147483647i, u_input.c))), Struct_1(reverseBits(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 42426u), u_input.d.yy), u_input.d.x | 73599u, 4294967295u ^ u_input.d.x))), _wgslsmith_f_op_f32(sign(246f)), Struct_1(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 18016u, 47268u), u_input.d)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-1000f * 970f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(655f, -1571f), vec2<f32>(var_0.x, var_1.d))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))) - vec2<f32>(2223f, 339f))));
    var var_3 = reverseBits(abs(countOneBits(reverseBits(~0u))));
    let var_4 = firstTrailingBit(vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 64435i) >> (vec4<u32>(var_1.c.a.x, var_1.e.a.x, 16315u, u_input.b) % vec4<u32>(32u)))), -2147483647i, -13870i));
    return var_1.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(!func_2() && false, !arg_2.a.b, Struct_1(vec4<u32>(arg_2.a.c.a.x << (arg_2.a.e.a.x % 32u), 4294967295u, _wgslsmith_dot_vec2_u32(arg_2.a.e.a.zw, vec2<u32>(19557u, arg_2.a.c.a.x)), ~4294967295u) >> (((vec4<u32>(11627u, 3359u, u_input.a.x, arg_2.a.c.a.x) >> (arg_2.a.c.a % vec4<u32>(32u))) | ~vec4<u32>(0u, 50783u, 4294967295u, arg_2.a.c.a.x)) % vec4<u32>(32u))), arg_1, arg_2.a.e);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.c;
    let var_1 = Struct_4(select(~min(abs(u_input.a.x), _wgslsmith_mod_u32(1u, 8411u)), u_input.b, true), arg_1.e.a.x, u_input.a.x);
    var var_2 = Struct_4(~abs(~(u_input.b ^ u_input.b)), _wgslsmith_mult_u32(select((4294967295u << (arg_1.e.a.x % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.d.wzw, u_input.d.zxz) % 32u), 0u, arg_1.b.x), ~reverseBits(16763u)), ~u_input.b);
    let var_3 = Struct_3(Struct_2(arg_1.b.x, vec4<bool>(true, arg_1.a, !(true & arg_1.a), all(!arg_1.b)), func_1(~_wgslsmith_mult_vec3_u32(arg_1.c.a.wxz, arg_1.e.a.yzy), _wgslsmith_div_f32(_wgslsmith_div_f32(-338f, arg_1.d), _wgslsmith_div_f32(-695f, arg_1.d)), Struct_3(func_1(vec3<u32>(var_2.c, u_input.d.x, var_1.b), -1005f, Struct_3(Struct_2(false, arg_1.b, arg_1.c, arg_1.d, arg_1.e), 218f)), arg_1.d)).e, 392f, Struct_1(vec4<u32>(var_2.a, 32908u, u_input.d.x, var_2.c & arg_1.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))));
    let var_4 = 12444u;
    return _wgslsmith_f_op_f32(sign(arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)), _wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1089f, -1400f) - -1000f), _wgslsmith_f_op_f32(func_4(0i, func_1(vec3<u32>(1u, u_input.b, u_input.d.x), -897f, Struct_3(Struct_2(true, vec4<bool>(true, true, false, false), Struct_1(u_input.d), -195f, Struct_1(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.a.x))), -689f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, _wgslsmith_f_op_f32(973f * -507f), _wgslsmith_f_op_f32(min(-1335f, -539f)), _wgslsmith_f_op_f32(368f * 620f)))));
    let var_1 = ~27540u | abs(~(~u_input.a.x));
    let var_2 = !select(select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, all(vec2<bool>(true, true))), vec4<bool>(u_input.c > 12082i, false, true, true), true), vec4<bool>(!func_2(), any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), !(-2147483647i != u_input.c)), vec4<bool>(~var_1 == _wgslsmith_mod_u32(var_1, var_1), false, true, false));
    let var_3 = var_2.x;
    let var_4 = Struct_3(func_1(u_input.d.xxz, var_0.x, Struct_3(Struct_2(true, vec4<bool>(var_2.x, var_3, var_2.x, var_3), Struct_1(u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec4<u32>(var_1, var_1, var_1, var_1))), 534f)), _wgslsmith_f_op_f32(abs(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec4<u32>(0u, var_1, 0u, var_4.a.e.a.x)))));
}

