struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, u_input.a, u_input.a), 1i), u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(1680f + 1995f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -664f))), _wgslsmith_f_op_f32(1882f * -647f))));
    var var_1 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), any(vec3<bool>(true, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    var var_2 = !select(vec4<bool>(true, -34585i <= -var_0.a, !(var_0.b.x >= var_0.b.x), true), vec4<bool>(any(vec2<bool>(true, true)), true, false, !any(vec4<bool>(true, false, false, true))), any(vec3<bool>(true, true, true)) || true);
    var_1 = !(!select(select(var_2.x, any(vec4<bool>(var_2.x, var_2.x, true, true)), true), var_2.x, var_2.x & !var_2.x));
    var_1 = false;
    return 89877u;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(arg_2.b.b.xw), vec2<u32>(arg_3, 11847u)), u_input.c.x, ~u_input.c.x ^ 1u), vec3<u32>(10970u, 0u, firstLeadingBit(func_3() ^ (arg_1.b.x & arg_1.b.x))));
    var var_1 = _wgslsmith_f_op_f32(max(448f, _wgslsmith_f_op_f32(abs(arg_0))));
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_3, arg_3), abs(firstTrailingBit(arg_2.d.a)));
    var_0 = 4294967295u;
    var_1 = arg_0;
    return Struct_3(arg_2.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(arg_0, 171f))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 36749u, 4294967295u, 31649u), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x)))) & reverseBits(~vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), u_input.c.x, ~u_input.c.x, 2232u));
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(u_input.c.x | 4294967295u), ~func_3(), ~_wgslsmith_dot_vec2_u32(var_0.yy, var_0.yw), var_0.x), ~(~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))) >> (~firstLeadingBit(vec4<u32>(4294967295u, var_0.x, u_input.c.x >> (1u % 32u), 139819u)) % vec4<u32>(32u));
    let var_1 = !select(select(!(!vec4<bool>(arg_3, arg_3, arg_3, true)), select(select(vec4<bool>(arg_3, true, false, false), vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(arg_3, arg_3, arg_3, true)), select(vec4<bool>(arg_3, arg_3, true, false), vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(arg_3, true, false, arg_3)), !arg_3), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_3, false), vec4<bool>(false, arg_3, arg_3, true)), !vec4<bool>(arg_3, true, false, false), select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, false)))), select(select(select(vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(false, true, false, true), arg_3), select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(false, arg_3, false, arg_3), true), !vec4<bool>(arg_3, arg_3, arg_3, true)), !vec4<bool>(arg_3, arg_3, arg_3, arg_3), any(vec4<bool>(true, true, true, true))), true);
    var_0 = ~(~vec4<u32>(reverseBits(~u_input.c.x), ~_wgslsmith_clamp_u32(4294967295u, 5262u, u_input.c.x), 0u, 2050u));
    var_0 = firstLeadingBit(~min(~(vec4<u32>(46301u, 4294967295u, 1u, u_input.c.x) ^ vec4<u32>(u_input.c.x, 28988u, u_input.c.x, var_0.x)), ~firstLeadingBit(vec4<u32>(15128u, 0u, 4294967295u, var_0.x))));
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = 0u;
    var_0 = ~0u;
    var_0 = arg_1.b.x;
    var_0 = 54020u;
    return u_input.c.x;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = all(!select(select(!arg_0.a, arg_0.a, !arg_0.a.x), arg_0.a, arg_0.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1021f - 1621f), _wgslsmith_f_op_f32(-1639f + -1936f)), -233f, _wgslsmith_f_op_f32(-1006f * -913f), 1441f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(615f, -847f, 1024f, 1170f), vec4<f32>(-1137f, -1224f, -464f, -1485f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, 596f, -135f, -1829f) - vec4<f32>(1503f, -727f, 1353f, -747f)), arg_0.a)))))));
    let var_2 = reverseBits(func_5(u_input.b ^ func_4(Struct_3(arg_0.c.x, var_1.wwx), func_2(-312f, Struct_1(0u, arg_0.e.b), arg_0, arg_0.d.a), _wgslsmith_f_op_f32(315f + var_1.x), var_0), Struct_1(select(u_input.c.x, 0u, any(arg_0.a)), reverseBits(arg_0.b.b)), true));
    var var_3 = arg_0.d;
    var var_4 = -950f;
    return Struct_3(arg_0.c.x, var_1.yxx);
}

fn func_6(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = _wgslsmith_mult_i32(arg_0.a, abs(10205i));
    let var_1 = Struct_5(select(-_wgslsmith_mod_i32(u_input.b, -1i) != reverseBits(func_4(arg_0, Struct_3(u_input.a, arg_0.b), arg_0.b.x, true)), false, true));
    var_0 = u_input.a << (~select(u_input.c.x & _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(20136i, 2861i, arg_0.a, 18235i), vec4<i32>(72334i, 23726i, arg_0.a, u_input.b)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, -1i), vec3<i32>(u_input.b, u_input.a, 1i))) % 32u);
    return _wgslsmith_add_u32(select(firstLeadingBit(30890u), 25134u, !any(vec3<bool>(var_1.a, false, var_1.a))) << ((u_input.c.x << (1u % 32u)) % 32u), firstTrailingBit(u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = Struct_1(4294967295u, vec4<u32>(countOneBits(u_input.c.x) << (_wgslsmith_mod_u32(1u, u_input.c.x) % 32u), _wgslsmith_mult_u32(u_input.c.x << (var_0.x % 32u), var_0.x), u_input.c.x, func_6(func_1(Struct_2(vec4<bool>(false, true, false, true), Struct_1(7600u, vec4<u32>(34004u, u_input.c.x, 60832u, var_0.x)), vec3<i32>(u_input.a, -1i, u_input.a), Struct_1(var_0.x, vec4<u32>(var_0.x, var_0.x, u_input.c.x, var_0.x)), Struct_1(12026u, vec4<u32>(u_input.c.x, 41442u, var_0.x, 28880u)))))) << (vec4<u32>(countOneBits(reverseBits(var_0.x)), u_input.c.x, ~44473u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(var_0.x, 4294967295u))) % vec4<u32>(32u)));
    let var_2 = Struct_3(1i & _wgslsmith_mod_i32(0i, func_4(Struct_3(0i, vec3<f32>(270f, 1005f, -1000f)), func_1(Struct_2(vec4<bool>(true, true, true, false), Struct_1(var_0.x, var_1.b), vec3<i32>(u_input.b, u_input.a, u_input.a), Struct_1(4294967295u, var_1.b), Struct_1(42751u, vec4<u32>(u_input.c.x, 0u, 6217u, 0u)))), -791f, any(vec4<bool>(true, true, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1595f) * _wgslsmith_f_op_f32(f32(-1f) * -1038f))), 1000f, 2027f));
    var var_3 = select(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_2.b.x >= var_2.b.x), vec3<bool>(true, false, select(false, false, false)), vec3<bool>(true, true, true))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), !any(vec3<bool>(false, false, true)))), false);
    let var_4 = all(vec2<bool>(!(!any(vec4<bool>(true, true, true, true))), !select(select(false, true, false), all(vec2<bool>(false, false)), true)));
    let var_5 = Struct_2(select(vec4<bool>(all(!vec2<bool>(var_4, var_4)), true, true, all(select(vec4<bool>(var_4, false, var_4, true), vec4<bool>(true, var_4, var_4, var_4), vec4<bool>(var_4, false, true, var_4)))), select(vec4<bool>(any(vec4<bool>(var_4, var_4, false, var_4)), true, all(vec4<bool>(false, false, false, true)), !var_4), select(!vec4<bool>(var_4, var_4, true, true), vec4<bool>(true, var_4, var_4, var_4), select(var_4, false, var_4)), false == var_4), !(!(!vec4<bool>(var_4, true, var_4, false)))), Struct_1(~(~var_0.x), countOneBits(~min(var_1.b, vec4<u32>(18624u, u_input.c.x, 4294967295u, var_0.x)))), min(abs(vec3<i32>(max(0i, u_input.a), -var_2.a, max(u_input.a, 1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-3642i, var_2.a, -2147483647i), abs(vec3<i32>(-39570i, -31659i, u_input.a))), vec3<i32>(33305i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 2147483647i)), 13536i))), Struct_1(u_input.c.x, select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.b, var_1.b), var_1.b), var_1.b, -53129i < u_input.b)), Struct_1(func_3(), abs(~vec4<u32>(0u, var_0.x, 38526u, 90050u) ^ ~vec4<u32>(25646u, var_0.x, var_1.a, 1u))));
    let var_6 = firstTrailingBit(max(vec2<u32>(_wgslsmith_div_u32(~var_5.d.a, u_input.c.x), func_3() & ~var_5.d.a), max(var_1.b.xw, ~var_1.b.ww)));
    var_3 = !(var_4 & var_4);
    let var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

