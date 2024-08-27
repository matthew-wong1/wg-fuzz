struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1472f * -1738f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(625f)) - 191f)))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x & u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), select(~vec3<u32>(70609u, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 55910u)), true)), vec3<f32>(-325f, -278f, _wgslsmith_f_op_f32(-1230f - -404f))), true);
    var var_1 = 407f;
    var var_2 = Struct_2(true);
    var_2 = Struct_2((~51008u & ~var_0.b.a.x) >= _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(u_input.b, var_0.b.a.xx, vec2<bool>(var_0.c, var_2.a)), ~var_0.b.a.zx), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), countOneBits(vec3<u32>(0u, u_input.b.x, var_0.b.a.x)))));
    var_1 = var_0.a;
    return ~(vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), 1i, 2147483647i), reverseBits(-2147483647i), _wgslsmith_mod_i32(1i, u_input.a.x)) >> (vec3<u32>(1u, ~0u, select(var_0.b.a.x, reverseBits(u_input.b.x), 0u < var_0.b.a.x)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, 69326u), vec4<u32>(u_input.b.x, u_input.b.x, 66282u, u_input.b.x)), _wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a), _wgslsmith_sub_u32(u_input.b.x, arg_0.a.x)), ~(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) >> (arg_0.a % vec3<u32>(32u)))), vec3<u32>(select(~arg_0.a.x, ~u_input.b.x, false), select(_wgslsmith_div_u32(1u, 1u), u_input.b.x, true), ~u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2216f * -1837f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.b.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -422f)));
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = vec3<i32>(-countOneBits(0i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, abs(min(u_input.a.x, -23979i))), _wgslsmith_div_i32(abs(i32(-1i) * -5651i), -(u_input.a.x << (1u % 32u))), u_input.a.x), _wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, _wgslsmith_sub_i32(37848i, u_input.a.x)), -2103i)));
    var_2 = vec3<i32>(-(~abs(var_2.x)), -28945i, u_input.a.x);
    var var_3 = 33542u;
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2413f, 832f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x * -922f), -843f), all(select(vec4<bool>(var_1, false, true, var_1), select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(false, var_1, var_1, var_1), true), any(vec2<bool>(false, var_1)))))), Struct_1(var_0.a ^ _wgslsmith_div_vec3_u32(var_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(-1000f, var_0.b.x, arg_0.b.x)))))), var_1);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    var var_0 = func_2(arg_1.b);
    let var_1 = _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 13788i, arg_2.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i)), 2147483647i, u_input.a.x ^ -1i)), arg_2) ^ -_wgslsmith_div_vec3_i32(vec3<i32>(~(-60878i), arg_2.x, u_input.a.x), vec3<i32>(arg_2.x, -u_input.a.x, arg_2.x));
    var var_2 = ~(-firstTrailingBit(vec4<i32>(~2147483647i, -2147483647i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(9442i, u_input.a.x, arg_2.x, var_1.x), vec4<i32>(24885i, -36873i, u_input.a.x, arg_2.x)), _wgslsmith_clamp_i32(var_1.x, -19386i, 2147483647i))));
    let var_3 = ~var_1 >> (vec3<u32>(21873u, arg_1.b.a.x, firstLeadingBit(abs(u_input.b.x))) % vec3<u32>(32u));
    var var_4 = func_2(Struct_1(~min(arg_1.b.a, ~arg_1.b.a), arg_1.b.b));
    return var_3.x;
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, -485f, -1159f, 138f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1105f, 403f, 224f, -1467f) + vec4<f32>(626f, 168f, 1722f, -345f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1292f, -1000f, -1002f, -256f) - vec4<f32>(-2455f, 1127f, -482f, 1026f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) * _wgslsmith_f_op_f32(-1000f - 278f)), 1378f, _wgslsmith_f_op_f32(max(399f, _wgslsmith_f_op_f32(min(-1000f, -573f)))), -753f)));
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, u_input.a.x), -11657i, u_input.a.x) << (~(vec3<u32>(15626u, u_input.b.x, 0u) ^ vec3<u32>(u_input.b.x, 0u, 0u)) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, -16035i, 2147483647i) ^ (vec3<i32>(48041i, u_input.a.x, u_input.a.x) ^ vec3<i32>(u_input.a.x, -1i, u_input.a.x))), vec3<i32>(2147483647i, reverseBits(func_4(_wgslsmith_sub_u32(42631u, u_input.b.x), func_2(Struct_1(vec3<u32>(0u, 26694u, u_input.b.x), var_0.wxx)), vec3<i32>(-80351i, -9488i, u_input.a.x))), u_input.a.x));
    var var_3 = u_input.b.x << (~select(33343u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 18856u, u_input.b.x, 0u)), abs(u_input.b.x), true) % 32u);
    let var_4 = !func_2(func_2(func_2(func_2(Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<f32>(-666f, -178f, -255f))).b).b).b).c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, var_0.x, 995f, -621f) + vec4<f32>(470f, 2332f, -2582f, -2437f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1025f, -229f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, 168f, -1110f, -592f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1514f, 906f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, -242f, -471f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1081f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -749f)), -1769f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1264f, 1008f, -191f), vec3<f32>(-316f, 1020f, 1000f))))))));
    var var_1 = _wgslsmith_f_op_f32(1000f * 302f);
    let var_2 = ~firstTrailingBit(vec4<u32>(abs(~u_input.b.x), ~u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(18393u, 1u, 1u, 7365u)), min(21496u, u_input.b.x) << (u_input.b.x % 32u)));
    let var_3 = vec4<i32>(~_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(20330i, 0i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(37507i, u_input.a.x, u_input.a.x, -14746i), ~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), abs(-(~0i)), u_input.a.x, u_input.a.x);
    let var_4 = max(u_input.a.x, i32(-1i) * -5023i) << (25350u % 32u);
    var var_5 = ~0u;
    var var_6 = _wgslsmith_f_op_vec4_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(-1i ^ var_4)));
}

