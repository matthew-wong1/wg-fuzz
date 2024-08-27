struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = ~countOneBits(reverseBits(select(vec2<u32>(0u, 0u), vec2<u32>(24718u, 4383u), vec2<bool>(false, false))) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(517f))), _wgslsmith_div_f32(-1432f, -232f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2026f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f * -784f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1893f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, -321f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(229f)), _wgslsmith_f_op_f32(602f + -249f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(636f, 1018f), vec2<f32>(-457f, 568f))))))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)))), Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, 4294967295u, var_0.x), vec4<u32>(44132u, var_0.x, 1u, var_0.x)) ^ max(vec4<u32>(var_0.x, 83634u, 1u, var_0.x), vec4<u32>(var_0.x, var_0.x, 18416u, var_0.x)), _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 36679u, var_0.x, 4294967295u), vec4<u32>(var_0.x, 4294967295u, var_0.x, 12235u), vec4<bool>(true, false, false, false)), vec4<u32>(86069u, 1u, 4294967295u, var_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(113f, -551f, 907f, -532f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, 1770f, -559f, 560f) + vec4<f32>(772f, -328f, -873f, 294f))))), ~(~(~vec3<u32>(var_0.x, 4294967295u, 35841u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -235f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1517f * _wgslsmith_f_op_f32(floor(-360f)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_div_f32(699f, 492f)), -2216f)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, u_input.d.x, u_input.c.x, u_input.b.x), ~firstLeadingBit(vec4<i32>(-32416i, -3834i, u_input.a, u_input.b.x))) | _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(5572i, 7406i, u_input.d.x, 0i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x), ~vec4<i32>(-1i, u_input.c.x, u_input.d.x, u_input.a)), vec4<i32>(0i, -u_input.b.x, u_input.a << (4294967295u % 32u), u_input.c.x)));
    var_1 = Struct_3(var_1.c.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(var_1.d, 1145f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-var_1.c.b.a.zy)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, var_1.d)))))), var_1.c, _wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.e);
    let var_2 = ~(vec4<u32>(var_0.x, var_1.c.d.x, var_0.x, var_0.x) | abs(vec4<u32>(_wgslsmith_mult_u32(var_0.x, 0u), reverseBits(var_0.x), ~var_0.x, abs(4294967295u))));
    var_1 = Struct_3(var_1.a, var_1.a.a.wx, Struct_2(vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(var_1.c.d.zx, var_2.zz)), _wgslsmith_mod_u32(0u, 4294967295u), abs(reverseBits(99947u)), 4294967295u), var_1.a, Struct_1(var_1.c.b.a), vec3<u32>(1u, max(~var_2.x, 0u), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(var_2.x, var_0.x))), 1124f), var_1.b.x, (_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x, 0i, u_input.c.x, -2147483647i), abs(vec4<i32>(2147483647i, var_1.e.x, -23078i, u_input.d.x))) << (_wgslsmith_mod_vec4_u32(var_1.c.a ^ vec4<u32>(var_2.x, 1u, var_1.c.a.x, 1u), ~vec4<u32>(var_0.x, 1u, var_2.x, 1u)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_mult_i32(u_input.b.x ^ u_input.b.x, u_input.b.x), var_1.e.x, firstLeadingBit(u_input.a) | u_input.b.x, ~var_1.e.x));
    return var_1.a.a.wy;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = 11892u;
    var_0 = firstTrailingBit(arg_0.x);
    var var_1 = Struct_2(countOneBits(vec4<u32>(select(_wgslsmith_dot_vec2_u32(arg_0, arg_0), 1u, select(false, true, arg_1)), arg_0.x, ~23997u, _wgslsmith_mult_u32(arg_0.x & arg_0.x, _wgslsmith_sub_u32(4294967295u, arg_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, -1270f, 149f, -186f) - vec4<f32>(728f, -1018f, -117f, -1147f)), vec4<f32>(1598f, -1125f, 486f, 794f)))), Struct_1(vec4<f32>(-1102f, -1313f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-434f - -107f), -1254f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1039f - -249f))))), ~vec3<u32>(1u, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1131f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1015f)))), 1298f)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, 611f, -513f, var_1.c.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.e, 1546f, 767f, var_1.e))), !vec4<bool>(arg_1, true, false, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e, var_1.b.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - var_1.c.a.x)))), Struct_2(var_1.a, Struct_1(var_1.c.a), var_1.b, _wgslsmith_add_vec3_u32(~abs(vec3<u32>(var_1.a.x, var_1.d.x, 58634u)), _wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(1u, 106763u, var_1.d.x))), var_1.c.a.x), var_1.b.a.x, _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(27758i, -31433i, -1i, u_input.a))), abs(~vec4<i32>(u_input.a, u_input.b.x, 28536i, u_input.a))) ^ abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2788i, 0i, u_input.d.x, 2147483647i), vec4<i32>(-1i, 12818i, 51324i, u_input.b.x)))));
    return ~0u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.b.x, -_wgslsmith_div_i32(0i, _wgslsmith_div_i32(u_input.d.x, -2147483647i)), -1i, u_input.d.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, func_2(firstLeadingBit(vec2<u32>(0u, 1u)), false), max(11144u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(123648u, 1u, 12850u), vec3<u32>(10038u, 37784u, 0u))), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4020u), firstTrailingBit(vec2<u32>(1u, 87221u))), 0u)) % vec4<u32>(32u));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(~1i, var_0.x, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(19642i, u_input.a, var_0.x ^ var_0.x), -u_input.d.x), i32(-1i) * -2147483647i), vec4<i32>(~_wgslsmith_mult_i32(-27760i, var_0.x), abs(~1i), ~(u_input.b.x | _wgslsmith_dot_vec2_i32(vec2<i32>(44833i, u_input.d.x), u_input.d.yx)), _wgslsmith_sub_i32(var_0.x, -43184i)));
    var_0 = vec4<i32>(-1i) * -firstLeadingBit(firstTrailingBit(min(vec4<i32>(var_0.x, u_input.c.x, u_input.d.x, -35595i), vec4<i32>(var_0.x, var_0.x, u_input.a, 36921i))));
    let var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-950f, arg_0.a.x) + arg_0.a.xx))))), Struct_2(abs(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), arg_0, arg_0, ~(~vec3<u32>(0u, 9031u, 1u)), _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -933f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(698f))))), 799f), max(vec4<i32>(reverseBits(-27700i & var_0.x), countOneBits(countOneBits(u_input.d.x)), -_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(15216i, u_input.d.x)), var_0.x), abs(vec4<i32>(-54767i, ~0i, -19545i, var_0.x))));
    let var_2 = var_1.e.x <= reverseBits(var_1.e.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.a.x, 1328f, var_1.c.b.a.x) - vec4<f32>(arg_0.a.x, 182f, 840f, arg_0.a.x)) * _wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 851f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, arg_0.a.x, var_1.b.x, 1009f) + var_1.a.a)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(func_1(arg_2), arg_2.a.zw, Struct_2(select(vec4<u32>(0u, countOneBits(0u), _wgslsmith_mult_u32(21507u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 22669u), vec3<u32>(0u, 1u, 3142u))), vec4<u32>(34963u, _wgslsmith_div_u32(20370u, 6638u), ~1u, ~1u), u_input.c.x <= ~2147483647i), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-668f - arg_2.a.x), _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))), Struct_1(arg_2.a), vec3<u32>(0u, 1u, _wgslsmith_mod_u32(30747u, 1u)), 960f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x)) * -676f)), select(vec4<i32>(firstTrailingBit(-u_input.b.x), 0i, _wgslsmith_div_i32(arg_0, u_input.c.x), arg_0), vec4<i32>(-u_input.a, u_input.d.x ^ -547i, firstTrailingBit(-33990i), countOneBits(1i)) ^ -vec4<i32>(u_input.d.x, arg_0, -8815i, 7979i), false || (~88772u == func_2(vec2<u32>(5311u, 33059u), false))));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a))))), var_0.c.b.a.xw, Struct_2(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 48350u, var_0.c.d.x)), ~var_0.c.a), Struct_1(arg_2.a), arg_2, ~var_0.c.d & ~var_0.c.a.xzw, -253f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)), var_0.e);
    var var_1 = var_0.c.d.x;
    let var_2 = -var_0.e << (abs(vec4<u32>(var_0.c.a.x, 134463u, 4294967295u, 4294967295u)) % vec4<u32>(32u));
    var_1 = 59508u;
    return func_1(Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~min(countOneBits(36424u), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(93260u, 0u, ~1u, ~78600u), vec4<u32>(~4294967295u, ~0u, 1u, min(4294967295u, 36423u))), abs(~_wgslsmith_add_u32(23327u, 0u)), 4294967295u | _wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(9656u, 16194u), vec2<u32>(43197u, 4294967295u)))) | vec4<u32>(0u, 1u, 8797u, ~(~58165u));
    var var_1 = func_4(u_input.d.x, _wgslsmith_mod_i32(-6180i, 29059i), func_1(Struct_1(vec4<f32>(-1913f, _wgslsmith_f_op_f32(abs(-310f)), _wgslsmith_f_op_f32(step(1534f, 929f)), -961f))));
    let var_2 = Struct_3(func_4(-u_input.c.x, max(u_input.d.x, -30723i), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(0i, -2147483647i) & u_input.c), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.a), firstTrailingBit(-2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -812f) + var_1.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-1301f, var_1.a.x, var_1.a.x, var_1.a.x))).a.x - _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), 1735f) - _wgslsmith_div_vec2_f32(var_1.a.yy, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(trunc(-1000f))))), Struct_2(~(~var_0), func_4(_wgslsmith_sub_i32(~14237i, _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.c)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, -1i, u_input.b.x, 6901i)), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, var_1.a.x, -151f, -241f), _wgslsmith_f_op_vec4_f32(-var_1.a)))), firstLeadingBit(firstTrailingBit(var_0.zzx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(757f * func_1(Struct_1(_wgslsmith_f_op_vec4_f32(round(var_1.a)))).a.x), vec4<i32>(reverseBits(0i), u_input.b.x << (((var_0.x ^ 61702u) << (var_0.x % 32u)) % 32u), ~u_input.d.x, firstTrailingBit(-1i)));
    var_1 = var_2.a;
    var var_3 = Struct_2(~abs(_wgslsmith_mod_vec4_u32(var_2.c.a, var_2.c.a)) >> (~(~reverseBits(var_0)) % vec4<u32>(32u)), func_4(_wgslsmith_div_i32(-var_2.e.x >> (min(var_0.x, var_2.c.a.x) % 32u), -u_input.b.x >> (_wgslsmith_clamp_u32(var_2.c.d.x, var_0.x, 4372u) % 32u)), var_2.e.x << (_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, 0u), ~var_2.c.d.x) % 32u), var_2.a), func_1(func_4(_wgslsmith_dot_vec3_i32(~var_2.e.xwy, u_input.b), firstLeadingBit(var_2.e.x) << (~var_2.c.d.x % 32u), func_4(16722i, u_input.c.x, Struct_1(var_1.a)))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_2.c.a.x, ~var_0.x, var_0.x)), ~countOneBits(var_2.c.d), ~vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), ~1u, firstTrailingBit(var_2.c.d.x))), -438f);
    var var_4 = var_2;
    var var_5 = var_0.x;
    var_3 = Struct_2(vec4<u32>(_wgslsmith_div_u32(~1u, reverseBits(var_0.x | 0u)), _wgslsmith_sub_u32(func_2(firstTrailingBit(vec2<u32>(4294967295u, 0u)), false), var_3.a.x), var_4.c.a.x, ~(~(var_3.a.x ^ var_3.d.x))), var_4.c.b, Struct_1(_wgslsmith_div_vec4_f32(var_2.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.c.b.a * var_4.a.a) - vec4<f32>(993f, 532f, -299f, var_4.c.b.a.x)))), vec3<u32>(63924u, select(var_0.x, var_4.c.d.x << (0u % 32u), false), 56260u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_3.a.x, var_0.x) << (max(var_3.a.yxw, vec3<u32>(4294967295u, 2213u, 61281u)) % vec3<u32>(32u)), min(_wgslsmith_add_vec3_u32(var_4.c.a.ywy, var_2.c.d), ~vec3<u32>(var_2.c.a.x, var_2.c.a.x, var_4.c.d.x))), _wgslsmith_f_op_f32(-829f * var_4.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.yx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.b.a.x * var_2.d), var_3.b.a.x, !all(vec2<bool>(true, false)))), max(vec4<i32>(var_4.e.x, var_2.e.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(var_4.e, vec4<i32>(var_4.e.x, u_input.c.x, -2147483647i, var_2.e.x))), var_4.e.x), -var_4.e), ~countOneBits(max(var_4.c.a.x, 65333u | var_0.x)));
}

