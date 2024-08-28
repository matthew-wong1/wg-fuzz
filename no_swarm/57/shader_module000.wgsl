struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_1(vec2<i32>(0i, i32(-2147483648)), false), vec3<bool>(true, true, true), 27748i), Struct_5(Struct_1(vec2<i32>(0i, -30495i), false), vec3<bool>(false, true, false), i32(-2147483648)), Struct_5(Struct_1(vec2<i32>(0i, -42890i), false), vec3<bool>(false, false, false), -14800i), Struct_5(Struct_1(vec2<i32>(-35202i, -18414i), false), vec3<bool>(false, false, true), 1i), Struct_5(Struct_1(vec2<i32>(-1i, i32(-2147483648)), false), vec3<bool>(false, false, false), 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = firstTrailingBit(u_input.a & _wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(20715u, 1u))), 4294967295u));
    let var_1 = all(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(var_0, max(u_input.a, u_input.a), true) >= 0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, var_0, 7607u), vec4<u32>(var_0, var_0, var_0, var_0)), var_0, 1u) >= (~var_0 >> (var_0 % 32u))));
    var var_2 = select(vec2<bool>(!all(!vec4<bool>(var_1, var_1, var_1, var_1)), var_1), select(vec2<bool>(var_1, arg_0 > (i32(-1i) * -16742i)), !(!select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), vec2<bool>(true, true))), select(!select(vec2<bool>(false, var_1), vec2<bool>(true, false), vec2<bool>(true, var_1)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(var_1, var_1)), !vec2<bool>(false, var_1), vec2<bool>(true, false)), true)), vec2<bool>(true, true));
    let var_3 = _wgslsmith_add_u32(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6537u, 29697u), vec2<u32>(u_input.a, u_input.a)), min(18064u, u_input.a))), reverseBits(_wgslsmith_div_u32(var_0, ~(~4294967295u))));
    let var_4 = Struct_4(Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(arg_0, 2147483647i), firstTrailingBit(vec2<i32>(0i, 18946i) | vec2<i32>(arg_0, 54579i))), true), Struct_1(vec2<i32>(-(~(-9156i)), -8974i), var_2.x), true, Struct_2(-arg_0), Struct_3(Struct_1(vec2<i32>(_wgslsmith_mult_i32(653i, arg_0), arg_0), true), -315f, vec4<i32>(~arg_0, arg_0, arg_0, _wgslsmith_clamp_i32(4443i, 2301i, arg_0)) << ((vec4<u32>(1u, 14139u, 4294967295u, 1u) | select(vec4<u32>(1u, var_3, var_3, 4294967295u), vec4<u32>(20669u, 30056u, 1u, var_3), vec4<bool>(var_2.x, var_1, var_1, false))) % vec4<u32>(32u)), Struct_2(2147483647i), select(~var_3, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(21083u, var_0)), vec2<u32>(6366u, var_3)), arg_0 <= -9671i)));
    return _wgslsmith_sub_u32(abs(var_0), 1u) < 4369u;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    var var_0 = func_3(-_wgslsmith_sub_i32(-2147483647i << (~u_input.a % 32u), i32(-1i) * -2147483647i));
    global0 = array<Struct_5, 5>();
    var var_1 = ~_wgslsmith_mod_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 23590u), vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(19490u, 28496u))), _wgslsmith_sub_vec2_u32(abs(reverseBits(vec2<u32>(4829u, u_input.a))), vec2<u32>(min(u_input.a, u_input.a), u_input.a)));
    var var_2 = Struct_3(Struct_1(abs(vec2<i32>(-21940i, -1i)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2404f)), -872f)) - -1000f), -min(abs(select(vec4<i32>(-54987i, 46785i, -18892i, 2147483647i), vec4<i32>(-8749i, 19699i, 0i, 25292i), vec4<bool>(arg_0, arg_0, false, arg_0))), vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(_wgslsmith_sub_i32(~max(0i, 0i), _wgslsmith_clamp_i32(1i, -4128i, -2147483647i))), u_input.a);
    let var_3 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-var_2.c.x, 0i)), !(!(_wgslsmith_f_op_f32(var_2.b * var_2.b) <= _wgslsmith_f_op_f32(sign(var_2.b)))));
    return ~vec2<u32>(~u_input.a >> ((_wgslsmith_add_u32(u_input.a, 1u) << (var_1.x % 32u)) % 32u), ~reverseBits(u_input.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_3 {
    return Struct_3(Struct_1(firstTrailingBit(vec2<i32>(arg_2.c, arg_1.a ^ arg_1.a)), arg_2.a.b || !func_3(46988i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-617f, -848f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(213f - -2206f), -822f)))), vec4<i32>(arg_1.a, abs(min(9979i, -1i)) & arg_1.a, arg_2.c, 18681i), Struct_2(arg_2.c), u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(_wgslsmith_div_u32(u_input.a, 801u)), firstTrailingBit(~u_input.a)), vec2<u32>(30499u, ~1u), _wgslsmith_sub_vec2_u32(~func_2(false), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)))), Struct_2(-21206i), Struct_5(Struct_1(abs(-vec2<i32>(-2147483647i, 36781i)), false), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), ~(-2147483647i)));
    let var_1 = 1000f;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(70687u, var_0.e, 0u), vec3<u32>(1u, var_0.e, var_0.e)), vec3<u32>(u_input.a, u_input.a, var_0.e)) | 1u, ((~u_input.a >> (firstLeadingBit(98133u) % 32u)) << (var_0.e % 32u)) & 0u, ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 67612u, 0u), vec4<u32>(var_0.e, u_input.a, var_0.e, var_0.e)), ~(21813u >> (var_0.e % 32u))), 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, var_1, var_1));
    var var_4 = var_0.a;
    return func_4(vec2<u32>(~u_input.a | 36679u, func_4(var_2.xw, var_0.d, Struct_5(var_0.a, select(vec3<bool>(var_4.b, true, var_4.b), vec3<bool>(var_0.a.b, false, false), var_4.b), var_0.c.x)).e), Struct_2(i32(-1i) * -64564i), Struct_5(var_0.a, select(select(select(vec3<bool>(false, var_4.b, var_4.b), vec3<bool>(var_4.b, true, var_0.a.b), vec3<bool>(false, var_4.b, var_0.a.b)), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, var_0.a.b, var_4.b), vec3<bool>(var_0.a.b, false, false), vec3<bool>(var_4.b, var_4.b, var_4.b)), !(!vec3<bool>(var_0.a.b, var_4.b, var_4.b))), func_4(_wgslsmith_add_vec2_u32(var_2.yx, var_2.zz), var_0.d, Struct_5(Struct_1(vec2<i32>(2147483647i, var_4.a.x), var_4.b), select(vec3<bool>(false, false, var_4.b), vec3<bool>(true, false, var_4.b), true), max(var_4.a.x, -1676i))).d.a)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), -359f, vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(2147483647i, 16087i), firstLeadingBit(~(-1i)), 12168i), -34008i, min(-(~(-1i)), _wgslsmith_clamp_i32(func_4(vec2<u32>(0u, 49993u), Struct_2(0i), global0[_wgslsmith_index_u32(u_input.a, 5u)]).d.a, 0i, 1i)), 1i), Struct_2(-18947i), _wgslsmith_mult_u32(~38679u, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(-func_4(~vec2<u32>(var_0.e << (u_input.a % 32u), 1u), Struct_2(_wgslsmith_sub_i32(select(-1i, var_0.d.a, var_0.a.b), var_0.d.a | var_0.d.a)), Struct_5(var_0.a, vec3<bool>(var_0.e <= 0u, true, var_0.a.b == var_0.a.b), ~(2147483647i >> (var_0.e % 32u)))).b);
    let var_2 = _wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, u_input.a), vec2<u32>(var_0.e, 1u)), firstTrailingBit(~(~(~vec2<u32>(var_0.e, 92825u)))));
    let var_3 = select(select(vec4<bool>(any(!vec3<bool>(var_0.a.b, false, var_0.a.b)), -787f != _wgslsmith_f_op_f32(585f - var_1), true, var_0.a.b), !(!(!vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b))), select(select(!vec4<bool>(true, false, true, var_0.a.b), vec4<bool>(false, var_0.a.b, false, true), !vec4<bool>(false, true, var_0.a.b, var_0.a.b)), vec4<bool>(false, var_0.a.b, true, !var_0.a.b), var_0.a.b)), vec4<bool>(!(_wgslsmith_div_u32(1u, 1u) >= var_0.e), var_0.c.x != min(countOneBits(var_0.a.a.x), _wgslsmith_sub_i32(var_0.d.a, -19451i)), true, all(!(!vec4<bool>(false, false, var_0.a.b, true)))), select(select(!(!vec4<bool>(var_0.a.b, false, true, var_0.a.b)), !select(vec4<bool>(false, false, var_0.a.b, true), vec4<bool>(true, false, var_0.a.b, true), vec4<bool>(false, var_0.a.b, var_0.a.b, var_0.a.b)), !select(vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), vec4<bool>(var_0.a.b, true, false, true), var_0.a.b)), vec4<bool>(!var_0.a.b, false, true, 608f >= _wgslsmith_f_op_f32(-var_1)), func_4(vec2<u32>(~var_0.e, firstTrailingBit(var_2.x)), var_0.d, Struct_5(var_0.a, vec3<bool>(false, var_0.a.b, var_0.a.b), var_0.c.x)).a.b));
    global0 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-671f, -825f))))), vec4<f32>(var_1, func_4(var_2, func_4(var_2, var_0.d, Struct_5(Struct_1(var_0.a.a, var_3.x), vec3<bool>(var_3.x, var_0.a.b, true), var_0.c.x)).d, Struct_5(var_0.a, select(vec3<bool>(var_3.x, false, var_3.x), var_3.wyy, var_0.a.b), ~var_0.c.x)).b, 371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1991f)))) - _wgslsmith_f_op_f32(sign(392f)))), ~(-(~(-var_0.a.a.x))), var_0.b);
}

