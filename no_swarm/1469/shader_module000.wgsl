struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = ~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(64847u, 1u, 0u), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(29260u, 22331u, 37706u))));
    var var_1 = Struct_5(Struct_1(!(!arg_0.a.a)), arg_0, select(vec4<bool>(!(!arg_0.a.a.x), true, arg_0.a.a.x, false), select(select(select(vec4<bool>(arg_0.a.a.x, true, false, true), vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, true)), vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, false), vec4<bool>(arg_0.a.a.x, true, false, false)), vec4<bool>(true, true, select(true, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x), arg_0.a.a.x), !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, !arg_0.a.a.x, any(vec3<bool>(true, arg_0.a.a.x, arg_0.a.a.x)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-(i32(-1i) * -1i), 2147483647i), abs(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), min(u_input.a, u_input.a)))), Struct_2(arg_0.a, arg_0.a, Struct_1(!vec3<bool>(arg_0.a.a.x, false, false)), 1000f));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_3 = Struct_5(Struct_1(select(vec3<bool>(!arg_0.a.a.x, all(var_1.e.b.a.yx), var_1.c.x), !var_1.a.a, true)), Struct_3(Struct_1(select(!var_1.c.wyy, vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), var_1.c.zxx)), _wgslsmith_f_op_f32(f32(-1f) * -969f)), var_1.c, max(abs(var_1.d), countOneBits(~vec2<i32>(var_1.d.x, var_1.d.x))), Struct_2(Struct_1(vec3<bool>(true, any(arg_0.a.a), all(vec3<bool>(true, false, false)))), Struct_1(!(!arg_0.a.a)), Struct_1(!var_1.a.a), _wgslsmith_f_op_f32(ceil(-1510f))));
    let var_4 = Struct_5(Struct_1(select(!arg_0.a.a, select(select(var_1.c.yzw, vec3<bool>(var_1.b.a.a.x, false, false), var_3.b.a.a), vec3<bool>(true, true, true), vec3<bool>(var_1.a.a.x, var_3.e.c.a.x, arg_0.a.a.x)), arg_0.a.a.x)), Struct_3(Struct_1(vec3<bool>(true, true, true)), -1284f), var_1.c, -var_1.d, Struct_2(Struct_1(!vec3<bool>(var_3.e.c.a.x, false, var_3.a.a.x)), arg_0.a, Struct_1(var_3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(1165f, var_2))) * _wgslsmith_f_op_f32(f32(-1f) * -1130f))));
    return ~(~(select(vec2<u32>(16984u, 0u), vec2<u32>(1u, 4294967295u), false) >> (countOneBits(vec2<u32>(1u, 4599u)) % vec2<u32>(32u))) ^ ~select(_wgslsmith_add_vec2_u32(vec2<u32>(31290u, 7761u), vec2<u32>(75033u, 91025u)), ~vec2<u32>(0u, 1390u), !var_3.a.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, 444f, arg_1.e.d, arg_0)) - vec4<f32>(1069f, arg_0, arg_0, 706f)) + vec4<f32>(_wgslsmith_f_op_f32(510f * 1426f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_div_f32(-525f, 1038f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.d, 945f, -1036f, arg_1.e.d))))))));
    let var_1 = arg_1.d.x;
    let var_2 = arg_2;
    var var_3 = vec3<u32>(71596u, ~var_2.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, arg_2.x) ^ vec2<u32>(19229u, var_2.x)), min(func_3(Struct_3(arg_1.a, 182f)), vec2<u32>(_wgslsmith_div_u32(arg_2.x, 15398u), 46126u & var_2.x))));
    var var_4 = var_0.x;
    return ~(~arg_2.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(646f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, 1921f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1439f));
    var var_1 = arg_1.a.a;
    var var_2 = arg_2.x;
    var var_3 = Struct_3(Struct_1(!vec3<bool>(333f >= var_0.x, arg_1.b.a.x, var_1.x)), arg_1.d);
    var var_4 = abs(arg_2);
    return Struct_1(vec3<bool>(all(select(arg_1.a.a, vec3<bool>(var_1.x, true, true), !vec3<bool>(true, var_3.a.a.x, arg_1.b.a.x))), true, var_3.a.a.x));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_3(func_4(~_wgslsmith_div_u32(12922u, 94057u) >> (_wgslsmith_add_u32(func_2(-1166f, Struct_5(Struct_1(vec3<bool>(arg_0, arg_0, true)), Struct_3(Struct_1(vec3<bool>(arg_0, false, arg_0)), 1000f), vec4<bool>(arg_0, arg_0, false, arg_0), vec2<i32>(-804i, -2147483647i), Struct_2(Struct_1(vec3<bool>(true, arg_0, arg_0)), Struct_1(vec3<bool>(true, arg_0, arg_0)), Struct_1(vec3<bool>(true, true, arg_0)), -328f)), vec4<u32>(1u, 56638u, 0u, 6283u)), func_2(-464f, Struct_5(Struct_1(vec3<bool>(arg_0, arg_0, true)), Struct_3(Struct_1(vec3<bool>(arg_0, arg_0, false)), 1185f), vec4<bool>(arg_0, arg_0, arg_0, false), vec2<i32>(u_input.b, 2147483647i), Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, true, false)), -1482f)), vec4<u32>(34620u, 0u, 16109u, 0u))) % 32u), Struct_2(Struct_1(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, true), vec3<bool>(true, arg_0, arg_0))), Struct_1(vec3<bool>(arg_0, false, arg_0)), Struct_1(vec3<bool>(arg_0, true, arg_0)), _wgslsmith_f_op_f32(1f - 1759f)), vec2<u32>(abs(1u), 0u)), 439f);
    var_0 = Struct_3(func_4(_wgslsmith_add_u32(58468u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(30538u, 4294967295u, 56920u, 14306u))), Struct_2(var_0.a, var_0.a, var_0.a, var_0.b), select(select(vec2<u32>(1u, 1u), vec2<u32>(5974u, 88795u), false), ~vec2<u32>(1u, 1u), func_4(~1u, Struct_2(var_0.a, var_0.a, Struct_1(var_0.a.a), -1369f), vec2<u32>(57648u, 30212u)).a.zy)), var_0.b);
    var_0 = Struct_3(func_4(_wgslsmith_div_u32(~(~1u), countOneBits(0u) << (select(2811u, 74512u, false) % 32u)), Struct_2(Struct_1(!vec3<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), func_4(~2212u, Struct_2(var_0.a, var_0.a, var_0.a, -431f), _wgslsmith_mod_vec2_u32(vec2<u32>(55752u, 94653u), vec2<u32>(1u, 4294967295u))), func_4(_wgslsmith_sub_u32(0u, 0u), Struct_2(var_0.a, var_0.a, var_0.a, var_0.b), vec2<u32>(25498u, 1u)), 626f), vec2<u32>(1u, 1u)), 1000f);
    var var_1 = Struct_4(Struct_2(Struct_1(select(var_0.a.a, vec3<bool>(var_0.a.a.x, arg_0, arg_0), !arg_0)), func_4(0u, Struct_2(func_4(1u, Struct_2(Struct_1(vec3<bool>(false, true, false)), var_0.a, var_0.a, -466f), vec2<u32>(1u, 94237u)), var_0.a, var_0.a, var_0.b), vec2<u32>(1u, 1u)), Struct_1(var_0.a.a), var_0.b), var_0.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1573f))))), Struct_5(var_0.a, Struct_3(Struct_1(vec3<bool>(false, var_0.a.a.x, false)), _wgslsmith_f_op_f32(abs(979f))), !(!vec4<bool>(true, var_0.a.a.x, arg_0, true)), vec2<i32>(-52459i, firstTrailingBit(0i)), Struct_2(Struct_1(vec3<bool>(false, false, arg_0)), var_0.a, var_0.a, var_0.b)), reverseBits(~vec4<u32>(8395u, 4294967295u, 18698u, 8101u))), vec2<i32>(u_input.a, ~u_input.b));
    let var_2 = ~(~(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(var_1.d.x, 50238i, u_input.b), var_0.a.a.x), -vec3<i32>(var_1.d.x, -26598i, -37579i)) ^ (~vec3<i32>(-1i, -1i, u_input.b) | vec3<i32>(u_input.b, var_1.d.x, -1i))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(vec2<bool>(true, true));
    let var_1 = vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.b);
    let var_2 = vec4<u32>(~4294967295u ^ select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(18549u, 38553u), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(87045u, 19572u), true)), !func_1(true)), 43103u, ~4294967295u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)), Struct_5(Struct_1(vec3<bool>(true, true, true)), Struct_3(func_4(10291u, Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), -988f), vec2<u32>(0u, 47964u)), -156f), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), ~var_1.xx, Struct_2(func_4(56976u, Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), 324f), vec2<u32>(4294967295u, 10099u)), func_4(0u, Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), 1498f), vec2<u32>(71586u, 38921u)), Struct_1(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(931f - -1246f))), ~(~vec4<u32>(1u, 6366u, 24786u, 46527u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1441f, -781f, -1573f, -330f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, 955f, 619f, -1132f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1360f, 835f, 402f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2162f, -930f, 1874f, -1670f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1480f, -1008f, 143f, -1009f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(590f, -1078f, -730f, 180f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, -340f, -802f, 1270f) + vec4<f32>(-1000f, -319f, -537f, -1000f)))))));
    var_0 = func_4(var_2.x, Struct_2(Struct_1(vec3<bool>(true, true, true)), func_4(0u, Struct_2(func_4(var_2.x, Struct_2(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), var_3.x), var_2.zy), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), var_3.x), var_2.xy), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_f32(trunc(var_3.x))), ~(func_3(Struct_3(Struct_1(vec3<bool>(false, false, false)), 761f)) >> (var_2.yy % vec2<u32>(32u)))).a.x;
    var_0 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, firstTrailingBit(u_input.a)), 1i) >= abs(-max(abs(var_1.x), 8624i));
    var var_4 = Struct_4(Struct_2(Struct_1(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 6655u, var_2.x), var_2.zwx), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), var_3.x), var_2.xy).a), Struct_1(vec3<bool>(true, false, var_1.x <= 34709i)), func_4(var_2.x, Struct_2(func_4(var_2.x, Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), var_3.x), vec2<u32>(var_2.x, 82415u)), func_4(var_2.x, Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), -881f), vec2<u32>(29613u, 77354u)), Struct_1(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(trunc(var_3.x))), var_2.zw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(var_3.x * var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) + -647f))), var_3.x, max(var_2.x << (1u % 32u), abs(0u)), _wgslsmith_mult_vec2_i32(-var_1.zz, var_1.ww));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_2 >> (~var_2 % vec4<u32>(32u))) ^ var_2, _wgslsmith_f_op_vec3_f32(var_3.zzz * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, var_3.x, var_3.x))))), var_1.x, -firstTrailingBit(countOneBits(vec2<i32>(2147483647i, var_4.d.x))));
}

