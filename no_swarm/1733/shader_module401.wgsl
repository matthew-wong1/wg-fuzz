struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = select(vec3<bool>(true, all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), false)), any(vec4<bool>(true, true, any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true))))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), true)), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), vec3<bool>(true, true && (-41490i > u_input.a), _wgslsmith_add_u32(arg_0, 1u) > 1u), !select(true, true, true)));
    var var_1 = _wgslsmith_mod_vec4_i32(select(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -90i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 34750i, u_input.a), vec4<i32>(-11253i, u_input.a, 0i, 40473i)), vec4<i32>(-10202i, -33684i, u_input.a, -41819i)) >> (vec4<u32>(1u, ~u_input.b.x, arg_0 >> (0u % 32u), 62579u << (u_input.b.x % 32u)) % vec4<u32>(32u)), vec4<bool>(all(var_0.yz), true, any(!vec3<bool>(var_0.x, true, var_0.x)), var_0.x)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-21598i, u_input.a), ~u_input.a)), -2147483647i, -(~5492i), u_input.a));
    var var_2 = Struct_1(vec3<u32>(~arg_0, ~min(max(9689u, u_input.b.x), ~4294967295u), _wgslsmith_div_u32(arg_0, 1u)), var_1.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1330f, _wgslsmith_f_op_f32(select(-1603f, 770f, false)))), _wgslsmith_f_op_f32(1292f - -723f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_sub_u32(arg_0 ^ (u_input.b.x & u_input.b.x), 0u) != ~firstLeadingBit(_wgslsmith_add_u32(arg_0, 1u)), select(vec3<bool>(var_0.x, false, false), select(select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(true, false, var_0.x)), !vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, u_input.a > 20413i, false)), vec3<bool>(true, true, all(!vec2<bool>(var_0.x, var_0.x)))));
    let var_3 = _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), _wgslsmith_mult_vec3_u32(var_2.a, firstLeadingBit(~(~vec3<u32>(u_input.b.x, 10146u, 30875u)))));
    var_0 = !vec3<bool>(false, select(true, false, !(!var_0.x)), (_wgslsmith_mod_i32(var_1.x, var_2.b) << (~89289u % 32u)) <= 46033i);
    return var_2.c;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> vec3<f32> {
    let var_0 = Struct_1(u_input.b & ~vec3<u32>(_wgslsmith_add_u32(0u, 27739u), u_input.b.x >> (96573u % 32u), ~30543u), ~u_input.a, _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x)), false, !(!vec3<bool>(true, u_input.a == -1i, false)));
    let var_1 = var_0.c;
    let var_2 = var_0.a.xx;
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0.a, u_input.b), 55833u, 0u), (var_2.x | ~(~80242u)) & 2432u, 34046u, var_0.a.x);
    let var_4 = var_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(abs(~_wgslsmith_sub_u32(var_2.x, 683u)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_4.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(min(arg_3.a, arg_1.a), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(128f, arg_0.c.x, 247f), _wgslsmith_f_op_vec3_f32(-arg_0.c)))), any(vec4<bool>(any(!vec2<bool>(arg_1.d, false)), all(vec3<bool>(arg_0.d, true, arg_0.d)), arg_3.e.x, false)), vec3<bool>(arg_2, true, -611f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + 349f) * arg_1.c.x)));
    let var_1 = vec4<u32>(~(~_wgslsmith_mult_u32(8494u, u_input.b.x)) >> (var_0.a.x % 32u), ~4294967295u, arg_0.a.x, arg_0.a.x);
    let var_2 = firstLeadingBit(u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.c.yz))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.xy) - _wgslsmith_f_op_vec2_f32(-arg_0.c.yy))), _wgslsmith_f_op_vec2_f32(step(var_0.c.yy, var_0.c.zz))))));
    var var_4 = Struct_1(vec3<u32>(4294967295u, abs(36607u << ((4294967295u >> (u_input.b.x % 32u)) % 32u)), arg_1.a.x), -min(arg_0.b, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-194f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(1000f, arg_0.e.xy, -1000f)).x))), arg_0.d, vec3<bool>(!(!(arg_3.d & arg_1.d)), true, any(vec4<bool>(all(vec4<bool>(true, arg_3.d, true, true)), arg_3.b < -1i, false & arg_0.d, false || arg_1.e.x))));
    return var_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(Struct_1(max(u_input.b, vec3<u32>(firstTrailingBit(2879u), u_input.b.x, 73780u)), ~_wgslsmith_add_i32(u_input.a, ~70484i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, 246f, 635f)), _wgslsmith_f_op_vec3_f32(func_2(1220f, vec2<bool>(false, true), 568f))))), true, vec3<bool>(true | all(vec3<bool>(true, true, true)), true, !all(vec2<bool>(true, false)))), Struct_1(~vec3<u32>(0u, u_input.b.x, u_input.b.x >> (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(40002i, -15442i, 19143i), u_input.a), abs(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 16797i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, -918f, -869f)))), 1u >= u_input.b.x, select(vec3<bool>(true, any(vec3<bool>(false, false, false)), false), vec3<bool>(true, all(vec2<bool>(true, false)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)))), true, Struct_1(~(~vec3<u32>(u_input.b.x, 4294967295u, 0u)), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1151f, -263f, -1894f) - vec3<f32>(244f, 270f, -1245f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-316f, 975f, 2086f)))), true, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    let var_1 = vec4<u32>(4294967295u, ~(~((u_input.b.x << (u_input.b.x % 32u)) << (_wgslsmith_sub_u32(var_0.a.x, u_input.b.x) % 32u))), ~14491u ^ var_0.a.x, 1u);
    var var_2 = !vec4<bool>(false, var_0.d, var_0.d, func_4(Struct_1(~vec3<u32>(var_1.x, var_0.a.x, u_input.b.x), ~u_input.a, _wgslsmith_f_op_vec3_f32(var_0.c + var_0.c), var_0.e.x, var_0.e), func_4(func_4(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 19171i, var_0.c, var_0.d, var_0.e), Struct_1(vec3<u32>(3798u, var_0.a.x, 4294967295u), 0i, var_0.c, false, var_0.e), true, Struct_1(vec3<u32>(var_0.a.x, 26787u, 23368u), u_input.a, var_0.c, var_0.d, vec3<bool>(false, var_0.e.x, false))), Struct_1(vec3<u32>(var_0.a.x, 7096u, var_0.a.x), u_input.a, var_0.c, true, var_0.e), 20197u >= var_1.x, func_4(Struct_1(vec3<u32>(var_1.x, 0u, u_input.b.x), u_input.a, vec3<f32>(var_0.c.x, 887f, var_0.c.x), var_0.e.x, var_0.e), Struct_1(var_1.xwz, 0i, vec3<f32>(var_0.c.x, var_0.c.x, -2366f), var_0.d, vec3<bool>(false, true, true)), var_0.d, Struct_1(vec3<u32>(3924u, var_1.x, var_1.x), 32553i, var_0.c, var_0.e.x, var_0.e))), true, Struct_1(var_0.a << (vec3<u32>(u_input.b.x, var_1.x, u_input.b.x) % vec3<u32>(32u)), var_0.b, _wgslsmith_f_op_vec3_f32(select(var_0.c, var_0.c, var_0.e)), var_1.x < 20132u, !var_0.e)).d);
    var_2 = !vec4<bool>(-(-2147483647i ^ var_0.b) < func_4(func_4(Struct_1(vec3<u32>(6341u, u_input.b.x, 6032u), -21436i, var_0.c, false, var_2.wzy), Struct_1(u_input.b, var_0.b, var_0.c, var_2.x, vec3<bool>(var_0.e.x, false, true)), var_2.x, Struct_1(u_input.b, 2147483647i, var_0.c, false, var_2.wyx)), func_4(Struct_1(vec3<u32>(4294967295u, var_1.x, 65313u), 0i, vec3<f32>(var_0.c.x, var_0.c.x, 194f), var_2.x, var_2.yzz), Struct_1(vec3<u32>(var_1.x, var_1.x, 38633u), -41846i, var_0.c, false, var_0.e), false, Struct_1(u_input.b, u_input.a, vec3<f32>(var_0.c.x, 214f, var_0.c.x), true, vec3<bool>(false, var_0.d, true))), true, Struct_1(var_1.yzz, u_input.a, vec3<f32>(-1986f, 150f, -334f), var_2.x, vec3<bool>(false, true, var_0.d))).b, _wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)) < var_0.c.x, var_2.x, any(!select(var_0.e.yx, vec2<bool>(var_0.d, false), vec2<bool>(var_2.x, false))));
    let var_3 = u_input.b.x;
    return StorageBuffer(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a))), select(vec2<i32>(-4071i, abs(var_0.b)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, var_0.b), vec2<i32>(var_0.b, -1i)) | -vec2<i32>(2147483647i, -1i), var_2.x)), 1i & _wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -2147483647i), u_input.a), ~(-1272i) & _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-3996i, var_0.b, -2147483647i)), countOneBits(abs(vec3<i32>(-1i, var_0.b, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

