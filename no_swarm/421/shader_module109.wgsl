struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-1i, -1i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 5447i), vec2<i32>(-1i, -885i), vec2<i32>(12627i, 3291i), vec2<i32>(20298i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 47845i), vec2<i32>(-1i, -1i), vec2<i32>(3247i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-78143i, 2147483647i), vec2<i32>(18346i, -47635i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(3545i, 16229i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-38042i, 1i), vec2<i32>(10494i, -23556i), vec2<i32>(2147483647i, 31324i), vec2<i32>(-6567i, 24885i), vec2<i32>(-27592i, 47143i), vec2<i32>(17890i, 46789i), vec2<i32>(16945i, 52600i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1385f)))))));
    let var_1 = ~_wgslsmith_dot_vec3_i32(abs(max(~arg_0.d, -u_input.a.wyy)), ~u_input.a.zyz);
    var var_2 = -25202i;
    let var_3 = arg_0.e.x;
    var_2 = ~(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(u_input.a.yxw)), max(_wgslsmith_mod_vec3_i32(u_input.a.xzz, u_input.a.xxy), countOneBits(vec3<i32>(arg_3, arg_3, arg_0.d.x)))) << (arg_0.e.x % 32u));
    return arg_0.c.zz;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = any(!vec3<bool>(false, true, _wgslsmith_f_op_f32(step(1089f, 125f)) > 1155f));
    var var_1 = Struct_4(arg_0 | arg_0);
    let var_2 = 28584i;
    var var_3 = Struct_4(var_1.a);
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f * _wgslsmith_f_op_f32(round(-708f))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(352f, -1000f) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(239f, vec2<f32>(-2065f, -1216f), vec3<f32>(-142f, 901f, 2206f), vec3<i32>(34591i, u_input.a.x, 11248i), vec2<u32>(var_1.a, var_3.a)), vec2<bool>(true, false), 10614u, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1008f, -935f, 274f), vec3<f32>(-844f, 774f, -271f))))), ~vec3<i32>(-var_2, max(u_input.a.x, u_input.a.x), 2147483647i), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(73263u, 39766u), vec2<u32>(43665u, var_1.a)))), Struct_3(Struct_2(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), vec3<bool>(true, true, all(vec4<bool>(false, true, true, true)))), min(vec2<u32>(74857u, 4294967295u) | firstTrailingBit(vec2<u32>(arg_0, 18227u)), reverseBits(vec2<u32>(8236u, arg_0)) >> (~vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u)))), Struct_3(Struct_2(false, vec3<bool>(all(vec2<bool>(true, false)), 48545u == arg_0, true)), vec2<u32>(62006u ^ _wgslsmith_add_u32(arg_0, var_1.a), ~(~var_1.a))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec3<u32>) -> f32 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = arg_2.a;
    global0 = array<vec2<i32>, 24>();
    let var_1 = !vec4<bool>(arg_1.b.a.b.x, true, arg_1.c.a.b.x, true);
    global0 = array<vec2<i32>, 24>();
    return 1422f;
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = false;
    return func_2(_wgslsmith_add_u32(abs(min(4294967295u, _wgslsmith_div_u32(1u, 28673u))), 0u), firstLeadingBit(u_input.a.zw)).c.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-523f + 949f), -195f)));
    var var_1 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(72040u, func_2(countOneBits(arg_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(1428i, u_input.a.x), vec2<i32>(u_input.a.x, 25562i))), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(69045u, 1u, arg_0.x), arg_0.wxy), -vec2<i32>(36987i, u_input.a.x)), arg_0.wxy)))), -928f);
    global0 = array<vec2<i32>, 24>();
    var var_2 = Struct_4(firstLeadingBit(countOneBits(~arg_1)));
    let var_3 = func_2(59003u, _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(var_2.a, 24u)], _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(arg_1, 24u)], ~max(vec2<i32>(2147483647i, -683i), vec2<i32>(u_input.a.x, 1i))))).b.a;
    return 495f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(717f, 1697f);
    global0 = array<vec2<i32>, 24>();
    var_0 = _wgslsmith_f_op_f32(func_1(~(~(~vec4<u32>(1u, 1u, 1u, 1u))), abs(min(13756u, 1u))));
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~4294967295u, 0u, 1u, ~1u), ~vec4<u32>(reverseBits(88862u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 94307u, 20456u, 22799u), vec4<u32>(29432u, 1u, 11640u, 4294967295u)), 46691u, 13449u)) ^ ~vec4<u32>(abs(~8442u), ~firstTrailingBit(9869u), 3316u, 1u);
    var var_2 = firstLeadingBit(vec3<i32>(~_wgslsmith_mod_i32(~u_input.a.x, -2498i), 0i, i32(-1i) * -abs(u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(func_2(39244u, (vec2<i32>(var_2.x, u_input.a.x) & -var_2.yy) << (var_1.yz % vec2<u32>(32u))).a, select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_2(var_1.x, global0[_wgslsmith_index_u32(0u, 24u)]).b.a.a), true), false), _wgslsmith_sub_u32(var_1.x, ~_wgslsmith_dot_vec3_u32(var_1.zzx ^ vec3<u32>(1u, var_1.x, var_1.x), var_1.wwy)), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-897f, var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + _wgslsmith_f_op_f32(1014f * var_3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1198f, var_3.x))))), 460f, vec2<i32>(-33943i, var_2.x));
}

