struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    return 1f;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(827f * 619f), -882f)), 850f, _wgslsmith_f_op_f32(-1836f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(1654f, _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_1 = var_0.yx;
    let var_2 = Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-643f, 570f)), -2506f, -1561f, _wgslsmith_f_op_f32(var_0.x - var_1.x)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-var_2.b), Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(u_input.b.x, arg_0.a.x, u_input.a, arg_0.a.x)), -23479i), var_2.b.x, var_0.zy);
    let var_4 = var_2;
    return countOneBits(-abs(firstTrailingBit(vec3<i32>(-66377i, var_3.b.b, -2147483647i) | vec3<i32>(arg_0.b, 1i, var_3.b.b))));
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_2(Struct_1(vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(38683u, 1u)), max(4294967295u, u_input.a), _wgslsmith_div_u32(u_input.a & 3186u, ~0u)), 0i), Struct_1(vec4<u32>(abs(max(u_input.a, 56616u)), select(~8595u, _wgslsmith_mod_u32(u_input.a, u_input.a), var_0.x), _wgslsmith_dot_vec2_u32(~u_input.b.yz, select(vec2<u32>(u_input.a, 1u), u_input.b.xx, var_0.x)), 32435u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(Struct_1(vec4<u32>(u_input.b.x, u_input.a, 0u, 4294967295u), -1i)), vec3<i32>(-1i, -1i, -1i)), ~vec3<i32>(9194i, 31636i, 17433i))));
    let var_2 = 1u >> (u_input.a % 32u);
    let var_3 = Struct_3(vec4<u32>(var_1.a.a.x, abs(7604u), ~firstTrailingBit(~1u), ~42936u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, 547f, -714f, 1964f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, 245f, 874f, 1000f) * vec4<f32>(-1667f, -148f, 867f, 1256f))))))));
    let var_4 = !var_0.xzy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-689f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.b.x))))) + _wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(abs(var_3.b.x))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = 410f <= arg_0;
    var var_1 = arg_2.b;
    let var_2 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f - -351f))));
    var var_3 = 4294967295u;
    let var_4 = Struct_1(arg_2.b.a, min(3367i, _wgslsmith_dot_vec4_i32((vec4<i32>(arg_2.b.b, arg_2.b.b, 0i, arg_1.x) << (vec4<u32>(1u, u_input.a, arg_3.x, u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(1i, -29308i, 0i, 1i), vec4<i32>(var_1.b, var_1.b, 23243i, arg_1.x) ^ (vec4<i32>(0i, 45612i, 20449i, -10288i) ^ vec4<i32>(1i, 8302i, arg_1.x, arg_2.b.b)))));
    return Struct_2(arg_2.b, var_4);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = select(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, false, 1628i > var_0.b), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), false || select(arg_0.b.b != -33242i, arg_0.b.a.x == 1u, all(vec2<bool>(true, false)))), vec3<bool>(false, true & !all(vec2<bool>(true, true)), any(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true))));
    let var_2 = select(var_1, !vec3<bool>(true, false, false && (arg_0.b.b > -43153i)), !select(vec3<bool>(true, var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), var_1, select(select(var_1, vec3<bool>(false, var_1.x, var_1.x), var_1), !vec3<bool>(true, true, var_1.x), select(var_1, vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true)))));
    var var_3 = u_input.a;
    var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zz, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(33872u, arg_2.a.x)), ~(vec2<u32>(var_0.a.x, 9868u) << (vec2<u32>(arg_0.a.a.x, arg_2.a.x) % vec2<u32>(32u))))), ~vec2<u32>(~40972u << (var_0.a.x % 32u), ~_wgslsmith_div_u32(26362u, arg_0.a.a.x)));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(var_0.b, arg_0.b.b, 2147483647i)), min(arg_1.wyw >> (var_0.a.zxy % vec3<u32>(32u)), ~arg_1.zyy)), -abs(0i)) | -43950i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, _wgslsmith_mod_i32(firstTrailingBit(~(-1i)), min(_wgslsmith_mult_i32(20926i, 763i), ~(-25371i))) <= func_5(func_4(_wgslsmith_f_op_f32(func_1()), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(28279i, 2147483647i)), Struct_4(vec4<f32>(-429f, 1816f, 384f, -642f), Struct_1(vec4<u32>(1u, u_input.b.x, u_input.a, 16373u), -21948i), -605f, vec2<f32>(-381f, 866f)), ~u_input.b.xy), countOneBits(vec4<i32>(-1i, -32871i, 2147483647i, -1i)), Struct_3(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-219f, 803f, 2132f, -498f), vec4<f32>(-1495f, -870f, -611f, 1000f), vec4<bool>(true, false, false, true))))), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) && false, any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true)) == (true && !(u_input.b.x < 129584u)));
    let var_1 = ~u_input.a;
    var_0 = !vec4<bool>(true, var_0.x, min(i32(-1i) * -1i, i32(-1i) * -1i) > firstTrailingBit(abs(1i)), true);
    var var_2 = vec3<bool>(false, true, false);
    var var_3 = 0u;
    let var_4 = vec4<i32>(~(i32(-1i) * -2147483647i), ~select(_wgslsmith_add_i32(-32607i, _wgslsmith_div_i32(-23080i, 1i)), firstTrailingBit(firstLeadingBit(-21533i)), var_2.x), ~(-abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -47450i), vec2<i32>(-2147483647i, 26625i)))), -23418i);
    let var_5 = func_4(-385f, min(vec2<i32>(min(2147483647i, var_4.x), -2147483647i), var_4.xz), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-3030f, -610f, -238f, 122f), vec4<f32>(239f, 589f, 375f, -494f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1400f, -1381f, -527f, 1137f), vec4<f32>(-598f, 486f, 820f, 1202f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1366f, 811f, 946f, 329f)))), func_4(-1309f, vec2<i32>(var_4.x, ~var_4.x), Struct_4(vec4<f32>(1266f, -988f, -1000f, -1615f), Struct_1(vec4<u32>(u_input.a, 23149u, var_1, 1u), var_4.x), _wgslsmith_f_op_f32(abs(1131f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, 1332f))), ~min(u_input.b.xy, u_input.b.xx)).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-431f)) * 1700f))), vec2<f32>(1f, 1f)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(46865u), ~1u, var_1), ~(~u_input.b)), u_input.b.x)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, 2147483647i, var_5.b), -(vec3<i32>(var_5.b, var_5.b, -69756i) ^ (var_4.xxx | var_4.xzx))));
}

