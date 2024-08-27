struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = min(select(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -56845i, 11696i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, 1i, 2147483647i)), abs(vec3<i32>(-2147483647i, 1i, 0i))), !any(vec2<bool>(false, arg_0))), vec3<i32>(1i, 1i, 1i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a, 1659u), u_input.b, _wgslsmith_div_u32(abs(1u), 1u)), vec3<u32>(1u, _wgslsmith_div_u32(max(u_input.c, u_input.c), ~u_input.a), ~1u)) % vec3<u32>(32u));
    var var_1 = Struct_1(vec4<u32>(u_input.c, _wgslsmith_add_u32(firstTrailingBit(u_input.a), u_input.c), u_input.b, ~0u), arg_0, abs(_wgslsmith_mult_i32(var_0.x, _wgslsmith_clamp_i32(var_0.x, 0i, var_0.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), ~(~vec2<u32>(68131u, 61819u))), arg_0);
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f * -1792f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), _wgslsmith_f_op_f32(sign(-1212f))), 279f, 1000f), var_0, 28232i, Struct_1(~_wgslsmith_mult_vec4_u32(var_1.a, var_1.a), any(select(vec2<bool>(var_1.e, var_1.b), select(vec2<bool>(arg_0, var_1.b), vec2<bool>(arg_0, var_1.b), vec2<bool>(false, arg_0)), select(vec2<bool>(false, false), vec2<bool>(var_1.b, true), vec2<bool>(false, var_1.b)))), var_0.x, var_1.a.xw, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1495f)))) <= _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-305f * -884f))), Struct_1(vec4<u32>(u_input.b, _wgslsmith_add_u32(49553u, u_input.a), _wgslsmith_clamp_u32(var_1.d.x, var_1.d.x, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.a.x, 37105u), var_1.a.yyy)) >> (select(~var_1.a, vec4<u32>(u_input.a, 31954u, 41814u, var_1.a.x) >> (var_1.a % vec4<u32>(32u)), var_1.c != -2147483647i) % vec4<u32>(32u)), -13853i >= reverseBits(-var_1.c), countOneBits(var_0.x), vec2<u32>(~(u_input.b ^ u_input.a), 1u), arg_0));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-301f, -778f, var_1.e)), -1560f, _wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x) * vec4<f32>(_wgslsmith_f_op_f32(-139f + 570f), 583f, var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x))) * _wgslsmith_f_op_vec4_f32(-var_2.a)), var_2.b, 0i, Struct_1(~_wgslsmith_mult_vec4_u32(var_1.a, abs(vec4<u32>(76397u, var_2.e.d.x, var_1.a.x, 0u))), !(any(vec4<bool>(true, true, false, arg_0)) || true), var_2.d.c, vec2<u32>(_wgslsmith_add_u32(4294967295u ^ var_2.e.a.x, ~63987u), 1u), _wgslsmith_f_op_f32(-var_2.a.x) < -1156f), var_2.d);
    var_1 = Struct_1(var_2.d.a, var_2.e.b, _wgslsmith_sub_i32(-1i >> (~var_1.d.x % 32u), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-28973i, 1i, var_1.c, 61435i), vec4<i32>(-28048i, var_1.c, var_2.c, 0i)), vec4<i32>(-7722i, -29188i, var_0.x, var_2.c))), ~select(_wgslsmith_clamp_vec2_u32(var_2.e.d ^ var_2.e.d, var_2.e.a.wz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), var_2.e.d)), vec2<u32>(_wgslsmith_mod_u32(26000u, var_2.d.d.x), _wgslsmith_mod_u32(var_2.d.d.x, 52756u)), vec2<bool>(var_1.c < 2768i, var_1.e)), arg_0);
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = func_3(true && any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(5218u, u_input.b) ^ vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(18817u, 27306u) % vec2<u32>(32u)), vec2<u32>(u_input.a, 0u)) << (~vec2<u32>(1u, 0u) % vec2<u32>(32u)), firstLeadingBit(select(vec2<u32>(u_input.c, 1u), countOneBits(vec2<u32>(25823u, u_input.c)), true))), _wgslsmith_mod_u32(~0u, 4294967295u));
    var var_2 = true;
    var var_3 = Struct_2(vec4<f32>(-260f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2246f))), _wgslsmith_f_op_f32(max(-553f, _wgslsmith_f_op_f32(-634f * -484f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1685f)), _wgslsmith_f_op_f32(trunc(-866f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1968f - _wgslsmith_f_op_f32(abs(-1046f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1028f * -851f))))), vec3<i32>(1i, ~abs(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i)), max(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(-26773i, -11574i)), 8505i)), -24923i, Struct_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, u_input.a, var_1.x, 1u)) ^ firstLeadingBit(vec4<u32>(83166u, u_input.a, var_1.x, u_input.c)), ~vec4<u32>(0u, u_input.b, var_1.x, 75319u) << (select(vec4<u32>(4294967295u, u_input.a, 0u, 95591u), vec4<u32>(47304u, 4294967295u, 31608u, u_input.a), false) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(6603u, var_1.x, u_input.c, 6082u))), true, -1i & _wgslsmith_sub_i32(~23060i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -27421i, -12549i, -23656i), vec4<i32>(1i, 0i, 21043i, -1i))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(var_1.x, u_input.c), vec2<u32>(33964u, 1u), vec2<bool>(true, false)), vec2<u32>(u_input.c, u_input.a)) ^ max(vec2<u32>(4294967295u, 1u), vec2<u32>(5563u, 30875u) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), select(func_3(false), true, false)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(21572u, _wgslsmith_mult_u32(var_1.x, 15024u), abs(u_input.b), firstTrailingBit(0u)), vec4<u32>(var_1.x | 103525u, _wgslsmith_mult_u32(2705u, 1u), 1u, ~1u)), !(~0u >= ~u_input.a), _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 11492i), vec2<i32>(2147483647i, 50872i)), countOneBits(-vec2<i32>(0i, -2147483647i))), firstLeadingBit(_wgslsmith_mod_vec2_u32(var_1, _wgslsmith_div_vec2_u32(var_1, vec2<u32>(u_input.b, u_input.b)))), func_3(select(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, false)), true))));
    let var_4 = var_3.e.a;
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, -432f, var_3.a.x, -792f))) * var_3.a), vec3<i32>(firstLeadingBit(~33934i), _wgslsmith_mod_i32(-(~(-2147483647i)), -_wgslsmith_mod_i32(var_3.b.x, 28850i)), min(var_3.e.c, _wgslsmith_div_i32(var_3.d.c, 1i))), -(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, -1i, var_3.e.c)), var_3.b | vec3<i32>(var_3.d.c, -2147483647i, var_3.e.c)) << (var_4.x % 32u)), Struct_1(_wgslsmith_clamp_vec4_u32(var_3.e.a, select(firstLeadingBit(var_3.d.a), ~var_3.e.a, false), var_3.d.a), all(!(!vec4<bool>(var_3.e.b, var_3.d.b, var_3.e.e, true))), var_3.b.x | -8547i, ~var_3.d.d, var_3.e.e), Struct_1(var_3.e.a, true, min(_wgslsmith_mod_i32(-13967i, var_3.b.x) ^ (-2147483647i << (var_1.x % 32u)), _wgslsmith_div_i32(-40751i & var_3.b.x, _wgslsmith_mod_i32(var_3.e.c, var_3.d.c))), _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(36940u, 1u), vec2<u32>(1u, var_3.d.d.x))), ~(var_4.wy & var_4.zz), vec2<u32>(57599u, _wgslsmith_div_u32(4294967295u, var_3.e.d.x))), true));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(var_0.a.zz, vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))), 222f)));
    let var_2 = ~4294967295u >> (u_input.b % 32u);
    var var_3 = select(vec4<bool>(true, false, !(-891f <= arg_0.x), false), !select(vec4<bool>(false, var_0.e.b, true, func_3(true)), vec4<bool>(true, func_2().e.b, all(vec2<bool>(var_0.d.e, true)), var_0.d.b), select(vec4<bool>(var_0.d.b, var_0.d.e, false, true), vec4<bool>(false, true, var_0.d.e, var_0.e.b), true)), -16588i == _wgslsmith_dot_vec3_i32(~(-var_0.b), abs(-var_0.b)));
    var_3 = !vec4<bool>(false, !(!var_0.d.e), any(vec4<bool>(var_0.d.b, true, var_0.e.b, func_3(true))), true);
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = arg_1.d;
    let var_1 = arg_1.b;
    var var_2 = -_wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i, var_1.x, ~(-1i)), vec3<i32>(-21410i, 61458i, ~var_0.c)), _wgslsmith_add_vec3_i32(select(arg_3.b, ~vec3<i32>(-32007i, var_1.x, arg_3.d.c), false), arg_1.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_1.a.x))))) * -865f), func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.a - arg_3.a)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f - -715f)) * _wgslsmith_f_op_f32(f32(-1f) * -2147f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(func_4(vec2<i32>(0i, -27803i), func_1(vec4<f32>(-152f, -1169f, -811f, -894f)), func_1(vec4<f32>(851f, -1277f, -1332f, -1121f)).e, func_2()))))));
    var var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) + _wgslsmith_f_op_f32(min(-1019f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + _wgslsmith_div_f32(-1720f, 1712f)))))));
    var var_2 = func_2().d;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c), _wgslsmith_mult_u32(u_input.a, var_2.d.x), 1u, 20715u) >> ((func_2().e.a >> (min(vec4<u32>(u_input.c, 0u, u_input.a, var_2.d.x), var_2.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(firstLeadingBit(10882u), 9684u, u_input.b ^ 32445u, ~u_input.a)) | var_2.d.x;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-895f, -2342f, -348f, 343f), vec4<f32>(-332f, 1312f, 573f, 1000f), vec4<bool>(true, true, true, true)))))), max(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, var_2.c) >> (vec3<u32>(0u, 22725u, 90315u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, var_2.c, var_2.c)), vec3<i32>(-1i) * -vec3<i32>(-1i, 22457i, var_2.c)) & firstLeadingBit(func_2().b), _wgslsmith_mod_i32(var_2.c, firstLeadingBit(i32(-1i) * -var_2.c)), func_2().e, func_1(vec4<f32>(-256f, 1002f, 657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)))).d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~(-select(~vec4<i32>(-2147483647i, -2147483647i, 1i, -37508i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_4.d.c, 2147483647i, var_4.b.x), vec4<i32>(0i, var_4.b.x, var_4.b.x, var_4.d.c), vec4<i32>(var_2.c, 74945i, var_2.c, 0i)), !vec4<bool>(var_2.b, false, var_4.d.e, false))), vec3<i32>(firstTrailingBit(-func_1(var_4.a).e.c), ~var_4.d.c >> (reverseBits(~var_4.d.a.x) % 32u), var_2.c));
}

