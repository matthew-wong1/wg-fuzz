struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1567f, 1459f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-595f, 1580f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(143f, 263f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-725f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.c, arg_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.c, u_input.b, 91806u), vec4<u32>(1352u, 1u, arg_0, arg_0), vec4<u32>(8756u, arg_0, arg_0, 88512u))), vec4<u32>(u_input.c, 0u | u_input.c, countOneBits(89772u), ~21004u)) & vec4<u32>(_wgslsmith_div_u32(11653u, abs(1u)), ~(~62585u), firstLeadingBit(arg_0), ~u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 1887f, 1507f))))))), _wgslsmith_sub_i32(min(-(i32(-1i) * -2147483647i), 0i ^ _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_mult_i32(~firstLeadingBit(u_input.a), ~u_input.a)));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a.xyy - var_1.b.a.yyx));
    let var_4 = Struct_2(-firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_1.c), vec2<i32>(u_input.d, -23898i)) ^ vec2<i32>(-14867i, var_1.c)), var_1.b, Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b.a - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_3.x, var_1.b.a.x, var_0.x))))), var_1.b);
    return all(vec2<bool>(!select(false, true, true), (_wgslsmith_mod_u32(111304u, 43840u) > _wgslsmith_sub_u32(var_1.a.x, 1u)) & (1u == _wgslsmith_dot_vec3_u32(var_1.a.wyw, var_1.a.yxz))));
}

fn func_2() -> Struct_2 {
    let var_0 = !(!func_3(~_wgslsmith_sub_u32(u_input.c, u_input.c)));
    var var_1 = Struct_2(vec2<i32>((u_input.d ^ u_input.a) | ~u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d)) | ((vec2<i32>(u_input.d, u_input.d) >> (firstTrailingBit(vec2<u32>(10898u, 0u)) % vec2<u32>(32u))) & vec2<i32>(i32(-1i) * -1i, 1i)), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, -629f, -1080f, 420f) + vec4<f32>(740f, 1093f, -1634f, 175f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(538f, 720f, -1000f, -357f) * vec4<f32>(-2060f, -1588f, -768f, -219f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -824f, 603f, -1162f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, -190f, 633f, 1730f)))))), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 231f, 327f, 1930f)));
    let var_2 = ~(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x & u_input.d, _wgslsmith_add_i32(64186i, -2147483647i), -16254i, ~1i), vec4<i32>(reverseBits(var_1.a.x), u_input.a >> (54787u % 32u), _wgslsmith_div_i32(0i, -29965i), _wgslsmith_sub_i32(1i, -6333i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(63400i), var_1.a.x, -2147483647i & u_input.d, -2147483647i), vec4<i32>(reverseBits(var_1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(58259i, 6003i, var_1.a.x, var_1.a.x), vec4<i32>(-2147483647i, 55650i, 2147483647i, var_1.a.x)), -var_1.a.x, _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(var_1.a.x, var_1.a.x)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(414f, _wgslsmith_f_op_f32(456f * var_1.d.a.x)))))), _wgslsmith_f_op_f32(-246f * -647f), 788f, var_1.d.a.x);
    var_3 = var_1.c.a;
    return Struct_2(~vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, u_input.d, u_input.d, -2147483647i), firstTrailingBit(var_2)), var_1.a.x), var_1.d, var_1.c, var_1.d);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -12598i, 18851i), vec3<i32>(var_0.a.x, -10460i, var_0.a.x)), -vec3<i32>(arg_0.a.x, var_0.a.x, -38955i), abs(vec3<i32>(-255i, arg_2.x, 77893i)))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(arg_2.x), ~(-1i), max(u_input.d, arg_2.x)), vec3<i32>(u_input.d, arg_0.a.x, 67678i & u_input.a)), ~(-(~firstTrailingBit(vec3<i32>(u_input.d, 5428i, var_0.a.x)))), func_3(firstLeadingBit(4294967295u)));
    let var_2 = arg_1;
    var var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2().d.a + arg_0.c.a)));
    return func_2().c;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(reverseBits(~(-(vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(63258u, 0u) % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~20870i, u_input.d), min(_wgslsmith_sub_vec2_i32(vec2<i32>(35042i, u_input.d), vec2<i32>(u_input.a, u_input.d)), vec2<i32>(u_input.a, u_input.a))), select(u_input.d, u_input.d, arg_0)));
    var var_1 = func_4(func_2(), false, vec2<i32>(func_2().a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -13023i, var_0.x), ~vec3<i32>(var_0.x, -217i, u_input.a))), vec3<u32>(59168u, abs(~4294967295u), abs(~(~u_input.b))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.a.x + 305f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 821f, var_1.a.x, 891f), _wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, vec4<bool>(arg_0, arg_0, true, true)))))));
    var var_2 = -2147483647i;
    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 53639u, 1u, u_input.c), vec4<u32>(0u, u_input.b, 0u, 0u)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 52244u, u_input.c, u_input.c), vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c))), func_4(Struct_2(var_0, Struct_1(vec4<f32>(-317f, var_1.a.x, var_1.a.x, 1792f)), func_4(func_2(), true, ~var_0, max(vec3<u32>(u_input.b, u_input.c, 102807u), vec3<u32>(4294967295u, 0u, u_input.c))), func_2().c), any(vec4<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), true, true, false)), vec2<i32>(14470i, func_2().a.x ^ var_0.x), vec3<u32>(10580u, _wgslsmith_div_u32(~u_input.c, ~2013u), _wgslsmith_div_u32(u_input.c, u_input.b))), 0i);
    return vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, !any(vec4<bool>(true, true, true, arg_0)), any(vec3<bool>(arg_0, arg_0, arg_0)), !arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(any(vec2<bool>(true, false)), true, any(func_1(false)), select(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), 2274u == u_input.b)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_1 = ~vec3<u32>(firstLeadingBit(u_input.c), u_input.b, 1u);
    var_1 = min(_wgslsmith_sub_vec3_u32(firstLeadingBit(countOneBits(~vec3<u32>(74663u, var_1.x, u_input.b))), ~_wgslsmith_div_vec3_u32(vec3<u32>(34456u, var_1.x, u_input.c) << (vec3<u32>(var_1.x, var_1.x, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 1u, 4294967295u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c << (19548u % 32u), firstLeadingBit(u_input.b), ~17374u), ~vec3<u32>(var_1.x, u_input.c, 55006u) >> (~vec3<u32>(4294967295u, 15948u, u_input.b) % vec3<u32>(32u)), ~(vec3<u32>(0u, 1u, 1u) | vec3<u32>(var_1.x, 4294967295u, 6732u))));
    var_0 = select(vec4<bool>(any(vec4<bool>(var_0.x, select(var_0.x, var_0.x, false), var_0.x, true)), true, select(false, var_0.x, true), true), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-677f, 507f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1353f, -1474f)) - _wgslsmith_f_op_f32(f32(-1f) * -250f)), false, (!var_0.x & !var_0.x) || (var_0.x || any(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), var_0.x), _wgslsmith_f_op_f32(select(1000f, func_2().b.a.x, true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1032f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1505f + 1185f))));
    var_0 = select(select(!vec4<bool>(-1i < u_input.d, var_1.x != u_input.b, true, false == var_0.x), select(select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x)), !vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(!var_0.x, 1u <= var_1.x, func_1(false).x, !var_0.x), ~4294967295u >= _wgslsmith_add_u32(u_input.c, var_1.x)), ~(u_input.c | 45923u) != ~abs(u_input.b)), vec4<bool>(!all(!vec4<bool>(true, var_0.x, true, true)), any(!var_0.yxx), var_0.x, any(select(var_0.wwx, !var_0.wyx, select(var_0.xwy, vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false))))), select(true, var_0.x, true));
    var var_2 = func_4(Struct_2(-reverseBits(vec2<i32>(70326i, 2147483647i)) << (~(vec2<u32>(var_1.x, u_input.b) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), func_4(Struct_2(vec2<i32>(u_input.d, -20339i) & vec2<i32>(u_input.d, u_input.a), Struct_1(vec4<f32>(227f, -1180f, 174f, -837f)), Struct_1(vec4<f32>(839f, -117f, -554f, -570f)), func_2().d), var_0.x, vec2<i32>(u_input.a, ~2147483647i), vec3<u32>(var_1.x | 11591u, 33991u, var_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, 1526f, 1548f, 750f)) - vec4<f32>(-1733f, -1291f, 392f, -1135f))), func_4(func_2(), any(!var_0.zz), select(~vec2<i32>(1i, u_input.a), -vec2<i32>(1091i, -11915i), true && var_0.x), max(reverseBits(vec3<u32>(var_1.x, 4294967295u, 1u)), vec3<u32>(u_input.b, 84147u, 31771u)))), true, abs(~vec2<i32>(-40912i, u_input.a)), (vec3<u32>(_wgslsmith_div_u32(0u, u_input.b), var_1.x ^ 0u, ~1u) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.x, 1u), vec3<u32>(var_1.x, 1891u, var_1.x) >> (vec3<u32>(1u, u_input.c, 11184u) % vec3<u32>(32u))) % vec3<u32>(32u))) << ((select(vec3<u32>(50987u, var_1.x, 29993u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 28113u, 0u), vec3<u32>(u_input.c, u_input.c, var_1.x)), select(var_0.xzx, var_0.xyy, false)) ^ vec3<u32>(~u_input.c, ~var_1.x, 90029u)) % vec3<u32>(32u)));
    var var_3 = func_4(func_2(), true, firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, countOneBits(u_input.a)), vec2<i32>(_wgslsmith_add_i32(u_input.d, u_input.a), 17184i))), vec3<u32>(~5314u >> (_wgslsmith_dot_vec2_u32(~var_1.zz, ~var_1.xz) % 32u), _wgslsmith_sub_u32(u_input.c, ~4294967295u), _wgslsmith_add_u32(39139u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(18576u, (vec4<i32>(-2147483647i, u_input.d, u_input.a, i32(-1i) * -38271i) ^ reverseBits(firstTrailingBit(vec4<i32>(2147483647i, u_input.d, u_input.a, u_input.a)))) | -(select(vec4<i32>(1i, 9580i, u_input.d, u_input.a), vec4<i32>(u_input.d, u_input.d, -23644i, 1i), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) | firstLeadingBit(vec4<i32>(-68448i, u_input.d, -35277i, 0i))), abs(countOneBits(vec4<u32>(var_1.x, u_input.b, var_1.x, var_1.x)) & vec4<u32>(u_input.b, 14350u, u_input.b, 4294967295u)) | ~vec4<u32>(1u, 1u, ~0u, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - -142f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1383f)), -1000f))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(-1i, u_input.a, u_input.a)), -select(vec3<i32>(u_input.a, 1i, 0i), vec3<i32>(u_input.a, u_input.d, u_input.a), vec3<bool>(var_0.x, false, var_0.x))), -(u_input.a << (var_1.x % 32u)), -u_input.d));
}

