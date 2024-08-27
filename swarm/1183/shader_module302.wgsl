struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.x, 1u), vec3<u32>(9377u, 1u, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, 1u), ~vec3<u32>(99337u, 53416u, u_input.a.x))), 100245u, countOneBits(u_input.b) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), ~vec3<u32>(40911u, 0u, u_input.a.x)) % 32u)), u_input.d, vec3<u32>(u_input.b, ~(~reverseBits(4294967295u)), _wgslsmith_add_u32(0u, u_input.b)), u_input.d.wyz, _wgslsmith_mod_i32(4040i, u_input.c.x));
    var var_1 = Struct_1(var_0.c, firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(min(-2147483647i, var_0.b.x), _wgslsmith_dot_vec2_i32(var_0.b.zz, u_input.d.zx), u_input.c.x << (u_input.b % 32u), 0i ^ var_0.e), vec4<i32>(~1i, u_input.d.x ^ u_input.d.x, abs(u_input.d.x), reverseBits(var_0.e)))), max(vec3<u32>(abs(12495u) ^ (var_0.a.x << (0u % 32u)), 60645u, reverseBits(~0u)), select(vec3<u32>(var_0.a.x >> (arg_1.x % 32u), 1u, abs(u_input.b)), vec3<u32>(5928u, 0u, u_input.b), !select(arg_2.xyy, arg_2.yzz, arg_2.ywz))), firstTrailingBit(~(u_input.d.zyx & vec3<i32>(var_0.b.x, 0i, 16447i))) << ((var_0.a ^ select(~vec3<u32>(0u, arg_1.x, 1u), vec3<u32>(var_0.c.x, 1u, 4294967295u), true)) % vec3<u32>(32u)), select(var_0.d.x, u_input.c.x, select(false, true, true)));
    let var_2 = Struct_1(vec3<u32>(var_0.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(47605u, var_0.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 44159u, 39812u, 4294967295u)) << (u_input.a.x % 32u), _wgslsmith_div_u32(~var_0.a.x, max(~u_input.b, 48546u))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, firstLeadingBit(var_1.b)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.x, 2147483647i, u_input.d.x, -2147483647i), vec4<i32>(var_1.b.x, 1i, 2147483647i, 51417i)))), abs(min(var_1.d.x >> (1u % 32u), var_1.b.x)), countOneBits(var_0.e)), firstTrailingBit(var_0.a), u_input.d.xyw, var_0.b.x);
    var_0 = Struct_1(var_0.c, select(vec4<i32>(var_0.e, select(var_2.b.x, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(0i, 2147483647i, u_input.d.x, var_1.e)), true), _wgslsmith_add_i32(~var_2.e, 20349i & u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, 1i)), select(max(vec4<i32>(u_input.c.x, u_input.d.x, 1i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.x, var_1.d.x, 8492i, -1i), vec4<i32>(var_1.e, 40431i, var_1.e, -42230i))), u_input.d >> (select(vec4<u32>(arg_1.x, arg_1.x, 37280u, 40413u), vec4<u32>(1u, var_0.c.x, var_2.c.x, 49160u), arg_2) % vec4<u32>(32u)), false), arg_2.x), var_0.a, var_1.d, -var_0.d.x);
    var var_3 = Struct_1(~(~(~select(vec3<u32>(var_1.a.x, u_input.b, var_2.c.x), var_2.c, arg_0))), vec4<i32>(~var_1.e >> (arg_1.x % 32u), ~var_2.b.x, -2147483647i, u_input.d.x), vec3<u32>(arg_1.x, var_1.c.x, ~14120u), ~vec3<i32>(~var_0.e, 0i, ~var_1.b.x << (18877u % 32u)), ~var_2.e);
    return select(-u_input.d, select(vec4<i32>(~(-var_0.e), var_1.d.x, u_input.c.x & (var_0.d.x | 71978i), -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, any(arg_2), any(arg_2.wxy), arg_2.x), !arg_2, true)), vec4<bool>(!arg_0, any(vec4<bool>(arg_0, true, true, arg_0)) || true, !arg_0, false));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(vec3<u32>(max(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u)), max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u) | arg_0.a.yy, ~arg_0.c.yz)), ~1u), _wgslsmith_sub_vec4_i32(-u_input.d, func_3(true, vec2<u32>(9295u, 4294967295u), vec4<bool>(true, true, true, true))) & -u_input.d, firstTrailingBit(~vec3<u32>(_wgslsmith_add_u32(u_input.a.x, arg_0.a.x), u_input.a.x, firstTrailingBit(1u))), vec3<i32>(u_input.d.x, abs(u_input.d.x), -1i << (u_input.a.x % 32u)), -func_3(true, vec2<u32>(_wgslsmith_clamp_u32(42479u, u_input.b, arg_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, u_input.b, 41198u, 89407u), vec4<u32>(u_input.a.x, 1u, 20303u, u_input.b))), vec4<bool>(true, true, true, true)).x);
    let var_1 = Struct_1(arg_0.a, reverseBits(vec4<i32>(-arg_0.e, firstLeadingBit(40392i), u_input.d.x, var_0.e)) >> (min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(43586u, 21265u, 73677u, var_0.c.x), vec4<u32>(u_input.a.x, 0u, var_0.a.x, var_0.c.x))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 0u, var_0.c.x, 17281u))) % vec4<u32>(32u)), ~_wgslsmith_sub_vec3_u32(~(var_0.c >> (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u))), ~(arg_0.a ^ var_0.c)), u_input.d.wyx, _wgslsmith_mult_i32(~1i, _wgslsmith_sub_i32(func_3(true, ~arg_0.c.zz, vec4<bool>(true, true, true, true)).x, -15119i)));
    var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, _wgslsmith_mult_vec4_i32(abs((vec4<i32>(-2147483647i, 22697i, -22099i, 24403i) ^ vec4<i32>(var_1.d.x, 39365i, var_1.b.x, var_1.b.x)) | -u_input.d), ~var_0.b), ~firstTrailingBit(~select(arg_0.c, vec3<u32>(46100u, arg_0.a.x, var_0.a.x), vec3<bool>(true, true, false))), u_input.d.wyx, var_1.e);
    var_0 = Struct_1(~(~var_1.a), u_input.d, var_1.c, u_input.d.wxz, _wgslsmith_mod_i32(reverseBits(2147483647i), 11737i));
    return _wgslsmith_clamp_vec2_u32(firstTrailingBit(~_wgslsmith_mult_vec2_u32(reverseBits(u_input.a), _wgslsmith_mult_vec2_u32(var_0.c.xy, u_input.a))), select(vec2<u32>(1u, reverseBits(var_1.c.x)), var_0.a.yy, true) & var_0.a.xy, ~_wgslsmith_mod_vec2_u32(~(~u_input.a), _wgslsmith_clamp_vec2_u32(reverseBits(var_1.c.zz), u_input.a, _wgslsmith_mult_vec2_u32(var_1.a.zx, vec2<u32>(var_1.c.x, var_0.c.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = ~1i;
    let var_1 = vec2<bool>(false, true);
    var var_2 = 76401u;
    var var_3 = -(firstTrailingBit(max(-vec2<i32>(-12277i, -2147483647i), arg_2.xy)) << (func_2(arg_1) % vec2<u32>(32u)));
    let var_4 = Struct_1(vec3<u32>(~(~(~12629u)), _wgslsmith_add_u32(~44701u, ~u_input.a.x) ^ arg_0.c.x, arg_0.a.x), ~u_input.d, _wgslsmith_mult_vec3_u32(arg_1.a, ~arg_0.c), arg_2, _wgslsmith_sub_i32(abs(arg_2.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 8969i, -110i), vec4<i32>(-2147483647i, arg_2.x, 1i, 876i)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 506f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1744f + 469f), _wgslsmith_f_op_f32(select(-531f, -866f, var_1.x)), select(var_1.x, 1u < var_4.c.x, any(vec4<bool>(false, var_1.x, var_1.x, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(473f, -1190f), vec2<f32>(1176f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -1339f))) + vec2<f32>(_wgslsmith_f_op_f32(min(-913f, -1098f)), _wgslsmith_f_op_f32(-126f * -242f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-968f, -652f) - vec2<f32>(1285f, 873f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1661f, -907f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_0.x))), var_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(1u, 58615u, u_input.a.x), u_input.d, vec3<u32>(7738u, u_input.a.x, u_input.b), u_input.d.wwy, u_input.c.x), Struct_1(vec3<u32>(88171u, 7964u, u_input.a.x), u_input.d, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<i32>(0i, u_input.d.x, -15807i), 2147483647i), u_input.d.xwz, u_input.d)), 245f, var_0.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1713f, -678f, var_0.x, _wgslsmith_f_op_f32(step(-1883f, _wgslsmith_f_op_f32(f32(-1f) * -248f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -616f), var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(272f)) + var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_0.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1117f, var_1.x, 139f, -2706f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(880f, var_1.x, var_0.x, 791f), vec4<f32>(var_1.x, 835f, 166f, var_0.x), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1067f, -1843f, var_0.x, var_0.x))), false))));
    var var_2 = Struct_1(vec3<u32>(1u, u_input.b, abs(u_input.a.x)), vec4<i32>(u_input.d.x, min(-u_input.c.x ^ -2147483647i, -7087i), ~(i32(-1i) * -u_input.c.x), 8830i), select(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a.x, firstLeadingBit(16298u), ~42803u), reverseBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), min(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~max(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(37024u, u_input.b, u_input.a.x))), vec3<bool>(1u == min(u_input.a.x, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -365f) <= _wgslsmith_div_f32(var_0.x, 1016f), select(all(vec2<bool>(true, true)), true, true))), vec3<i32>(1i, -u_input.c.x, u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, ~u_input.c.x));
    let var_3 = Struct_1(firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(0u, 16552u), _wgslsmith_clamp_u32(22211u, var_2.a.x, u_input.a.x), var_2.c.x)), ~reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d.x, 2147483647i, var_2.e, -1i), var_2.b ^ vec4<i32>(u_input.d.x, var_2.b.x, 2147483647i, var_2.b.x))), vec3<u32>(71632u, 1u, _wgslsmith_clamp_u32(var_2.a.x, ~1u, ~95906u)) | select(vec3<u32>(var_2.a.x | var_2.a.x, u_input.a.x, var_2.c.x | u_input.b), vec3<u32>(u_input.b, 1u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(u_input.b, 1u, 4294967295u)), select(u_input.a.x >= u_input.b, true, true)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(var_2.b, var_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(13558i, var_2.d.x, 32367i, u_input.d.x), var_2.b)), select(-max(vec3<i32>(var_2.d.x, -13874i, -50504i), vec3<i32>(var_2.e, -11804i, var_2.d.x)), -vec3<i32>(u_input.d.x, u_input.c.x, 0i), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), reverseBits(-var_2.d)), u_input.d.x ^ -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(400f, _wgslsmith_f_op_f32(1309f + var_1.x))) + var_1.x), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(747f - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-826f + var_0.x)))))), _wgslsmith_sub_vec3_u32(vec3<u32>(11453u, 23087u, _wgslsmith_mod_u32(var_3.c.x & var_3.a.x, var_3.c.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_3.c.x, 0u, var_3.a.x), vec3<u32>(var_2.c.x, 4294967295u, var_2.c.x)) | var_2.c));
}

