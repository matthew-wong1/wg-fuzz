struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
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

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-9887i, -1i), vec2<i32>(1i, 1i), vec2<i32>(78866i, -23991i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 4139i), vec2<i32>(-47831i, i32(-2147483648)), vec2<i32>(-31496i, 9953i), vec2<i32>(28269i, -350i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = all(select(arg_3.d.wz, arg_2, true));
    let var_1 = arg_3.d;
    global0 = array<vec2<i32>, 8>();
    let var_2 = arg_3;
    let var_3 = arg_3;
    return arg_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(496f));
    global0 = array<vec2<i32>, 8>();
    var var_1 = Struct_1(vec3<i32>(1i, _wgslsmith_div_i32(select(u_input.b.x, u_input.c.x, arg_0.x), max(min(0i, u_input.c.x), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), _wgslsmith_clamp_i32(u_input.d.x, min(-2147483647i, -2147483647i), -588i)), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, -28423i, u_input.c.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -30501i, 1i), vec3<i32>(u_input.d.x, 0i, -15220i))), u_input.b.x, reverseBits(max(2147483647i, 21732i)), ~(-(~u_input.d.x))), var_0 < arg_1, select(!select(vec4<bool>(false, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, false), arg_0.x), !select(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(false, true, u_input.a <= 1u, arg_0.x), vec4<bool>(true, false | arg_0.x, select(arg_0.x, false, false), select(arg_0.x, true, false)))));
    let var_2 = var_1.d;
    var var_3 = ~_wgslsmith_dot_vec3_i32(var_1.b.wyw, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, 0i), u_input.c), 26567i, _wgslsmith_mod_i32(var_1.b.x, u_input.d.x) | firstTrailingBit(u_input.b.x)));
    return u_input.b;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(-u_input.b, func_4(!func_3(Struct_1(vec3<i32>(u_input.d.x, -78080i, u_input.c.x), vec4<i32>(u_input.b.x, -2147483647i, 53323i, -9411i), false, vec4<bool>(false, false, true, true)), -1i, vec2<bool>(false, false), Struct_1(vec3<i32>(-28284i, -1i, u_input.b.x), vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, -3260i), false, vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1180f))))), max(~vec4<i32>(u_input.b.x, -88553i, u_input.d.x, u_input.d.x), u_input.c) >> (vec4<u32>(4294967295u, ~u_input.a, u_input.a | ~u_input.a, 9211u) % vec4<u32>(32u)), true, !(!vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true)));
    var var_1 = Struct_1(countOneBits(vec3<i32>(2147483647i, 0i, -var_0.b.x << ((21741u >> (0u % 32u)) % 32u))), -vec4<i32>(_wgslsmith_add_i32(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.a.x, 2147483647i), u_input.b)), 1i, u_input.c.x, var_0.b.x), var_0.c, vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(79154u, 1u), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(35930u, 4294967295u)) == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(26956u, u_input.a), vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, u_input.a))), true, !var_0.c, !(!var_0.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-948f, -567f)), -984f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1794f * 946f))) + 1f))));
    var_1 = var_0;
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(func_4(select(!var_1.d.xw, !var_1.d.zx, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f * 683f))).x, func_4(vec2<bool>(var_0.c | false, true), -1309f).x));
    return _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.b.x, _wgslsmith_mult_i32(1i, ~u_input.c.x & (i32(-1i) * -3907i))), vec3<i32>(-4170i, max(var_3, -firstLeadingBit(-36554i)), -15605i));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(func_2(), ~_wgslsmith_div_vec4_i32(vec4<i32>(max(2147483647i, 23763i), _wgslsmith_mod_i32(2147483647i, arg_0.b.x), u_input.b.x, arg_0.b.x), ~(~vec4<i32>(0i, u_input.c.x, arg_0.b.x, 12296i))), false, !(!select(select(vec4<bool>(arg_0.c, true, arg_0.d.x, false), vec4<bool>(arg_0.c, arg_0.d.x, false, arg_0.c), arg_0.d), arg_0.d, u_input.d.x > -16737i)));
    var var_1 = -var_0.b.ww;
    let var_2 = arg_0;
    global0 = array<vec2<i32>, 8>();
    var var_3 = countOneBits(abs(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(2917u, 15098u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 40067u, 11182u), vec3<u32>(4294967295u, u_input.a, 14251u)), ~vec3<u32>(u_input.a, 1u, u_input.a))) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.a, 4294967295u), ~firstTrailingBit(vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    return var_1.x;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(~(u_input.b << (~abs(vec3<u32>(u_input.a, 1u, 1u)) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2147483647i), u_input.d.x, 1i, -2147483647i ^ arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -14906i, 0i, u_input.b.x), u_input.c)), u_input.b.x, 15741i, arg_2), !((_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(47259i, arg_0, 2147483647i, 1i)) & ~arg_2) > u_input.c.x), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, arg_1 > 4294967295u, false)));
    var var_1 = abs(func_2().x);
    return Struct_1(countOneBits(_wgslsmith_div_vec3_i32(-var_0.a >> (abs(vec3<u32>(6715u, 1u, 48399u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, -32868i, arg_0), u_input.c.zzx))), firstLeadingBit(-firstTrailingBit(vec4<i32>(0i, -2147483647i, arg_0, arg_0))), all(var_0.d), var_0.d);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<vec2<i32>, 8>();
    let var_0 = all(arg_1.d.xz);
    var var_1 = !(_wgslsmith_f_op_f32(-219f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-516f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-716f, -946f)), -1000f)));
    var var_2 = func_5(-31254i, ~_wgslsmith_div_u32(u_input.a, u_input.a), arg_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1178f * _wgslsmith_f_op_f32(-588f + -275f)))))));
    var_1 = !(!all(!select(arg_2.d.wx, arg_1.d.zz, arg_0.c)));
    return func_5(2147483647i, abs(81826u), arg_0.b.x, -363f);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    global0 = array<vec2<i32>, 8>();
    var var_0 = func_5(-41087i, ~min(~(u_input.a & u_input.a), _wgslsmith_sub_u32(~u_input.a, select(u_input.a, 1u, arg_1.x))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1196f, 1000f))))).d;
    global0 = array<vec2<i32>, 8>();
    var var_1 = Struct_1(~(~(-u_input.b)), -u_input.c, arg_1.x, !(!(!(!arg_0.d))));
    var var_2 = func_5(25935i, countOneBits(~1u), 2147483647i >> (1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2084f)) * _wgslsmith_f_op_f32(-1176f - -550f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f - 173f) * _wgslsmith_f_op_f32(625f - 881f))))));
    return _wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(-578f)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_7(func_6(Struct_1(vec3<i32>(u_input.c.x, 48375i, -2147483647i), abs(vec4<i32>(u_input.d.x, u_input.b.x, 23386i, -2147483647i)), true, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false)), func_5(u_input.c.x, u_input.a, func_1(Struct_1(u_input.b, vec4<i32>(u_input.d.x, u_input.c.x, -2147483647i, 5967i), false, vec4<bool>(false, false, true, true))), 138f), Struct_1(u_input.b, -u_input.c, false, vec4<bool>(false, true, false, true)), _wgslsmith_add_i32(firstLeadingBit(-10755i), 1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_5(u_input.c.x, 31581u, u_input.b.x, -159f).c), true))));
}

