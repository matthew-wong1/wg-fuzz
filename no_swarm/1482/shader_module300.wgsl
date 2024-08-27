struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(~u_input.a, 22741u, true) == 1u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x << (u_input.a % 32u), u_input.b.x), -u_input.b.x << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)) & _wgslsmith_mult_i32(-(~(-30259i)), -u_input.b.x), 0i, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 36190u, u_input.a, u_input.a) << (max(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(29437u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 69062u, 31920u, 1u), vec4<u32>(49923u, u_input.a, u_input.a, u_input.a)), u_input.a, min(1u, _wgslsmith_mod_u32(23029u, u_input.a)), ~u_input.a)), ~vec3<i32>(u_input.b.x, u_input.b.x << (~57044u % 32u), u_input.b.x));
    let var_1 = Struct_2(u_input.a);
    var var_2 = min(u_input.b.x, -2147483647i);
    var var_3 = ~(~abs(~vec3<u32>(var_1.a, var_1.a, 0u)));
    var_3 = abs(vec3<u32>(var_1.a, 34061u, 32943u));
    return _wgslsmith_mod_u32(~firstLeadingBit(var_0.d.x), _wgslsmith_add_u32(select(abs(_wgslsmith_clamp_u32(10816u, 3934u, 62350u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 4294967295u), var_3.zy), _wgslsmith_sub_u32(var_1.a, u_input.a), !var_0.a.x), select(false == var_0.a.x, !var_0.a.x, true)), 1u));
}

fn func_2() -> Struct_2 {
    let var_0 = ~abs(func_3()) | max(countOneBits(u_input.a), ~(u_input.a << (~1u % 32u)));
    let var_1 = Struct_2(var_0);
    let var_2 = -158i;
    let var_3 = select(vec2<bool>(false, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false))), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_4 = 1u;
    return var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(!vec2<bool>(all(vec3<bool>(true, true, true)), true), arg_0.x, -2147483647i, select(vec4<u32>(arg_1.a, _wgslsmith_sub_u32(arg_1.a, u_input.a), ~arg_1.a, 1u & arg_1.a) << (reverseBits(~vec4<u32>(4294967295u, arg_1.a, arg_1.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, 4666u) >> (vec4<u32>(43352u, arg_1.a, arg_1.a, u_input.a) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a, arg_1.a, u_input.a, 0u))), true), arg_2 << (~vec3<u32>(100823u, 4294967295u, 4294967295u & arg_1.a) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1567f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(167f, 369f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(427f, 1337f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-943f * 849f))), 441f));
    var var_2 = false;
    var_2 = true;
    return Struct_2(~(~(~arg_1.a)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_4(select(u_input.b, vec2<i32>(-1i) * -(~vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(u_input.b.x, min(-25116i, u_input.b.x)) != u_input.b.x), arg_0, vec3<i32>(-18439i, ~firstTrailingBit(1i), u_input.b.x));
    var var_1 = var_0.e.x;
    let var_2 = Struct_2(firstLeadingBit(1u));
    var var_3 = true;
    var_3 = any(var_0.a);
    return var_0;
}

fn func_1() -> f32 {
    var var_0 = max(u_input.a | u_input.a, ~_wgslsmith_mod_u32(firstLeadingBit(0u), ~_wgslsmith_add_u32(u_input.a, 21487u)));
    var var_1 = func_6(func_5(func_4(vec2<i32>(-1i) * -u_input.b, func_2(), vec3<i32>(1i, ~u_input.b.x, -u_input.b.x)), func_2(), func_4(-(u_input.b & u_input.b), Struct_2(u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -13794i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec3<i32>(u_input.b.x, 39624i, u_input.b.x)), -(~86693i)), vec4<bool>(true, false, all(vec2<bool>(true, true)), true), func_5(Struct_1(vec2<bool>(true, true), 22396i, func_4(u_input.b, Struct_2(u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, 1i)).e.x, ~(~vec4<u32>(0u, u_input.a, 35604u, u_input.a)), vec3<i32>(firstLeadingBit(-2147483647i), func_4(vec2<i32>(2147483647i, -2147483647i), Struct_2(u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)).c, max(-1350i, -4346i))), func_2(), func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-7798i, 47411i, -37347i, -13487i), vec4<i32>(u_input.b.x, u_input.b.x, -41894i, 16766i)), -1i), Struct_2(_wgslsmith_div_u32(u_input.a, 37952u)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, -63386i, 6894i, -7448i)), u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)));
    var var_2 = ~countOneBits(u_input.b);
    let var_3 = vec4<f32>(-2276f, -1000f, 1577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f + _wgslsmith_f_op_f32(max(-347f, 1095f)))));
    var_2 = ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(var_1.e.yx, _wgslsmith_div_vec2_i32(var_1.e.zz, firstTrailingBit(var_1.e.yx)), -min(u_input.b, vec2<i32>(0i, var_2.x))));
    return _wgslsmith_f_op_f32(exp2(var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(63420u, u_input.a)), ~vec2<u32>(21652u, u_input.a)), ~vec2<u32>(0u, u_input.a)), reverseBits(~(~vec2<u32>(u_input.a, 0u))));
    var var_1 = Struct_1(vec2<bool>(true, select(u_input.b.x < u_input.b.x, false, false) & true), ~1i, u_input.b.x, vec4<u32>(~1u, 49002u, ~u_input.a, 105928u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(26492i, ~0i, -1i), vec3<i32>(44154i, i32(-1i) * -16579i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)))), -min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 10553i, u_input.b.x), vec4<i32>(-2034i, 1i, 4330i, 6620i)), 1i), u_input.b.x));
    let var_2 = vec4<f32>(144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(425f, _wgslsmith_f_op_f32(1112f + 360f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1984f), _wgslsmith_f_op_f32(f32(-1f) * -481f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2468f - _wgslsmith_f_op_f32(max(437f, 582f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var_0 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1.d, var_1.d | vec4<u32>(81489u, u_input.a, 0u, 18033u)), var_1.d.x), 0u);
    var var_3 = vec3<bool>(!var_1.a.x, u_input.b.x < 0i, func_4(vec2<i32>(reverseBits(u_input.b.x), firstLeadingBit(firstTrailingBit(99266i))), func_2(), var_1.e).a.x);
    var var_4 = func_4(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b) | -u_input.b, ~u_input.b), Struct_2(~reverseBits(_wgslsmith_sub_u32(9879u, var_1.d.x))), vec3<i32>(-6657i, -_wgslsmith_mult_i32(1i, -20751i) & ~var_1.c, ~min(-2147483647i, var_1.b) << (var_1.d.x % 32u)));
    var var_5 = Struct_1(!var_1.a, var_4.c, 29061i, vec4<u32>(~1u, var_4.d.x, _wgslsmith_mult_u32(~u_input.a, 13951u >> (u_input.a % 32u)), ~var_1.d.x << (1u % 32u)) | var_1.d, ~_wgslsmith_mod_vec3_i32(firstTrailingBit(-var_4.e), ~vec3<i32>(-2147483647i, var_4.e.x, 0i)));
    let var_6 = Struct_1(vec2<bool>(any(func_4(vec2<i32>(var_5.c, -1i), Struct_2(1u), var_1.e).a), any(var_1.a)), ~(~var_1.b), var_5.b, ~(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_1.d.x, 21571u, var_4.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(62839u, 13988u, var_5.d.x, 4294967295u), var_5.d)) | var_5.d), vec3<i32>(-109417i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_4.c), var_1.e.zy), var_4.e.x) << (0u % 32u), ~firstLeadingBit(-u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 26636u), _wgslsmith_add_vec2_u32(var_4.d.wz, var_6.d.zz))), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(~firstLeadingBit(var_4.d.x), _wgslsmith_dot_vec3_u32(var_1.d.xxz, var_5.d.wyy) | 4294967295u)), -(_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_sub_i32(1i, 0i)) & ~(~var_1.e.x)), -vec3<i32>(-25306i, var_6.e.x, _wgslsmith_sub_i32(-var_6.c, firstLeadingBit(2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-560f, 290f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
}

