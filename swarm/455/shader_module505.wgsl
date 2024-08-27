struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(select(arg_1.b.a, vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(60906i, -1i)) == _wgslsmith_div_i32(1i, 24626i), arg_1.b.a.x, false, select(all(vec4<bool>(arg_0, arg_1.b.a.x, arg_0, arg_0)), any(vec4<bool>(false, arg_0, arg_1.b.a.x, arg_0)), arg_1.b.a.x)), !(!vec4<bool>(true, false, arg_0, true))), _wgslsmith_f_op_vec2_f32(arg_1.b.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.b.b))))), ~(~(~firstTrailingBit(arg_1.b.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.x, arg_1.c.x)) + _wgslsmith_f_op_f32(-1634f * 189f)) + 150f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-676f, _wgslsmith_f_op_f32(-arg_1.b.b.x), all(arg_1.b.a.yxw)))))), arg_1.b.e);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-814f * arg_1.c.x) * var_0.d), arg_1.b.d)) - _wgslsmith_f_op_f32(f32(-1f) * -420f));
    var_1 = _wgslsmith_f_op_f32(floor(arg_1.b.b.x));
    var_0 = arg_1.b;
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(29116u, ~(~var_0.e.x)), var_0.e.zw, select(select(~var_0.c.zx, vec2<u32>(u_input.a, 52056u), select(var_0.a.x, true, true)), vec2<u32>(_wgslsmith_mult_u32(1u, arg_1.b.e.x), 4294967295u >> (0u % 32u)), false)), vec2<u32>(var_0.c.x, u_input.a));
    return 4534i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_1(!vec4<bool>(true, _wgslsmith_f_op_f32(848f * arg_3.x) > 353f, (arg_1 <= 0u) && (72899i == u_input.b), _wgslsmith_mod_i32(u_input.b, u_input.b) <= func_3(false, Struct_2(u_input.b, Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(arg_3.x, -699f), vec4<u32>(arg_2.x, arg_1, arg_2.x, 66932u), arg_3.x, vec4<u32>(u_input.a, u_input.a, 12179u, 49794u)), vec3<f32>(607f, 182f, arg_3.x), -9241i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.x + 503f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x + arg_3.x))))), vec4<u32>(arg_1, max(~firstLeadingBit(2429u), u_input.a), countOneBits(_wgslsmith_mult_u32(0u, u_input.a)), max(4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a), arg_1, ~0u))), -1786f, ~(~(vec4<u32>(arg_1, u_input.a, u_input.a, 1u) & vec4<u32>(0u, arg_1, 0u, arg_0))) ^ select(select(vec4<u32>(arg_1, 0u, 37947u, arg_1), vec4<u32>(u_input.a, 0u, arg_0, u_input.a) & vec4<u32>(4294967295u, 13811u, 1u, arg_1), vec4<bool>(true, true, true, true)), abs(~vec4<u32>(u_input.a, arg_0, 0u, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)));
    var var_1 = Struct_1(select(!vec4<bool>(true || var_0.a.x, var_0.a.x, true, any(var_0.a.ywz)), var_0.a, true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(arg_3.x, 1489f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, arg_3.x))) * arg_3.zy))), vec4<u32>(u_input.a, 52769u, ~4294967295u, var_0.e.x), -452f, firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(var_0.c, vec4<u32>(arg_2.x, arg_0, arg_0, u_input.a), var_0.a), vec4<u32>(_wgslsmith_mod_u32(arg_2.x, 107745u), 8314u, arg_2.x, select(var_0.c.x, 0u, var_0.a.x)), select(_wgslsmith_sub_vec4_u32(var_0.c, var_0.c), var_0.c, var_0.a))));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.b))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, var_0.c.x, 1892u, 0u)), var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3.x, arg_3.x))))), var_1.c);
    let var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(41945u, ~reverseBits(arg_0), var_1.c.x, var_0.c.x), ~reverseBits(var_0.c));
    let var_3 = Struct_2(max(abs(-2147483647i), min(u_input.b, u_input.b) & 53360i), Struct_1(select(select(select(var_1.a, var_0.a, var_1.a.x), !var_0.a, var_1.a.x & var_1.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, var_1.a.x), var_0.a.x), var_0.b, ~var_1.c, _wgslsmith_f_op_f32(-arg_3.x), var_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(arg_3.x, -583f, var_1.b.x))) * arg_3) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, arg_3.x, -600f))))))), select(_wgslsmith_dot_vec3_i32(vec3<i32>(29649i >> (1u % 32u), -u_input.b, 1i), min(abs(vec3<i32>(u_input.b, -1i, 30972i)), abs(vec3<i32>(u_input.b, u_input.b, 2147483647i)))), abs(-25178i), true));
    return !select(any(!vec4<bool>(var_0.a.x, true, var_1.a.x, true)), var_1.a.x && var_3.b.a.x, var_3.b.a.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_2 {
    return Struct_2(reverseBits(_wgslsmith_dot_vec3_i32(arg_0 | vec3<i32>(2147483647i, 34492i, 27612i), vec3<i32>(u_input.b, 41638i, -12771i) | vec3<i32>(arg_0.x, 37310i, arg_0.x))) & -1i, Struct_1(vec4<bool>(true, true, !(!arg_1.x), true), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1043f)), _wgslsmith_f_op_f32(133f * 972f))), 815f), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(37119u, 74200u, 11550u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u))), 155f, abs(reverseBits(vec4<u32>(1u, 49831u, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, 379f, -805f) * vec3<f32>(-527f, -1020f, -1365f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1199f, 920f, 365f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, -627f, 2353f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, -812f, 548f)))), reverseBits(~_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(u_input.b, 1i, arg_0.x))) | (0i ^ countOneBits(-1i >> (u_input.a % 32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(select(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, u_input.b, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-8349i, u_input.b, 2147483647i), vec3<i32>(2147483647i, -2147483647i, u_input.b))), -vec3<i32>(0i >> (0u % 32u), -60463i, i32(-1i) * -5208i), vec3<bool>(true, true, true & func_2(0u, 27197u, vec2<u32>(3021u, u_input.a), vec3<f32>(-345f, 156f, 140f)))), vec4<bool>(true, false, all(vec3<bool>(false, func_2(u_input.a, u_input.a, vec2<u32>(1u, 4294967295u), vec3<f32>(1123f, -227f, -604f)), any(vec4<bool>(true, true, false, false)))), !any(vec4<bool>(false, true, false, false)) == true));
    var var_1 = Struct_2(var_0.a, var_0.b, var_0.c, -1i << (countOneBits(u_input.a) % 32u));
    var_1 = var_0;
    let var_2 = ~func_4(vec3<i32>(firstLeadingBit(1i), reverseBits(~32163i), -1i), select(var_0.b.a, !(!vec4<bool>(true, false, var_0.b.a.x, var_1.b.a.x)), select(func_4(vec3<i32>(u_input.b, var_1.a, var_1.a), var_0.b.a).b.a, vec4<bool>(var_1.b.a.x, true, false, true), !var_0.b.a.x))).b.e.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.b.d) * 633f);
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    let var_0 = abs(u_input.b);
    let var_1 = Struct_2(1i, func_4(-select(vec3<i32>(var_0, arg_0.d, 7376i) ^ vec3<i32>(u_input.b, 2147483647i, arg_0.d), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -24766i, arg_0.d), vec3<i32>(-1i, arg_0.d, 2147483647i)), arg_0.b.a.ywz), arg_0.b.a).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2364f, -736f, 1352f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 2126f, arg_0.c.x))), arg_0.c)) - arg_0.c), ~var_0);
    let var_2 = var_1;
    let var_3 = func_1().a.x;
    var var_4 = var_1.b.e.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f * var_1.b.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c.x, 1000f, true)))))) * _wgslsmith_f_op_f32(arg_0.b.b.x * 124f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(784f)))))) * -825f), _wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(func_5(Struct_2(34700i, func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(244f, -1152f, -1859f)), u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, 488f, -484f, -350f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 718f, 449f, -924f) - vec4<f32>(-673f, -925f, 941f, -1000f))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2613f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1065f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f + -1867f)) - -339f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(111f)) - -1790f))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.ywy), _wgslsmith_f_op_vec3_f32(max(var_0.xzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.wzz, vec3<f32>(-406f, var_0.x, -876f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(func_4(vec3<i32>(u_input.b, u_input.b, -27698i), func_4(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec4<bool>(false, true, false, false)).b.a).b.c.x), 0u), _wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_dot_vec3_i32(vec3<i32>(-22514i, -9481i, -_wgslsmith_add_i32(-1311i, u_input.b)), vec3<i32>(firstTrailingBit(u_input.b << (u_input.a % 32u)), _wgslsmith_mult_i32(min(u_input.b, u_input.b), 21834i), ~reverseBits(-50513i))), vec3<u32>(~(~4294967295u), _wgslsmith_mult_u32(func_4(vec3<i32>(2147483647i, u_input.b, u_input.b), vec4<bool>(false, false, true, false)).b.e.x, 1u) >> (29502u % 32u), u_input.a));
}

