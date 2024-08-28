struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(205f, -197f))), -1198f)) - 758f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1213f))))));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3()), vec4<i32>(-24092i, _wgslsmith_mod_i32(max(-2147483647i, 0i), 1i), select(i32(-1i) * -1i, 1i, all(vec4<bool>(true, true, false, true))), ~_wgslsmith_add_i32(1i, -23626i)), true, 1u, ((0u != u_input.a) | true) && false), min(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 16995i, 5406i), vec4<i32>(-26602i, 0i, 15090i, -1i)), ~1i), min(vec3<i32>(1i, -2147483647i, 15902i), vec3<i32>(-1i, 16208i, 1i)) >> (vec3<u32>(u_input.a, 1u, 20667u) % vec3<u32>(32u))) | min(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2615i, -1i, -1i), ~vec3<i32>(2147483647i, 2147483647i, -8756i)), vec3<i32>(~25002i, 40159i, -1i)), Struct_1(1f, -min(~vec4<i32>(3928i, 2147483647i, -1i, 19322i), -vec4<i32>(11621i, 19155i, -2147483647i, -2147483647i)), any(!vec4<bool>(arg_0, true, arg_0, true)), ~(0u >> (u_input.a % 32u)) >> (0u % 32u), arg_0));
    var_0 = Struct_2(Struct_1(var_0.a.a, vec4<i32>(57023i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(924i, var_0.b.x, var_0.c.b.x), var_0.c.b.x & -27217i), var_0.c.b.x, var_0.a.b.x), !(!(var_0.c.a > var_0.c.a)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(31073u, u_input.a), u_input.a), any(vec2<bool>(all(vec3<bool>(var_0.c.e, false, false)), true))), max(vec3<i32>(var_0.b.x << (51097u % 32u), countOneBits(var_0.a.b.x), var_0.b.x), vec3<i32>(-1i, -11557i, reverseBits(2147483647i))) & var_0.b, Struct_1(882f, min(select(vec4<i32>(-45765i, var_0.a.b.x, 2147483647i, 36870i), var_0.a.b & vec4<i32>(var_0.a.b.x, var_0.b.x, var_0.a.b.x, var_0.c.b.x), true), _wgslsmith_clamp_vec4_i32(var_0.a.b | var_0.c.b, ~var_0.a.b, vec4<i32>(0i, 834i, var_0.b.x, -21605i))), select(arg_0, true, arg_0), ~_wgslsmith_clamp_u32(~var_0.c.d, 4294967295u, abs(u_input.a)), true));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(select(511f, 1376f, false))))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, 97801i, -2147483647i, var_0.b.x), -var_0.a.b), _wgslsmith_mult_i32(-70364i, var_0.a.b.x | 16242i), -(~var_0.a.b.x), var_0.c.b.x), !(56406u > ~var_0.c.d), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(19368u, var_0.c.d, 47008u, 0u)), ~vec4<u32>(1u, var_0.a.d, 4294967295u, 2425u)), false));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), var_0.c.b, any(select(vec2<bool>(var_0.a.e, false), select(vec2<bool>(false, false), vec2<bool>(arg_0, false), false), vec2<bool>(false, arg_0))), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d, 48705u, 1786u, 6993u), vec4<u32>(10586u, 4294967295u, u_input.a, var_0.c.d))), false), var_0.b, Struct_1(_wgslsmith_f_op_f32(trunc(-1224f)), abs(_wgslsmith_add_vec4_i32(select(vec4<i32>(-14572i, var_0.b.x, var_0.b.x, var_0.a.b.x), vec4<i32>(var_0.a.b.x, var_0.c.b.x, var_0.b.x, var_0.c.b.x), true), var_0.c.b)), false, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, var_0.a.d), reverseBits(4294967295u)), u_input.a), var_0.a.e));
    let var_1 = Struct_5(var_0.c.b, Struct_1(697f, -_wgslsmith_clamp_vec4_i32(~vec4<i32>(30558i, 2147483647i, -1i, var_0.b.x), var_0.c.b, ~vec4<i32>(32647i, var_0.c.b.x, var_0.a.b.x, -2147483647i)), var_0.a.e, 1u, !var_0.a.e), Struct_3(vec2<i32>(-2147483647i, var_0.a.b.x), Struct_1(_wgslsmith_f_op_f32(func_3()), min(var_0.c.b & vec4<i32>(-20124i, -44329i, var_0.c.b.x, var_0.c.b.x), var_0.a.b), all(vec4<bool>(true, true, true, false)) & true, 1u, (var_0.a.a >= var_0.c.a) || !arg_0), vec3<bool>(!all(vec4<bool>(true, arg_0, arg_0, false)), any(vec4<bool>(true, true, var_0.a.e, var_0.a.c)), false)), vec3<u32>(~_wgslsmith_add_u32(~u_input.a, ~u_input.a), 125929u, 13638u));
    return ~(~(~(~(~u_input.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = firstLeadingBit(func_2((_wgslsmith_mult_u32(arg_3.x, arg_1) >= 4294967295u) || select(true, true, true)));
    let var_1 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(-1i), _wgslsmith_mod_i32(2147483647i, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(11727i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -98314i), vec2<i32>(-6110i, 1i)))), i32(-1i) * -2285i, min(firstLeadingBit(_wgslsmith_add_i32(-18383i, 1i)), 1i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2069f), vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<bool>(false, true))), abs(vec2<i32>(0i, 49027i)) & ~vec2<i32>(var_1, var_1)), select(_wgslsmith_div_i32(~(-2895i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(5903i, 1i))), var_1, true), -1i, firstLeadingBit(countOneBits(_wgslsmith_div_i32(var_1, var_1)))), true, abs(~u_input.a), any(vec2<bool>(!(1u >= var_0), select(any(vec3<bool>(true, false, false)), true, true))));
    var_2 = Struct_1(var_2.a, var_2.b, all(!(!vec4<bool>(var_2.c, var_2.e, false, true))), 44160u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4294967295u, ~48142u, 1u), _wgslsmith_mult_vec4_u32(arg_3 << (arg_3 % vec4<u32>(32u)), arg_3)), true);
    var var_3 = 11662i;
    return min(var_1, var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~(vec2<u32>(23168u, 0u) | ~vec2<u32>(u_input.a, 0u))), vec2<u32>(u_input.a, ~u_input.a));
    var var_1 = (-1i & (~func_1(vec3<f32>(423f, 134f, 130f), 16612u, vec3<f32>(420f, -501f, 1310f), vec4<u32>(u_input.a, 28745u, 0u, u_input.a)) >> (u_input.a % 32u))) > _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~0i, -2147483647i, 2147483647i, 1i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(27056i, -1i, -16619i, -1i) << (vec4<u32>(u_input.a, var_0.x, 0u, 24105u) % vec4<u32>(32u)), vec4<i32>(1i, 0i, 2147483647i, 4698i)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~(~(~vec3<u32>(4294967295u, 4294967295u, var_0.x)))), firstLeadingBit(~(~firstTrailingBit(vec3<u32>(u_input.a, 17018u, var_0.x)))));
    var var_3 = !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), true, false, false & (u_input.a <= 4294967295u)), vec4<bool>(false | any(vec3<bool>(true, false, true)), true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), true));
    var var_4 = Struct_4(vec4<bool>(true, var_3.x, true, var_3.x), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(181f, -192f, var_3.x)), _wgslsmith_f_op_f32(387f * -551f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1431f)) * 1024f))), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -1i, -2147483647i), vec4<i32>(-40610i, 67815i, 4781i, -27659i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 22561i), vec2<i32>(-41743i, 16765i)), max(1i, 1i), countOneBits(5422i))), -407f < _wgslsmith_f_op_f32(select(-348f, _wgslsmith_div_f32(-1381f, -638f), !var_3.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_2, 35130u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 62143u), vec3<u32>(43508u, var_0.x, 0u)), var_2, _wgslsmith_sub_u32(4294967295u, 18427u))), true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1901f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) + _wgslsmith_f_op_f32(select(-423f, 318f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2015f)))), _wgslsmith_f_op_f32(734f - 1f), -1000f), -min(_wgslsmith_div_vec4_i32(-vec4<i32>(114940i, 1i, -2147483647i, 732i), -vec4<i32>(-1i, 27833i, -9563i, -1i)), vec4<i32>(~2147483647i, -55876i, _wgslsmith_sub_i32(-1i, 44249i), 1i)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-3302i, -2147483647i, 0i, 2958i) >> (~vec4<u32>(u_input.a, 28480u, 49362u, u_input.a) % vec4<u32>(32u)), vec4<bool>(any(vec4<bool>(true, true, false, false)), var_2 < 0u, false, any(vec4<bool>(var_3.x, var_3.x, true, false)))), !all(var_3.yx), 0u, true));
    let var_5 = var_4.b.b.x;
    var_3 = !vec4<bool>(any(select(select(var_3.ww, var_4.a.xx, false), var_4.a.zw, !var_3.zw)), var_4.b.e, 956f < var_4.c.x, !(var_4.c.x == _wgslsmith_div_f32(var_4.c.x, -701f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(925f, _wgslsmith_f_op_f32(sign(-2150f))))), _wgslsmith_f_op_vec3_f32(exp2(var_4.c.xxw)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1483f * -957f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x + _wgslsmith_div_f32(var_4.b.a, -1000f)))));
}

