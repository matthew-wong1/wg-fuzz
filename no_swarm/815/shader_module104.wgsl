struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, -2147483647i), abs(max(arg_1.d.b, arg_1.b.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + -688f)), arg_1.b.b.zy, vec2<bool>(arg_1.a.b != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.b.d.x, 14673i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 41337i, arg_1.a.b), vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(2147483647i, 2147483647i, -5893i))), arg_1.e.a)));
    var var_2 = -select(max(~(-u_input.c), 17636i), arg_1.d.b, -256f >= var_1.x);
    var var_3 = Struct_3(select(arg_1.b.a, !vec4<bool>(all(arg_1.b.a.ww), true, !arg_1.e.a, arg_1.e.a), false), arg_1.b.b, arg_1.b.c, arg_1.b.d);
    var var_4 = -1i;
    return 8258u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = -(_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_2.b, -17803i, 44443i), vec3<i32>(16446i, 4344i, -2147483647i), false) >> (u_input.b.xzy % vec3<u32>(32u)), ~vec3<i32>(u_input.a, 0i, arg_2.b)) & ~vec3<i32>(-arg_2.b, _wgslsmith_div_i32(51783i, arg_2.b), -1i));
    var var_1 = func_3(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), Struct_5(arg_2, arg_1, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_div_f32(arg_1.c, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1378f - arg_3) + _wgslsmith_f_op_f32(ceil(-304f)))), arg_2, Struct_2((46219u >= u_input.b.x) || true)));
    var_0 = vec3<i32>(_wgslsmith_div_i32(-(_wgslsmith_mod_i32(var_0.x, var_0.x) & var_0.x), ~(1523i ^ _wgslsmith_dot_vec2_i32(arg_1.d, var_0.zx))), var_0.x | var_0.x, -arg_1.d.x);
    var_0 = -(vec3<i32>(~arg_1.d.x & min(-11699i, 26615i), reverseBits(1i), _wgslsmith_clamp_i32(arg_2.b, arg_2.b, 2147483647i)) << ((u_input.b.xyz & u_input.b.zxz) % vec3<u32>(32u)));
    var var_2 = ~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_0.x, arg_1.d.x, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(14968i, 1i, arg_2.b), vec3<i32>(arg_1.d.x, u_input.c, arg_1.d.x))) | ~countOneBits(select(~vec3<i32>(var_0.x, -2147483647i, -71233i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, u_input.a), vec3<i32>(var_0.x, 19233i, -33933i)), !arg_1.a.wxw));
    return select(true, all(!(!vec4<bool>(arg_1.a.x, arg_2.a, arg_0.a, arg_1.a.x))), all(!select(!arg_1.a.xzw, arg_1.a.wzw, vec3<bool>(arg_1.a.x, false, arg_2.a))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_5 {
    let var_0 = -1712i;
    var var_1 = arg_0.d;
    var var_2 = ~u_input.b.zw & vec2<u32>(u_input.b.x | u_input.b.x, 1u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, arg_0.b.b.x, arg_0.b.c, arg_0.b.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, 880f, arg_0.b.b.x, arg_0.b.b.x)), all(vec4<bool>(false, true, var_1.a, arg_3.a)))) * vec4<f32>(_wgslsmith_div_f32(1537f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(min(-1941f, -517f)), _wgslsmith_div_f32(-1705f, 534f)))));
    var var_4 = -1i >= (~(arg_3.b & -1i) >> (firstTrailingBit(firstTrailingBit(~0u)) % 32u));
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    var var_0 = 691f;
    var var_1 = 0i;
    var_1 = ~0i;
    var_0 = _wgslsmith_f_op_f32(round(456f));
    var_0 = -223f;
    return func_4(Struct_5(Struct_1(true, 1i), Struct_3(vec4<bool>(!arg_0.a, func_2(arg_0, Struct_3(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec3<f32>(305f, -277f, 675f), -774f, vec2<i32>(u_input.c, -63599i)), Struct_1(false, u_input.c), 2136f), true, func_2(arg_0, Struct_3(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec3<f32>(-1012f, -288f, -181f), -885f, vec2<i32>(-2587i, u_input.c)), Struct_1(true, -5958i), -1409f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(736f, 1200f, -442f), vec3<f32>(1557f, 825f, 2359f))) * vec3<f32>(-1478f, -327f, -628f)), _wgslsmith_f_op_f32(f32(-1f) * -823f), firstTrailingBit(min(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, u_input.c)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(353f, 1152f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -351f)))))), Struct_1(func_3(178f, Struct_5(Struct_1(false, u_input.c), Struct_3(vec4<bool>(false, true, arg_0.a, arg_0.a), vec3<f32>(1274f, 826f, 151f), -850f, vec2<i32>(662i, -19661i)), vec2<f32>(-2087f, 987f), Struct_1(arg_0.a, u_input.a), arg_0)) != _wgslsmith_sub_u32(4294967295u, u_input.b.x), ~u_input.a), arg_0), vec2<bool>(arg_0.a, !arg_0.a), Struct_4(Struct_1(true, -(~(-26746i)))), Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(2451f))) != -2665f, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(u_input.a, u_input.c);
    let var_1 = i32(-1i) * -16528i;
    var var_2 = func_1(Struct_2(!(_wgslsmith_sub_i32(u_input.a, 0i) < var_1)));
    var_2 = func_1(var_2.e);
    var_0 = 59814i;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(178f + var_3), 1026f, _wgslsmith_div_f32(419f, var_3), var_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-187f, var_3, 1147f, 856f))), vec4<f32>(-1261f, var_3, var_2.b.c, -1262f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_2.c.x, var_3, var_2.c.x)))), ~(select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a.b, 0i, var_1), vec3<i32>(var_2.d.b, -1i, var_2.a.b)), ~vec3<i32>(19299i, -2147483647i, u_input.c), !vec3<bool>(var_2.b.a.x, false, var_2.d.a)) & _wgslsmith_add_vec3_i32(vec3<i32>(var_1, 2147483647i, var_2.b.d.x), vec3<i32>(1i, -1i, var_2.a.b))), vec2<u32>(~1u, abs(~abs(10435u))), 1i, _wgslsmith_div_vec3_u32(~u_input.b.xxy, u_input.b.zyw));
}

