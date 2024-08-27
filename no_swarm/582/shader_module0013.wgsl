struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, Struct_1(-42416i, vec4<f32>(-235f, 927f, -1472f, 205f), 53373i), Struct_1(-1i, vec4<f32>(114f, -1575f, 1132f, -1923f), -94786i));

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 4294967295u, 17610u, 1184u, 25126u, 0u, 20323u, 0u);

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(~_wgslsmith_div_u32(26864u, u_input.b & 2514u) >> (u_input.b % 32u), arg_1.b.x, Struct_1(arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(93i, arg_1.c, -1i), vec3<i32>(0i, 90348i, arg_1.c)), vec3<i32>(u_input.a, ~0i, max(1i, arg_0)))), any(vec2<bool>(false, true)), ~(~(_wgslsmith_mod_u32(0u, u_input.b) & min(4294967295u, 871u))));
    let var_1 = Struct_1(arg_0, vec4<f32>(-696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.x + 1255f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b * 185f)))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1450f + arg_1.b.x))))), global0.b.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1144f, arg_1.b.x)) - 851f), _wgslsmith_f_op_f32(var_0.c.b.x - global0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-378f, var_0.b) + global0.b.b.x))), global0.b.b, var_0.d));
    let var_3 = var_2;
    global0 = Struct_2(arg_0, Struct_1(_wgslsmith_sub_i32(-8781i & var_0.c.a, var_1.c ^ 2147483647i) >> (var_0.e % 32u), var_0.c.b, u_input.a), Struct_1(_wgslsmith_clamp_i32(arg_1.a, _wgslsmith_clamp_i32(-19945i, _wgslsmith_mult_i32(arg_1.c, -6363i), -arg_1.c), reverseBits(_wgslsmith_mod_i32(global0.a, 1309i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, 1378f, -1517f, 423f), vec4<f32>(-1000f, var_2.x, -1016f, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.b.x, arg_1.b.x, var_2.x, var_3.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, var_0.c.b.x, 439f, var_3.x) - vec4<f32>(-163f, var_0.c.b.x, var_2.x, 508f)))), var_0.c.c));
    return arg_0 | (((-var_0.c.a & arg_1.c) & _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.a), vec4<i32>(-1i, global0.c.a, arg_0, 18367i)), arg_0)) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.c, global0.b.c), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(1i, 1i))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global0.b.b - vec4<f32>(arg_1.x, arg_1.x, 337f, -492f))))))));
    global0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(u_input.a), u_input.a), min(arg_3, -max(global0.c.a, global0.b.c))), global0.c, Struct_1(-(~(i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(abs(global0.c.b)), -reverseBits(arg_3)));
    let var_1 = !select(select(vec4<bool>(!arg_0.x, u_input.b >= global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_0.x | false, any(vec4<bool>(true, true, true, true))), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !(!arg_0.x)), select(select(select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !vec4<bool>(true, true, false, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, false))), select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true))), select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), select(select(!vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), !vec4<bool>(true, false, arg_0.x, true), true));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(~(-2147483647i), ~_wgslsmith_mult_i32(5376i, firstLeadingBit(func_2(-18776i, Struct_1(-15476i, vec4<f32>(223f, global0.b.b.x, global0.b.b.x, -2707f), global0.c.a)))));
    var var_1 = !select(vec2<bool>(false, all(vec3<bool>(true, true, true))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_3(vec2<bool>(false, true), vec2<f32>(1364f, global0.c.b.x), 1242f, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.x + global0.b.b.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-476f))));
    global1 = array<u32, 8>();
    var_1 = !(!select(vec2<bool>(true, false), select(!vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, var_1.x), any(vec2<bool>(false, false))), vec2<bool>(true, false)));
    global2 = select(select(var_1.x, false & var_1.x, 5641u < u_input.b), var_1.x, u_input.a >= min(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global0.b.c), ~vec2<i32>(19778i, global0.c.c)), _wgslsmith_div_i32(-42437i >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -31005i, var_0.x, -2147483647i), vec4<i32>(53365i, -1i, var_0.x, -1i)))));
    return Struct_1(firstTrailingBit(-11895i), vec4<f32>(_wgslsmith_f_op_f32(global0.b.b.x + 664f), global0.c.b.x, -919f, 917f), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(18850i, 1i, u_input.a, -1i)), vec4<i32>(_wgslsmith_mod_i32(abs(var_0.x), u_input.a), firstTrailingBit(0i), u_input.a, var_0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = -(firstLeadingBit(~(-vec3<i32>(global0.a, 2147483647i, arg_3.a))) & vec3<i32>(arg_3.c, global0.b.c, ~select(arg_3.c, arg_1.c.c, true)));
    global0 = Struct_2(_wgslsmith_div_i32(~global0.a, _wgslsmith_mult_i32(16216i, arg_2.c.a)), arg_1.c, Struct_1(arg_1.c.c, global0.c.b, 1i >> (~4294967295u % 32u)));
    var_0 = arg_2;
    let var_2 = arg_1.d;
    return !(_wgslsmith_add_u32(0u, 19889u) != _wgslsmith_sub_u32(arg_0, 87011u));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1.wxz;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(896f)), global0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -632f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1502f, arg_2.b, global0.c.b.x) + vec3<f32>(-1220f, -467f, arg_2.b)), _wgslsmith_f_op_vec3_f32(arg_2.c.b.wwx - vec3<f32>(-1163f, global0.c.b.x, arg_2.b)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, arg_2.b, 1138f))), vec3<f32>(1081f, _wgslsmith_f_op_f32(f32(-1f) * -1127f), -1535f), select(!vec3<bool>(true, arg_0, arg_1.x), arg_1.xzz, 15123u < u_input.b)))) - _wgslsmith_f_op_vec3_f32(arg_2.c.b.yzz + global0.c.b.wwz));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.c.b.xzz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -1420f))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1041f)) - vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.b.x - -353f), _wgslsmith_f_op_f32(var_1.x * global0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = firstTrailingBit(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.c.a, 1i, -50850i, arg_2.c.c), vec4<i32>(1i, u_input.a, -80982i, -7968i))), vec4<i32>(i32(-1i) * -16011i, -2147483647i, u_input.a, 7506i))) & (_wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a, -12894i, u_input.a, arg_2.c.c), vec4<i32>(global0.b.a, 5365i, u_input.a, global0.c.a) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], 1u, 0u, arg_3) % vec4<u32>(32u))) | max(firstLeadingBit(vec4<i32>(-9785i, 35573i, global0.a, 0i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i), vec4<i32>(20383i, u_input.a, 0i, arg_2.c.c) | vec4<i32>(-1i, -1i, 0i, 1i))));
    return Struct_2(29624i, Struct_1(-2713i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, _wgslsmith_f_op_f32(-961f + 566f), _wgslsmith_f_op_f32(-1300f * arg_2.b), 454f)), countOneBits(abs(-12787i))), Struct_1(-99627i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-1061f, arg_2.b), -249f, _wgslsmith_f_op_f32(247f * -1532f), _wgslsmith_f_op_f32(f32(-1f) * -246f)), vec4<f32>(_wgslsmith_div_f32(-630f, 195f), _wgslsmith_f_op_f32(-313f * 927f), _wgslsmith_f_op_f32(-global0.b.b.x), global0.b.b.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-var_4.wz, vec2<i32>(1i, global0.b.c)), -11150i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(~((global1[_wgslsmith_index_u32(u_input.b, 8u)] ^ u_input.b) ^ ~31801u), Struct_3(0u, global0.b.b.x, Struct_1(_wgslsmith_div_i32(0i, global0.c.c), global0.b.b, _wgslsmith_div_i32(global0.a, global0.c.c)), true, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b, 8u)] | u_input.b, 8933u)), Struct_3(u_input.b, -1356f, global0.c, true, firstTrailingBit(~89484u)), func_1()), vec4<bool>(false, true, false, any(vec2<bool>(select(true, true, false), true))), Struct_3(u_input.b, 1f, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.c.b + vec4<f32>(-1236f, -186f, -1348f, -1265f)))), ~49262i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 8u)]), vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])) % 32u)), func_4(4294967295u >> (~u_input.b % 32u), Struct_3(~65079u, 1000f, Struct_1(-21738i, global0.b.b, 29331i), true, 1u), Struct_3(~u_input.b, _wgslsmith_f_op_f32(min(579f, global0.b.b.x)), Struct_1(u_input.a, vec4<f32>(-1483f, 307f, 237f, global0.b.b.x), -3236i), true, global1[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_1(countOneBits(-16999i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, 1000f, global0.c.b.x, global0.b.b.x) * vec4<f32>(2171f, global0.b.b.x, 2032f, global0.b.b.x)), 38085i ^ u_input.a)), 8751u), firstTrailingBit(reverseBits(_wgslsmith_div_u32(u_input.b, 6376u))));
    let var_0 = Struct_1(_wgslsmith_add_i32(-28193i, 23465i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(361f, -107f, global0.c.b.x, 1653f), vec4<f32>(global0.c.b.x, global0.c.b.x, 571f, global0.b.b.x)), global0.b.b, true)) + vec4<f32>(global0.b.b.x, _wgslsmith_f_op_f32(abs(1114f)), _wgslsmith_f_op_f32(trunc(global0.c.b.x)), _wgslsmith_f_op_f32(select(1652f, global0.b.b.x, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, 1182f, global0.c.b.x, -1357f)), global0.b.b), _wgslsmith_f_op_vec4_f32(min(func_1().b, _wgslsmith_f_op_vec4_f32(global0.b.b - global0.c.b))))), -_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-15334i, u_input.a)), func_2(0i >> (u_input.b % 32u), Struct_1(0i, vec4<f32>(-323f, global0.c.b.x, -259f, 665f), 2516i))));
    global1 = array<u32, 8>();
    let var_1 = -2147483647i >> (_wgslsmith_mult_u32(28230u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(10157u, 51065u, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], u_input.b) & vec3<u32>(88615u, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(32448u, 8u)] & 110134u)) % 32u);
    global1 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))), -1167f, var_0.b.x, _wgslsmith_f_op_f32(-1524f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), 102450u, -993f);
}

