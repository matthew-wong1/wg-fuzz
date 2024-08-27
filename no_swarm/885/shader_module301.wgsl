struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~max(max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 69354u)), vec2<u32>(50673u, 113139u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), vec2<u32>(~(u_input.a & u_input.a), _wgslsmith_div_u32(u_input.a, ~0u))), firstTrailingBit(~(~abs(u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(-(i32(-1i) * -21478i), 1i, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(-26278i, -2147483647i, 1i), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, false, false)), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, -1i), vec3<i32>(-27229i, 14608i, 2147483647i)))), ~(~(~1i) & _wgslsmith_mod_i32(i32(-1i) * -39762i, _wgslsmith_dot_vec2_i32(vec2<i32>(8984i, -1i), vec2<i32>(3873i, -20949i)))));
    var var_3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(~61567u, _wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(~0u, select(52486u, u_input.a, false))), ~max(u_input.a, 23930u) << (u_input.a % 32u), 44605u) << (~vec3<u32>(_wgslsmith_sub_u32(reverseBits(97997u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u))), _wgslsmith_div_u32(countOneBits(u_input.a), _wgslsmith_mod_u32(53672u, u_input.a)), ~u_input.a) % vec3<u32>(32u));
    var_0 = ~0u;
    return 50064u;
}

fn func_2() -> u32 {
    var var_0 = countOneBits(vec3<u32>(1u, _wgslsmith_mod_u32(func_3(), u_input.a), _wgslsmith_mult_u32(~u_input.a, ~u_input.a)) & firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)), select(vec3<u32>(0u, u_input.a, 43289u), vec3<u32>(55500u, 0u, 0u), false), abs(vec3<u32>(11493u, u_input.a, 0u)))));
    return var_0.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(611f, -1764f), vec2<f32>(1683f, 643f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, -141f))))));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(2792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), vec2<f32>(599f, -2779f));
    let var_2 = func_2();
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 1366f), var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x)))))))));
    return vec2<i32>(1i, 1i) ^ ~min(vec2<i32>(-2147483647i, firstLeadingBit(-3148i)), select(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-14623i, -1i), vec2<i32>(-2147483647i, 1i)), !vec2<bool>(var_0, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(414f + _wgslsmith_div_f32(1080f, -361f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(514f + -1111f))), _wgslsmith_mod_vec2_i32(func_1(), -vec2<i32>(-3109i, _wgslsmith_div_i32(-2147483647i, 1i))), -(vec3<i32>(abs(8697i), max(-67410i, 13643i), _wgslsmith_mod_i32(2147483647i, -51418i)) >> (vec3<u32>(max(62388u, u_input.a), 54561u ^ u_input.a, select(u_input.a, 12871u, false)) % vec3<u32>(32u))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1592f)))), _wgslsmith_f_op_f32(-var_0.c), var_0.e.zx, firstLeadingBit(select(firstTrailingBit(var_0.e), ~var_0.e, vec3<bool>(false, false, var_0.a.x)) >> (~(vec3<u32>(4294967295u, 4494u, 0u) | vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var_0 = Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-949f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), select(-var_0.d, -abs(vec2<i32>(var_1.d.x, -1i)), select(select(!vec2<bool>(var_1.a.x, false), !vec2<bool>(var_0.a.x, var_1.a.x), var_1.a.zx), var_1.a.yz, false)), select(vec3<i32>(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(26924i, -24859i, 1i, var_1.e.x), vec4<i32>(-2147483647i, var_1.e.x, var_1.e.x, -22996i)), _wgslsmith_div_i32(var_0.d.x, 1i)), -(~var_1.e), select(var_0.a.x, all(var_0.a), var_1.a.x)) << (reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(65207u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_u32(0u, 38739u), select(u_input.a, 1u, true))) % vec3<u32>(32u)));
    let var_2 = Struct_2(var_1);
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f), var_1.c));
    var var_4 = Struct_3(any(select(vec4<bool>(var_2.a.a.x | var_2.a.a.x, var_2.a.a.x, false, true | var_0.a.x), !vec4<bool>(var_0.a.x, false, true, true), !any(vec3<bool>(var_2.a.a.x, var_1.a.x, false)))), select(select(vec4<bool>(true, var_0.a.x, true, var_1.a.x && var_0.a.x), vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), var_1.a.x, var_1.a.x & false, var_0.a.x)), !var_2.a.a, !var_2.a.a), ~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 2588f, var_2.a.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -805f, 1000f) + vec3<f32>(-1000f, var_0.b, var_3.a)))))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(-2147483647i, i32(-1i) * -1i), max(_wgslsmith_add_u32(u_input.a, reverseBits(23043u) & var_4.c), var_4.c));
}

