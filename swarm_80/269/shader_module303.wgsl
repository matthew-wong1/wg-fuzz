struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> vec2<bool> {
    let var_0 = -(~abs(~arg_0.d.c.e.xxz));
    var var_1 = abs(select(arg_0.d.c.c.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(select(-26772i, -36561i, false), arg_0.d.c.b), arg_0.d.c.e.zx | (var_0.xy << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), vec2<bool>(!arg_0.d.c.d.x | false, min(var_0.x, 0i) > ~arg_1.a.e.x)));
    var var_2 = arg_1;
    let var_3 = ~firstTrailingBit(-1i ^ -firstTrailingBit(var_1.x));
    var_2 = arg_1;
    return vec2<bool>(false, _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(u_input.a << (u_input.a % 32u), abs(4294967295u))) >= u_input.a);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = arg_0.d;
    var_0 = _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1305f * _wgslsmith_f_op_f32(arg_2.a + 608f))))));
    var_0 = arg_0.d;
    var var_1 = _wgslsmith_div_f32(arg_2.a, _wgslsmith_div_f32(arg_0.d, arg_0.d));
    var var_2 = arg_2.d.c.e.x;
    return 1000f;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = vec4<f32>(-1998f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), 675f)), 2132f, _wgslsmith_f_op_f32(-849f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-325f)) + _wgslsmith_f_op_f32(func_3(Struct_3(vec3<bool>(false, true, false), 1i, Struct_1(vec2<i32>(23878i, 0i), -109994i, vec3<i32>(31311i, 27426i, 29686i), vec2<bool>(arg_0, true), vec4<i32>(-1i, -10436i, -74742i, -22211i)), -426f), Struct_2(u_input.a, vec2<u32>(u_input.a, 14945u), Struct_1(vec2<i32>(0i, 0i), 0i, vec3<i32>(-6369i, 1i, -2147483647i), vec2<bool>(arg_0, false), vec4<i32>(-21214i, 50643i, 2147483647i, -22517i))), Struct_4(-828f, arg_0, vec2<u32>(1u, u_input.a), Struct_2(u_input.a, vec2<u32>(4294967295u, u_input.a), Struct_1(vec2<i32>(-2147483647i, 34608i), 6096i, vec3<i32>(-2147483647i, 1i, -32719i), vec2<bool>(arg_0, arg_0), vec4<i32>(0i, -2147483647i, 41200i, -2147483647i))), vec2<bool>(true, arg_0)))))));
    let var_1 = Struct_2(u_input.a, vec2<u32>(~_wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(0u, 0u)), ~u_input.a), Struct_1(-vec2<i32>(-2634i, -48039i), 12013i, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 543i), vec3<i32>(1984i, 31851i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(12731i, 12296i, 1i), vec3<i32>(14261i, 36867i, 2147483647i))), firstTrailingBit(0i) << (u_input.a % 32u), -2147483647i), func_1(Struct_4(_wgslsmith_f_op_f32(round(var_0.x)), arg_0, ~vec2<u32>(1u, 1u), Struct_2(0u, vec2<u32>(u_input.a, 1u), Struct_1(vec2<i32>(14584i, 0i), 72503i, vec3<i32>(2147483647i, -10187i, -2147483647i), vec2<bool>(arg_0, arg_0), vec4<i32>(1i, 1i, -2147483647i, -2147483647i))), select(vec2<bool>(false, false), vec2<bool>(false, true), arg_0)), Struct_5(Struct_1(vec2<i32>(40505i, 2147483647i), 0i, vec3<i32>(-29244i, 2147483647i, -1271i), vec2<bool>(arg_0, false), vec4<i32>(2147483647i, 1i, 15304i, -28906i)), vec2<bool>(true, true), Struct_3(vec3<bool>(arg_0, true, true), 1i, Struct_1(vec2<i32>(0i, -65418i), -2147483647i, vec3<i32>(2147483647i, 34871i, 2147483647i), vec2<bool>(false, arg_0), vec4<i32>(37574i, -1i, -14800i, 2147483647i)), 302f)), -1122f), vec4<i32>(_wgslsmith_mod_i32(abs(-2147483647i), 4381i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(77321i, -431i))), 1i << (u_input.a % 32u), 0i)));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(81849u, 4294967295u, 1296u, 4294967295u) << (min(~vec4<u32>(4294967295u, 1u, u_input.a, 3946u), firstTrailingBit(vec4<u32>(42272u, 32919u, 10725u, 0u))) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 71503u, 2118u, 4294967295u), vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, 1u)))), vec4<u32>(~u_input.a, _wgslsmith_div_u32(33973u, 4294967295u), _wgslsmith_add_u32(~(u_input.a << (u_input.a % 32u)), 27373u), var_1.b.x));
    return _wgslsmith_f_op_vec4_f32(step(var_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(-643f, _wgslsmith_f_op_f32(-var_0.x), -719f, _wgslsmith_f_op_f32(-var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(any(select(select(func_1(Struct_4(-285f, true, vec2<u32>(u_input.a, u_input.a), Struct_2(u_input.a, vec2<u32>(u_input.a, 12889u), Struct_1(vec2<i32>(-2147483647i, -15858i), 2147483647i, vec3<i32>(32198i, -1i, -2147483647i), vec2<bool>(false, true), vec4<i32>(105725i, -17107i, 48345i, -2147483647i))), vec2<bool>(false, true)), Struct_5(Struct_1(vec2<i32>(1i, -1i), 13185i, vec3<i32>(0i, 7510i, -58163i), vec2<bool>(false, true), vec4<i32>(33138i, -23662i, -1i, 1i)), vec2<bool>(false, true), Struct_3(vec3<bool>(false, true, true), 1i, Struct_1(vec2<i32>(867i, -32119i), 40325i, vec3<i32>(-17142i, -22432i, -1i), vec2<bool>(false, true), vec4<i32>(-1i, 42447i, 0i, -6288i)), -541f)), -1255f), func_1(Struct_4(1479f, true, vec2<u32>(u_input.a, 1u), Struct_2(u_input.a, vec2<u32>(72277u, 19717u), Struct_1(vec2<i32>(12605i, 0i), 1i, vec3<i32>(24898i, -19435i, 23874i), vec2<bool>(true, true), vec4<i32>(-15151i, -1324i, 2618i, 21168i))), vec2<bool>(true, false)), Struct_5(Struct_1(vec2<i32>(2147483647i, -15763i), -1i, vec3<i32>(2147483647i, 10229i, 52572i), vec2<bool>(false, false), vec4<i32>(-6751i, -1i, -19483i, -8030i)), vec2<bool>(true, false), Struct_3(vec3<bool>(false, true, true), -24356i, Struct_1(vec2<i32>(37508i, -5652i), -20795i, vec3<i32>(-3931i, 1i, 29138i), vec2<bool>(true, true), vec4<i32>(-18014i, -1i, -1i, 45922i)), 1082f)), 1000f), func_1(Struct_4(1077f, true, vec2<u32>(u_input.a, u_input.a), Struct_2(16564u, vec2<u32>(0u, 4294967295u), Struct_1(vec2<i32>(-1i, 1i), 2147483647i, vec3<i32>(-2147483647i, -1i, 1i), vec2<bool>(true, false), vec4<i32>(2147483647i, 7559i, -1i, 1i))), vec2<bool>(false, false)), Struct_5(Struct_1(vec2<i32>(-1i, 36085i), -1i, vec3<i32>(1i, -60258i, -1i), vec2<bool>(true, true), vec4<i32>(-68933i, 9844i, -1i, -26842i)), vec2<bool>(false, true), Struct_3(vec3<bool>(false, true, false), 1i, Struct_1(vec2<i32>(2147483647i, -38961i), -2147483647i, vec3<i32>(64417i, 9575i, 1i), vec2<bool>(true, false), vec4<i32>(-33791i, 17916i, -5249i, -22007i)), -1703f)), -1295f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(-930f)))), -240f), -334f, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(718f, 2061f, var_0.x, 209f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(max(-367f, 1122f)), _wgslsmith_f_op_f32(floor(var_0.x))))))));
    let var_1 = vec2<bool>(all(vec3<bool>(true, true, true)), !all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -236f)))), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x));
    var var_2 = Struct_5(Struct_1(-(~(-vec2<i32>(1i, 46256i))), 50063i, _wgslsmith_clamp_vec3_i32(vec3<i32>(11691i, 2147483647i, 62353i), vec3<i32>(-64285i, 11374i, -2147483647i), vec3<i32>(3983i, -61416i, 2147483647i)) ^ ~(~vec3<i32>(1i, 0i, 63005i)), vec2<bool>(var_1.x, true), -((vec4<i32>(-1i, -9790i, 0i, -33045i) << (vec4<u32>(76406u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(58901u, u_input.a, 33890u, u_input.a) % vec4<u32>(32u)))), select(!vec2<bool>(!var_1.x, true), vec2<bool>(var_1.x, var_1.x & var_1.x), !(any(vec4<bool>(true, var_1.x, false, var_1.x)) == var_1.x)), Struct_3(vec3<bool>(!var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(32731i, -1i, 0i), vec3<i32>(21042i, 20292i, 42096i)) != -83484i, func_1(Struct_4(var_0.x, true, vec2<u32>(u_input.a, u_input.a), Struct_2(4294967295u, vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<i32>(0i, 0i), 0i, vec3<i32>(1i, 2147483647i, 25926i), vec2<bool>(var_1.x, var_1.x), vec4<i32>(-56503i, 2147483647i, 8623i, 42190i))), vec2<bool>(true, var_1.x)), Struct_5(Struct_1(vec2<i32>(-9297i, 73990i), -42685i, vec3<i32>(0i, -1i, -2099i), vec2<bool>(var_1.x, false), vec4<i32>(27366i, 26736i, 2147483647i, 0i)), vec2<bool>(var_1.x, var_1.x), Struct_3(vec3<bool>(var_1.x, false, true), -15301i, Struct_1(vec2<i32>(6805i, 0i), 1i, vec3<i32>(-58660i, 13015i, 2147483647i), var_1, vec4<i32>(1i, 2147483647i, 1i, 11896i)), var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x)).x), -9683i, Struct_1(firstLeadingBit(vec2<i32>(1i, 1i)), ~(-25009i), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(12522i, -1i, 42397i), vec3<i32>(-28269i, 10779i, -2147483647i), vec3<i32>(-42323i, 16322i, 9283i))), !(!vec2<bool>(var_1.x, var_1.x)), ~min(vec4<i32>(34193i, 12418i, -28843i, -2147483647i), vec4<i32>(0i, -1805i, 15286i, -22817i))), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, func_1(Struct_4(var_2.c.d, var_1.x, vec2<u32>(u_input.a, u_input.a), Struct_2(u_input.a, vec2<u32>(u_input.a, u_input.a), var_2.c.c), var_2.a.d), Struct_5(Struct_1(vec2<i32>(-2147483647i, 16248i), var_2.a.b, vec3<i32>(var_2.c.c.c.x, var_2.c.c.a.x, 0i), var_2.b, var_2.c.c.e), var_2.c.c.d, var_2.c), var_0.x).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-519f)) * var_0.x), -168f, var_2.c.d) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_2.c.d, var_0.x, _wgslsmith_f_op_f32(-364f - -1427f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, -393f, -156f, -141f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1639f, var_2.c.d, 1038f, -229f) - vec4<f32>(-1262f, var_2.c.d, var_0.x, -658f)), vec4<bool>(true, true, true, true)))))));
    var_2 = Struct_5(Struct_1(vec2<i32>(firstTrailingBit(var_2.c.c.b), _wgslsmith_clamp_i32(abs(var_2.a.a.x), 0i, -var_2.c.b)), -(i32(-1i) * -2147483647i), firstLeadingBit(var_2.c.c.c), select(!func_1(Struct_4(432f, var_2.c.c.d.x, vec2<u32>(u_input.a, u_input.a), Struct_2(u_input.a, vec2<u32>(49572u, 1u), Struct_1(vec2<i32>(var_2.c.b, var_2.c.b), -2147483647i, vec3<i32>(var_2.a.e.x, var_2.c.c.c.x, 19107i), var_1, vec4<i32>(var_2.c.b, var_2.c.b, var_2.c.b, -2147483647i))), var_1), Struct_5(Struct_1(vec2<i32>(var_2.a.a.x, -41840i), 2147483647i, var_2.c.c.e.zwz, var_1, vec4<i32>(0i, var_2.c.b, var_2.a.a.x, -1i)), var_1, Struct_3(var_2.c.a, var_2.c.b, var_2.a, -2023f)), var_0.x), select(!vec2<bool>(var_1.x, true), vec2<bool>(true, false), var_2.a.d), true), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.b, -2147483647i, -41862i, 1i), -var_2.a.e))), vec2<bool>(false, var_1.x), var_2.c);
    var_2 = Struct_5(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.a.e.yy, vec2<i32>(-38947i, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-38439i, var_2.c.c.a.x)), _wgslsmith_dot_vec2_i32(var_2.a.c.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.c.x, 21142i), vec2<i32>(1i, -2147483647i)) | ~vec2<i32>(var_2.a.c.x, var_2.a.b)), countOneBits(~vec3<i32>(var_2.c.b, -11953i, -7322i)) >> (vec3<u32>(0u, ~u_input.a, 4294967295u) % vec3<u32>(32u)), func_1(Struct_4(1108f, var_1.x, vec2<u32>(13973u, u_input.a) << (vec2<u32>(79198u, u_input.a) % vec2<u32>(32u)), Struct_2(u_input.a, vec2<u32>(0u, u_input.a), Struct_1(vec2<i32>(-13982i, 1i), var_2.c.c.b, var_2.a.e.yxx, vec2<bool>(var_1.x, false), vec4<i32>(0i, var_2.a.b, var_2.a.e.x, var_2.c.c.e.x))), !vec2<bool>(var_1.x, true)), Struct_5(var_2.c.c, !vec2<bool>(var_1.x, var_1.x), Struct_3(var_2.c.a, -1i, var_2.a, var_0.x)), var_0.x), max(select(var_2.c.c.e, abs(vec4<i32>(var_2.c.c.c.x, var_2.a.e.x, var_2.a.b, var_2.a.c.x)), !var_1.x), var_2.c.c.e & _wgslsmith_mult_vec4_i32(var_2.c.c.e, var_2.a.e))), var_1, var_2.c);
    var_2 = Struct_5(var_2.c.c, var_2.b, Struct_3(select(var_2.c.a, vec3<bool>(true, !var_1.x, var_1.x), true), ~_wgslsmith_mult_i32(var_2.a.e.x, var_2.a.e.x) ^ firstTrailingBit(2147483647i), var_2.a, _wgslsmith_f_op_f32(-var_2.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.a, ~_wgslsmith_div_u32(firstTrailingBit(3718u), ~u_input.a)), ~u_input.a, var_2.c.c.e, var_0.x, countOneBits(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(1u, 20696u))));
}

