struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(647f, 816f, -1140f) + vec3<f32>(951f, -827f, 127f))), vec3<f32>(-1202f, _wgslsmith_div_f32(-168f, 174f), _wgslsmith_f_op_f32(floor(793f))), 13953u == u_input.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-260f, 499f, 1423f), vec3<f32>(791f, -735f, -110f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -165f, -938f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1622f, -1166f, -895f), vec3<f32>(-1063f, -476f, 656f))))))));
    var var_1 = -firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(30466i, -1i, -14218i), vec3<i32>(1i, 1i, u_input.c) << (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u))) << ((~vec3<u32>(1u, u_input.d, u_input.d) & u_input.a) % vec3<u32>(32u)));
    let var_2 = Struct_1(-1i, u_input.a);
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(firstTrailingBit(var_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(25040u, 6099u), 1u), ~abs(vec3<u32>(4294967295u, 1u, var_2.b.x)))), Struct_1(-(~(var_2.a ^ 0i)), vec3<u32>(u_input.b.x >> (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, 39137u, u_input.a.x), vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u)), select(u_input.b.x, var_2.b.x, true))), max(firstLeadingBit(vec3<i32>(abs(u_input.c), firstTrailingBit(var_1.x), _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(-1i, var_1.x)))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -2147483647i), vec3<i32>(u_input.c, var_2.a, 0i)), -vec3<i32>(u_input.c, -24234i, var_1.x), ~vec3<i32>(-1i, u_input.c, -21834i))), var_2, Struct_1(u_input.c, ~vec3<u32>(abs(0u), u_input.b.x, u_input.d)));
    return _wgslsmith_add_i32(-1i, ~1i);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> bool {
    let var_0 = true;
    var var_1 = ~arg_0;
    var_1 = ~1127u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(-u_input.c, _wgslsmith_sub_i32(i32(-1i) * -51367i, func_3())), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 68688u, 71322u), vec3<u32>(58050u, 69194u, 5173u)) << (~vec3<u32>(0u, 1u, 82486u) % vec3<u32>(32u))), Struct_1(arg_1.a, vec3<u32>(38361u, arg_0, arg_1.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -35374i, firstTrailingBit(~2147483647i), _wgslsmith_mult_i32(~(-1i), _wgslsmith_mult_i32(-1i, 1i))), vec3<i32>(_wgslsmith_add_i32(arg_1.a, -u_input.c), reverseBits(-46032i), reverseBits(1i)), arg_3 >> (firstTrailingBit(vec3<u32>(arg_0, arg_0, u_input.d)) % vec3<u32>(32u))), arg_1, arg_1);
    var var_3 = !(!(!(!select(vec4<bool>(false, arg_2, true, var_0), vec4<bool>(false, arg_2, false, true), vec4<bool>(var_0, true, false, true)))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a, firstLeadingBit(vec3<u32>(1u, ~select(60150u, u_input.a.x, true), arg_2.b.x)));
    var var_1 = Struct_2(arg_2, Struct_1(-1i, _wgslsmith_div_vec3_u32(vec3<u32>(~var_0.b.x, var_0.b.x, 1u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(61091u, var_0.b.x, 0u), arg_2.b), vec3<u32>(4294967295u, 31513u, u_input.b.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~(-2147483647i), 1i), -66130i, var_0.a), vec3<i32>(firstTrailingBit(2147483647i), select(u_input.c, 2147483647i, false | arg_0.x), var_0.a), vec3<i32>(abs(442i & u_input.c), max(-u_input.c, -1i), 2147483647i)), Struct_1(arg_2.a, ~min(abs(arg_2.b), firstTrailingBit(vec3<u32>(u_input.a.x, 37162u, 41606u)))), Struct_1(105141i, ~(~arg_2.b)));
    let var_2 = !(!arg_0.wzx);
    let var_3 = arg_2.b.x;
    var var_4 = ~(~reverseBits(0u & arg_2.b.x));
    return Struct_1(u_input.c, ~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_3, 70266u)), ~var_0.b.x, _wgslsmith_dot_vec3_u32(u_input.a, var_0.b)) >> (_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2.b.x, 0u), vec3<u32>(arg_2.b.x, var_3, var_0.b.x))), vec3<u32>(var_0.b.x, 65649u, 62465u) >> (vec3<u32>(u_input.d, var_3, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_4(!vec4<bool>((arg_0.x < -1000f) && any(vec2<bool>(false, true)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 0u, 4294967295u, 0u), vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), Struct_1(u_input.c, vec3<u32>(u_input.a.x, 62637u, 24231u)), true, vec3<i32>(arg_1.a, arg_1.a, u_input.c)), any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(355f - 724f), _wgslsmith_f_op_f32(-arg_0.x))) - 291f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-721f, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, 828f)))), false || all(vec4<bool>(true, true, true, true)))), arg_1);
    var var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(~(~vec3<i32>(arg_1.a, -15287i, 8339i))) ^ vec3<i32>(-min(arg_1.a, 8999i), _wgslsmith_sub_i32(~var_0.a, 16142i), arg_1.a), ~firstTrailingBit(vec3<i32>(2147483647i, -27580i, -18414i)), firstLeadingBit(abs(-vec3<i32>(u_input.c, 0i, -25498i))));
    var_1 = vec3<i32>(~select(-(~var_1.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, -46191i, arg_1.a), vec4<i32>(-73401i, arg_1.a, var_0.a, arg_1.a)), true), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-47969i ^ var_1.x, -9046i), var_1.xy | vec2<i32>(-2147483647i, 2147483647i)), var_1.zy), 1i);
    var_0 = arg_1;
    var var_2 = select(var_0.a, -(-u_input.c << (max(~var_0.b.x, 76151u) % 32u)), false);
    return Struct_2(func_4(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -1242f), _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(-1i, u_input.a)), arg_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(-82773i, var_0.a, var_1.x), vec3<i32>(_wgslsmith_mult_i32(~arg_1.a, -arg_1.a), _wgslsmith_clamp_i32(func_4(vec4<bool>(true, false, true, false), arg_0.x, Struct_1(u_input.c, vec3<u32>(18397u, var_0.b.x, u_input.d))).a, ~(-14097i), var_1.x), i32(-1i) * -27026i), _wgslsmith_clamp_vec3_i32(~select(vec3<i32>(-3461i, 26850i, arg_1.a), vec3<i32>(u_input.c, var_0.a, -1i), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_sub_i32(var_0.a, arg_1.a), 1i, _wgslsmith_mod_i32(7770i, u_input.c)), -vec3<i32>(43534i, -2147483647i, arg_1.a))), arg_1, func_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-arg_0.x), arg_1));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f), 369f), _wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1804f)), 960f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(func_1(vec2<f32>(2120f, 271f), Struct_1(_wgslsmith_mult_i32(u_input.c, 0i), ~u_input.a)), _wgslsmith_mod_u32(0u, u_input.a.x), func_1(vec2<f32>(-125f, -341f), Struct_1(2147483647i, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.d, u_input.d, u_input.a.x)))).c.yx, -(~(~vec2<i32>(u_input.c, -2147483647i))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(587f, 578f, 1114f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-291f, 139f, -308f)))) - vec3<f32>(_wgslsmith_f_op_f32(2289f - -1231f), _wgslsmith_f_op_f32(trunc(-665f)), _wgslsmith_f_op_f32(abs(1167f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1550f, 552f, 101f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1692f, 2036f, 193f), vec3<f32>(422f, -2600f, -741f))))))), !(!(_wgslsmith_mod_u32(u_input.b.x, 0u) > 1u))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(round(var_0.yz)), Struct_1(1i, ~u_input.a)).b.b.x, 1u, abs(~u_input.a.x | select(u_input.d, 5146u, true)), 6530u | _wgslsmith_clamp_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 15007u, 0u, u_input.b.x), vec4<u32>(1u, 13549u, u_input.d, u_input.a.x)), 27655u ^ u_input.b.x)), ~vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 20439u), vec3<u32>(u_input.b.x, 69732u, u_input.b.x)), _wgslsmith_add_u32(36526u, abs(u_input.a.x)), _wgslsmith_add_u32(3912u, ~4294967295u)));
    let var_2 = u_input.c;
    var var_3 = Struct_2(Struct_1(firstLeadingBit(max(-var_2, ~var_2)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, var_1.x), func_4(vec4<bool>(false, true, true, true), var_0.x, Struct_1(2147483647i, var_1.yzx)).b.x), 55883u, var_1.x)), Struct_1(i32(-1i) * -countOneBits(u_input.c), func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(885f)), _wgslsmith_f_op_f32(var_0.x * var_0.x), all(vec2<bool>(true, false)))), Struct_1(6109i, ~vec3<u32>(45482u, var_1.x, u_input.b.x))).b), reverseBits(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2, var_2, var_2)), abs(vec3<i32>(-33611i, -1i, var_2)))) << ((var_1.xyy | vec3<u32>(_wgslsmith_add_u32(0u, var_1.x), ~68513u, 1u)) % vec3<u32>(32u)), Struct_1(-(var_2 & u_input.c), ~var_1.yyz), Struct_1(u_input.c, var_1.www));
    let var_4 = !(!vec2<bool>(select(true, true, true), true));
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1794f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_0.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx - vec2<f32>(632f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-var_0.yy))))));
    var var_6 = select(vec2<i32>(-1i) * -vec2<i32>(~0i, var_3.a.a), vec2<i32>(u_input.c, (1i >> (var_1.x % 32u)) >> (var_3.a.b.x % 32u)), select(var_4, var_4, true));
    var_3 = Struct_2(Struct_1(~52951i, vec3<u32>(var_3.e.b.x, 359u, u_input.b.x)), func_1(vec2<f32>(_wgslsmith_f_op_f32(var_5.x - -1270f), 114f), Struct_1(var_3.e.a, vec3<u32>(_wgslsmith_add_u32(var_1.x, var_1.x), 64248u ^ u_input.a.x, var_3.b.b.x << (4294967295u % 32u)))).e, vec3<i32>(-1i, -93050i, _wgslsmith_sub_i32(i32(-1i) * -var_3.c.x, _wgslsmith_div_i32(~var_3.e.a, _wgslsmith_sub_i32(-20627i, var_2)))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))), Struct_1(-1i, vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(var_3.e.b.x, u_input.d), var_1.x))).e, func_4(!vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x - var_0.x)) + _wgslsmith_f_op_f32(-var_5.x)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(425f, -410f, -166f) * vec3<f32>(var_5.x, var_5.x, var_5.x)), _wgslsmith_f_op_vec3_f32(var_0 * var_0))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_5.x)), _wgslsmith_f_op_f32(max(1264f, 1825f))), 1405f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))))), vec4<u32>(92916u, _wgslsmith_div_u32(var_1.x, 1u), 26154u, 1u) | ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 25489u), min(vec4<u32>(var_3.d.b.x, var_1.x, 1u, 1u), vec4<u32>(u_input.b.x, var_1.x, 61188u, u_input.b.x))), 4294967295u);
}

