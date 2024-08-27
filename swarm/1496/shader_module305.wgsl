struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = min(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 1u, 4294967295u), select(vec3<u32>(29718u, u_input.a, ~u_input.a), ~vec3<u32>(0u, 0u, u_input.a), vec3<bool>(false, arg_3.x, true))), vec3<u32>(abs(25196u), 17414u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ reverseBits(vec3<u32>(0u, u_input.a, u_input.a)), ~min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 66185u, 7931u)))));
    let var_1 = Struct_4(arg_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)), 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_div_f32(-1000f, 413f)))));
    let var_3 = vec4<i32>(-7296i, _wgslsmith_sub_i32(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(4371i, -1i, 2147483647i, -2147483647i), vec4<i32>(-1633i, -1i, 4797i, -16095i))), ~1i), 2147483647i, _wgslsmith_mod_i32(-19860i, -1i));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))), 509f, 1314f, _wgslsmith_div_f32(-261f, 212f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(396f, 823f, var_2.x, var_2.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 408f, 1100f, 290f))), vec4<f32>(var_2.x, var_2.x, -882f, -673f), !vec4<bool>(arg_1, false, true, arg_0.x))))) + vec4<f32>(1032f, 1343f, -1346f, var_2.x)));
    return select(vec3<bool>(true, false, arg_0.x), select(select(select(!arg_3, !vec3<bool>(arg_2.a, false, arg_0.x), arg_2.a), vec3<bool>(true, !arg_3.x, arg_3.x | false), vec3<bool>(true, arg_3.x && arg_3.x, any(vec2<bool>(true, true)))), arg_3, !arg_3), vec3<bool>(arg_0.x, !(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_3.x, 2147483647i), vec3<i32>(2147483647i, -1i, var_3.x)) > min(var_3.x, 76602i)), 50016u <= ~u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    global1 = 0i ^ _wgslsmith_mult_i32(reverseBits(abs(arg_1.x)), 2147483647i);
    let var_0 = Struct_3(select(select(arg_0.a, !arg_0.a, true), !vec4<bool>(false, arg_3.d.d.x, arg_3.d.d.x, !arg_3.d.d.x), all(arg_3.d.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-621f, -1395f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.c.x, 2120f), arg_0.b)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, 469f), arg_3.c.wy))) - _wgslsmith_f_op_vec2_f32(step(arg_3.c.yx, arg_3.c.wy)))), _wgslsmith_div_vec4_u32(arg_0.c, ~(~countOneBits(vec4<u32>(1u, 2029u, arg_3.a.x, 58898u)))), Struct_2(arg_0.c.zx, 53297u, _wgslsmith_div_vec4_f32(vec4<f32>(353f, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.d.c), Struct_1(arg_3.d.a, ~(vec3<i32>(arg_1.x, 16748i, -1i) << (arg_3.d.c % vec3<u32>(32u))), vec3<u32>(arg_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(81203u, u_input.a, arg_0.d.d.c.x), vec3<u32>(u_input.a, arg_3.d.c.x, u_input.a)), _wgslsmith_mod_u32(4294967295u, arg_3.a.x)), !select(vec3<bool>(arg_3.d.d.x, arg_0.a.x, true), vec3<bool>(false, false, true), arg_3.d.d), _wgslsmith_add_i32(max(arg_1.x, -1i), -30713i))));
    let var_1 = arg_0;
    global1 = arg_1.x;
    var var_2 = var_1.a.yx;
    return select(select(arg_0.a, select(arg_0.a, var_1.a, select(select(arg_0.a, vec4<bool>(arg_0.d.d.d.x, var_2.x, false, false), false), var_1.a, var_0.a.x)), select(var_1.a, var_1.a, var_1.d.a.x >= var_1.d.b)), select(!select(!var_1.a, var_0.a, !var_2.x), vec4<bool>(var_1.d.d.d.x, any(select(vec2<bool>(false, true), vec2<bool>(arg_0.a.x, arg_3.d.d.x), arg_3.d.d.yz)), true, var_1.d.d.d.x), (var_1.d.d.e == var_0.d.d.e) != false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(956f - 1f), _wgslsmith_div_f32(1105f, _wgslsmith_f_op_f32(f32(-1f) * -725f)))) >= _wgslsmith_f_op_f32(abs(277f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_0;
    global0 = false;
    var var_1 = Struct_3(func_4(Struct_3(select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(arg_1.x, arg_0.a, true, true), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec4<u32>(0u, 51442u, ~u_input.a, ~1981u), Struct_2(~vec2<u32>(u_input.a, 1u), u_input.a << (u_input.a % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 1287f, 228f, 1000f)), Struct_1(-1000f, vec3<i32>(arg_2.x, -1i, arg_2.x), vec3<u32>(4294967295u, u_input.a, 1u), vec3<bool>(true, true, false), arg_2.x))), vec4<i32>(-1i) * -(vec4<i32>(-26397i, -76210i, arg_2.x, 2147483647i) | vec4<i32>(arg_2.x, -1i, arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1737f, -2149f)))), Struct_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(u_input.a, 1u)), ~u_input.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-795f, -135f, 450f, 2048f))), vec4<f32>(-1000f, 2535f, 276f, 160f))), Struct_1(-1000f, ~vec3<i32>(-1i, -29620i, 623i), _wgslsmith_mod_vec3_u32(vec3<u32>(71328u, u_input.a, u_input.a), vec3<u32>(4294967295u, 8859u, 17610u)), func_3(vec2<bool>(arg_1.x, arg_1.x), false, arg_0, vec3<bool>(false, arg_1.x, false)), 37532i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, 655f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1507f, -533f), vec2<f32>(341f, -1121f)), arg_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(f32(-1f) * -513f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(196f, 1514f), vec2<f32>(-1077f, 1291f), true)))))), ~(~select(abs(vec4<u32>(1199u, 9754u, u_input.a, 20675u)), ~vec4<u32>(0u, 70088u, u_input.a, 19549u), false)), Struct_2(vec2<u32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(32815u, 19975u), vec2<u32>(44272u, u_input.a)))), _wgslsmith_mod_u32(~max(21178u, u_input.a), ~(u_input.a << (1u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, -907f, 395f, 107f) * vec4<f32>(-332f, 197f, 336f, -1640f))) - vec4<f32>(-739f, _wgslsmith_f_op_f32(round(170f)), _wgslsmith_f_op_f32(-1000f * 642f), -1693f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f + 806f) * 180f), min(-arg_2, vec3<i32>(arg_2.x, arg_2.x, arg_2.x)), ~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), !(!vec3<bool>(true, arg_1.x, true)), arg_2.x)));
    global1 = -25063i;
    var var_2 = Struct_3(!(!vec4<bool>(false, true, true, func_4(Struct_3(vec4<bool>(arg_0.a, true, arg_0.a, false), vec2<f32>(var_1.b.x, 1058f), var_1.c, Struct_2(var_1.c.yz, 30365u, var_1.d.c, Struct_1(var_1.b.x, vec3<i32>(21091i, 2147483647i, var_1.d.d.b.x), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, false, arg_1.x), arg_2.x))), vec4<i32>(-1i, 0i, -2147483647i, -1i), -279f, Struct_2(var_1.d.a, u_input.a, var_1.d.c, Struct_1(var_1.d.d.a, vec3<i32>(29744i, arg_2.x, -46929i), vec3<u32>(25086u, 4294967295u, u_input.a), vec3<bool>(var_0.a, false, true), var_1.d.d.e))).x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(814f * _wgslsmith_f_op_f32(abs(-1726f))), _wgslsmith_f_op_f32(step(-269f, -755f))), _wgslsmith_f_op_vec2_f32(-var_1.d.c.zz))), vec4<u32>(4294967295u, select(~var_1.c.x, 1u, all(!var_1.a.zxz)), 7850u, 0u), var_1.d);
    return _wgslsmith_f_op_f32(floor(186f));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1601f, 749f, true)), _wgslsmith_f_op_f32(min(1666f, -529f)), _wgslsmith_f_op_f32(323f * 1424f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), -vec3<i32>(14284i, -4761i, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f * 1653f) + 458f), 646f)));
    var var_1 = -2147483647i;
    global1 = arg_0 << (_wgslsmith_mult_u32(12000u, ~u_input.a) % 32u);
    var var_2 = firstTrailingBit(-27298i);
    let var_3 = Struct_3(func_4(Struct_3(vec4<bool>(u_input.a < u_input.a, var_0.x != -790f, any(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 442f), var_0.xy, vec2<bool>(true, false))) * vec2<f32>(var_0.x, -1000f)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 73867u), vec4<u32>(19316u, u_input.a, u_input.a, 0u)), ~vec4<u32>(u_input.a, 1u, 0u, u_input.a)), Struct_2(vec2<u32>(u_input.a, 26334u), abs(0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 878f)), Struct_1(var_0.x, vec3<i32>(arg_0, arg_0, 2147483647i), vec3<u32>(u_input.a, 0u, 44798u), vec3<bool>(true, false, false), -2147483647i))), ~abs(select(vec4<i32>(-2147483647i, arg_0, -51546i, arg_0), vec4<i32>(arg_0, 9169i, 0i, arg_0), vec4<bool>(true, true, true, false))), var_0.x, Struct_2(vec2<u32>(~1u, _wgslsmith_mod_u32(1u, u_input.a)), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(2081f * var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 114f), Struct_1(-623f, vec3<i32>(arg_0, arg_0, arg_0), ~vec3<u32>(72728u, 0u, u_input.a), vec3<bool>(true, true, false), ~61741i))), vec2<f32>(var_0.x, var_0.x), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(74985u, 0u, u_input.a, u_input.a), vec4<u32>(5199u, u_input.a, 16257u, 4294967295u))), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)) << (reverseBits(min(vec2<u32>(3512u, 6654u), vec2<u32>(775u, 1u))) % vec2<u32>(32u)), 4294967295u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, 920f, 234f, -646f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -255f, var_0.x, -1820f), vec4<f32>(-644f, var_0.x, var_0.x, 1449f))))), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_4(false), vec2<bool>(true, true), min(vec3<i32>(-1i, 29153i, arg_0), vec3<i32>(arg_0, arg_0, arg_0)))), -vec3<i32>(arg_0, arg_0, 1i) >> (vec3<u32>(4294967295u, 1u, 62759u) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(77371u != u_input.a, true, true), min(min(25524i, arg_0), 10381i ^ arg_0))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2268f - 1174f)), _wgslsmith_f_op_f32(-233f + 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1341f)), 1000f)), true))));
    let var_1 = any(func_1(-2147483647i));
    var var_2 = _wgslsmith_sub_i32(~0i, -1i);
    var var_3 = ~firstLeadingBit(0u);
    var var_4 = !var_1;
    var_4 = var_1 | var_1;
    var var_5 = Struct_4(false);
    var var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1333f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-276f)), _wgslsmith_f_op_f32(-340f * 787f)), true)), -135f));
    var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -1430f, var_6.x, -770f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1483f, var_6.x, var_6.x, var_6.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_6.x, -813f, var_6.x, -1045f), vec4<f32>(var_6.x, var_6.x, 1032f, -121f)))), ~1u <= abs(u_input.a)))), vec4<i32>(max(countOneBits(firstLeadingBit(2853i)), -1i), -30316i << (u_input.a % 32u), i32(-1i) * -(~2147483647i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(38105i, -1i, -23744i), vec3<i32>(-8357i, 0i, 25052i), vec3<i32>(0i, -1i, -202i)), select(vec3<i32>(1i, 33582i, 35606i), vec3<i32>(-33645i, -1i, 0i), vec3<bool>(var_1, true, var_1)))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-5067i, 2147483647i, 27738i, -34038i), vec4<i32>(-37674i, -23184i, 0i, 2147483647i)), countOneBits(-4610i), 0i >> (u_input.a % 32u), ~(-2147483647i)) << (~(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (vec4<u32>(u_input.a, 30613u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), 47570u);
}

