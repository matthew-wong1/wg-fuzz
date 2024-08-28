struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<u32>) -> u32 {
    let var_0 = false;
    var var_1 = arg_0.a;
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-firstTrailingBit(u_input.d), 1i, -firstLeadingBit(-9982i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, arg_0.c.x, _wgslsmith_mod_i32(arg_0.c.x, -1i)), _wgslsmith_add_vec3_i32(~arg_0.c.zwy, vec3<i32>(-1i, -66565i, u_input.d))), _wgslsmith_dot_vec4_u32(u_input.c, ~min(vec4<u32>(var_1.b.x, u_input.a.x, 0u, 4294967295u), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x - -1000f) * _wgslsmith_f_op_f32(-var_1.a.x))), Struct_1(firstTrailingBit(arg_0.c.x), arg_0.c.zyz, u_input.c.x, 2171f), Struct_1(u_input.d, min(firstTrailingBit(abs(vec3<i32>(1i, u_input.d, arg_0.c.x))), vec3<i32>(1i, ~2147483647i, 1i)), _wgslsmith_mult_u32(abs(1397u), firstLeadingBit(~var_1.b.x)), 749f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, 1412f, var_1.a.x))))))))));
    var_2 = Struct_2(var_2.c, Struct_1(43219i, -(_wgslsmith_sub_vec3_i32(var_2.a.b, vec3<i32>(54232i, -2147483647i, -1i)) >> (vec3<u32>(var_1.b.x, var_1.b.x, 17239u) % vec3<u32>(32u))), ~1u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, u_input.a.x, 63827u, arg_1.x), vec4<u32>(u_input.c.x, var_1.b.x, 1u, var_1.b.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f * -351f))), Struct_1(-12951i, abs(reverseBits(abs(arg_0.c.yyz))), ~(~arg_0.a.b.x) & 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), var_2.c.d)), _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.a)));
    var_2 = Struct_2(Struct_1(~1i, (arg_0.c.yxz & _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.c.x, u_input.d, u_input.d), vec3<i32>(u_input.d, var_2.c.a, 2147483647i), vec3<i32>(var_2.a.a, var_2.b.a, 0i))) & -reverseBits(vec3<i32>(var_2.c.a, arg_0.c.x, -1i)), 0u, -196f), var_2.c, var_2.a, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1245f))), -251f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f + var_2.c.d) * arg_0.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1294f, -2659f)))))));
    return _wgslsmith_sub_u32(~(~(~countOneBits(arg_0.a.b.x))), firstLeadingBit(_wgslsmith_clamp_u32(0u, select(reverseBits(1u), ~0u, any(arg_0.b.yz)), 1u)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(Struct_2(Struct_1(-2147483647i, abs(vec3<i32>(19192i, u_input.d, u_input.d)), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.c.zx) & ~18552u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-296f))))), Struct_1(u_input.d, vec3<i32>(_wgslsmith_sub_i32(-20068i, -2908i), 1i, _wgslsmith_clamp_i32(-1i, u_input.d, u_input.d)), func_3(Struct_5(Struct_4(vec3<f32>(798f, -357f, 1385f), u_input.a), vec3<bool>(true, false, false), vec4<i32>(u_input.d, u_input.d, -1i, 1i), -983f), vec3<u32>(u_input.c.x, 6034u, 33258u)), 2043f), Struct_1(-2147483647i, vec3<i32>(-u_input.d, -1i, u_input.d), u_input.b, -2212f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, _wgslsmith_f_op_f32(trunc(319f)), _wgslsmith_f_op_f32(f32(-1f) * -912f)))), Struct_2(Struct_1(i32(-1i) * -48936i, ~vec3<i32>(-37306i, u_input.d, u_input.d), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f))), Struct_1(select(u_input.d, u_input.d, false) ^ u_input.d, vec3<i32>(-30345i | u_input.d, -u_input.d, 2147483647i), select(u_input.b, 1u, true) | ~u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(182f)), _wgslsmith_div_f32(-680f, -612f)))), Struct_1(-2147483647i << (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u), -reverseBits(vec3<i32>(0i, -27070i, u_input.d)), select(1u, 1u ^ u_input.a.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2138f + 780f), -2415f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-397f, -1141f, 1403f), vec3<f32>(1000f, -171f, 1330f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1326f, -1212f, -2255f)))))), 19312u, Struct_1(0i, countOneBits(vec3<i32>(u_input.d, u_input.d, u_input.d)) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -14092i), vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -1i)), countOneBits(_wgslsmith_mod_u32(0u ^ u_input.b, ~1u)), _wgslsmith_f_op_f32(ceil(1f))));
    let var_1 = vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.d)), 260f) < _wgslsmith_f_op_f32(round(var_0.d.d)), _wgslsmith_clamp_u32(~24129u | ~var_0.d.c, 9382u, _wgslsmith_div_u32(~var_0.a.c.c, 50049u)) <= (4294967295u | u_input.c.x));
    var var_2 = max(-(-(vec4<i32>(u_input.d, -2147483647i, 28149i, -16807i) >> (u_input.c % vec4<u32>(32u))) << (~(~vec4<u32>(var_0.a.a.c, 4294967295u, 31057u, u_input.a.x)) % vec4<u32>(32u))), vec4<i32>(-1i) * -(~(-vec4<i32>(1i, -14754i, -49901i, -78952i))));
    let var_3 = vec3<f32>(-421f, _wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(trunc(var_0.d.d))), var_0.b.b.d);
    var_2 = firstLeadingBit(max(select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_2.x, var_2.x, -2147483647i, var_0.a.a.a)), ~vec4<i32>(var_2.x, 2147483647i, 0i, -4034i)), ~vec4<i32>(-2147483647i, 2147483647i, u_input.d, 12226i), vec4<bool>(!var_1.x, false, !var_1.x, any(vec4<bool>(false, true, true, true)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.d, 24118i, i32(-1i) * -66216i, ~var_0.d.a), vec4<i32>(-1i, var_0.d.b.x | var_0.d.a, -29015i, _wgslsmith_dot_vec3_i32(var_0.a.b.b, var_2.wzz)), ~(~vec4<i32>(-37292i, var_0.b.a.a, -65313i, 59737i)))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1440f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.a.d.x, var_0.b.d.x)), _wgslsmith_f_op_f32(2172f * var_0.b.a.d))), _wgslsmith_f_op_f32(floor(-579f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.d, var_0.b.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.d, var_0.d.d, 874f) - vec3<f32>(-608f, -1000f, var_3.x)))))), vec3<u32>(_wgslsmith_mod_u32(14652u, 10587u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, var_0.a.c.c, reverseBits(1u)), ~(~u_input.a.x)), u_input.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> Struct_5 {
    var var_0 = Struct_3(Struct_2(arg_1.c, Struct_1(0i, -arg_1.c.b, 4294967295u, 2211f), arg_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(arg_1.c.d, -968f, arg_0.a.x)))) - arg_2.a)), Struct_2(Struct_1(19023i, arg_1.b.b, u_input.b, _wgslsmith_f_op_f32(abs(-913f))), Struct_1(u_input.d, arg_1.a.b, arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-996f)) * _wgslsmith_f_op_f32(ceil(arg_1.d.x)))), Struct_1(max(firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(-1648i, arg_1.b.b.x, u_input.d)), vec3<i32>(2147483647i, -2147483647i, u_input.d) ^ -arg_1.c.b, arg_0.b.x, arg_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(817f)) - _wgslsmith_f_op_f32(-arg_1.b.d)), -283f)), 6571u, Struct_1(-u_input.d, vec3<i32>(-1i) * -arg_1.b.b, 18048u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2264f, arg_1.c.d)), -1513f, true)))));
    var_0 = Struct_3(Struct_2(arg_1.a, Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(-1i), var_0.b.c.b.x >> (arg_1.c.c % 32u), -var_0.a.b.a), _wgslsmith_clamp_vec3_i32(var_0.d.b, _wgslsmith_mod_vec3_i32(var_0.a.c.b, arg_1.a.b), vec3<i32>(arg_1.a.b.x, arg_1.b.a, 2147483647i)), ~var_0.c ^ 10023u, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.c.b.yx, arg_1.b.b.yz), var_0.b.c.b.zz), countOneBits(arg_1.b.b << (vec3<u32>(59025u, arg_2.b.x, 69542u) % vec3<u32>(32u))), ~u_input.c.x, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.a.d)))), Struct_2(Struct_1(1i, select(min(var_0.d.b, vec3<i32>(arg_1.b.b.x, -31812i, arg_1.c.a)), var_0.d.b ^ vec3<i32>(-2147483647i, -1i, -1i), vec3<bool>(true, true, true)), arg_0.b.x, arg_2.a.x), var_0.a.c, Struct_1(-_wgslsmith_dot_vec2_i32(arg_1.c.b.zz, vec2<i32>(var_0.a.a.b.x, 34048i)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-16350i, -48336i, var_0.d.a)), -var_0.d.b, vec3<i32>(-14337i, u_input.d, u_input.d)), ~arg_3, arg_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f * 737f)), arg_2.a.x)), 42013u, arg_1.b);
    var var_1 = 155f;
    var_0 = Struct_3(arg_1, arg_1, ~_wgslsmith_sub_u32(~(4294967295u | u_input.a.x), 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3, 100121u, u_input.c.x), vec4<u32>(arg_3, 1u, 4294967295u, 21436u)) % 32u)), var_0.b.a);
    var_0 = Struct_3(var_0.a, Struct_2(Struct_1(1i << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, arg_3, arg_2.b.x, arg_3)) % 32u), ~(~vec3<i32>(-58947i, -2147483647i, -1i)), ~(~arg_2.b.x), var_0.a.d.x), arg_1.b, Struct_1(1i, (arg_1.c.b >> (arg_2.b % vec3<u32>(32u))) << (min(arg_0.b, arg_2.b) % vec3<u32>(32u)), arg_2.b.x, arg_0.a.x), var_0.a.d), func_3(Struct_5(Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-356f, -1014f, -146f), arg_0.a), vec3<u32>(90373u, 1u, arg_2.b.x)), vec3<bool>(true, true, true), vec4<i32>(1i, var_0.a.a.a, var_0.a.a.a, ~u_input.d), 705f), ~(~vec3<u32>(arg_2.b.x, 59727u, 8601u))), var_0.b.c);
    return Struct_5(Struct_4(arg_2.a, u_input.c.xyw >> (min(_wgslsmith_sub_vec3_u32(arg_0.b, vec3<u32>(0u, 35376u, arg_1.c.c)), vec3<u32>(u_input.c.x, var_0.a.c.c, 49516u)) % vec3<u32>(32u))), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(-26751i != -arg_1.c.a, true, !all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), ~(-select(vec4<i32>(2147483647i, var_0.a.c.b.x, u_input.d, u_input.d) << (vec4<u32>(1u, 41072u, var_0.c, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(u_input.d, u_input.d, 24556i, 1i), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(floor(arg_1.a.d)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    var var_0 = func_4(func_2(), Struct_2(arg_1.a, Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.b.b.x, u_input.d, -10190i)), vec3<i32>(u_input.d, u_input.d, -1i)), firstTrailingBit(arg_1.b.b) & abs(arg_2), 4294967295u, _wgslsmith_f_op_f32(round(arg_1.c.d))), Struct_1(reverseBits(33508i) ^ -arg_2.x, arg_2, 50985u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f + -477f) + _wgslsmith_f_op_f32(exp2(arg_1.a.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d)))), Struct_4(vec3<f32>(arg_1.c.d, -848f, _wgslsmith_f_op_f32(arg_1.d.x - -1079f)), func_2().b), arg_1.c.c);
    var_0 = Struct_5(Struct_4(func_4(var_0.a, Struct_2(arg_1.b, Struct_1(u_input.d, arg_2, 38671u, 1164f), Struct_1(var_0.c.x, var_0.c.yzw, 27663u, arg_1.b.d), var_0.a.a), var_0.a, var_0.a.b.x).a.a, ~u_input.c.yyy), !select(vec3<bool>(var_0.b.x, 43706u > var_0.a.b.x, true), vec3<bool>(true, true, true & var_0.b.x), var_0.b), ~_wgslsmith_sub_vec4_i32(-min(var_0.c, vec4<i32>(arg_2.x, arg_1.b.a, u_input.d, -5202i)), -vec4<i32>(u_input.d, var_0.c.x, var_0.c.x, 2147483647i) | func_4(var_0.a, arg_1, var_0.a, 1u).c), arg_1.b.d);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_div_f32(arg_1.d.x, arg_1.b.d)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d.x, -1581f), _wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(var_0.a.a.x * -217f))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    return Struct_1(~abs(u_input.d & u_input.d) | u_input.d, vec3<i32>(u_input.d, u_input.d, (-1i >> (u_input.c.x % 32u)) >> (u_input.b % 32u)) | _wgslsmith_div_vec3_i32(~vec3<i32>(65043i, u_input.d, -2147483647i), -vec3<i32>(u_input.d, 49290i, u_input.d)), _wgslsmith_dot_vec3_u32(u_input.a, ~func_2().b), _wgslsmith_f_op_f32(max(arg_1.x, -1153f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_5(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), all(vec4<bool>(true, false, false, false))), vec3<f32>(-565f, _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_2(Struct_1(u_input.d, vec3<i32>(u_input.d, -47166i, 76235i), 48747u, -844f), Struct_1(u_input.d, vec3<i32>(u_input.d, u_input.d, u_input.d), u_input.b, -1176f), Struct_1(40740i, vec3<i32>(-2147483647i, u_input.d, -33682i), u_input.b, -665f), vec3<f32>(138f, 1000f, -1145f)), vec3<i32>(2147483647i, u_input.d, -2147483647i))), -638f)), Struct_1(-26462i, -select(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(4238i, 10153i, u_input.d), true), ~_wgslsmith_mod_u32(48812u, u_input.b), -822f), Struct_1(~22774i << (1u % 32u), vec3<i32>(-u_input.d, ~2147483647i, firstTrailingBit(-7067i)), 25904u, -196f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1305f, 603f, 1591f), vec3<f32>(368f, 1684f, -450f))))))), Struct_2(Struct_1(_wgslsmith_add_i32(u_input.d & 54625i, ~(-27896i)), select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 10614i, u_input.d), vec3<i32>(-7575i, -41139i, u_input.d)), abs(vec3<i32>(0i, u_input.d, u_input.d)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), _wgslsmith_mult_u32(1u, ~20778u), 449f), func_5(vec4<bool>(func_4(Struct_4(vec3<f32>(787f, 841f, -813f), vec3<u32>(1u, u_input.a.x, 18711u)), Struct_2(Struct_1(u_input.d, vec3<i32>(-1i, -290i, 32587i), 4845u, -367f), Struct_1(-21968i, vec3<i32>(1i, -27979i, u_input.d), 1u, 485f), Struct_1(-1i, vec3<i32>(u_input.d, u_input.d, u_input.d), 0u, -1000f), vec3<f32>(620f, -409f, 830f)), Struct_4(vec3<f32>(149f, 1261f, 688f), u_input.a), 13094u).b.x, true, true, true), vec3<f32>(-497f, _wgslsmith_div_f32(-998f, 1530f), 823f)), func_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, -846f, 494f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-708f, -969f, 431f))))))), u_input.b, Struct_1(71198i >> (_wgslsmith_add_u32(1u, u_input.a.x) % 32u), firstLeadingBit(~vec3<i32>(1i, 2147483647i, u_input.d)), u_input.c.x, 370f));
    let var_1 = func_4(func_2(), var_0.b, func_4(func_2(), Struct_2(Struct_1(var_0.a.c.a, var_0.a.a.b, 1u, var_0.a.c.d), var_0.a.a, Struct_1(-var_0.b.a.b.x, func_5(vec4<bool>(true, false, false, true), vec3<f32>(var_0.b.a.d, var_0.d.d, 364f)).b, var_0.a.b.c, 1354f), var_0.b.d), Struct_4(var_0.a.d, abs(u_input.c.xzy >> (u_input.c.yzx % vec3<u32>(32u)))), ~15772u).a, _wgslsmith_mult_u32(func_2().b.x, ~48430u));
    var var_2 = var_0.b;
    var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(380f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.d.x, -1671f)), _wgslsmith_f_op_f32(abs(var_2.c.d)))))), var_2.d.x, _wgslsmith_f_op_f32(var_2.a.d + var_0.a.b.d)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d + vec3<f32>(var_1.a.a.x, 589f, -2993f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.a.a))))));
    let var_4 = var_0.a;
    var_2 = var_0.a;
    var var_5 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(2156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f + var_2.a.d))), -1080f, var_1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3)), vec3<bool>(false, all(!vec2<bool>(var_1.b.x, var_1.b.x)), false)));
    var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a | ((u_input.a & vec3<u32>(73103u, u_input.b, 43781u)) & ~vec3<u32>(var_2.c.c, 4294967295u, 4294967295u))));
}

