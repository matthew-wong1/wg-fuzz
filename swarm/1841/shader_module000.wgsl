struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1139f, -1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 174f) * _wgslsmith_f_op_f32(-514f + -303f)) - _wgslsmith_f_op_f32(arg_0 + arg_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-120f, arg_0)), -431f, _wgslsmith_f_op_f32(max(arg_0, -414f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1751f))))));
    var var_1 = vec4<bool>(any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), true, !(_wgslsmith_mod_u32(1u, u_input.b << (0u % 32u)) < _wgslsmith_add_u32(firstTrailingBit(u_input.c.x), reverseBits(0u))), true);
    var_1 = vec4<bool>(-2126f < _wgslsmith_f_op_f32(abs(arg_0)), false, !(!any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))) & ((_wgslsmith_f_op_f32(var_0.x * 920f) >= 175f) == (var_1.x && var_1.x)), var_1.x);
    let var_2 = !(!select(vec4<bool>(true, true, var_1.x, u_input.b > u_input.c.x), vec4<bool>(true, true, !var_1.x, true), vec4<bool>(any(vec4<bool>(var_1.x, false, var_1.x, false)), !var_1.x, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), true)));
    return var_1.yzz;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = true & all(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1704f * -1000f) - _wgslsmith_f_op_f32(584f * 1000f))));
    let var_1 = Struct_5(_wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(93080u, u_input.c.x)), u_input.c.xx), arg_0 | -2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-730f, -180f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 780f))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(271f, -211f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(185f, -695f)))))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_1.x, -2147483647i), arg_1.x), _wgslsmith_add_vec2_i32(vec2<i32>(-19851i, arg_1.x), arg_1)), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), func_3(_wgslsmith_f_op_f32(-562f + 706f)).x, true, _wgslsmith_add_i32(arg_1.x, -66071i) < select(0i, 2913i, true)), 29357u), Struct_4(Struct_2(22701u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, -859f) + vec2<f32>(2196f, -468f)), vec2<i32>(arg_1.x, 21643i), vec4<bool>(true, true, true, true), u_input.c.x))));
    let var_2 = Struct_1(var_1.c.a, vec2<i32>(~arg_0 >> (~u_input.a.x % 32u), select(min(var_1.c.b.x, var_1.b), max(var_1.d.a.b.b.x, -1i), var_1.d.a.b.b.x <= -24537i)) << (_wgslsmith_mult_vec2_u32(u_input.a.ww, countOneBits(u_input.a.zx & var_1.a)) % vec2<u32>(32u)), select(select(!select(vec4<bool>(var_1.d.a.b.c.x, var_1.d.a.b.c.x, true, var_1.c.c.x), vec4<bool>(true, var_1.c.c.x, var_1.c.c.x, false), var_1.d.a.b.c), !var_1.c.c, vec4<bool>(true, any(var_1.d.a.b.c.wzw), false, !var_1.c.c.x)), select(var_1.c.c, select(var_1.c.c, !var_1.d.a.b.c, true), true), true), ~var_1.a.x);
    var_0 = false;
    var_0 = all(!var_1.d.a.b.c.wxy) & var_1.d.a.b.c.x;
    return reverseBits(countOneBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.x, arg_0, -1984i), vec3<i32>(arg_0, var_2.b.x, arg_1.x)) >> (vec3<u32>(~65969u, abs(var_1.d.a.a), ~var_2.d) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(countOneBits(~(~_wgslsmith_add_u32(arg_2.a, arg_1.x))), _wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(u_input.b, ~u_input.a.x)));
    var var_1 = Struct_5(~(_wgslsmith_mod_vec2_u32(arg_1.xz, u_input.c.xy) & arg_1.zz), arg_2.b.b.x, Struct_1(arg_2.b.a, vec2<i32>(6743i, -2147483647i), vec4<bool>(arg_2.b.c.x, true, arg_2.b.c.x, true), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, 1u), 1u)), Struct_4(arg_2));
    var_1 = Struct_5(arg_1.zy, i32(-1i) * -1i, arg_2.b, Struct_4(Struct_2(0u & _wgslsmith_div_u32(25072u, arg_2.b.d), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_2.b.a)), ~var_1.d.a.b.b, !var_1.d.a.b.c, ~u_input.a.x))));
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(39171u, _wgslsmith_mult_u32(arg_2.a, 1u)), ~(~vec2<u32>(36943u, 32044u))), Struct_1(arg_2.b.a, arg_0.yy, vec4<bool>(true, true, true, var_1.c.c.x || (arg_1.x >= 78552u)), max(0u >> (var_1.d.a.a % 32u), 14419u)));
    let var_3 = vec2<i32>(-2147483647i, ~arg_0.x);
    return var_1.c;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(select(arg_3.x, 4294967295u | arg_3.x, false || (_wgslsmith_f_op_f32(f32(-1f) * -1002f) == _wgslsmith_f_op_f32(trunc(2090f)))), func_4(func_2(_wgslsmith_mod_i32(arg_0.a.b.b.x, ~(-1i)), abs(max(arg_0.a.b.b, arg_0.a.b.b))), _wgslsmith_mult_vec3_u32(u_input.a.wzw, countOneBits(vec3<u32>(arg_0.a.b.d, arg_2.x, arg_2.x)) & (vec3<u32>(19557u, arg_2.x, arg_2.x) ^ arg_2)), Struct_2(abs(u_input.c.x), Struct_1(_wgslsmith_div_vec2_f32(arg_0.a.b.a, vec2<f32>(266f, -392f)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 4144i), vec2<i32>(arg_0.a.b.b.x, 14325i)), arg_0.a.b.c, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-762f)) - _wgslsmith_f_op_f32(select(arg_0.a.b.a.x, 674f, arg_1.x)))));
    var_0 = Struct_2(1u, func_4(~_wgslsmith_mult_vec3_i32(vec3<i32>(27680i, var_0.b.b.x, arg_0.a.b.b.x) >> (vec3<u32>(arg_2.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.b.x, arg_0.a.b.b.x, var_0.b.b.x), vec3<i32>(arg_0.a.b.b.x, var_0.b.b.x, -14018i))), vec3<u32>(4294967295u, arg_0.a.b.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(arg_3.x, arg_2.x, 0u)), 1u)), Struct_2(~abs(arg_2.x), func_4(-vec3<i32>(-2147483647i, arg_0.a.b.b.x, arg_0.a.b.b.x), vec3<u32>(40874u, 34640u, u_input.a.x), Struct_2(var_0.b.d, Struct_1(vec2<f32>(2274f, 1780f), arg_0.a.b.b, vec4<bool>(var_0.b.c.x, false, false, arg_1.x), 1u)), var_0.b.a.x)), arg_0.a.b.a.x));
    let var_1 = true;
    var var_2 = vec2<bool>(!var_0.b.c.x, true);
    var_2 = func_4(countOneBits((firstTrailingBit(vec3<i32>(1i, 0i, 13882i)) & (vec3<i32>(arg_0.a.b.b.x, -2147483647i, -81894i) | vec3<i32>(var_0.b.b.x, 20994i, arg_0.a.b.b.x))) << ((~u_input.c.yxz << (_wgslsmith_mult_vec3_u32(arg_2, u_input.a.yyx) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(~(~1u), min(abs(29201u), ~38098u)), abs(_wgslsmith_div_u32(64739u, ~1u)), func_4(select(_wgslsmith_mod_vec3_i32(vec3<i32>(13378i, var_0.b.b.x, var_0.b.b.x), vec3<i32>(var_0.b.b.x, -61125i, arg_0.a.b.b.x)), ~vec3<i32>(-2147483647i, arg_0.a.b.b.x, arg_0.a.b.b.x), arg_0.a.b.c.xwz), vec3<u32>(~0u, arg_2.x | 28140u, 4294967295u), arg_0.a, _wgslsmith_f_op_f32(floor(-560f))).d), Struct_2(var_0.a, func_4(-firstLeadingBit(vec3<i32>(var_0.b.b.x, var_0.b.b.x, 0i)), _wgslsmith_sub_vec3_u32(u_input.a.xzz << (vec3<u32>(var_0.a, u_input.b, arg_2.x) % vec3<u32>(32u)), vec3<u32>(arg_3.x, 32369u, arg_3.x)), Struct_2(~1u, arg_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, arg_0.a.b.a.x)))), 1666f).c.yw;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a * vec2<f32>(var_0.b.a.x, -339f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-845f, 851f) - arg_0.a.b.a))), var_0.b.b, vec4<bool>(arg_0.a.b.c.x, arg_3.x >= ~arg_2.x, !arg_1.x == arg_1.x, var_2.x), select(arg_2.x, 1u ^ _wgslsmith_mult_u32(u_input.b, arg_2.x), !(!arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b.a))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = firstTrailingBit(arg_1.a.b.x);
    let var_1 = arg_1;
    let var_2 = !vec3<bool>(var_1.a.c.x, true, arg_1.a.c.x & false);
    var var_3 = func_4(vec3<i32>(firstTrailingBit(var_1.a.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.b.x, -34651i, arg_1.a.b.x, var_1.a.b.x) ^ vec4<i32>(arg_1.a.b.x, -48020i, arg_1.a.b.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.b.x, arg_1.a.b.x, 0i, var_1.a.b.x), vec4<i32>(arg_1.a.b.x, 1i, arg_1.a.b.x, arg_1.a.b.x)), vec4<i32>(var_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, -4600i)), -firstTrailingBit(vec4<i32>(arg_1.a.b.x, arg_1.a.b.x, 0i, var_1.a.b.x))), var_1.a.b.x), ~(~(~vec3<u32>(0u, 40755u, u_input.c.x))), Struct_2(1u, var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.a.x, arg_1.b.x) + _wgslsmith_f_op_f32(-arg_1.a.a.x))))));
    let var_4 = abs(vec4<u32>(_wgslsmith_sub_u32(~var_1.a.d, 1u & var_1.a.d), ~(~1u), 0u, 1u));
    return Struct_3(func_1(Struct_4(Struct_2(9169u, Struct_1(vec2<f32>(-157f, -1040f), var_1.a.b, vec4<bool>(var_3.c.x, arg_1.a.c.x, var_1.a.c.x, var_3.c.x), u_input.c.x))), var_3.c.xzx, vec3<u32>(select(~u_input.a.x, 0u, false), ~(~25044u), var_3.d), vec4<u32>(~u_input.a.x, ~59109u, var_3.d, ~4294967295u) ^ (abs(u_input.c) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.d, var_1.a.d, 18515u, var_1.a.d), vec4<u32>(28871u, var_1.a.d, 1u, 1u)))).a, arg_1.b);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_5(vec2<u32>(arg_0.a.d, reverseBits(~(~4294967295u))), -1i, arg_0.a, Struct_4(Struct_2(1u, arg_0.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, _wgslsmith_f_op_f32(1000f + arg_0.b.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, arg_0.b.x) * var_0.d.a.b.a))))) - vec2<f32>(202f, var_0.d.a.b.a.x)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1936f * var_0.d.a.b.a.x) * 272f)), var_0.c.a.x));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(abs(arg_0.a.a));
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.c.a);
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.a.a.x)), _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - 1171f) + func_5(1843f, arg_0).b.x)), ~(-(vec2<i32>(31082i, -41548i) >> (vec2<u32>(arg_0.a.d, arg_0.a.d) % vec2<u32>(32u)))), vec4<bool>(false & arg_1, var_2.a.c.x, !(!arg_1), arg_1), 30106u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.a + var_2.b))))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))), arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(1000f, -2470f, -1016f))), var_1)), vec3<f32>(arg_0.a.x, _wgslsmith_div_f32(func_1(Struct_4(Struct_2(arg_0.d, Struct_1(arg_1.a.a, vec2<i32>(arg_1.a.b.x, arg_0.b.x), vec4<bool>(var_0, true, arg_0.c.x, false), 1u))), arg_0.c.zzy, u_input.a.xzz, vec4<u32>(1u, 9722u, 25880u, arg_3.x)).a.a.x, func_5(3232f, Struct_3(Struct_1(arg_1.a.a, vec2<i32>(arg_0.b.x, arg_0.b.x), arg_1.a.c, 1u), vec2<f32>(-386f, arg_0.a.x))).a.a.x), 290f)) * var_1);
    var var_3 = arg_0;
    var var_4 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.d, abs(u_input.b << (arg_0.d % 32u))), _wgslsmith_sub_vec2_u32(select(arg_3, u_input.c.xx, vec2<bool>(true, false)), max(u_input.c.xw, ~arg_3))), -18569i, arg_0, Struct_4(Struct_2(countOneBits(arg_1.a.d >> (56511u % 32u)), func_5(func_1(Struct_4(Struct_2(var_3.d, arg_0)), var_3.c.zyy, u_input.a.xwz, u_input.c).b.x, func_5(496f, arg_1)).a)));
    return func_6(Struct_3(func_1(var_4.d, select(func_3(arg_1.b.x), func_6(arg_1, true, u_input.a.zww).a.c.zxx, true), vec3<u32>(~var_4.c.d, ~var_4.a.x, 0u), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.a, vec4<u32>(arg_3.x, var_3.d, arg_1.a.d, 8471u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_4.c.d, 1u, arg_3.x), vec4<u32>(4294967295u, 0u, u_input.b, 15417u)) % vec4<u32>(32u))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.a.a))))), true, vec3<u32>(var_3.d, 77005u, ~(arg_3.x | 45111u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(104f, 288f)), -993f)) < -1081f);
    var var_1 = Struct_3(func_7(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1147f, 170f) * vec2<f32>(206f, -658f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1348f, -1647f))), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(26919i, -52368i), vec2<i32>(-3704i, 1i), vec2<i32>(0i, -39275i))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), u_input.b >> (33890u % 32u)), func_6(func_5(540f, func_1(Struct_4(Struct_2(1u, Struct_1(vec2<f32>(1732f, -425f), vec2<i32>(-15061i, 4381i), vec4<bool>(true, true, false, false), 6698u))), vec3<bool>(false, false, false), u_input.c.xyz, vec4<u32>(u_input.a.x, u_input.b, 1u, 54660u))), false, ~(vec3<u32>(u_input.a.x, 79774u, u_input.c.x) >> (vec3<u32>(u_input.a.x, 14533u, 45436u) % vec3<u32>(32u)))), _wgslsmith_add_vec2_i32(func_4(vec3<i32>(2147483647i, 18744i, -11172i), vec3<u32>(0u, 1u, 54217u), Struct_2(u_input.a.x, Struct_1(vec2<f32>(-1187f, 303f), vec2<i32>(16595i, -1912i), vec4<bool>(false, true, false, true), 4294967295u)), -251f).b, firstTrailingBit(vec2<i32>(-3358i, 53077i))) & ~vec2<i32>(0i, 18890i), vec2<u32>(14217u, u_input.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-670f)) - _wgslsmith_f_op_f32(ceil(376f))), 1808f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-141f - 387f), _wgslsmith_f_op_f32(f32(-1f) * -491f)))));
    var var_2 = u_input.c | u_input.a;
    var_0 = (var_1.a.b.x > var_1.a.b.x) | func_7(var_1.a, Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(-var_1.a.a)), var_1.a.b, u_input.a.wx).c.x;
    var var_3 = max(var_2.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~func_7(var_1.a, Struct_3(var_1.a, var_1.b), var_1.a.b, vec2<u32>(1u, 49423u)).b.x ^ func_4(-vec3<i32>(-2147483647i, 47930i, var_1.a.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(22761u, 6051u, var_1.a.d), var_2.xxx, vec3<u32>(var_2.x, var_1.a.d, var_2.x)), Struct_2(var_1.a.d, var_1.a), _wgslsmith_f_op_f32(-var_1.a.a.x)).b.x, -var_1.a.b.x, i32(-1i) * -(-4945i | var_1.a.b.x), _wgslsmith_div_i32(~var_1.a.b.x, var_1.a.b.x) | min(select(21408i, -7498i, false), 31638i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) + -392f), _wgslsmith_clamp_vec3_i32(~countOneBits(vec3<i32>(4536i, var_1.a.b.x, -2147483647i)) & countOneBits(-vec3<i32>(-1i, 0i, 0i)), -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.b.x, var_1.a.b.x, -2147483647i) | vec3<i32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), reverseBits(vec3<i32>(-1i, var_1.a.b.x, -1i))), select(abs(abs(vec3<i32>(var_1.a.b.x, -26816i, var_1.a.b.x))), max(vec3<i32>(var_1.a.b.x, -2147483647i, -28732i), vec3<i32>(-1i, var_1.a.b.x, var_1.a.b.x)) ^ vec3<i32>(16921i, var_1.a.b.x, 1i), select(var_1.a.c.ywx, !vec3<bool>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x), select(var_1.a.c.wzy, var_1.a.c.yxy, var_1.a.c.zwz)))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1257f));
}

