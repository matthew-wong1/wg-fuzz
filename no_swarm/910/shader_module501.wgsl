struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -38925i);

var<private> global1: vec4<u32> = vec4<u32>(27884u, 114706u, 1u, 17652u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = countOneBits(_wgslsmith_mod_vec3_i32(-firstTrailingBit(-vec3<i32>(global0.x, 4960i, 2147483647i)), -_wgslsmith_mult_vec3_i32(-vec3<i32>(34510i, -42282i, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -56438i, -8046i), vec3<i32>(-32014i, global0.x, -18249i)))));
    global1 = ~_wgslsmith_div_vec4_u32(~(u_input.b ^ vec4<u32>(global1.x, u_input.a.x, 11891u, 16991u)), _wgslsmith_div_vec4_u32(~u_input.a, ~u_input.b)) | _wgslsmith_mult_vec4_u32(vec4<u32>(~global1.x, u_input.a.x, ~(u_input.b.x >> (u_input.a.x % 32u)), countOneBits(1u)), (_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b.x, u_input.a.x, 53243u)) >> (vec4<u32>(1u, 61269u, 27955u, 36015u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global1.x, 92345u, global1.x, 0u))));
    global1 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, 74906u, u_input.a.x, u_input.a.x)), ~select(u_input.a, vec4<u32>(54244u, 1u, 4294967295u, 14785u), arg_0)) << ((global1.x | 3899u) % 32u), 34944u, global1.x, _wgslsmith_mod_u32(1u, 8347u));
    global1 = reverseBits(u_input.b) << ((~(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(global1.x, 1u, u_input.a.x, 0u))) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = vec4<u32>(_wgslsmith_mod_u32(15934u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.x, global1.x), 57568u)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, ~u_input.a.x, 0u), reverseBits(min(u_input.a.x, 1714u) ^ 28479u)), _wgslsmith_sub_u32(global1.x, ~_wgslsmith_add_u32(13359u, u_input.a.x)), abs(12339u));
    return ~vec2<u32>(_wgslsmith_clamp_u32(global1.x, _wgslsmith_add_u32(14150u, ~u_input.a.x), u_input.b.x), u_input.b.x | u_input.a.x);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(func_3(false) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 0u), vec2<u32>(global1.x, 1u)) % vec2<u32>(32u)), u_input.b.zz), -31461i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, -226f, 1000f) - vec3<f32>(205f, -231f, 1008f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(406f, 674f, 651f) * vec3<f32>(-1113f, -1499f, -1000f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(692f, 319f, -1550f))))), true, select(min(countOneBits(u_input.b), ~u_input.b), abs(u_input.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(964f + 1468f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2183f, 459f)))))), Struct_1(~_wgslsmith_div_vec2_u32(u_input.b.yz, ~global1.zz), firstTrailingBit(~global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-1376f)), _wgslsmith_f_op_f32(-1007f * 1585f), _wgslsmith_f_op_f32(min(636f, 871f))), _wgslsmith_div_vec3_f32(vec3<f32>(-2400f, 1598f, -749f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, -710f, -1235f))), true)), !any(vec4<bool>(false, true, true, true)) || true, _wgslsmith_mod_vec4_u32(u_input.a, (u_input.b ^ u_input.a) << (max(vec4<u32>(u_input.b.x, 94920u, global1.x, 23322u), vec4<u32>(global1.x, u_input.a.x, global1.x, 65478u)) % vec4<u32>(32u)))), ~67041u >> (u_input.a.x % 32u), vec4<bool>(true, false && (~4884i >= global0.x), all(vec2<bool>(true, true)), !(true && any(vec4<bool>(false, false, true, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.c * vec3<f32>(744f, 1000f, 170f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -591f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, -207f, 105f), var_0.c.c)))))) * vec3<f32>(var_0.b.x, 1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) + _wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(-503f + var_0.b.x)))));
    let var_2 = Struct_2(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), var_0.c.c.x))), _wgslsmith_f_op_f32(-var_1.x)), Struct_1(u_input.a.zz, i32(-1i) * -_wgslsmith_div_i32(var_0.a.b, global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-256f, 347f, -1000f)))), var_0.c.d, abs(~(vec4<u32>(var_0.c.e.x, 27755u, 4294967295u, 0u) << (vec4<u32>(7819u, u_input.b.x, 1u, var_0.c.e.x) % vec4<u32>(32u))))), var_0.c.e.x, !var_0.e);
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, _wgslsmith_div_f32(881f, 357f)))), Struct_1(global1.yx, min(22901i ^ var_2.c.b, var_2.a.b) << (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.c.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.c, var_0.c.c)))), false, (abs(vec4<u32>(4294967295u, var_2.a.a.x, var_0.a.a.x, 4294967295u)) | reverseBits(vec4<u32>(0u, global1.x, 4294967295u, 4294967295u))) >> (u_input.a % vec4<u32>(32u))), min(firstLeadingBit(_wgslsmith_sub_u32(~var_2.a.a.x, 1u)), ~(~0u)), !select(var_2.e, !(!var_2.e), var_0.e.x));
    var var_3 = ~max(reverseBits(vec3<i32>(min(10877i, global0.x), _wgslsmith_add_i32(2147483647i, global0.x), -46691i)), vec3<i32>(-var_2.a.b ^ 1i, -firstTrailingBit(global0.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a.b, var_2.a.b, -4240i, 2147483647i), vec4<i32>(2147483647i, -24409i, var_0.a.b, 25891i) & vec4<i32>(var_2.c.b, var_0.c.b, var_0.a.b, 2147483647i))));
    return global0.x;
}

fn func_1() -> Struct_1 {
    global1 = ~u_input.b;
    global0 = max(-vec3<i32>(-7011i, ~(~38449i), i32(-1i) * -7593i), ~(-(vec3<i32>(-1i) * -vec3<i32>(global0.x, global0.x, 1i))));
    var var_0 = ~(-1i);
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-(global0.x ^ 9005i), ~(-1i), _wgslsmith_mult_i32(~func_2(), -46377i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-9974i, 0i, -2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(31998i, global0.x, 25508i), vec3<i32>(0i, 41265i, 2147483647i)), vec3<i32>(0i, 2147483647i, -1i) | vec3<i32>(global0.x, -2147483647i, global0.x))) | ~vec3<i32>(-39839i, abs(global0.x), firstTrailingBit(global0.x)), ~vec3<i32>(-_wgslsmith_mod_i32(1i, 15644i), abs(2147483647i), select(global0.x, -61362i, true)));
    var var_1 = ~1i;
    return Struct_1(~vec2<u32>(~(~0u), u_input.a.x), ~(-firstTrailingBit(global0.x)) << (~global1.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1207f, 755f, 644f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1827f, -979f, -151f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-236f, -2937f, -338f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(494f, 782f, -490f))), vec3<f32>(682f, _wgslsmith_f_op_f32(f32(-1f) * -745f), 1f))), true, vec4<u32>(firstTrailingBit(4294967295u), 39606u, ~u_input.b.x, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~vec2<i32>(firstLeadingBit(global0.x) ^ global0.x, select(-1i << (0u % 32u), global0.x, true)));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1528f, var_1.c.x, 414f, 859f), vec4<f32>(var_1.c.x, 1545f, 522f, var_1.c.x)), vec4<f32>(var_1.c.x, 1913f, var_1.c.x, 132f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, -1656f, -389f), vec4<f32>(-447f, 467f, var_1.c.x, -766f)))), false))));
    global1 = ~vec4<u32>(~27739u, ~(~_wgslsmith_sub_u32(94715u, 55202u)), _wgslsmith_mod_u32(reverseBits(46553u), var_1.a.x), global1.x);
    let var_3 = ~vec2<u32>(global1.x, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-102f)), _wgslsmith_f_op_f32(-var_2.x), var_1.c, ~reverseBits(global0.yz), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -697f)), _wgslsmith_div_f32(-675f, _wgslsmith_f_op_f32(1000f - var_1.c.x)), -284f, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec4_f32(sign(var_2)))));
}

