struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = !vec4<bool>(false, any(select(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), !vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), true)), arg_0.a, any(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)));
    let var_1 = Struct_1(~arg_0.c, _wgslsmith_sub_vec3_i32(-u_input.b, vec3<i32>(u_input.c, -u_input.c, u_input.c)) ^ u_input.b, -u_input.b.xy);
    let var_2 = -_wgslsmith_mult_i32(-11521i, 1i);
    var_0 = select(!vec4<bool>(var_0.x, any(var_0.yy), all(vec4<bool>(var_0.x, var_0.x, arg_0.a, var_0.x)), !arg_0.a), !vec4<bool>(var_0.x, _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)) == _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), all(var_0.yw), (u_input.c == var_2) || all(var_0.zy)), vec4<bool>(all(select(select(vec2<bool>(arg_0.a, arg_0.a), var_0.zx, true), var_0.zw, any(var_0.yzz))), !var_0.x || (all(vec4<bool>(true, true, false, var_0.x)) | var_0.x), all(!vec4<bool>(var_0.x, true, false, var_0.x)), firstLeadingBit(0i >> (1u % 32u)) == (_wgslsmith_mod_i32(var_1.c.x, -1i) ^ min(-1i, 5214i))));
    var_0 = vec4<bool>(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, false, true)), select(vec4<bool>(true, var_0.x, false, arg_0.a), vec4<bool>(var_0.x, true, true, false), vec4<bool>(arg_0.a, var_0.x, false, false)), true)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), !arg_0.a), vec3<bool>(true, arg_0.a | true, arg_0.a), select(vec3<bool>(arg_0.a, false, var_0.x), !vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(var_0.x, var_0.x, true)))), any(var_0.zy), all(select(select(!var_0.zx, select(var_0.xy, var_0.wy, false), select(var_0.yz, var_0.wy, arg_0.a)), vec2<bool>(any(vec2<bool>(true, false)), true), !(15301u > var_1.a))));
    return _wgslsmith_add_vec2_u32(~u_input.d.zx, vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.d), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d)), ~(3677u << (arg_0.c % 32u)))) | select(_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c, 15090u), u_input.d.xx), vec2<u32>(u_input.d.x, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, u_input.d.x), u_input.d.yz), select(vec2<bool>(!arg_0.a, arg_0.a), !(!var_0.yz), var_0.xy));
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(2147483647i, ~0i, u_input.e, -1i);
    var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(i32(-1i) * -20376i, u_input.b.x, u_input.c, u_input.c) ^ vec4<i32>(countOneBits(var_0.x) | ~(-2147483647i), -(i32(-1i) * -1i), 0i, ~(-u_input.b.x)), vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-1i, var_0.x, -27935i)), u_input.b.x, -39959i, u_input.c));
    var var_1 = vec2<i32>(0i, var_0.x ^ 1i);
    var_1 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(max(var_0.wz, u_input.b.yy) >> (func_3(Struct_2(true, vec2<f32>(383f, -399f), 0u)) % vec2<u32>(32u)), ~vec2<i32>(-33068i, -22305i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(636u, 1u), u_input.d.xy) % vec2<u32>(32u))), u_input.b.zy & vec2<i32>(~u_input.c, -30645i & var_0.x), _wgslsmith_add_vec2_i32(~vec2<i32>(-19669i, 2147483647i), var_0.yy));
    var var_2 = var_1.x;
    return func_3(Struct_2(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -1478f) * vec2<f32>(1481f, -539f)))), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(~u_input.a, 1u)))).x;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, 1u > u_input.d.x), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(_wgslsmith_mod_u32(u_input.a, 1u) != u_input.d.x, all(vec3<bool>(true, true, true)), true, select(select(false, true, true), true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(!vec4<bool>(false, all(vec4<bool>(true, false, true, true)), true, -637i < u_input.c), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), !all(vec2<bool>(true, true)));
    let var_2 = Struct_1(abs(28481u), u_input.b, u_input.b.xz);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-607f + -706f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1723f, 1262f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(428f - -691f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-722f - 1252f), 520f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(249f, -882f), vec2<f32>(194f, 1962f)) - vec2<f32>(154f, -702f)))));
    return Struct_3(!(!select(var_1.yxw, var_1.wwz, vec3<bool>(true, true, true))), Struct_2(all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 593f))), vec2<f32>(var_3.x, var_3.x), !select(vec2<bool>(false, var_1.x), var_1.zw, var_1.zy))), 41661u), ~u_input.d, var_2.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    let var_0 = vec4<i32>(~u_input.c, _wgslsmith_sub_i32(1i, u_input.b.x), arg_0.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, -356i), vec2<i32>(-12128i, 0i) >> (u_input.d.zy % vec2<u32>(32u)))) | firstLeadingBit(max(vec4<i32>(109i, u_input.b.x, -2147483647i, arg_0.d ^ 17168i), max(firstLeadingBit(vec4<i32>(0i, arg_0.d, arg_0.d, -21337i)), reverseBits(vec4<i32>(0i, u_input.b.x, u_input.e, arg_0.d)))));
    let var_1 = ~func_3(func_1().b);
    var var_2 = 0i;
    let var_3 = vec2<bool>(all(vec3<bool>(any(func_1().a), true | !arg_1.x, 42106u < func_2())), any(arg_1.zww));
    return max(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(2147483647i, u_input.b.x) & _wgslsmith_mult_vec2_i32(u_input.b.xz, var_0.zx)), u_input.b.zz & vec2<i32>(-75817i, arg_0.d)), vec2<i32>(u_input.c, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), 633f);
    let var_1 = Struct_1(u_input.a, -vec3<i32>(0i, var_0.x & 2147483647i, -var_0.x), ~vec2<i32>(0i, _wgslsmith_div_i32(-51141i, abs(var_0.x))));
    var var_2 = func_1().b;
    let var_3 = any(!vec3<bool>(!var_2.a, var_2.a, -214f <= _wgslsmith_f_op_f32(-415f + var_2.b.x)));
    var_2 = func_1().b;
    var var_4 = -max(~1i, select(~(0i << (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(var_1.b, ~vec3<i32>(u_input.c, var_1.b.x, 6487i)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, 1f);
}

