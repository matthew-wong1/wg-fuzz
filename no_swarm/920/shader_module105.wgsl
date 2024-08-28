struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(~firstLeadingBit(~arg_0.yz) ^ arg_0.xx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(248f, -1104f, -1144f) + vec3<f32>(-1000f, -1630f, -797f)))))), abs(_wgslsmith_add_vec3_u32((vec3<u32>(4294967295u, 0u, u_input.a.x) | vec3<u32>(0u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 39396u, u_input.a.x), vec3<u32>(u_input.a.x, 10007u, 81595u), vec3<u32>(3174u, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), abs(~vec3<u32>(1u, 6864u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1107f * 589f), _wgslsmith_div_f32(-260f, 319f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(471f, -159f)))), vec3<u32>(1u & (u_input.a.x & (14208u & u_input.a.x)), ~abs(_wgslsmith_clamp_u32(1u, 0u, 39834u)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = Struct_1(var_1.a | ~vec2<i32>(min(arg_0.x, u_input.d.x), var_0.a.x << (var_0.e.x % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(f32(-1f) * -1017f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d)), _wgslsmith_f_op_f32(max(var_1.d, var_1.d)), var_0.b.x)), vec3<u32>(~(~0u), u_input.a.x, ~reverseBits(4294967295u)), 1256f, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.c.x, 15101u) & (var_1.c.x & var_1.c.x), ~firstLeadingBit(var_0.e.x), 17177u), countOneBits(_wgslsmith_div_vec3_u32(var_1.e, ~vec3<u32>(4294967295u, 0u, u_input.a.x)))));
    var_2 = Struct_1(select(u_input.d.zx, vec2<i32>(var_1.a.x, -17536i & var_2.a.x), true), _wgslsmith_f_op_vec3_f32(floor(var_0.b)), abs(var_1.c), -627f, var_1.e);
    return arg_0.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = 2741i;
    let var_1 = vec3<i32>(~22669i, abs((i32(-1i) * -u_input.c) ^ _wgslsmith_div_i32(-1926i, func_3(vec4<i32>(-2147483647i, -710i, -2147483647i, -1i)))), ~((i32(-1i) * -2147483647i) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, 1i), ~u_input.d.x)));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.e.ww, abs(~firstLeadingBit(u_input.e.yz))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, 345f, -212f)), vec3<f32>(_wgslsmith_f_op_f32(min(-175f, -1194f)), _wgslsmith_f_op_f32(204f - -644f), _wgslsmith_f_op_f32(min(308f, 1213f))), true)), vec3<f32>(-835f, _wgslsmith_f_op_f32(-1042f - -589f), 238f)), ~(((vec3<u32>(0u, u_input.a.x, 87737u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) | select(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(16905u, 4294967295u, u_input.a.x), false)) ^ vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x), select(u_input.a.x, 4294967295u, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1093f) + _wgslsmith_f_op_f32(min(-691f, 120f))), -1070f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1067f, 1341f)), _wgslsmith_f_op_f32(select(788f, -170f, true)))))), max(~((vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) << (vec3<u32>(14767u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) | ~vec3<u32>(4294967295u, 0u, 1u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 29828u))));
    var var_3 = Struct_1(select(~u_input.d.yw, vec2<i32>(countOneBits(~(-33889i)), func_3(vec4<i32>(var_0, 14467i, u_input.c, 1i))), vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), var_2.b, max(~reverseBits(abs(vec3<u32>(u_input.a.x, var_2.e.x, 4294967295u))), ~abs(firstTrailingBit(vec3<u32>(1u, var_2.c.x, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), select((~vec3<u32>(var_2.c.x, var_2.c.x, u_input.a.x) >> (~vec3<u32>(0u, var_2.e.x, u_input.a.x) % vec3<u32>(32u))) | (abs(var_2.c) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.e.x, var_2.e.x, 4294967295u), vec3<u32>(4294967295u, var_2.e.x, var_2.e.x), var_2.c) % vec3<u32>(32u))), vec3<u32>(4294967295u, var_2.c.x, _wgslsmith_dot_vec2_u32(var_2.e.zz >> (vec2<u32>(126594u, 104375u) % vec2<u32>(32u)), vec2<u32>(0u, var_2.c.x))), all(vec2<bool>(true, true))));
    var_3 = Struct_1(vec2<i32>(-_wgslsmith_add_i32(var_2.a.x, 2147483647i) | 2147483647i, ~_wgslsmith_mod_i32(~0i, -var_2.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, var_3.d, -2567f))) - var_3.b) - vec3<f32>(709f, var_2.d, -807f)), ~vec3<u32>(~u_input.a.x, ~0u, ~6222u) >> (select(~var_2.c, vec3<u32>(~9551u, ~var_2.e.x, ~1u), vec3<bool>(true, true, true)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f + var_3.d) + -2218f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f + _wgslsmith_f_op_f32(max(var_2.b.x, -314f))))), var_2.c);
    return !(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), true));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(471f, -1267f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-765f)) * _wgslsmith_f_op_f32(trunc(635f))))) + 1160f), -1546f);
    var var_2 = Struct_1(((vec2<i32>(u_input.b, 20777i) ^ ~u_input.e.zz) << (select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(var_0.x, var_0.x)) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, 739f, var_1.x))) + vec3<f32>(1006f, -488f, _wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(-1930f)), var_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, 1291f, -352f) + vec3<f32>(-1000f, -517f, 900f)), vec3<f32>(var_1.x, -722f, 698f), !var_0.x)), all(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x), true)))))), ~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - 816f), vec3<u32>(6074u, 1u, ~(~4294967295u) & ~max(u_input.a.x, u_input.a.x)));
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-58532i, ~u_input.e.x) & _wgslsmith_add_i32(-1i, min(u_input.e.x, var_2.a.x)), -u_input.b), var_2.b, vec3<u32>(select(firstTrailingBit(var_2.c.x), ~31928u, select(true, true, any(vec3<bool>(false, var_0.x, true)))), _wgslsmith_mult_u32(~abs(123212u), var_2.c.x), _wgslsmith_sub_u32(reverseBits(1u), 54845u)), _wgslsmith_div_f32(-873f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(701f)))))), var_2.c & (vec3<u32>(u_input.a.x, u_input.a.x, 0u) & ~firstLeadingBit(var_2.e)));
    let var_4 = min(u_input.a.x, 37856u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-267f, 327f, -1142f, -2424f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_2.b.x))), 599f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = vec4<f32>(-345f, _wgslsmith_f_op_f32(round(-1506f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)), 606f), -439f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(3244i, 14550i, u_input.b)), vec3<i32>(-2147483647i, u_input.c, 23583i)), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~0u), min(var_0, var_0)), vec2<u32>(abs(countOneBits(u_input.a.x)), 13596u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(36491u, u_input.a.x, var_0)), ~(vec3<u32>(u_input.a.x, var_0, 1u) << (vec3<u32>(var_0, u_input.a.x, var_0) % vec3<u32>(32u)))), ~(vec3<u32>(0u, 65358u, 12100u) | countOneBits(vec3<u32>(20580u, u_input.a.x, u_input.a.x)))));
}

