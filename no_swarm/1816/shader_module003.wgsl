struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = u_input.c.wwz;
    var_0 = u_input.c.yzw;
    let var_1 = vec4<u32>(~var_0.x, 6995u, (var_0.x & 0u) | var_0.x, u_input.c.x);
    var var_2 = vec3<f32>(-716f, -1264f, 442f);
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return !(!(!arg_0.x)) || arg_0.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = false;
    var_1 = !(any(vec2<bool>(true, true)) | all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), func_3(vec4<bool>(true, false, true, true), arg_1))));
    let var_2 = vec3<bool>(!(!(-1471f == _wgslsmith_f_op_f32(max(arg_2.x, -1827f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1429f)), 1f) > arg_2.x, 46503u == reverseBits(u_input.c.x));
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 414f;
    var var_1 = countOneBits(u_input.d) ^ -1i;
    var var_2 = Struct_1(_wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(-2147483647i, u_input.d)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(27461u, 4294967295u, 25448u), u_input.c.xyx)) % 32u), 42649i, func_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(-1i, vec2<i32>(arg_1.a, -1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1883f, -533f, arg_0.x) + vec3<f32>(arg_0.x, -452f, arg_0.x)), reverseBits(vec3<i32>(20963i, arg_1.a, -3966i))).b.x ^ _wgslsmith_sub_i32(u_input.d, -2147483647i)), _wgslsmith_sub_vec2_i32(~reverseBits(vec2<i32>(u_input.d, u_input.d)), ~vec2<i32>(2147483647i, -14843i) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) ^ max(vec2<i32>(2147483647i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a, arg_1.b.x), abs(vec2<i32>(arg_1.b.x, -47551i)))));
    return func_2(arg_0.x, func_2(arg_0.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1, vec3<f32>(-1785f, 1164f, _wgslsmith_div_f32(697f, arg_0.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(21274i, var_2.b.x, -1i), vec3<i32>(-2147483647i, 51875i, u_input.b), -vec3<i32>(arg_1.a, u_input.b, -42450i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-926f, arg_0.x)), -384f, _wgslsmith_div_f32(arg_0.x, arg_0.x)), vec3<f32>(_wgslsmith_div_f32(-752f, arg_0.x), arg_0.x, _wgslsmith_div_f32(-489f, 516f))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b, var_2.b.x) << (u_input.c % vec4<u32>(32u)), select(vec4<i32>(0i, -1i, var_2.a, 43419i), vec4<i32>(arg_1.b.x, -1i, 1i, 33744i), vec4<bool>(false, false, false, false))), abs(var_2.a) | ~u_input.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-91369i, var_2.b.x), 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), -1099f, _wgslsmith_f_op_f32(round(-292f)))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i, 1i, arg_1.b.x)), ~(~vec3<i32>(var_2.b.x, 0i, arg_1.b.x) ^ vec3<i32>(2147483647i, -12525i, 2147483647i))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<bool>(arg_2.x, -551f >= _wgslsmith_f_op_f32(arg_0.x + 1f), !(_wgslsmith_div_f32(-619f, arg_0.x) > _wgslsmith_f_op_f32(388f * 806f)) == true, false);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(343f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) - _wgslsmith_f_op_f32(exp2(arg_0.x))))), func_4(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f + arg_0.x) * _wgslsmith_f_op_f32(select(437f, 425f, arg_2.x)))), Struct_1(1i >> ((arg_1.x >> (35192u % 32u)) % 32u), max(-vec2<i32>(u_input.d, u_input.d), ~arg_3.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(282f, 135f, arg_0.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, -330f, arg_0.x)))))), -(~(vec3<i32>(u_input.b, -2147483647i, -5461i) & vec3<i32>(1i, 0i, -43661i))) << (~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, arg_1.x, u_input.a), vec3<u32>(4294967295u, u_input.c.x, arg_1.x) >> (u_input.c.wxz % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = u_input.a;
    var_2 = u_input.c.x;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3563f, 1836f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-279f, -1121f) + vec2<f32>(-228f, 632f)))))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(1u, u_input.c.x, u_input.c.x), abs(vec3<u32>(1u, u_input.c.x, u_input.c.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), func_4(vec2<f32>(_wgslsmith_f_op_f32(max(-569f, -382f)), 946f), func_2(-743f, Struct_1(u_input.b, vec2<i32>(u_input.b, u_input.b)), vec3<f32>(-211f, 1036f, 1488f), _wgslsmith_sub_vec3_i32(vec3<i32>(-26431i, u_input.d, -64591i), vec3<i32>(u_input.b, -43434i, u_input.b)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1431f, _wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_div_f32(-280f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -171f))))));
    return (~(~u_input.c) >> (~abs(u_input.c) % vec4<u32>(32u))) & ~abs(u_input.c);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = true;
    return var_0;
}

fn func_7(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~vec3<u32>(firstTrailingBit(select(41194u, u_input.a, arg_1.x)), reverseBits(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 17730u)), 0u);
    var var_2 = Struct_1(firstTrailingBit(19484i) >> (1u % 32u), vec2<i32>(-u_input.d, -u_input.b));
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b) | _wgslsmith_add_i32(var_2.a, 0i), u_input.d, var_2.a), vec3<i32>(-1i) * -(vec3<i32>(var_2.b.x, u_input.d, 52387i) | vec3<i32>(0i, -48827i, u_input.b))), _wgslsmith_div_vec3_i32(vec3<i32>(0i, _wgslsmith_div_i32(u_input.d, -31436i), 0i), select(vec3<i32>(2147483647i, 64278i, 23430i), vec3<i32>(var_2.a, 42040i, -1i), select(arg_1.wwx, arg_1.zww, arg_1.wzw))) & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 20200i), ~vec3<i32>(var_2.a, var_2.a, -1i)), select(vec3<i32>(var_2.a, var_2.b.x, 0i), vec3<i32>(24405i, u_input.b, u_input.d), true)));
    var_2 = Struct_1(-1i, vec2<i32>(var_2.b.x, -4299i));
    return func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1507f, _wgslsmith_f_op_f32(sign(613f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1025f, 475f), vec2<f32>(-622f, -1000f))) * vec2<f32>(535f, _wgslsmith_f_op_f32(round(-1000f)))))), Struct_1(firstTrailingBit(_wgslsmith_mod_i32(var_2.a, _wgslsmith_sub_i32(u_input.d, u_input.b))), firstTrailingBit(vec2<i32>(min(-1i, 37327i), 52114i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d, vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.d, u_input.d)));
    var var_1 = func_7(func_6(func_1(), vec3<i32>(u_input.b, -9086i, var_0.b.x), Struct_1(-29326i << ((u_input.c.x & 4651u) % 32u), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-15625i, var_0.b.x), vec2<i32>(60159i, u_input.b), vec2<i32>(var_0.a, 2147483647i))))), !vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), -38851i == ~var_0.a, true));
    var_1 = Struct_1(~(-_wgslsmith_sub_i32(-var_0.a, u_input.d)), vec2<i32>(~max(var_0.a, -48044i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1446f + -457f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) - _wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_f_op_f32(f32(-1f) * -240f))));
}

