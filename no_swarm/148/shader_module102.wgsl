struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec2<bool>(true, true)), true, true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -137f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-644f, 675f) - _wgslsmith_f_op_f32(ceil(1639f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1123f, 142f)))))));
    var var_2 = Struct_1(vec2<bool>(var_0.x, !any(!var_0.xy)), -11464i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -688f)), -563f, false)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-433f)) + -272f))));
    let var_3 = vec2<u32>(~(_wgslsmith_mult_u32(0u, u_input.a.x) | u_input.a.x), 55777u) & (u_input.a ^ vec2<u32>(u_input.a.x, _wgslsmith_add_u32(firstLeadingBit(arg_0), 49322u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, -817f))))), 650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -654f))))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = ~reverseBits(vec3<u32>(firstTrailingBit(34417u), 27262u, 19692u));
    let var_1 = arg_0;
    var var_2 = arg_1.a;
    var_2 = !select(select(select(arg_0.a, !var_1.a, !arg_1.c), var_1.a, !var_1.a), arg_1.a, select(vec2<bool>(any(vec3<bool>(arg_0.a.x, false, var_1.c)), arg_0.c & false), arg_1.a, select(select(vec2<bool>(arg_0.a.x, arg_1.c), var_1.a, var_1.a), arg_1.a, arg_1.a)));
    var_2 = !select(vec2<bool>(var_1.a.x, var_2.x), arg_1.a, select(arg_0.a, vec2<bool>(4294967295u <= var_0.x, var_1.c), func_3(1u)));
    return max(select(vec2<u32>(~_wgslsmith_clamp_u32(1u, u_input.a.x, 1u), ~1u), max(u_input.a, var_0.zx), (firstTrailingBit(var_1.b) >> (~2040u % 32u)) <= arg_1.b), vec2<u32>(1u, 29505u));
}

fn func_2() -> i32 {
    var var_0 = func_4(Struct_1(vec2<bool>(all(vec4<bool>(true, false, false, true)), func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(114013u, 1u, u_input.a.x, 39875u)))), 1i, true), Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(0i, 28654i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-13264i, 1i), vec2<i32>(1i, 1i)), max(countOneBits(-1i), -17198i)), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, 357f)))))));
    var_0 = vec2<u32>(var_0.x, var_0.x);
    let var_1 = Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), 4294967295u >= var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(true, true)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-22863i, -2147483647i) << (u_input.a % vec2<u32>(32u)), ~vec2<i32>(1i, -16355i), true), vec2<i32>(1i, 1i)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), true || any(vec2<bool>(false, false)))));
    var var_2 = Struct_1(vec2<bool>(true, select(all(var_1.a), !(!var_1.a.x), true)), var_1.b & var_1.b, !var_1.c);
    var_0 = ~vec2<u32>(countOneBits(1u), 4294967295u);
    return _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_2.b, var_2.b)), vec2<i32>(-12482i, var_2.b)), -_wgslsmith_div_i32(-23362i, -14336i)), 0i), var_2.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(arg_0, 1i, false);
    let var_1 = Struct_1(!(!vec2<bool>(!var_0.a.x, true)), 2147483647i, false);
    var var_2 = vec3<u32>(~(u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 114654u, 4294967295u), vec3<u32>(0u, 0u, 32844u))), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x) ^ _wgslsmith_mod_vec3_u32(~(~vec3<u32>(58906u, 4294967295u, u_input.a.x) >> (max(vec3<u32>(u_input.a.x, 89980u, u_input.a.x), vec3<u32>(22496u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_mult_u32(48411u, u_input.a.x), 1u, firstTrailingBit(67624u)));
    var_2 = vec3<u32>(~u_input.a.x, ~28588u, u_input.a.x);
    var var_3 = var_0.a.x;
    return Struct_1(vec2<bool>(!(u_input.a.x >= 1u), false), abs(_wgslsmith_mod_i32(abs(arg_1.b) << (_wgslsmith_mod_u32(var_2.x, 32864u) % 32u), -15299i)), var_1.c);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_5(vec2<bool>(func_2() >= -_wgslsmith_div_i32(2147483647i, -1i), all(!select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)))), Struct_1(vec2<bool>(true, true), 35907i, true), _wgslsmith_f_op_f32(556f - _wgslsmith_f_op_f32(round(-1000f))));
    let var_1 = ~_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 14768u), u_input.a) << (firstTrailingBit(u_input.a.x) % 32u)), firstLeadingBit(u_input.a.x));
    let var_2 = 36570i;
    var var_3 = -_wgslsmith_mod_vec4_i32(firstTrailingBit(select(vec4<i32>(var_0.b, 0i, -36788i, 0i), vec4<i32>(-1i, var_2, var_2, var_2), vec4<bool>(false, arg_0, true, true))) >> (vec4<u32>(37098u, 47574u, ~72649u, var_1 ^ var_1) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_0.b, -2147483647i, -2147483647i) & vec4<i32>(5466i, 16173i, 3555i, 0i), firstTrailingBit(vec4<i32>(var_0.b, 23333i, var_2, var_2))));
    let var_4 = var_0;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(i32(-1i) * -2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-32238i, 18746i, -2147483647i), vec3<i32>(1i, -2147483647i, -75998i)) >> (87947u % 32u)) | func_1(true);
    let var_1 = func_5(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, false, true))), vec2<bool>(true, false)), func_5(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false)))), func_5(func_5(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_5(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true), -15988i, false), -306f), _wgslsmith_f_op_f32(-181f * -1104f)).a, func_5(func_5(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), -2147483647i, true), -395f).a, func_5(vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), -30605i, true), -893f), _wgslsmith_div_f32(558f, 599f)), 1206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1161f))))), -1257f);
    var_0 = _wgslsmith_mod_i32(abs(-_wgslsmith_add_i32(var_1.b, 5662i) & 0i), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), reverseBits(u_input.a.x)), max(min(~4294967295u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, abs(4294967295u)))));
}

