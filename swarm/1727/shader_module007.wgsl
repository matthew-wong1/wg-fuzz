struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = ~(~(-countOneBits(-1i)) << (0u % 32u));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -716f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) - arg_1))));
    var_1 = _wgslsmith_f_op_f32(arg_1 * -1143f);
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -44323i, firstLeadingBit(-30249i), -17440i), ~(-(~vec4<i32>(var_0, var_0, -28924i, var_0)))), select(countOneBits(vec4<i32>(var_0, var_0, var_0, -29646i)) & _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, var_0) ^ vec4<i32>(var_0, 37450i, var_0, var_0), ~vec4<i32>(var_0, 5914i, -2147483647i, 2147483647i)), min(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0, var_0, var_0), vec4<i32>(var_0, 1i, 42637i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0, 30979i, 26789i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 4344i, 2147483647i, var_0), vec4<i32>(16108i, var_0, var_0, 2147483647i)))), (arg_1 <= -1178f) | (_wgslsmith_f_op_f32(min(-443f, 1000f)) >= _wgslsmith_f_op_f32(select(arg_1, 1271f, arg_0.b)))));
    return true;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(u_input.b.xx, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1789f, 796f), _wgslsmith_f_op_f32(603f - -567f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 107f, var_0.b)), 735f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(205f, 345f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(756f, -933f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(879f, -738f) * vec2<f32>(1635f, -655f)))))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = !(var_0.b && (var_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1806f - 763f) + var_1.x)));
    var var_4 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yw, _wgslsmith_add_vec2_u32(~u_input.a.yz, u_input.b.yw ^ vec2<u32>(49033u, 3597u))), 21328u), var_1.x != var_1.x);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -212f, -1482f, var_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 863f, var_1.x, 1096f)), vec4<f32>(var_1.x, -462f, var_1.x, 339f))), vec4<bool>(func_3(var_0, var_1.x), var_3, select(var_4.b, false, false), var_3)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, var_1.x, var_1.x, 226f)), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(-918f, var_1.x, 509f, var_1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(var_1.x, 1309f), 835f))), var_0.b));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xw));
    let var_1 = arg_3;
    return select(vec2<bool>((arg_2.a.x != 0u) & (25803i < abs(arg_0)), arg_2.b), vec2<bool>(!(!(u_input.a.x != arg_3.a.x)), func_3(var_1, -169f)), vec2<bool>(false, any(vec2<bool>(false, all(vec4<bool>(arg_3.b, var_1.b, true, arg_3.b))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = vec4<u32>(u_input.b.x, abs(u_input.a.x), 52042u, _wgslsmith_div_u32(countOneBits(arg_3.x), 7230u));
    var var_1 = Struct_1(~arg_3.wy, arg_0.b);
    let var_2 = select(!func_4(2147483647i, _wgslsmith_f_op_vec4_f32(func_2()), Struct_1(vec2<u32>(var_0.x, 19288u), var_1.b), arg_0), vec2<bool>((-8571i ^ arg_1) >= ~(-1i), func_4(-(-36643i << (var_1.a.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 630f, -1000f, 539f), vec4<f32>(873f, 1200f, 118f, -732f))), arg_0, Struct_1(arg_0.a, arg_0.b)).x), !func_4(reverseBits(arg_1) & arg_1, vec4<f32>(1000f, _wgslsmith_div_f32(547f, -1739f), _wgslsmith_f_op_f32(select(507f, -709f, arg_2.b)), _wgslsmith_div_f32(-1861f, -1000f)), Struct_1(var_0.wy, true | var_1.b), Struct_1(~arg_3.zz, var_1.b)).x);
    var_1 = Struct_1(vec2<u32>(1u, abs(~var_1.a.x)), arg_0.a.x >= ~(~4294967295u));
    var_1 = arg_2;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-467f - 2561f), _wgslsmith_f_op_f32(-784f + -228f))) - _wgslsmith_f_op_f32(sign(-1401f)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 871f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1739f)) - _wgslsmith_f_op_f32(f32(-1f) * -1264f)))) * 331f));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !(!(func_3(Struct_1(u_input.b.zx, true), _wgslsmith_f_op_f32(step(1829f, -596f))) != true));
    let var_1 = -1i;
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_2, u_input.b.x)), vec2<u32>(4294967295u, 111409u)), !((select(var_0, false, var_0) & true) && any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), var_0))));
    let var_3 = var_2;
    var var_4 = vec4<f32>(1249f, 2068f, 591f, _wgslsmith_f_op_f32(arg_3.x - 512f));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(min(arg_0.a.x, arg_0.a.x), ~1u, 109340u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 68875u), vec2<u32>(2350u, 43987u)))), abs(u_input.b)), u_input.a);
    var_0 = ~(~(select(u_input.b, u_input.b ^ vec4<u32>(arg_0.a.x, 4294967295u, arg_2.a.x, arg_2.a.x), vec4<bool>(true, arg_1, true, arg_1)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(32148u, arg_0.a.x, 18375u, 4294967295u), u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1088f * -179f)), _wgslsmith_f_op_f32(ceil(-1000f)), !any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))), _wgslsmith_f_op_f32(-1f)));
    var_0 = _wgslsmith_div_vec4_u32(abs(u_input.a), ~abs(u_input.a));
    var var_2 = all(select(select(select(select(vec4<bool>(false, false, arg_0.b, true), vec4<bool>(arg_1, false, true, true), false), vec4<bool>(arg_0.b, arg_1, arg_1, arg_1), true), vec4<bool>(true, -1542f <= var_1.x, arg_0.b, arg_0.b), !arg_1), select(select(select(vec4<bool>(false, arg_0.b, false, true), vec4<bool>(true, arg_2.b, true, true), vec4<bool>(arg_1, false, true, arg_1)), !vec4<bool>(true, false, true, arg_1), true), select(vec4<bool>(false, true, arg_2.b, false), !vec4<bool>(true, arg_0.b, true, arg_0.b), arg_0.b | false), vec4<bool>(any(vec3<bool>(false, true, true)), arg_1, arg_1, arg_0.a.x >= u_input.b.x)), vec4<bool>(false, any(select(vec4<bool>(arg_1, arg_0.b, true, false), vec4<bool>(arg_1, false, arg_0.b, true), vec4<bool>(arg_0.b, arg_2.b, arg_2.b, arg_0.b))), true, _wgslsmith_f_op_f32(-var_1.x) == 922f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-min(vec3<i32>(-12553i, 2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)) & abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, -1i) << (u_input.b.zzw % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(1i, 28231i, 1i)), vec3<i32>(11322i, -11170i, -22014i)));
    var var_1 = func_6(func_5(u_input.b.x, 1u, u_input.a.x, _wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.b.xz, false), ~var_0.x, Struct_1(~vec2<u32>(u_input.b.x, u_input.a.x), any(vec3<bool>(true, false, false))), ~firstLeadingBit(vec4<u32>(4294967295u, 18740u, u_input.a.x, u_input.b.x))))), false, Struct_1((~vec2<u32>(u_input.b.x, 388u) | u_input.a.zx) | u_input.b.yy, !(_wgslsmith_dot_vec4_i32(vec4<i32>(-10995i, -13368i, -17452i, var_0.x), vec4<i32>(1i, var_0.x, var_0.x, var_0.x)) >= var_0.x)));
    let var_2 = Struct_1(abs(vec2<u32>(_wgslsmith_sub_u32(abs(u_input.a.x), 2004u), ~_wgslsmith_sub_u32(4294967295u, var_1.a.x))), true);
    var var_3 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.a.x, 4294967295u, 705u), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 1u, 4294967295u), ~(~u_input.b.wyx))));
    var_1 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~8092u) & (var_1.a ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 23385u), u_input.b.zw)), ~var_2.a), all(select(!(!vec4<bool>(true, true, var_1.b, var_2.b)), select(!vec4<bool>(false, var_1.b, true, var_2.b), vec4<bool>(var_1.b, var_1.b, var_2.b, false), false), vec4<bool>(var_2.b, var_0.x != var_0.x, !var_1.b, var_1.b))));
    var_1 = Struct_1(max(~(var_2.a ^ var_1.a), vec2<u32>(min(23156u, 4294967295u), 4294967295u)) | ~_wgslsmith_mod_vec2_u32(firstLeadingBit(var_1.a), ~u_input.a.zy), func_6(var_2, !(true | var_2.b), func_6(func_6(var_2, false, var_2), true, func_6(func_6(Struct_1(var_2.a, var_2.b), false, Struct_1(var_1.a, var_2.b)), true, Struct_1(vec2<u32>(70950u, 0u), var_1.b)))).b);
    var var_4 = func_5(~u_input.a.x, ~_wgslsmith_div_u32(var_2.a.x, var_2.a.x), min(var_1.a.x, ~(u_input.a.x & var_1.a.x)) & (~func_6(var_2, var_2.b, var_2).a.x ^ u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, -356f, -374f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1435f, 2137f, -567f), vec3<f32>(-1409f, -379f, -1830f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2663f * 458f), _wgslsmith_f_op_vec3_f32(func_1(var_2, -1i, Struct_1(var_2.a, true), vec4<u32>(1u, 6827u, u_input.b.x, 1u))).x, -351f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(172f, 414f, -632f) * vec3<f32>(571f, 862f, 941f))))));
    var_3 = ~(_wgslsmith_add_u32(func_6(var_2, all(vec3<bool>(false, var_1.b, var_1.b)), func_6(var_2, true, var_2)).a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.a.x, var_2.a.x), u_input.a.zyy)) >> (~(_wgslsmith_dot_vec3_u32(u_input.a.yzy, vec3<u32>(4294967295u, u_input.a.x, 38661u)) << (func_5(1u, 1u, var_1.a.x, vec3<f32>(341f, -250f, 619f)).a.x % 32u)) % 32u));
    var var_5 = select(_wgslsmith_mult_i32(0i, var_0.x), var_0.x, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-max(~var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 0i, 0i), var_0))), 444f);
}

