struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(850f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1818f, _wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(f32(-1f) * -420f)))), vec3<bool>(true, !((u_input.b.x ^ u_input.b.x) <= abs(u_input.b.x)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(834f)) * 696f), firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(-16495i, u_input.b.x, 0i, 2147483647i) >> (vec4<u32>(4294967295u, 3487u, u_input.c.x, 36373u) % vec4<u32>(32u)), vec4<i32>(1522i, u_input.b.x, u_input.b.x, -33690i))), min(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(46732u, 4294967295u, u_input.a), vec3<u32>(0u, u_input.c.x, u_input.c.x) & vec3<u32>(4983u, 28520u, 1u)), vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(10612u, 42468u), firstTrailingBit(4294967295u)), vec3<u32>(u_input.a | u_input.a, u_input.c.x, 36379u)), ~select(vec3<u32>(44284u, 4294967295u, u_input.c.x), vec3<u32>(0u, 13713u, u_input.a), true) ^ ~firstLeadingBit(vec3<u32>(u_input.a, u_input.c.x, 0u))));
    var var_1 = -vec2<i32>(10961i, u_input.b.x);
    let var_2 = u_input.a << (var_0.e.x % 32u);
    var var_3 = select(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) + _wgslsmith_f_op_f32(-var_0.c)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-114f))), var_0.b.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(818f, 738f, -249f, var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -599f, 992f, var_0.a)))))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(235f, _wgslsmith_f_op_f32(-157f + var_0.a)), vec2<f32>(-1232f, _wgslsmith_f_op_f32(var_0.a - 310f))), min(-firstTrailingBit(var_0.d.wxw), var_0.d.xyx), vec4<u32>(~4294967295u, var_2, abs(_wgslsmith_add_u32(u_input.a, var_2)), 1u), var_0.b.zx, ~(~(var_0.d.zw >> (vec2<u32>(43474u, var_2) % vec2<u32>(32u))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(461f, -337f)))))), var_0.d.yzy, abs(~vec4<u32>(u_input.a, var_0.e.x, u_input.c.x, 107917u) ^ ~vec4<u32>(var_2, 20016u, 4294967295u, 38545u)), select(select(vec2<bool>(var_0.b.x, true), var_0.b.yy, false), var_0.b.yx, !all(vec2<bool>(var_0.b.x, true))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), -vec2<i32>(22087i, -2147483647i), vec2<i32>(-1i, 1999i))), ~62442i);
    return !all(!vec4<bool>(var_0.b.x && var_4.c.d.x, false, true, true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = ~(u_input.a | (26097u << ((_wgslsmith_add_u32(1u, u_input.a) | 53272u) % 32u)));
    var var_1 = select(!(!select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_0.d.x), select(vec4<bool>(arg_1.x, arg_0.d.x, true, arg_1.x), vec4<bool>(arg_0.d.x, false, false, arg_0.d.x), true), false)), vec4<bool>(arg_0.d.x, any(arg_0.d), false, arg_0.d.x), arg_1.x || !arg_0.d.x);
    var var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(var_0, arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 23309u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, u_input.c.x), vec2<u32>(1u, 1u)))), ~arg_0.c.x, _wgslsmith_add_u32(arg_0.c.x, var_0), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 53702u));
    var var_3 = Struct_3(1865f, select(var_1.xwy, var_1.zzy, firstTrailingBit(-2147483647i) <= -_wgslsmith_mod_i32(-47329i, arg_0.e.x)), arg_0.a.x, reverseBits(vec4<i32>(firstLeadingBit(-57162i), arg_0.e.x, abs(u_input.b.x), u_input.b.x) ^ -vec4<i32>(-2147483647i, arg_0.e.x, u_input.b.x, 17174i)), ~abs(select(var_2.wzz, ~var_2.zww, true)));
    var_1 = vec4<bool>(!all(vec4<bool>(!var_3.b.x, false, var_3.c == -847f, false)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.x) >> (vec2<u32>(72781u, var_0) % vec2<u32>(32u)), abs(vec2<u32>(10314u, 25114u))), _wgslsmith_add_vec2_u32(~var_2.xy, vec2<u32>(5401u, var_3.e.x))) > ~min(_wgslsmith_sub_u32(1u, var_0), select(var_2.x, u_input.c.x, arg_0.d.x)), var_3.b.x & arg_1.x, func_3());
    return _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(min(arg_0.a.x, 689f)));
}

fn func_4(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1593f - 126f), arg_0.x, _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(777f, -659f), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec2<bool>(true, true), u_input.b), vec2<bool>(false, false))), 167f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(915f))), _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, u_input.b.x, 2147483647i) << (vec3<u32>(u_input.c.x, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), max(~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)), vec4<u32>(~0u, 4294967295u, 1u, u_input.c.x)), !vec2<bool>(true, 64159u < u_input.a), _wgslsmith_div_vec2_i32(~max(vec2<i32>(-2147483647i, u_input.b.x), u_input.b), ~abs(vec2<i32>(1i, 1585i)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 172f) - arg_0)))), abs(select(-vec3<i32>(-20861i, 0i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true))), vec4<u32>(~u_input.c.x, u_input.a ^ u_input.a, _wgslsmith_div_u32(48027u, u_input.a), u_input.c.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 27036u, u_input.a) & vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 18156u, 3638u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.c.x, 1u))) % vec4<u32>(32u)), vec2<bool>(any(vec3<bool>(true, true, true)), select(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, true)))), firstTrailingBit(firstTrailingBit(reverseBits(vec2<i32>(u_input.b.x, -1i))))), countOneBits(-15791i));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -2729f, var_0.a.x, arg_0.x)))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(var_0.c.a.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), select(!var_0.b.d, select(var_0.c.d, var_0.c.d, vec2<bool>(false, var_0.c.d.x)), vec2<bool>(var_0.c.d.x, var_0.c.d.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(var_0.c.b.x), -15307i >> (var_0.b.c.x % 32u), var_0.c.b.x), var_0.b.b), vec4<u32>(0u, _wgslsmith_mod_u32(select(1u, u_input.a, var_0.c.d.x), u_input.c.x), ~4294967295u, _wgslsmith_sub_u32(~u_input.a, 4294967295u)), vec2<bool>(false, !var_0.c.d.x), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, var_0.b.e.x), ~vec2<i32>(47167i, var_0.c.b.x)), -1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0), vec3<i32>(select(abs(u_input.b.x), _wgslsmith_add_i32(-9001i, 30614i), true), -43744i, 16598i), var_0.b.c, !vec2<bool>(!var_0.c.d.x, true), firstTrailingBit(var_0.b.b.yz)), _wgslsmith_mult_i32(var_0.c.b.x, max(var_0.d, var_0.d) << (~var_0.c.c.x % 32u)));
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.a.x, -753f, 466f)), !var_0.c.d.x))))));
    let var_2 = Struct_3(arg_0.x, select(!vec3<bool>(all(var_0.b.d), true, true), vec3<bool>(true, var_0.b.d.x, !var_0.c.d.x), !vec3<bool>(1163f < var_1.x, var_0.b.d.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec4<i32>(u_input.b.x, -u_input.b.x, -29602i, (65823i | u_input.b.x) & _wgslsmith_mod_i32(1i, -u_input.b.x)), vec3<u32>(73963u, 1u, 0u));
    return vec2<i32>(20461i, var_2.d.x);
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, 650f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 493f))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(340f, 2437f), vec3<i32>(2147483647i, -2147483647i, u_input.b.x), vec4<u32>(0u, 60469u, 61848u, u_input.c.x), vec2<bool>(false, true), u_input.b), vec2<bool>(false, true)))))));
    var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = -18723i;
    let var_2 = ~(~firstTrailingBit(~(-1i))) | 2147483647i;
    return -597f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-209f * -365f), _wgslsmith_f_op_f32(round(466f)), all(vec3<bool>(false, false, true))))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1287f * 160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1620f + -463f))))), vec3<bool>(!any(vec2<bool>(false, false)) & true, !(!all(vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-980f * _wgslsmith_f_op_f32(f32(-1f) * -257f))))), reverseBits(-vec4<i32>(_wgslsmith_mod_i32(0i, u_input.b.x), u_input.b.x, 1i, u_input.b.x)), abs(firstLeadingBit(~(~vec3<u32>(u_input.c.x, 32457u, u_input.a)))));
    var var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(9180u, 69243u, u_input.a, var_0.e.x) | vec4<u32>(71322u, 23580u, var_0.e.x, 9764u), ~vec4<u32>(0u, var_0.e.x, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 20065u, var_0.e.x, 26476u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 17160u, 25198u, 24234u), vec4<u32>(u_input.a, u_input.a, 32590u, var_0.e.x)))), var_0.e.x, 35119u));
    var_1 = var_0.e;
    let var_2 = !vec2<bool>(all(!vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)) & true, true);
    let var_3 = _wgslsmith_add_i32(~max(~u_input.b.x, -1i), 6851i) & reverseBits(u_input.b.x);
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(round(-567f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, -1205f))), vec2<f32>(-489f, var_0.c)), countOneBits(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-9139i, -10891i, var_3, 0i), var_0.d ^ var_0.d), u_input.b.x)), abs(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(40463u, u_input.c.x, 41131u, 0u), vec4<u32>(27815u, 12186u, var_0.e.x, 0u)), vec4<u32>(~1u, select(u_input.a, var_1.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 3701u), var_1.yx), u_input.c.x))), var_2, var_0.d.yx);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.e.x | var_0.d.x));
}

