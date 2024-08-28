struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = -(~(-2147483647i >> (u_input.a % 32u)));
    var var_1 = Struct_1(2147483647i, countOneBits(vec2<i32>(firstTrailingBit(-55586i), u_input.b)), _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(u_input.a, u_input.c) >> (~u_input.c % 32u)), u_input.e));
    var_1 = Struct_1(-2147483647i, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(1i, var_0)), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0, var_1.a), vec2<i32>(1i, var_0))), ~(-vec2<i32>(var_0, var_0) << (~vec2<u32>(var_1.c, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(42920u, var_1.c), ~var_1.c >> (~21522u % 32u)), ((vec3<u32>(var_1.c, var_1.c, 0u) & vec3<u32>(var_1.c, 41552u, 1u)) >> (~vec3<u32>(83478u, 1u, 1u) % vec3<u32>(32u))) >> (~(vec3<u32>(var_1.c, var_1.c, u_input.c) | vec3<u32>(u_input.e, var_1.c, var_1.c)) % vec3<u32>(32u))));
    var_1 = Struct_1(u_input.d, vec2<i32>(select(var_1.b.x, _wgslsmith_div_i32(14529i, _wgslsmith_dot_vec4_i32(vec4<i32>(12006i, var_1.b.x, 16525i, 2147483647i), vec4<i32>(var_1.b.x, 41837i, u_input.d, -5492i))), true), 0i), 0u);
    let var_2 = (vec2<u32>(var_1.c, ~(~var_1.c)) >> (_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.c, u_input.e) << (vec2<u32>(65264u, var_1.c) % vec2<u32>(32u))), countOneBits(firstTrailingBit(vec2<u32>(21019u, var_1.c)))) % vec2<u32>(32u))) << (((~(~vec2<u32>(var_1.c, u_input.e)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(22407u, 45112u), vec2<u32>(u_input.e, var_1.c) << (vec2<u32>(33052u, 19099u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.e, 1u)), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return u_input.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i << (arg_2.x % 32u), ~u_input.d), vec2<i32>(-24346i, u_input.d), abs(vec2<i32>(u_input.b, u_input.d)) << (_wgslsmith_add_vec2_u32(arg_2.zx, arg_1) % vec2<u32>(32u))) << (arg_2.zx % vec2<u32>(32u)), func_3(vec2<f32>(-1592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f))), 1475f, vec2<f32>(arg_0.x, -241f)));
    let var_1 = var_0;
    let var_2 = var_1;
    let var_3 = min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.x, firstTrailingBit(-46255i), -17071i, max(var_0.b.x, -30898i)), vec4<i32>(var_2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-38609i, var_2.a, u_input.b), vec3<i32>(1i, 20642i, u_input.b)), var_0.b.x, var_0.a & 29306i)), abs(~vec4<i32>(-2147483647i, var_2.b.x, 0i, var_1.a))), -18884i);
    var var_4 = ~(~(~vec3<i32>(-2147483647i, var_3, u_input.d) ^ -(vec3<i32>(-2147483647i, var_2.b.x, 19489i) ^ vec3<i32>(var_2.a, -18950i, var_0.b.x))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -957f), 324f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, -1384f)))))));
    let var_1 = reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(select(arg_1, u_input.b, true), 1i, min(2147483647i, -35733i), -arg_0.a), select(vec4<i32>(arg_2.a, -15846i, arg_0.b.x, arg_1), ~vec4<i32>(arg_1, arg_2.b.x, -2147483647i, arg_0.b.x), true)));
    let var_2 = abs(4294967295u);
    let var_3 = all(vec2<bool>(true, true));
    var var_4 = ~_wgslsmith_mult_u32(1u, ~u_input.c);
    return 320f;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = select(select(vec4<bool>(!arg_2.x, all(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), _wgslsmith_f_op_f32(floor(arg_0)) == _wgslsmith_f_op_f32(-arg_0), arg_2.x), vec4<bool>(select(arg_2.x, true, select(false, true, arg_2.x)), !all(vec3<bool>(arg_2.x, arg_2.x, false)), !select(true, true, arg_2.x), !(arg_0 <= 1249f)), !(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x))), select(!(!vec4<bool>(arg_2.x, true, true, false)), !vec4<bool>(arg_2.x, 55053u >= u_input.e, true, any(arg_2)), arg_2.x), select(select(!(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), !(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), !vec4<bool>(arg_2.x, true, arg_2.x, false)), select(select(!vec4<bool>(arg_2.x, false, arg_2.x, false), select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, false, false), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), select(vec4<bool>(arg_2.x, true, true, true), !vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, true, true, false)), !vec4<bool>(true, true, false, arg_2.x)), select(arg_2.x, arg_2.x, arg_2.x)));
    var_1 = select(vec4<bool>(arg_2.x, var_1.x, !any(!arg_2), false), vec4<bool>(false, arg_2.x, all(vec4<bool>(true, var_1.x, var_1.x, false)) != !all(arg_2.yx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != 709f), select(!(!(!vec4<bool>(false, true, arg_2.x, var_1.x))), !vec4<bool>(!arg_2.x, var_1.x, arg_3.c <= var_0.c, 0u != arg_3.c), false));
    var var_2 = Struct_1(arg_3.b.x, vec2<i32>(arg_3.b.x, _wgslsmith_mod_i32(u_input.d, var_0.b.x)), _wgslsmith_dot_vec2_u32(~arg_1, vec2<u32>(~(~arg_3.c), 1u)));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_1(_wgslsmith_mult_i32(arg_3.a, ~_wgslsmith_clamp_i32(var_2.b.x, u_input.b, _wgslsmith_mult_i32(33509i, arg_3.a))), vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, var_2.b.x), ~1i), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 4294967295u, 22606u, 0u), vec4<u32>(_wgslsmith_div_u32(arg_3.c, 1u), 1u, ~56360u, arg_3.c)));
}

fn func_1() -> vec2<u32> {
    var var_0 = 322f;
    let var_1 = u_input.d >> (u_input.e % 32u);
    var var_2 = func_5(_wgslsmith_div_f32(-958f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_2(vec3<f32>(385f, 313f, -129f), vec2<u32>(10927u, u_input.c), vec3<u32>(u_input.c, 59206u, 65159u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 20825i, var_1, u_input.d), vec4<i32>(-16827i, var_1, -1i, 1i)), func_2(vec3<f32>(760f, -980f, 1037f), vec2<u32>(u_input.c, u_input.a), vec3<u32>(u_input.e, 24402u, 4294967295u))))))), vec2<u32>(31997u, reverseBits(u_input.a)), vec3<bool>(any(vec4<bool>(true, true, true, true)), false & (u_input.a >= max(u_input.c, 37743u)), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), func_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(864f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-971f, 1036f)), _wgslsmith_f_op_f32(floor(-354f))))), ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(54u, u_input.c)), ~vec2<u32>(u_input.a, 81016u)), firstTrailingBit(abs(~vec3<u32>(0u, u_input.a, 4294967295u)))));
    var var_3 = Struct_1(u_input.d, _wgslsmith_div_vec2_i32(-var_2.b, -func_2(vec3<f32>(-184f, -1270f, 1444f), select(vec2<u32>(var_2.c, u_input.e), vec2<u32>(u_input.a, u_input.e), false), ~vec3<u32>(u_input.a, 28286u, 32121u)).b), _wgslsmith_dot_vec4_u32(vec4<u32>(13661u, abs(var_2.c), 1u, firstLeadingBit(4294967295u)) & ~vec4<u32>(var_2.c, var_2.c, 4294967295u, 76145u), firstTrailingBit(~vec4<u32>(u_input.c, var_2.c, 4294967295u, 20910u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a, var_2.c), vec4<u32>(4294967295u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)))));
    let var_4 = !select(select(true, true, false), all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))) || any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), !(u_input.b == var_2.b.x)));
    return vec2<u32>(1u, var_2.c >> (982u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.c), u_input.a), ~(func_1() | vec2<u32>(u_input.a, u_input.e))) & 0u;
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f + 1032f)), vec2<u32>(~1u, u_input.a), !vec3<bool>(all(vec2<bool>(true, true)), abs(4294967295u) > var_0, firstLeadingBit(u_input.c) >= ~u_input.a), Struct_1(_wgslsmith_mod_i32(u_input.b, firstLeadingBit(u_input.d)), vec2<i32>(u_input.b, u_input.d | u_input.b), u_input.a));
    let var_2 = Struct_1(~67496i, ~max(abs(vec2<i32>(2147483647i, 22155i)), var_1.b) << (_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, var_1.c), min(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 7915u), vec2<u32>(27133u, u_input.c)), vec2<u32>(var_0, 78558u))) % vec2<u32>(32u)), _wgslsmith_div_u32(~25170u, 1u));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.a, var_1.a), -2147483647i, firstTrailingBit(20135i), u_input.b), -min(vec4<i32>(-1i, -44290i, 2147483647i, 20832i), vec4<i32>(u_input.d, 11314i, -72567i, -23633i))), vec4<i32>(-1i) * -max(vec4<i32>(var_2.b.x, 29149i, 71503i, var_2.a), vec4<i32>(u_input.b, 1i, 1639i, var_1.a))), -(_wgslsmith_clamp_vec2_i32(~var_2.b, abs(vec2<i32>(u_input.b, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1.a), vec2<i32>(var_1.a, var_1.a))) & reverseBits(_wgslsmith_clamp_vec2_i32(var_2.b, vec2<i32>(-1i, 18888i), vec2<i32>(-8221i, 0i)))), u_input.c);
    let var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(min(1621f, -897f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f - _wgslsmith_f_op_f32(-1227f - -1241f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f))));
    var_1 = func_5(_wgslsmith_f_op_f32(var_3.x + 1429f), ~firstLeadingBit(~(~vec2<u32>(1u, var_0))), vec3<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)), true), func_5(var_3.x, vec2<u32>(countOneBits(77965u), var_0), vec3<bool>(any(vec3<bool>(true, true, true)), select(false, var_2.c > 0u, true), any(vec2<bool>(true, true))), func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_3.zxx, vec3<f32>(1000f, var_3.x, var_3.x))))), ~vec2<u32>(0u, 15819u), _wgslsmith_clamp_vec3_u32(vec3<u32>(23332u, u_input.e, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(113359u, 1u, var_1.c)))));
    var_1 = var_2;
    var var_4 = ~countOneBits(~firstTrailingBit(vec3<u32>(u_input.e, var_1.c, 0u)) | ~firstLeadingBit(vec3<u32>(u_input.a, 2562u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(var_2, var_1.a, Struct_1(-1i, var_2.b, var_1.c))))))) + var_3.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.wz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, 688f) + var_3.zz) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, var_3.x), vec2<f32>(var_3.x, 1567f), vec2<bool>(false, true)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(ceil(546f)))))));
}

