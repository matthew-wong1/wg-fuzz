struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_4(reverseBits(~vec3<i32>(_wgslsmith_mod_i32(arg_1.x, arg_1.x), -arg_1.x, firstLeadingBit(arg_1.x))), 21174u, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x))), firstLeadingBit(u_input.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1750f)))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec2<i32>(-1i, arg_1.x)), select(u_input.b.x, -min(~arg_1.x, _wgslsmith_add_i32(-1i, 26307i)), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(var_0.b, 0u));
    let var_2 = var_1;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-733f - var_0.c.d.x), 1f), -617f);
    var_0 = Struct_4(vec3<i32>(arg_1.x, u_input.b.x, -29777i), _wgslsmith_div_u32(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, var_0.b, 1u) & vec4<u32>(var_2, 4294967295u, 59121u, 4294967295u), firstTrailingBit(vec4<u32>(var_0.b, var_2, 31572u, var_0.b)))) ^ var_1, var_0.c, i32(-1i) * -1i);
    return all(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), vec2<bool>(true, -507f == var_3), false));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = ~(~(~(~firstTrailingBit(vec2<u32>(0u, 51254u)))));
    var var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.d.x, arg_0.a.x)))), -1514f), u_input.b);
    var var_2 = Struct_3(vec3<bool>(true, true, true));
    let var_3 = !var_2.a.x;
    var_1 = all(vec3<bool>(!var_3, true | all(select(vec4<bool>(true, var_3, true, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true), vec4<bool>(true, var_2.a.x, var_3, false))), !var_2.a.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-180f, 254f))) * _wgslsmith_f_op_vec2_f32(arg_0.c + arg_0.d.xx));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(-1717f, 644f));
    let var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(select(max(arg_0.b, u_input.a), _wgslsmith_mult_i32(arg_0.b, u_input.b.x), true), arg_0.e.x, -1i, u_input.b.x | min(-2147483647i, u_input.b.x))), select(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(arg_0.b, arg_0.b, arg_0.e.x, 39041i)), -vec4<i32>(25152i, u_input.a, 46039i, 2147483647i) & ~vec4<i32>(-1i, 83946i, 1i, 2147483647i)), vec4<i32>(0i, _wgslsmith_sub_i32(-2147483647i, -2147483647i), 2147483647i, 1i), vec4<bool>(false, false, _wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(ceil(-1000f)), true && all(vec4<bool>(false, false, true, false)))));
    let var_2 = -vec3<i32>(-334i, countOneBits(-var_1.x), u_input.a >> (~max(4294967295u, 12668u) % 32u));
    let var_3 = Struct_2(arg_0, arg_0, ~vec4<u32>(abs(_wgslsmith_mult_u32(42230u, 0u)), 1u, 39594u, _wgslsmith_mod_u32(select(116124u, 3639u, true), ~1u)));
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -8935i), var_3.b.b << (0u % 32u)), _wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(var_3.a.e)), abs(var_1.xy)), 8747i), -_wgslsmith_sub_vec4_i32((vec4<i32>(-75609i, var_2.x, 63980i, 20263i) << (vec4<u32>(56436u, var_3.c.x, 1u, 53727u) % vec4<u32>(32u))) >> (abs(vec4<u32>(0u, 79939u, var_3.c.x, var_3.c.x)) % vec4<u32>(32u)), var_1));
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.d.zw)), ~(-35586i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-356f, arg_0.a.a.x) - vec2<f32>(arg_0.a.d.x, -1306f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.d.x, -1000f) + arg_0.b.c)))), arg_0.b.d, vec2<i32>(u_input.a, select(abs(-5148i), u_input.b.x, func_3(arg_0.a.c, u_input.b)))), _wgslsmith_f_op_vec2_f32(func_2(func_4(arg_0.b, 294f, arg_0.b.a.x).b)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x))).a;
    let var_1 = select(select(vec4<bool>(true, true, max(21190u, 0u) != min(arg_1.x, 4294967295u), !any(vec4<bool>(true, true, true, true))), vec4<bool>(true, _wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x) <= -2289f, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec2<bool>(true, true)), (-1539f <= var_0.a.x) == (u_input.b.x < 67553i), !(55361u >= arg_0.c.x), true), !vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, (var_0.b ^ 2147483647i) < -arg_0.b.e.x));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~u_input.b.x & 903i, -15648i), countOneBits(arg_0.b.b), -1i) | -2147483647i;
    var var_3 = Struct_4(_wgslsmith_sub_vec3_i32(countOneBits(reverseBits(vec3<i32>(arg_0.b.e.x, 2147483647i, 50979i))) ^ vec3<i32>(0i, abs(u_input.a), 1i), _wgslsmith_sub_vec3_i32(select(firstTrailingBit(vec3<i32>(var_0.b, 3515i, 2147483647i)), select(vec3<i32>(-22232i, u_input.b.x, var_0.e.x), vec3<i32>(0i, arg_0.b.b, arg_0.a.b), var_1.yzw), false), vec3<i32>(-2147483647i, u_input.b.x, -8773i) ^ vec3<i32>(u_input.b.x, arg_0.b.e.x, arg_0.b.b))), 0u, var_0, -5803i);
    var var_4 = arg_0.b.e.x;
    return func_4(var_3.c, _wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(round(215f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = ~1u;
    var var_1 = !(!(!vec4<bool>(all(vec4<bool>(false, false, true, true)), false, true, true)));
    return func_5(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(-832f, -137f), -20448i, vec2<f32>(-1000f, 341f), vec4<f32>(-416f, 961f, -1621f, 381f), vec2<i32>(-2147483647i, arg_0.x)))), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(1205f, -579f), arg_0.x, vec2<f32>(-384f, -1000f), vec4<f32>(-157f, 1556f, -390f, -935f), u_input.b))), _wgslsmith_div_vec2_f32(vec2<f32>(2162f, -426f), vec2<f32>(160f, 1380f)), all(var_1.wy))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 227f, -439f, -600f) - vec4<f32>(-779f, -1615f, -1027f, -742f)), _wgslsmith_div_vec4_f32(vec4<f32>(-271f, 1018f, 1571f, -105f), vec4<f32>(1303f, -1298f, 596f, -849f))), ~(~vec2<i32>(u_input.b.x, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -759f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(117f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(753f + -345f)))), vec3<u32>(arg_2 ^ firstLeadingBit(1u), _wgslsmith_mod_u32(arg_2, _wgslsmith_sub_u32(select(13673u, arg_2, false), 6471u)), 50413u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b, _wgslsmith_dot_vec4_u32(abs(abs(countOneBits(vec4<u32>(1u, 1u, 14909u, 4294967295u)))), max(countOneBits(~vec4<u32>(21140u, 24134u, 21189u, 45579u)), vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_mult_u32(1u, 1u), firstLeadingBit(32487u), ~1u))), ~(~firstTrailingBit(1u)), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 15714i, 2147483647i, u_input.b.x), (vec4<i32>(1i, u_input.a, 2147483647i, u_input.b.x) ^ vec4<i32>(2147483647i, 0i, 25141i, u_input.a)) | ~vec4<i32>(u_input.a, 16814i, 1i, u_input.a)));
    let var_1 = vec3<u32>((_wgslsmith_dot_vec2_u32(~vec2<u32>(24626u, 55799u), ~var_0.c.yw) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57612u, 1u, var_0.c.x), _wgslsmith_mult_vec4_u32(var_0.c, var_0.c))) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(~0u, 8110u | var_0.c.x), ~(~var_0.c.x)) % 32u), var_0.c.x, var_0.c.x);
    let var_2 = var_0;
    var var_3 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, select(true, var_2.c.x == var_0.c.x, true))), true);
    var_3 = vec2<bool>(!all(select(vec4<bool>(true, false, var_3.x, var_3.x), select(vec4<bool>(true, true, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), false), !vec4<bool>(var_3.x, false, false, var_3.x))), true);
    var_3 = !vec2<bool>(_wgslsmith_dot_vec3_u32(var_0.c.zww, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c.x, 4294967295u, 31533u), var_2.c.zww, vec3<u32>(1u, 92971u, 4294967295u))) == countOneBits(var_2.c.x), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_0.b.d);
}

