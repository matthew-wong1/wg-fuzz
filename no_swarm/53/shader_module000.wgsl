struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = false;
    var_0 = true;
    let var_1 = 4294967295u;
    let var_2 = Struct_1(arg_2);
    let var_3 = countOneBits(0i);
    return _wgslsmith_add_i32(max(-_wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.a.x, -2147483647i), arg_2.x), 1i), 1i);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_1(-_wgslsmith_sub_vec4_i32(-firstLeadingBit(arg_2), vec4<i32>(-26135i, firstLeadingBit(-2147483647i), -1i, abs(arg_2.x))));
    var var_1 = abs(countOneBits(~vec4<i32>(reverseBits(arg_2.x), -28018i, -arg_2.x, _wgslsmith_dot_vec2_i32(arg_2.zz, arg_2.xz))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1254f);
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(select(vec4<i32>(-21763i, -1i, -2147483647i, select(-2437i, -59364i, false)) | _wgslsmith_add_vec4_i32(vec4<i32>(11815i, 36153i, 0i, -5903i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~1i, 23971i, 0i, -2147483647i), true));
    var var_1 = Struct_2(u_input.a.x, vec3<bool>(false, var_0.a.x > _wgslsmith_mod_i32(max(var_0.a.x, var_0.a.x), abs(-1i)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))) || (firstTrailingBit(33503u) < ~4294967295u)));
    var_0 = Struct_1(max(vec4<i32>(37922i, reverseBits(-var_0.a.x), var_0.a.x, var_0.a.x), vec4<i32>(~var_0.a.x, -10883i ^ select(2147483647i, var_0.a.x, var_1.b.x), ~var_0.a.x >> (~1u % 32u), countOneBits(var_0.a.x) & 1i)));
    var var_2 = Struct_2(arg_0.a, vec3<bool>(select(any(var_1.b), any(select(var_1.b.yz, var_1.b.yy, vec2<bool>(var_1.b.x, var_1.b.x))), !(50756u < var_1.a)), all(select(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.yz, select(false, false, var_1.b.x))), var_1.b.x));
    let var_3 = vec2<u32>(u_input.a.x << (1u % 32u), _wgslsmith_clamp_u32(~(arg_0.a | 55178u), arg_0.a | 26665u, 0u));
    return vec4<f32>(_wgslsmith_f_op_f32(min(-1212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(320f + arg_0.b), _wgslsmith_f_op_f32(abs(arg_0.b)))), 232f)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(50407u, _wgslsmith_dot_vec2_u32(u_input.a.yx, ~vec2<u32>(~u_input.a.x, firstLeadingBit(2701u))), max(68262u, ~8048u));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a.x, var_0.x, var_0.x, 55019u), Struct_2(80497u, vec3<bool>(true, false, false)), arg_0 >> (vec4<u32>(var_0.x, 47031u, var_0.x, u_input.a.x) % vec4<u32>(32u))))))));
    var var_2 = ~min(~reverseBits(select(u_input.a, u_input.a, false)), abs(vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x)));
    var var_3 = _wgslsmith_sub_vec4_u32(~abs(~(~vec4<u32>(0u, 1u, var_2.x, 52003u))), vec4<u32>(reverseBits(u_input.a.x), ~countOneBits(_wgslsmith_add_u32(u_input.a.x, var_0.x)), ~(~74965u), ~firstTrailingBit(var_2.x)));
    var var_4 = ~(abs(vec4<u32>(var_0.x, var_3.x, var_0.x, var_2.x) | vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, 0u, var_2.x), vec4<u32>(23775u, 1684u, 0u, u_input.a.x)), abs(vec4<u32>(38414u, 0u, 0u, u_input.a.x)))) | vec4<u32>(min(var_2.x, ~(~var_0.x)), 32223u, ~(~u_input.a.x), u_input.a.x);
    return Struct_1(vec4<i32>(abs(-reverseBits(arg_0.x)), -12407i, -_wgslsmith_add_i32(_wgslsmith_div_i32(1i, arg_0.x), arg_0.x), _wgslsmith_mod_i32(select(func_1(vec3<f32>(949f, var_1.x, 882f), vec3<f32>(660f, var_1.x, var_1.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), Struct_3(var_4.x, 1003f)), select(-1i, -51975i, false), true), arg_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(34930u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1071f * 1f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(206f)) - _wgslsmith_f_op_f32(-1000f - var_0.b)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(select(-1667f, 304f, any(vec4<bool>(arg_1.x, arg_1.x, true, arg_2.b.x)))))));
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(abs(var_0.b));
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = true;
    var var_1 = Struct_3(min(max(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_2.zz), _wgslsmith_clamp_vec2_u32(u_input.a.zx, arg_3.wx, u_input.a.zz)), abs(_wgslsmith_sub_u32(36418u, arg_2.x))), countOneBits(arg_3.x)), _wgslsmith_f_op_f32(sign(992f)));
    let var_2 = Struct_3(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~vec4<u32>(4294967295u, 4294967295u, 1u, 24423u), Struct_2(arg_0, arg_1.b), vec4<i32>(1i, 1i, 1i, 1i)))))));
    var_1 = var_2;
    var var_3 = select(_wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, 1i, -24169i, 16867i), vec4<i32>(0i, -1i, 0i, -1i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, var_1.a, var_1.a, var_2.a), arg_3) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(-1i, 32782i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_div_i32(2147483647i, -2147483647i), 0i >> (var_2.a % 32u))) << (arg_2 % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-150i, -20151i, 5250i, -2147483647i) << (vec4<u32>(41700u, arg_0, 61891u, var_1.a) % vec4<u32>(32u))), reverseBits(vec4<i32>(2147483647i, -29844i, 21614i, -1i))), ~(vec4<i32>(-22651i, -2147483647i, 0i, 2147483647i) >> (vec4<u32>(29041u, arg_1.a, 7682u, arg_0) % vec4<u32>(32u))) >> ((~arg_3 & _wgslsmith_add_vec4_u32(arg_2, arg_2)) % vec4<u32>(32u))), any(!select(!vec4<bool>(arg_1.b.x, true, false, true), vec4<bool>(arg_1.b.x, arg_1.b.x, true, true), all(vec4<bool>(true, var_0, var_0, arg_1.b.x)))));
    return Struct_4(~(-3238i), abs(var_3.xyz), Struct_3(_wgslsmith_mod_u32(~arg_3.x, arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-936f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(788f, 313f))))))));
    let var_2 = u_input.a.zy;
    var var_3 = func_6(var_2.x, func_5(func_2(vec4<i32>(func_1(vec3<f32>(-742f, 1452f, -553f), vec3<f32>(1227f, 667f, -1000f), vec4<i32>(-5548i, -42355i, 18873i, 1125i), Struct_3(25129u, -683f)), 1i, 1i, 1i)), select(vec2<bool>(false, all(vec4<bool>(true, var_0, var_0, false))), !select(vec2<bool>(true, false), vec2<bool>(true, var_0), false), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true))), Struct_2(~6792u, vec3<bool>(true, true, true))), countOneBits(vec4<u32>(~var_2.x, 4294967295u, u_input.a.x ^ 5269u, abs(var_2.x))) & _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, var_2.x, 1u), vec4<u32>(68802u, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(25600u, u_input.a.x, u_input.a.x, var_2.x) | (vec4<u32>(55229u, 15092u, 5498u, 8606u) & vec4<u32>(var_2.x, var_2.x, u_input.a.x, 1u))), vec4<u32>(~(~(~1u)), max(14655u, var_2.x), _wgslsmith_dot_vec3_u32(~(~u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4233u, 35554u, var_2.x)), abs(u_input.a))), _wgslsmith_sub_u32(~func_5(Struct_1(vec4<i32>(-2147483647i, 34031i, -71693i, -2147483647i)), vec2<bool>(var_0, true), Struct_2(u_input.a.x, vec3<bool>(true, false, false))).a, var_2.x)));
    var var_4 = Struct_2(21825u, vec3<bool>(false, true, false));
    let var_5 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~u_input.a, select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.a, var_2.x, 0u), u_input.a, vec3<u32>(var_4.a, u_input.a.x, var_4.a)), ~u_input.a, select(false, false, var_4.b.x))), firstLeadingBit(4294967295u) >> (var_3.c.a % 32u), 12781u, 43951u);
    let var_6 = ~vec3<i32>(_wgslsmith_div_i32(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-234f, var_3.c.b, var_3.c.b), vec3<f32>(943f, -555f, 216f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.b, 169f, 119f) + vec3<f32>(var_3.c.b, var_3.c.b, var_3.c.b)), -vec4<i32>(-1672i, var_3.b.x, -71243i, var_3.b.x), func_6(u_input.a.x, Struct_2(u_input.a.x, var_4.b), var_5, var_5).c), ~firstLeadingBit(-68950i)), 2147483647i, 932i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, 0u, -vec2<i32>(reverseBits(_wgslsmith_clamp_i32(-57666i, 0i, var_3.a)), var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.b - 311f) + var_3.c.b))) - var_3.c.b), var_3.c.a);
}

