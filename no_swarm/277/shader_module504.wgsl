struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(u_input.b, min(vec4<i32>(u_input.b.x, 7584i, _wgslsmith_mod_i32(u_input.b.x, -11880i), _wgslsmith_mod_i32(u_input.b.x, -1i)), max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b))), Struct_1(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, any(vec2<bool>(true, true)), true), false), u_input.b.x, vec2<bool>(true, (u_input.a.x < min(u_input.c, u_input.a.x)) | false));
    var_0 = Struct_3(_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(1i, -2147483647i, -max(u_input.b.x, 2147483647i), ~(~(-2147483647i)))), var_0.b, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), select(var_0.b.a.xw, !var_0.d, select(var_0.b.b, var_0.b.a.x, all(vec4<bool>(var_0.b.b, var_0.b.b, var_0.b.b, var_0.d.x)))));
    let var_1 = var_0.a;
    var_0 = Struct_3(var_0.a & (vec4<i32>(-1i) * -u_input.b), var_0.b, max(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(-29801i, u_input.b.x), 2147483647i), ~_wgslsmith_add_i32(-2078i, _wgslsmith_mult_i32(0i, u_input.b.x))), var_0.d);
    var_0 = Struct_3(select(countOneBits(vec4<i32>(var_0.c, -1i, var_0.c, var_0.a.x)), abs(u_input.b), _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), ~u_input.c) == ~32511u), Struct_1(select(!vec4<bool>(true, false, var_0.d.x, var_0.b.b), !vec4<bool>(var_0.d.x, false, true, var_0.d.x), !(!var_0.b.a)), var_0.b.a.x), -7218i, select(select(vec2<bool>(true, true), var_0.d, select(select(vec2<bool>(var_0.d.x, true), vec2<bool>(false, true), false), vec2<bool>(true, true), !vec2<bool>(var_0.d.x, true))), !select(var_0.d, !vec2<bool>(false, var_0.b.b), !var_0.d), vec2<bool>(var_0.d.x, all(select(vec2<bool>(false, false), vec2<bool>(true, var_0.b.a.x), var_0.b.a.yy)))));
    return vec2<f32>(-435f, _wgslsmith_f_op_f32(-358f * -459f));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a | _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, 15965u, u_input.a.x))), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(962f))));
    let var_2 = ~vec4<u32>(u_input.c, ~select(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), var_0.x, true), 16172u, 13776u);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1)), vec2<f32>(var_1, var_1)))))) + _wgslsmith_f_op_vec2_f32(func_3()));
    var var_4 = vec2<u32>(2161u, max(_wgslsmith_dot_vec2_u32(~(~var_2.wz), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.c, 15083u, 14442u), vec4<u32>(88373u, u_input.c, 26372u, var_0.x)), var_2.x)), abs(0u)));
    return Struct_1(!(!vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, all(vec3<bool>(true, true, false)))), any(vec2<bool>(-1711f <= _wgslsmith_f_op_f32(-var_1), any(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = vec4<f32>(-483f, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-757f * 1000f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(311f)) + _wgslsmith_f_op_f32(abs(-925f))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) - var_1.x), !(var_0.b | true))), var_1.x, 1419f, 444f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -1735f, 809f), vec4<f32>(var_1.x, var_1.x, 311f, -1000f), var_0.a))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x);
    return Struct_4(u_input.b.x << (~22432u % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1212f, var_1.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2152f * -1054f), _wgslsmith_f_op_f32(-var_1.x)))), 1189f, -657f, _wgslsmith_f_op_f32(f32(-1f) * -286f)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(-114f)), 1000f, _wgslsmith_f_op_f32(-var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)));
    let var_1 = func_1(!(!vec3<bool>(true, func_2().b, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.c.wxz * var_0.c.yzx)));
    let var_3 = vec2<bool>(u_input.a.x > abs(~(~1u)), true);
    var var_4 = Struct_3(u_input.b, func_2(), var_1.a, vec2<bool>(true, var_3.x));
    var var_5 = func_2();
    var var_6 = var_4.b.a.x;
    let var_7 = ((countOneBits(-vec2<i32>(var_0.a, u_input.b.x)) << ((vec2<u32>(0u, u_input.c) | _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(25709u, 33653u))) % vec2<u32>(32u))) << (vec2<u32>((u_input.c >> (u_input.a.x % 32u)) & ~u_input.a.x, ~10506u) % vec2<u32>(32u))) & min(vec2<i32>(-var_0.a, countOneBits(u_input.b.x)) & u_input.b.xy, -u_input.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1436f, _wgslsmith_f_op_f32(-var_2.x)), -1449f, ~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.c), var_0.b))))));
}

