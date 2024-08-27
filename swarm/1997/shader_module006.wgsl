struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = !vec4<bool>((select(false, false, false) & true) || true, false, any(vec3<bool>(false, false, false)) && true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)) || true);
    var_0 = !(!vec4<bool>(max(arg_0.c.x, 19510u) >= 4294967295u, !all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !var_0.x, false));
    var_0 = !vec4<bool>(true, !var_0.x, var_0.x, true);
    var var_1 = ~abs(2147483647i);
    let var_2 = Struct_3(2147483647i, u_input.a, vec2<u32>(arg_0.c.x >> (_wgslsmith_div_u32(4294967295u, 1u) % 32u), min(~(arg_0.c.x & arg_0.c.x), arg_0.c.x)));
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_3(u_input.a.x, select(vec4<i32>(u_input.a.x, 0i, 1i, -2147483647i), u_input.a, !func_3(Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 57851u)))), vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u), 1u), 15872u));
    let var_1 = Struct_3(_wgslsmith_add_i32(select(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), var_0.a, true), i32(-1i) * -2147483647i), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1465i, var_0.a), vec4<i32>(2147483647i, var_0.b.x, u_input.a.x, u_input.a.x))), vec2<u32>(var_0.c.x, _wgslsmith_div_u32(354u, _wgslsmith_mod_u32(var_0.c.x, 0u))));
    var_0 = var_1;
    var var_2 = vec2<i32>(2147483647i ^ var_1.b.x, 23723i);
    var_0 = Struct_3(i32(-1i) * -countOneBits(1i), min(~var_1.b, vec4<i32>(2147483647i, _wgslsmith_sub_i32(~2147483647i, -2147483647i), abs(-61801i), 4018i)), reverseBits(firstTrailingBit(_wgslsmith_add_vec2_u32(var_1.c, var_0.c) & vec2<u32>(1u, var_1.c.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.b.x)) > 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.b.x, -1254f, arg_1) - arg_0.b), vec4<f32>(-1580f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) * _wgslsmith_f_op_f32(func_2(vec2<f32>(450f, -825f)))), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(197f, 160f, arg_2.x)) + _wgslsmith_f_op_f32(sign(-598f))) * _wgslsmith_f_op_f32(floor(-511f))), _wgslsmith_f_op_f32(-346f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-750f * arg_0.c))))));
    let var_1 = firstTrailingBit(vec3<u32>(arg_3.c.x, firstTrailingBit(_wgslsmith_mult_u32(arg_0.e.x, arg_0.e.x)) >> (arg_0.e.x % 32u), abs(66945u)));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, 1282f, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(838f, -516f))))));
    let var_3 = !(!vec3<bool>(true, arg_2.x, var_2.d.x));
    return Struct_2(Struct_1(~3995i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, var_0.x, 1163f, 443f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1245f, 1416f, -522f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_0.x, arg_0.c, var_2.b.x)))), _wgslsmith_f_op_f32(min(var_0.x, 674f)), select(arg_0.d, var_2.d, true), var_1.zy), select(select(!arg_0.d.zyw, vec3<bool>(0i != u_input.a.x, true, true), var_3.x), select(arg_0.d.wzw, vec3<bool>(true, arg_0.c != var_2.b.x, !arg_0.d.x), !vec3<bool>(false, arg_2.x, var_2.d.x)), var_2.d.yzx));
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(func_1(Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.b.x, arg_0.a.c, arg_0.a.c, 1022f), vec4<f32>(arg_0.a.b.x, arg_0.a.c, 645f, -2393f)))), -303f, arg_0.a.d, max(vec2<u32>(arg_0.a.e.x, arg_0.a.e.x), vec2<u32>(21525u, arg_0.a.e.x)) ^ vec2<u32>(4294967295u, 29807u)), 1000f, vec2<bool>(true, any(arg_0.b.xz) || func_3(Struct_3(0i, vec4<i32>(arg_0.a.a, 57898i, u_input.a.x, 5310i), arg_0.a.e))), Struct_3(firstLeadingBit(1i), (u_input.a | u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(63325u, arg_0.a.e.x, arg_0.a.e.x, arg_0.a.e.x), vec4<u32>(0u, 0u, 1u, arg_0.a.e.x), vec4<u32>(arg_0.a.e.x, arg_0.a.e.x, 19696u, arg_0.a.e.x)) % vec4<u32>(32u)), arg_0.a.e)).a.a, arg_0.a.b, arg_0.a.b.x, !(!select(!vec4<bool>(arg_0.a.d.x, false, true, arg_0.b.x), arg_0.a.d, arg_0.a.d)), arg_0.a.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1438f, -1000f)))));
    var_0 = func_1(arg_0.a, _wgslsmith_f_op_f32(1114f - 837f), select(select(vec2<bool>(true, var_0.d.x), func_1(func_1(arg_0.a, arg_0.a.c, arg_0.b.zz, Struct_3(-32463i, u_input.a, arg_0.a.e)).a, 249f, select(arg_0.b.yx, arg_0.a.d.wx, vec2<bool>(arg_0.a.d.x, var_0.d.x)), Struct_3(u_input.a.x, u_input.a, var_0.e)).b.zx, true), var_0.d.xy, arg_0.a.d.x || (_wgslsmith_div_f32(var_1.x, -231f) <= _wgslsmith_f_op_f32(-var_0.c))), Struct_3(arg_0.a.a, select(vec4<i32>(max(-44856i, 0i), countOneBits(arg_0.a.a), reverseBits(u_input.a.x), 6447i), vec4<i32>(-var_0.a, -var_0.a, u_input.a.x, ~(-48179i)), false), vec2<u32>(var_0.e.x, _wgslsmith_mod_u32(reverseBits(var_0.e.x), select(var_0.e.x, 26569u, false))))).a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(arg_0.a.b, var_1)))))) + _wgslsmith_f_op_vec4_f32(-var_1)));
    return vec3<f32>(_wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.c))))), -1332f, _wgslsmith_f_op_f32(floor(func_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.c, -1553f, var_0.d.x))), !var_0.d.xz, Struct_3(abs(28176i), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec2<u32>(arg_0.a.e.x, arg_0.a.e.x))).a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -_wgslsmith_div_i32(u_input.a.x ^ u_input.a.x, 2147483647i)) << (0u % 32u);
    var var_1 = !(any(vec2<bool>(var_0 > -1i, true)) || true);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_1(-81861i, vec4<f32>(-2158f, -2068f, -1000f, 454f), 455f, vec4<bool>(false, false, false, true), vec2<u32>(2042u, 23887u)), 431f, vec2<bool>(false, true), Struct_3(var_0, vec4<i32>(var_0, -14365i, 1i, 2147483647i), vec2<u32>(12038u, 24283u))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1567f, -357f, 446f) * vec3<f32>(-2396f, -636f, -1010f)) + vec3<f32>(628f, -505f, -850f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1883f, 803f, 1396f) * vec3<f32>(186f, -656f, 2006f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, -715f, -1513f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1000f, 579f))))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, 1298f, -1316f)), vec3<f32>(-2062f, 1000f, -638f), vec3<bool>(true, true, true)))))));
    var_1 = !(!select(true, false, !any(vec2<bool>(false, false))));
    var var_3 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~37936i, max(_wgslsmith_add_i32(var_0, 19740i), ~var_0)), _wgslsmith_sub_i32(u_input.a.x ^ _wgslsmith_div_i32(0i, u_input.a.x), 1i), _wgslsmith_dot_vec4_i32(u_input.a, countOneBits(u_input.a))), vec4<i32>(-(~0i) ^ firstTrailingBit(~(-1i)), _wgslsmith_mod_i32(var_0 | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -27238i, 0i), vec4<i32>(var_0, u_input.a.x, 22741i, u_input.a.x)), u_input.a.x), _wgslsmith_add_i32(0i, ~(~(-1i))), u_input.a.x), vec2<u32>(1u, 1u));
    var_1 = true;
    let var_4 = func_1(func_1(func_1(func_1(func_1(Struct_1(-28004i, vec4<f32>(1005f, var_2.x, -167f, var_2.x), var_2.x, vec4<bool>(false, true, false, false), var_3.c), var_2.x, vec2<bool>(true, false), Struct_3(0i, u_input.a, vec2<u32>(4294967295u, 47764u))).a, var_2.x, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_3(2147483647i, vec4<i32>(-1i, -1i, var_0, -27049i), var_3.c)).a, -658f, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_3(countOneBits(var_0), u_input.a, var_3.c)).a, var_2.x, vec2<bool>(true, true), Struct_3(u_input.a.x, ~(~vec4<i32>(0i, var_3.b.x, var_3.b.x, 44755i)), select(vec2<u32>(var_3.c.x, 4294967295u), _wgslsmith_add_vec2_u32(var_3.c, var_3.c), vec2<bool>(true, true)))).a, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) * -166f), func_1(func_1(Struct_1(u_input.a.x, vec4<f32>(var_2.x, 1021f, var_2.x, var_2.x), var_2.x, vec4<bool>(false, true, true, true), var_3.c), 2509f, vec2<bool>(false, false), Struct_3(0i, vec4<i32>(var_3.b.x, u_input.a.x, 2147483647i, 0i), vec2<u32>(67418u, var_3.c.x))).a, 171f, vec2<bool>(true, true), Struct_3(var_3.a, vec4<i32>(1i, -74344i, 50011i, 0i), vec2<u32>(var_3.c.x, 0u))).a.c)))), !func_1(func_1(Struct_1(2147483647i, vec4<f32>(var_2.x, var_2.x, 996f, -1903f), -309f, vec4<bool>(true, true, true, false), var_3.c), _wgslsmith_f_op_f32(1307f - var_2.x), vec2<bool>(true, true), Struct_3(u_input.a.x, vec4<i32>(57956i, 23889i, var_3.b.x, u_input.a.x), var_3.c)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-168f - -411f), var_2.x), vec2<bool>(true, true), Struct_3(_wgslsmith_mult_i32(1i, var_3.a), vec4<i32>(var_0, 32005i, 2147483647i, 2147483647i), _wgslsmith_mod_vec2_u32(vec2<u32>(6580u, var_3.c.x), var_3.c))).b.yx, Struct_3(~func_1(func_1(Struct_1(u_input.a.x, vec4<f32>(1050f, 611f, 972f, var_2.x), 517f, vec4<bool>(true, false, true, false), var_3.c), var_2.x, vec2<bool>(true, false), Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 30452i), var_3.c)).a, _wgslsmith_f_op_f32(var_2.x - -448f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, -5043i, 59939i, var_0), var_3.c)).a.a, var_3.b, ~var_3.c)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(var_4.e.x, 0u, var_4.e.x))), vec3<u32>(20198u & var_3.c.x, var_4.e.x << (78774u % 32u), var_3.c.x)), (~var_4.e.x & select(79117u, var_4.e.x, var_4.d.x)) >> (firstLeadingBit(firstTrailingBit(34462u)) % 32u), _wgslsmith_add_u32(min(var_4.e.x, var_3.c.x), func_1(Struct_1(var_4.a, vec4<f32>(672f, var_2.x, var_4.b.x, -995f), var_4.c, var_4.d, var_4.e), _wgslsmith_f_op_f32(f32(-1f) * -1294f), func_1(Struct_1(var_4.a, vec4<f32>(125f, var_4.b.x, 819f, var_2.x), var_2.x, vec4<bool>(var_4.d.x, true, true, false), var_3.c), var_4.b.x, vec2<bool>(var_4.d.x, false), Struct_3(8890i, vec4<i32>(var_3.a, 39830i, var_4.a, -646i), vec2<u32>(var_4.e.x, var_3.c.x))).a.d.xx, Struct_3(var_3.b.x, u_input.a, var_3.c)).a.e.x)), ~(~firstLeadingBit(reverseBits(vec4<u32>(55743u, var_3.c.x, 0u, var_4.e.x)))));
}

