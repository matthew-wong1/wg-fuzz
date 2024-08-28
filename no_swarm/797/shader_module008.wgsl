struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = any(vec3<bool>(arg_3.c, !(arg_1.x == ~arg_1.x), false));
    var var_1 = u_input.a.yz;
    var var_2 = Struct_3(1000f, !(!var_0), any(!vec3<bool>(var_0 & arg_0.d.x, true, false)), arg_0.a, Struct_1(vec2<u32>(_wgslsmith_clamp_u32(~27217u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(arg_0.c.a.x, 23698u)), 1u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.e.a.x, 58191u), _wgslsmith_div_u32(arg_0.c.a.x, 0u)))));
    var var_3 = select(vec4<bool>(!all(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_2.b, false, true), vec3<bool>(true, arg_3.c, arg_3.b))), any(select(select(vec4<bool>(false, var_0, var_2.c, false), vec4<bool>(true, true, true, var_2.b), var_2.b), select(vec4<bool>(arg_3.b, var_0, var_0, var_0), vec4<bool>(false, true, false, true), vec4<bool>(true, var_0, arg_3.b, true)), 1834f != arg_0.b.a.x)), firstLeadingBit(u_input.a.x) <= ~(-var_1.x), ~(~arg_3.d.a.x) == var_2.d.a.x), select(vec4<bool>(!(1000f <= arg_0.b.a.x), false, true, _wgslsmith_dot_vec4_i32(arg_1, arg_1) > -1i), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), arg_0.a.a.x == 19098u, var_2.b), var_0), select(!(!select(vec4<bool>(false, var_0, arg_3.c, false), vec4<bool>(true, arg_3.c, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(var_2.c, all(arg_0.d), any(!vec4<bool>(true, var_0, var_0, false)), all(select(vec4<bool>(false, true, arg_0.d.x, var_2.c), vec4<bool>(false, arg_0.d.x, true, false), vec4<bool>(var_0, var_2.b, arg_3.b, false)))), (-2147483647i ^ u_input.a.x) < 8157i));
    let var_4 = arg_0.b;
    return _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(abs(1u), _wgslsmith_mult_u32(var_2.e.a.x, 1u), 0u)), ~vec3<u32>(firstTrailingBit(arg_2), ~(~20331u), _wgslsmith_div_u32(arg_3.d.a.x, _wgslsmith_clamp_u32(var_4.b.a.x, 25763u, var_2.e.a.x))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)), _wgslsmith_f_op_f32(f32(-1f) * -133f))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -255f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-806f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f))) * _wgslsmith_f_op_f32(ceil(1064f))));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(26290u, 53299u, 1u) >> (func_3(Struct_4(Struct_1(vec2<u32>(6495u, 37075u)), Struct_2(vec3<f32>(1867f, var_0.x, 1326f), Struct_1(vec2<u32>(4294967295u, 1u)), 4294967295u), Struct_1(vec2<u32>(36523u, 61817u)), vec2<bool>(arg_0.x, false), Struct_1(vec2<u32>(19079u, 42803u))), vec4<i32>(16196i, u_input.a.x, 1i, 1i), 4294967295u, Struct_3(-1000f, true, arg_0.x, Struct_1(vec2<u32>(0u, 7011u)), Struct_1(vec2<u32>(0u, 35892u)))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(44903u, 4294967295u, 65016u), vec3<u32>(4294967295u, 70472u, 1u)), vec3<u32>(1u, 1u, 1u))), ~min(_wgslsmith_sub_u32(71854u, 1u), 1u)), ~reverseBits(abs(~vec3<u32>(0u, 4294967295u, 5711u))));
    var_1 = ~vec3<u32>(_wgslsmith_mod_u32(~4294967295u, abs(~var_1.x)), 63606u, abs(~var_1.x >> (14765u % 32u)));
    var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(48082u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(35513u, 21847u, var_1.x, var_1.x) | vec4<u32>(4294967295u, 34304u, var_1.x, var_1.x), vec4<u32>(31463u, 152164u, var_1.x, 22107u))), reverseBits(firstLeadingBit(var_1.x)), var_1.x));
    var var_2 = Struct_1(~(var_1.zz ^ (select(var_1.yy, var_1.zx, false) & vec2<u32>(var_1.x, 1u))));
    return Struct_1(~var_2.a);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<i32>(min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.a | vec3<i32>(31346i, 33258i, -1i)), u_input.a), 0i), -7198i, -2147483647i);
    var_0 = vec3<i32>(0i, _wgslsmith_mod_i32(abs(var_0.x), -6969i), var_0.x) << (~abs(~vec3<u32>(arg_0, 26922u, 1u)) % vec3<u32>(32u));
    var_0 = vec3<i32>(-2147483647i, ~abs(-14482i), -6642i);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(select(-2433f, -1518f, false))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1578f, -871f) - vec2<f32>(-690f, -393f)))), 1u < _wgslsmith_dot_vec2_u32(arg_3.a, vec2<u32>(15049u, 62633u)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-152f, 900f) + vec2<f32>(-1167f, -2100f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 606f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(step(385f, 864f))), arg_1.x))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, -692f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(222f, -486f) - vec2<f32>(-738f, 1000f))))))));
    return _wgslsmith_add_u32(arg_3.a.x, arg_0);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(32898u, 11930u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), firstTrailingBit(vec2<u32>(arg_0, 4294967295u))), true)), arg_0);
    var_0 = 0u;
    var_0 = ~0u;
    var_0 = ~81524u;
    var var_1 = 2147483647i;
    return Struct_1(vec2<u32>(func_4(arg_0, vec3<bool>(u_input.a.x <= 14255i, u_input.a.x == u_input.a.x, true), vec3<bool>(all(vec3<bool>(false, true, false)), true, true), func_2(vec3<bool>(true, true, true))), 1u));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    var var_0 = select(~(~(-35830i)), _wgslsmith_dot_vec2_i32(u_input.a.xy, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.xx, vec2<i32>(u_input.a.x, arg_1), -vec2<i32>(0i, -2147483647i)), u_input.a.zz)), all(vec3<bool>(true & (false || arg_0.b), true | all(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.b)), true)));
    var var_1 = -1i;
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-848f - 861f), _wgslsmith_f_op_f32(f32(-1f) * -1375f), -1694f), Struct_1(select(func_2(select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.c), false)).a, ~(~vec2<u32>(arg_0.d.a.x, arg_0.e.a.x)), !select(vec2<bool>(false, arg_0.b), vec2<bool>(true, true), vec2<bool>(arg_0.c, true)))), 0u);
    var var_3 = !arg_0.c;
    var var_4 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_2.a))));
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> StorageBuffer {
    var var_0 = Struct_3(arg_0.x, arg_1, true, Struct_1(vec2<u32>(_wgslsmith_div_u32(~arg_2, ~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, arg_2), vec3<u32>(1u, 18965u, 0u)), func_3(Struct_4(Struct_1(vec2<u32>(42254u, 4294967295u)), Struct_2(vec3<f32>(1000f, 1504f, -1004f), Struct_1(vec2<u32>(arg_2, 49716u)), 1u), Struct_1(vec2<u32>(arg_2, arg_2)), vec2<bool>(arg_1, true), Struct_1(vec2<u32>(1u, arg_2))), vec4<i32>(-6900i, u_input.a.x, u_input.a.x, -1i), arg_2, Struct_3(-658f, arg_1, arg_1, Struct_1(vec2<u32>(arg_2, arg_2)), Struct_1(vec2<u32>(arg_2, 51211u))))))), Struct_1(~(~vec2<u32>(1u, 1u))));
    return StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_2, 54451u), arg_2 << (1u % 32u), arg_2 & var_0.d.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(9883u, arg_2, arg_2), abs(vec3<u32>(0u, 10552u, 54027u)))), ~_wgslsmith_mult_u32(25095u, var_0.d.a.x) | _wgslsmith_sub_u32(var_0.e.a.x, _wgslsmith_mult_u32(var_0.d.a.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x >= arg_0.x, true, func_2(vec3<bool>(arg_1, false, false)), Struct_1(vec2<u32>(74638u, arg_2))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 14492i), u_input.a.x))).x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, _wgslsmith_f_op_vec3_f32(func_5(Struct_3(var_0.a, arg_1, true, var_0.d, Struct_1(var_0.e.a)), 14700i >> (0u % 32u))).x, _wgslsmith_f_op_f32(-1249f * -1636f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), var_0.a, 532f))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2031f), 1000f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2481f + 1000f))) - 741f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1113f))));
    let var_1 = _wgslsmith_div_u32(0u, abs(4294967295u | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(18154u, 4294967295u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(-2663f, var_1 > 11587u, all(vec3<bool>(true, true, true)), Struct_1(vec2<u32>(1u, var_1)), func_1(0u)), countOneBits(-u_input.a.x))))), 13948i <= _wgslsmith_sub_i32(u_input.a.x, abs(-2147483647i ^ u_input.a.x)), ~35066u);
}

