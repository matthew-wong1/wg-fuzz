struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec2<i32> {
    return vec2<i32>((-1i >> (select(1u, ~32553u, false) % 32u)) | 2147483647i, arg_0.x);
}

fn func_2() -> f32 {
    let var_0 = -756f;
    var var_1 = select(abs(func_3(~(u_input.a << (vec3<u32>(63871u, 23773u, 17835u) % vec3<u32>(32u))), u_input.a)), u_input.a.xx, select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(false, true, false, false)))));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~62443u, ~1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(0u), ~4294967295u), max(min(vec2<u32>(21709u, 83245u), vec2<u32>(27193u, 99042u)), select(vec2<u32>(18923u, 0u), vec2<u32>(0u, 36264u), false))));
    var var_3 = ~2147483647i;
    var_2 = vec2<u32>(~max(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_2.x), ~vec2<u32>(19020u, 35916u))), 1u);
    return var_0;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1280f)), vec4<f32>(_wgslsmith_div_f32(1608f, arg_0), -104f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1932f)) - arg_0)), Struct_1(true, 574f, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<i32>(arg_1, -2147483647i, u_input.a.x, 0i))), _wgslsmith_f_op_f32(round(arg_0))), Struct_1(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(-arg_0)), 11921u, countOneBits(vec4<i32>(-2147483647i, 53983i, -46561i, -1i) ^ vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))))), ~1948u);
    var var_1 = all(arg_2.yz);
    var var_2 = Struct_1(arg_2.x, arg_0, 4294967295u, vec4<i32>(i32(-1i) * -var_0.a.d.d.x, -abs(1i), i32(-1i) * -arg_1, u_input.a.x) | vec4<i32>(-2147483647i, arg_1, u_input.a.x, reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(exp2(var_0.a.d.b)));
    var_2 = var_0.a.c;
    var_1 = var_2.a;
    return vec2<bool>(all(vec3<bool>(arg_2.x, any(vec2<bool>(var_0.a.d.a, false)), false)), !(!var_2.a));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_2()), -(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x) << (4294967295u % 32u)), !vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), all(vec2<bool>(false, false)), true));
    var var_1 = vec3<i32>(1i, u_input.a.x, _wgslsmith_clamp_i32(abs(-11122i), 1i, ~(~0i))) | (vec3<i32>(_wgslsmith_div_i32(~u_input.a.x, 1i), ~u_input.a.x, _wgslsmith_mod_i32(min(u_input.a.x, 33002i), u_input.a.x)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(190f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1033f))))), 1u, countOneBits(firstTrailingBit(vec4<i32>(var_1.x, abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, -18116i, var_1.x), vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x)), u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1066f, -200f)), -765f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f - 1191f))))));
    var_1 = vec3<i32>(-1i, ~(-33663i), -var_2.d.x);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.e, -760f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 1407f, var_2.e, var_2.b))))), Struct_1(var_2.a & (0i >= u_input.a.x), -221f, _wgslsmith_sub_u32(_wgslsmith_div_u32(66918u, 18341u), var_2.c), vec4<i32>(var_2.d.x, var_2.d.x, var_1.x, var_1.x) & _wgslsmith_div_vec4_i32(var_2.d, var_2.d), _wgslsmith_f_op_f32(round(var_2.e))), Struct_1(true, -2061f, 0u, _wgslsmith_mult_vec4_i32(abs(var_2.d), -vec4<i32>(31850i, -1i, -44986i, var_1.x)), _wgslsmith_f_op_f32(step(-513f, -483f)))), ~min(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c, var_2.c), ~vec2<u32>(38508u, 4294967295u)), countOneBits(var_2.c)));
    return Struct_1(true, 1f, firstTrailingBit(~_wgslsmith_div_u32(var_2.c & var_3.b, 31766u)), reverseBits(var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f - 119f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = abs(abs(vec3<i32>(7056i, -30429i, i32(-1i) * -u_input.a.x)));
    var var_2 = var_0.e;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e)) - -1657f) + var_0.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-570f, var_0.e, -433f, 1000f)), vec4<f32>(var_0.b, var_0.e, -433f, 951f), vec4<bool>(var_0.a, true, var_0.a, var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(trunc(var_0.b)), 733f, 2525f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(587f, _wgslsmith_f_op_f32(-276f + -394f), -541f, _wgslsmith_f_op_f32(round(var_0.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 487f, var_0.e, var_0.b)))), vec4<bool>(true, any(vec4<bool>(false, var_0.a, true, var_0.a)) || select(true, var_0.a, true), any(!vec3<bool>(var_0.a, var_0.a, var_0.a)), any(vec3<bool>(var_0.a, true, var_0.a))))), func_1(), Struct_1(any(!select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.e, var_0.b, false)), _wgslsmith_f_op_f32(-var_0.e))))), 47179u, -var_0.d, _wgslsmith_f_op_f32(-func_1().b)));
    let var_4 = Struct_3(Struct_2(var_0.e, _wgslsmith_f_op_vec4_f32(-var_3.b), Struct_1(_wgslsmith_f_op_f32(var_0.b - 760f) == 746f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.c.b, var_3.d.b, var_3.d.a)), _wgslsmith_f_op_f32(func_2())), _wgslsmith_mod_u32(0u, 44244u) >> (var_0.c % 32u), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 25327i, var_0.d.x, 1i), vec4<i32>(-18907i, -1i, u_input.a.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f * var_3.c.b) * _wgslsmith_f_op_f32(sign(var_0.e)))), func_1()), func_1().c);
    let var_5 = select(vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, var_3.d.d.x), var_1.x) > 1i, var_0.a, var_4.a.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1267f + var_3.c.e))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-213f + var_0.e)))), vec4<bool>(false, true, !all(vec4<bool>(var_0.a, false, var_4.a.c.a, true)), var_4.a.c.a || !all(vec4<bool>(var_4.a.d.a, false, var_0.a, true))), all(!vec2<bool>(true, select(false, false, var_4.a.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, var_3.b.wy, firstLeadingBit(var_0.d.x));
}

