struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = vec4<i32>(0i, ~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(0i, u_input.a.x)), u_input.a.x)), i32(-1i) * -9635i, ~_wgslsmith_div_i32(abs(select(u_input.a.x, -12230i, arg_0)), u_input.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-170f * -935f), -100f, true)), 2136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)))), (565f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-651f, -105f)), _wgslsmith_f_op_f32(-742f + 1199f), arg_0))) || arg_0, 7726u, vec2<i32>(-1i, _wgslsmith_mult_i32(abs(~(-15099i)), u_input.a.x >> (49346u % 32u))));
    let var_2 = Struct_3(Struct_2(var_1, var_1), _wgslsmith_add_vec3_i32(u_input.a ^ u_input.a, _wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(-4856i, u_input.a.x, 2147483647i))), vec4<f32>(-226f, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f * 1f)), var_1.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.c), abs(vec4<u32>(1u, var_1.c, 36180u, var_1.c))), _wgslsmith_add_u32(~var_1.c, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, var_1.c)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.a.b.a.yy)) + vec2<f32>(810f, var_1.a.x)), var_2.c.xw)))));
    let var_4 = var_2.a.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a + var_2.a.a.a) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1470f, var_3.x, -478f), _wgslsmith_f_op_vec3_f32(step(var_4.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_2.c.x, -1000f) + _wgslsmith_f_op_vec3_f32(abs(var_4.a))))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(arg_3.a.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * arg_2) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1913f, arg_3.a.a.a.x, 215f))))), all(vec4<bool>(false, false, arg_3.a.b.b, false)), 199385u, -min(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.b.x, 2945i), u_input.a.zy))), arg_3.a.b);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false)))), arg_3.a.b.b, _wgslsmith_sub_u32(4294967295u, 5533u), var_0.b.d), ~839u, Struct_1(arg_3.a.a.a, !(var_0.a.b & true), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 54246u, 73011u), vec3<u32>(1u, 34434u, 0u))), vec2<i32>(35204i, i32(-1i) * -55613i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1879f) * _wgslsmith_f_op_f32(abs(769f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1464f))) - arg_2.x);
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1250f - _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -710f), var_1.c.b, abs(~0u), var_1.a.d);
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(var_3.b)).x)))));
    return true;
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = abs(vec2<i32>(42801i, 13953i));
    var var_1 = select(vec2<bool>(true, false), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true))), !func_2(vec3<f32>(-1743f, -149f, -745f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, 861f, 213f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1369f, -465f))), Struct_3(Struct_2(Struct_1(vec3<f32>(1319f, 1369f, -599f), true, 14568u, vec2<i32>(-7545i, -29156i)), Struct_1(vec3<f32>(-881f, -1000f, 256f), false, 4294967295u, vec2<i32>(var_0.x, -2147483647i))), vec3<i32>(var_0.x, var_0.x, 1i), vec4<f32>(304f, -146f, 1000f, -993f), 49155u))));
    var var_2 = vec3<u32>(33624u, _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(0u, 4294967295u, 0u, 11424u)) >> (select(vec4<u32>(0u, 23926u, 1u, 69981u), vec4<u32>(97254u, 5170u, 4294967295u, 41675u), var_1.x) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(4294967295u, 25575u, 26179u, 1u)) ^ select(vec4<u32>(0u, 0u, 66962u, 50329u), vec4<u32>(1u, 0u, 4294967295u, 1912u), true)), abs(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_div_u32(4294967295u, 41411u))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, _wgslsmith_f_op_f32(trunc(-649f)), -407f))), select(false, !any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, true))), !select(!var_1.x, true, any(vec2<bool>(var_1.x, var_1.x)))), var_2.x, vec2<i32>(reverseBits(i32(-1i) * -arg_0), -var_0.x | -42700i));
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(var_2.x, 8972u, var_2.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.c, 0u, 0u), vec3<u32>(4294967295u, 1u, var_3.c)), vec3<bool>(false, true, false)), max(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_3.c), vec3<u32>(var_3.c, var_3.c, 0u)), ~select(vec3<u32>(0u, var_2.x, var_3.c), vec3<u32>(var_2.x, 65872u, var_3.c), vec3<bool>(var_3.b, var_3.b, var_3.b)))));
    return select(-(vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_3.d.x, -19011i, -10918i)), max(~min(vec4<i32>(var_3.d.x, 1i, var_0.x, 45662i), countOneBits(vec4<i32>(15987i, var_3.d.x, var_0.x, 47692i))), countOneBits(~(vec4<i32>(0i, -2147483647i, arg_0, -11459i) << (vec4<u32>(var_2.x, 12292u, var_2.x, var_4) % vec4<u32>(32u))))), all(!vec2<bool>(true, var_1.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, -592f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(step(arg_1.a, arg_1.a)), false)), arg_1.b, arg_1.c ^ arg_1.c, countOneBits(~(-arg_1.d))), arg_1);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_0.a.a)), all(select(!vec3<bool>(var_0.b.b, arg_1.b, var_0.a.b), vec3<bool>(false, arg_1.b, var_0.b.b), vec3<bool>(true, true, true))), countOneBits(var_0.b.c), ~vec2<i32>(-41688i, 26289i)), _wgslsmith_add_u32(var_0.b.c, var_0.a.c << (48528u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, var_0.a.a.x, var_0.a.a.x)), var_0.a.a) - var_0.a.a), all(!select(vec4<bool>(true, false, true, var_0.b.b), vec4<bool>(false, true, true, var_0.b.b), false)), 38549u << (_wgslsmith_mult_u32(~var_0.a.c, var_0.b.c) % 32u), ~vec2<i32>(2147483647i, 1i)));
    let var_2 = vec4<f32>(-1193f, 1f, _wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), -195f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.a.x + -1000f))))));
    var var_3 = -arg_0;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(func_3(arg_1.b)))), var_1.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.c.c, _wgslsmith_mod_u32(10896u, var_1.b), _wgslsmith_mult_u32(var_0.b.c, 10839u), 45318u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.a.c, 1u, var_0.b.c), vec4<u32>(arg_1.c, var_1.a.c, arg_1.c, var_0.a.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 52450u, 0u, 0u), vec4<u32>(56307u, arg_1.c, 1u, var_0.a.c)))), select(_wgslsmith_sub_vec2_i32(max(var_1.a.d, var_0.b.d), reverseBits(arg_1.d)), arg_1.d, vec2<bool>(false, true))), Struct_1(var_2.xyx, false, arg_1.c, arg_1.d >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(select(func_1(~u_input.a.x), func_1(u_input.a.x), true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1911i, -u_input.a.x), vec4<i32>(u_input.a.x, ~21694i, u_input.a.x, -u_input.a.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_vec3_f32(func_3(false)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(314f)) - _wgslsmith_f_op_f32(f32(-1f) * -1838f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f - 728f))), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4386u, 0u, 112307u), vec3<u32>(0u, 9319u, 49028u)), 4294967295u, 55347u), -max(u_input.a.yx, select(u_input.a.yx, u_input.a.yz, vec2<bool>(true, false)))));
    var var_1 = Struct_4(func_4(-vec4<i32>(-39i, -2147483647i, -36492i, -19288i), func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-2147483647i, 1i)), _wgslsmith_div_i32(9627i, var_0.d.x), _wgslsmith_clamp_i32(u_input.a.x, var_0.d.x, var_0.d.x), -27761i), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), false, var_0.c, var_0.d))), var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(1000f * 765f), _wgslsmith_f_op_f32(floor(-169f))) + var_0.a), !var_0.b, 0u, u_input.a.xy));
    var_1 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2283f, -1822f)), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(955f, -1000f))), true, _wgslsmith_mult_u32(abs(var_0.c), 14404u), -vec2<i32>(_wgslsmith_add_i32(10337i, 0i), 0i)), ~var_1.c.c, var_1.c);
    var var_2 = !vec4<bool>(var_0.b, true, var_0.b, true);
    var var_3 = Struct_2(Struct_1(var_0.a, true, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(49608u, var_0.c, 31797u), vec3<u32>(var_0.c, var_1.b, var_1.c.c))) ^ var_0.c, var_1.a.d), func_4(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, 0i, 3078i, u_input.a.x), vec4<i32>(-2147483647i, -1i, -96767i, var_0.d.x)) ^ vec4<i32>(~var_0.d.x, -1i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f) - -1738f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.a.x, 294f), _wgslsmith_f_op_f32(-var_0.a.x), var_3.b.b || var_2.x)))), _wgslsmith_f_op_f32(min(var_0.a.x, var_3.b.a.x)));
}

