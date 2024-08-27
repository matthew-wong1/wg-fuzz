struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = ~arg_0.a.b;
    let var_2 = select(false, arg_1.x, !(642f <= var_0.c));
    var var_3 = vec2<bool>(false, false);
    var_1 = var_0.b >> (firstLeadingBit(~10778u) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) - var_0.c));
}

fn func_3() -> f32 {
    let var_0 = vec4<u32>(22454u, ~68631u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), select(u_input.c.x, 31620u, true)), ~(u_input.c.xzw | u_input.c.xxz)), abs(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 21303u), u_input.b.x | u_input.c.x))));
    let var_1 = Struct_1(countOneBits(select(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), 1i, true)), abs(countOneBits(30752u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1324f)), false))), vec3<i32>(27047i, u_input.d, -_wgslsmith_dot_vec2_i32(max(u_input.a.xx, vec2<i32>(u_input.d, u_input.a.x)), -vec2<i32>(39337i, u_input.a.x))));
    let var_2 = Struct_3(Struct_1(~_wgslsmith_add_i32(1i, var_1.d.x >> (25284u % 32u)), 0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-171f, _wgslsmith_f_op_f32(sign(839f)))))), vec3<i32>(firstTrailingBit(29323i), -1i ^ var_1.a, firstLeadingBit(-2147483647i)) & vec3<i32>(abs(u_input.a.x), max(51988i, -62113i), -2147483647i)));
    let var_3 = Struct_2(Struct_1(abs(~var_1.d.x), ~u_input.b.x, -3204f, ~var_2.a.d), false, vec2<u32>(~firstTrailingBit(~4294967295u), var_0.x), min(~min(select(u_input.a.x, u_input.a.x, true), ~(-27303i)), -2147483647i));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_f32(-412f + var_3.a.c);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(u_input.d, 4294967295u, 1152f, u_input.a.xwz)), vec3<bool>(false, true, false))), 1873f)), _wgslsmith_f_op_f32(f32(-1f) * -911f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -375f) * -1447f))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_i32(countOneBits(u_input.a.x) & ~(-6584i), ~(-1i) << (abs(u_input.c.x) % 32u)), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.b.x, u_input.c.x)), u_input.b.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1221f)))) - -2460f), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), max(u_input.a.wyz, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) & (~u_input.a.zyw ^ firstLeadingBit(vec3<i32>(u_input.d, 78282i, u_input.d)))));
    var_1 = Struct_3(var_1.a);
    var_0 = _wgslsmith_div_f32(-1364f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1008f)))), var_1.a.c, !any(vec2<bool>(true, true)))));
    let var_2 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.c)))) != _wgslsmith_div_f32(var_1.a.c, _wgslsmith_f_op_f32(var_1.a.c - 442f))) == true;
    return Struct_1(_wgslsmith_add_i32(-abs(~u_input.d), 2147483647i), var_1.a.b, var_1.a.c, vec3<i32>(u_input.a.x & abs(0i), 0i, firstLeadingBit(~firstTrailingBit(0i))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(countOneBits(i32(-1i) * -1i), ~(~u_input.a.x), _wgslsmith_f_op_f32(-arg_0.a.c) != _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mod_u32(20990u, abs(~39885u)), arg_0.a.c, u_input.a.wwy), all(select(vec4<bool>(true, all(vec2<bool>(true, true)), arg_0.a.b <= 24293u, select(false, true, true)), vec4<bool>(all(vec3<bool>(false, false, false)), u_input.c.x < 4294967295u, false, true), true)), ~(~u_input.b.yy), u_input.d);
    var_0 = Struct_2(func_1(), var_0.b, ~u_input.b.xx, u_input.a.x);
    var_0 = Struct_2(Struct_1(~7225i, max(~_wgslsmith_sub_u32(12749u, var_0.a.b), max(arg_0.a.b, 1u) ^ _wgslsmith_add_u32(0u, u_input.c.x)), -507f, ~var_0.a.d), !all(select(vec2<bool>(true, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), true), vec2<bool>(true, var_0.b))), vec2<u32>(var_0.a.b, 0u), countOneBits((_wgslsmith_mult_i32(arg_1, arg_1) ^ min(-17867i, 43677i)) >> (~_wgslsmith_add_u32(0u, arg_0.a.b) % 32u)));
    var_0 = Struct_2(func_1(), !((_wgslsmith_f_op_f32(312f * -2138f) >= _wgslsmith_div_f32(var_0.a.c, arg_0.a.c)) | true), abs(~(var_0.c ^ vec2<u32>(53107u, arg_0.a.b))) & ~_wgslsmith_mult_vec2_u32(var_0.c, abs(u_input.c.zy)), var_0.d);
    var var_1 = _wgslsmith_div_vec2_i32(max(vec2<i32>(firstTrailingBit(40864i) >> (var_0.c.x % 32u), i32(-1i) * -1i), -vec2<i32>(var_0.a.d.x, arg_0.a.a)), vec2<i32>(countOneBits(1i), abs(_wgslsmith_mult_i32(var_0.d, var_0.a.d.x) | _wgslsmith_add_i32(var_0.a.a, 0i))));
    return var_0.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_3(Struct_1(-countOneBits(-arg_1.a.d.x), abs(1u), _wgslsmith_f_op_f32(min(209f, _wgslsmith_f_op_f32(-254f * -1955f))), arg_1.a.d));
    var var_1 = reverseBits(var_0.a.b);
    let var_2 = -(~(~(-62821i)));
    let var_3 = arg_3.x;
    let var_4 = false;
    return StorageBuffer(~((u_input.c.wy >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & vec2<u32>(1u, 0u)) << (_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(0u, u_input.b.x)), ~vec2<u32>(var_0.a.b, 58868u)) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(76071u, firstLeadingBit(var_0.a.b), var_0.a.b, ~var_0.a.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_1.a.b, 53403u), 1u, arg_1.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b, var_0.a.b, 0u, 1u), vec4<u32>(5904u, 6957u, var_0.a.b, u_input.b.x))), ~(~vec4<u32>(46802u, arg_1.a.b, arg_1.a.b, 25228u)), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~20130u & _wgslsmith_mod_u32(u_input.c.x, u_input.b.x));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1435f + 924f)), -1761f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1761f), _wgslsmith_f_op_f32(sign(1339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1304f + -114f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-324f, 631f, 899f, 415f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-921f, 942f, 1223f, 1075f))))), Struct_3(func_4(Struct_3(func_1()), ~u_input.a.x)), select(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true)))), !vec4<bool>(true & (var_0 < 45743u), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), ~4294967295u < var_0, select(true, true, true) && true));
}

