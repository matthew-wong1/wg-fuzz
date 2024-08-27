struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f * arg_1) * arg_1), _wgslsmith_f_op_f32(-1808f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_0 | (_wgslsmith_clamp_i32(arg_0, arg_0, u_input.c.x) | ~u_input.c.x), ~arg_0, u_input.c.x), select(~u_input.c.wyw, u_input.c.zxw, true));
    let var_2 = Struct_1(~(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u)), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 4294967295u))), i32(-1i) * -47354i, vec4<bool>(true, true, true, select(true, _wgslsmith_f_op_f32(trunc(var_0.x)) < _wgslsmith_f_op_f32(var_0.x + 1699f), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)))), -531f);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, -117f, -828f, 3333f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2381f, 1392f, 1100f, -367f), vec4<f32>(var_2.d, -477f, var_2.d, -1000f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 806f, 1438f, var_0.x) - vec4<f32>(1093f, -524f, var_2.d, 1023f)))))), u_input.b.x > ~4294967295u)), vec4<f32>(-2196f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1385f * -1290f) * var_2.d), var_0.x)));
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(914f * var_2.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))))));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(min(arg_0.a, arg_0.a), ~arg_0.b, vec4<bool>(arg_0.c.x, u_input.c.x <= u_input.c.x, !any(select(vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), arg_0.c.x)), arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d, _wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d)))))));
    let var_1 = !all(select(!arg_0.c.yz, vec2<bool>(arg_0.c.x, false), true));
    let var_2 = _wgslsmith_f_op_f32(step(347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d, var_0.d)))));
    let var_3 = var_0.a.yz;
    let var_4 = -37001i;
    return select(var_0.a, vec4<u32>(1u & _wgslsmith_clamp_u32(arg_0.a.x, 1u, arg_0.a.x), ~_wgslsmith_div_u32(u_input.b.x, 13956u), ~var_0.a.x, abs(u_input.b.x)) << (var_0.a % vec4<u32>(32u)), all(!var_0.c.xwz) || var_1);
}

fn func_2() -> bool {
    var var_0 = Struct_1(func_4(Struct_1(countOneBits(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x)), -14596i, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(0i, -1587f)))))), u_input.c.x, vec4<bool>(~u_input.a.x != u_input.a.x, true, true, true & (_wgslsmith_add_i32(0i, u_input.c.x) >= -18875i)), -298f);
    var_0 = Struct_1(select(vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(abs(u_input.a.x), ~34243u), u_input.a.x, u_input.b.x), ~(~(~var_0.a)), -37328i == u_input.c.x), -(~var_0.b ^ -21048i), !(!var_0.c), -685f);
    var_0 = Struct_1(var_0.a, 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_0.a.x), ~4294967295u), _wgslsmith_sub_vec2_u32(select(var_0.a.xy, vec2<u32>(27914u, 4294967295u), var_0.c.yz), abs(var_0.a.xw))) % 32u), select(var_0.c, select(!var_0.c, vec4<bool>(any(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)), var_0.c.x, any(var_0.c.xy), all(var_0.c)), !var_0.c), true), _wgslsmith_f_op_f32(var_0.d + var_0.d));
    let var_1 = 4294967295u ^ var_0.a.x;
    let var_2 = -29991i;
    return var_0.b != u_input.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = vec4<f32>(-356f, _wgslsmith_f_op_f32(-arg_0.d), arg_1.d, _wgslsmith_f_op_f32(exp2(arg_1.d)));
    var var_1 = arg_3;
    return arg_2.c.xww;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    return func_5(arg_1, Struct_1(max(_wgslsmith_mult_vec4_u32(arg_1.a, firstTrailingBit(vec4<u32>(arg_2.a.x, 20962u, u_input.a.x, 1u))), vec4<u32>(4294967295u, 75667u, arg_1.a.x, 48597u) << (arg_1.a % vec4<u32>(32u))), -36697i ^ _wgslsmith_div_i32(arg_0.x, _wgslsmith_add_i32(-1i, arg_2.b)), !vec4<bool>(arg_1.c.x, func_2(), true, true), arg_3.x), arg_2, _wgslsmith_f_op_f32(arg_2.d - -1249f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true), select(func_1(u_input.c, Struct_1(vec4<u32>(22319u, 97133u, u_input.a.x, 50697u), -1i, vec4<bool>(true, false, false, false), -1373f), Struct_1(vec4<u32>(17760u, 1u, u_input.a.x, u_input.b.x), -33220i, vec4<bool>(true, true, false, true), -1049f), vec2<f32>(-1000f, 715f)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true));
    var var_1 = Struct_1(vec4<u32>(abs(~u_input.b.x), 42962u, u_input.b.x, u_input.a.x) | _wgslsmith_sub_vec4_u32(func_4(Struct_1(vec4<u32>(u_input.b.x, 0u, 1990u, u_input.a.x), u_input.c.x, vec4<bool>(true, var_0.x, false, var_0.x), -1000f)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(37393u, u_input.a.x, u_input.a.x, 27501u), vec4<u32>(0u, 36340u, 11813u, u_input.b.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), firstTrailingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u)))), i32(-1i) * -min(-1067i, ~0i), vec4<bool>(true, true, all(!vec4<bool>(true, var_0.x, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-250f, -258f, var_0.x)) - _wgslsmith_div_f32(-202f, 219f))))));
    let var_2 = var_1.d;
    var_1 = Struct_1(vec4<u32>(~u_input.b.x, ~0u, 1u, ~(~(~var_1.a.x))), firstLeadingBit(-(~(~(-47064i)))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * var_1.d) + _wgslsmith_f_op_f32(select(398f, var_1.d, !(!var_0.x)))));
    var_1 = Struct_1(var_1.a, u_input.c.x, vec4<bool>(select(!(-2147483647i > u_input.c.x), true, var_1.a.x != firstLeadingBit(u_input.a.x)), true, var_1.a.x <= _wgslsmith_mult_u32(u_input.a.x, 0u), var_0.x | var_1.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(var_1.d * var_1.d)))))));
    var_1 = Struct_1(select(vec4<u32>(u_input.a.x | var_1.a.x, 14742u, ~abs(0u), max(~21982u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 10442u), var_1.a.zw))), ~abs(var_1.a), !var_1.c.x), select(reverseBits(u_input.c.x), ~var_1.b, func_2()) & -u_input.c.x, var_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(max(var_1.d, var_1.d))))))));
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(43097i, u_input.c.x, var_1.b)), -(~u_input.c.yzz)), u_input.c.xxz, firstTrailingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.b, u_input.c.x, -54137i), u_input.c.wzx))) | vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 0i), -u_input.c.xyz), -1178i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_1.b), _wgslsmith_add_vec2_i32(u_input.c.yy, u_input.c.zw)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -156f)) + vec2<f32>(1f, 1f)) * vec2<f32>(-493f, _wgslsmith_f_op_f32(floor(-1327f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(-716f)), var_1.d), var_1.c.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(abs(~(u_input.b.x ^ 3958u)), var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_1.d))) - _wgslsmith_f_op_f32(-var_1.d)), max(var_1.a.x, u_input.b.x), 1i);
}

