struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(35554u, 0u, 197u), vec2<f32>(1170f, -274f), 6091i, vec3<u32>(12898u, 155963u, 4294967295u), true), Struct_1(vec3<u32>(14414u, 4294967295u, 1u), vec2<f32>(147f, 1005f), 2147483647i, vec3<u32>(197u, 56316u, 9459u), false), Struct_1(vec3<u32>(20250u, 0u, 43535u), vec2<f32>(-306f, 397f), 19565i, vec3<u32>(1u, 4294967295u, 4083u), true), Struct_1(vec3<u32>(36638u, 1u, 0u), vec2<f32>(913f, 1210f), -26033i, vec3<u32>(34379u, 0u, 11461u), false), Struct_1(vec3<u32>(2553u, 1u, 30693u), vec2<f32>(-613f, -623f), -1i, vec3<u32>(1u, 4294967295u, 1u), true), Struct_1(vec3<u32>(1u, 40247u, 975u), vec2<f32>(1023f, -823f), 23054i, vec3<u32>(75184u, 33550u, 1u), true), Struct_1(vec3<u32>(0u, 31767u, 15214u), vec2<f32>(-1233f, -423f), -34468i, vec3<u32>(1u, 73487u, 0u), true), Struct_1(vec3<u32>(32837u, 66114u, 40446u), vec2<f32>(-1195f, -1768f), 2147483647i, vec3<u32>(5533u, 4294967295u, 4294967295u), false), Struct_1(vec3<u32>(14734u, 18747u, 45460u), vec2<f32>(827f, -1351f), i32(-2147483648), vec3<u32>(1u, 41530u, 4294967295u), true), Struct_1(vec3<u32>(43119u, 0u, 85479u), vec2<f32>(-2110f, -384f), -1i, vec3<u32>(810u, 1u, 1u), true), Struct_1(vec3<u32>(20793u, 4294967295u, 7896u), vec2<f32>(-854f, 384f), i32(-2147483648), vec3<u32>(32815u, 1u, 73039u), false), Struct_1(vec3<u32>(1u, 18480u, 9835u), vec2<f32>(623f, 110f), i32(-2147483648), vec3<u32>(19u, 0u, 90853u), true), Struct_1(vec3<u32>(4294967295u, 9294u, 0u), vec2<f32>(-485f, -325f), -30578i, vec3<u32>(0u, 33181u, 70369u), false), Struct_1(vec3<u32>(14117u, 0u, 14377u), vec2<f32>(191f, 530f), i32(-2147483648), vec3<u32>(0u, 5970u, 1u), true), Struct_1(vec3<u32>(72315u, 1u, 0u), vec2<f32>(384f, 886f), 1i, vec3<u32>(0u, 18173u, 1u), true));

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1948f, -1155f, -125f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, -7871i, -17981i), ~(-4034i), _wgslsmith_mod_i32(30471i, -14391i)), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(-6252i, 0i))), ~2147483647i, 33659i, 1i), Struct_1(vec3<u32>(firstLeadingBit(countOneBits(u_input.a)), firstLeadingBit(~u_input.a), ~u_input.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), 29745i, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, ~46220u, u_input.a), abs(vec3<u32>(1u, 4294967295u, 43353u))), any(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(min(u_input.b, 4294967295u), 15u)]);
    let var_1 = var_0;
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_2(var_0.a, Struct_1(vec3<u32>(var_0.b.d.x, 51251u, _wgslsmith_add_u32(var_0.b.d.x << (u_input.a % 32u), 4294967295u)), _wgslsmith_f_op_vec2_f32(ceil(var_0.b.b)), _wgslsmith_mult_i32(1i, var_1.a.x), ~countOneBits(vec3<u32>(4294967295u, var_1.c.d.x, var_1.b.d.x)) & ~(var_1.c.d >> (vec3<u32>(0u, var_1.b.d.x, var_1.c.a.x) % vec3<u32>(32u))), var_1.c.e), Struct_1(~(~(~var_1.c.a)), _wgslsmith_f_op_vec2_f32(var_1.b.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b.x, var_0.c.b.x) + var_0.c.b))), -66581i, ~(~vec3<u32>(u_input.a, 65101u, u_input.b)) ^ ~(vec3<u32>(var_0.b.d.x, 64827u, var_1.c.d.x) | vec3<u32>(var_0.b.a.x, 5435u, 1u)), true));
    var var_3 = Struct_1(var_2.c.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1689f, var_2.b.b.x), _wgslsmith_f_op_vec2_f32(var_2.b.b - var_2.c.b))), var_0.b.b, !vec2<bool>(var_1.b.e && true, !var_1.c.e))), 0i, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~max(var_1.c.a, vec3<u32>(u_input.a, 36157u, 1u)), var_1.c.d, abs(vec3<u32>(0u, 4294967295u, var_1.b.a.x))), abs(max(var_2.c.d, vec3<u32>(var_0.b.a.x, var_1.c.a.x, 0u)) >> (~vec3<u32>(3201u, var_2.b.a.x, 33035u) % vec3<u32>(32u)))), any(!vec4<bool>(var_0.c.e, false, var_1.c.e, var_0.b.e)) || all(select(vec3<bool>(false, var_0.b.e, var_1.b.e), select(vec3<bool>(true, false, false), vec3<bool>(var_1.b.e, var_0.b.e, false), vec3<bool>(var_1.c.e, var_0.b.e, true)), vec3<bool>(var_1.b.e, true, var_2.c.e))));
    return var_3.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    global1 = array<vec3<f32>, 1>();
    global1 = array<vec3<f32>, 1>();
    let var_0 = global0[_wgslsmith_index_u32(55804u, 15u)];
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, u_input.b) ^ 28458u, 15u)];
    var var_2 = var_1.e | (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(616f - -720f))) >= arg_2);
    return Struct_2(-vec4<i32>(abs(select(-2147483647i, arg_1.x, true)), ~abs(0i), var_1.c, _wgslsmith_add_i32(~0i, func_3())), Struct_1(~vec3<u32>(var_0.a.x, _wgslsmith_div_u32(var_1.a.x, var_1.d.x), 10581u), vec2<f32>(_wgslsmith_div_f32(-1860f, var_1.b.x), _wgslsmith_div_f32(-1270f, _wgslsmith_f_op_f32(arg_2 - 1000f))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-25943i, var_1.c), arg_1.x), 11541i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_0.c, arg_1.x, 0i), vec4<i32>(var_0.c, var_0.c, -73385i, arg_1.x)), _wgslsmith_mult_i32(var_1.c, -25776i), arg_0.x)), abs(vec3<u32>(1u, ~4294967295u, var_1.d.x)), var_0.e), global0[_wgslsmith_index_u32(var_0.a.x, 15u)]);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f + arg_1.c.b.x))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~4327u, 27797u, 53499u ^ u_input.b, 601u), vec4<u32>(~arg_2, ~arg_2, ~4294967295u, arg_3.a.x)), ~(abs(vec4<u32>(39012u, arg_1.b.a.x, arg_1.c.d.x, u_input.b)) << (~vec4<u32>(arg_2, 4294967295u, 101639u, 1u) % vec4<u32>(32u)))) | ~(~arg_2), 1u)];
    let var_2 = reverseBits(arg_1.a);
    return select(!(!vec4<bool>(all(vec4<bool>(arg_0.x, arg_3.e, false, false)), arg_1.b.a.x > arg_1.c.d.x, true, true)), !select(vec4<bool>(arg_3.a.x == arg_2, var_1.x <= 643f, arg_0.x, true), select(select(vec4<bool>(true, arg_3.e, true, false), vec4<bool>(true, false, false, false), vec4<bool>(arg_3.e, false, arg_1.c.e, true)), !vec4<bool>(arg_1.c.e, arg_1.b.e, arg_3.e, arg_3.e), true), all(!vec4<bool>(arg_3.e, true, arg_0.x, false))), select(!vec4<bool>(true, true, any(arg_0.xx), 965i == arg_1.c.c), !vec4<bool>(arg_1.b.e, true, true, true), !vec4<bool>(select(arg_3.e, arg_0.x, true), true, true, func_2(vec2<bool>(true, true), vec3<i32>(arg_1.a.x, arg_3.c, 10665i), -878f).b.e)));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = !func_4(vec3<bool>(any(!vec3<bool>(arg_0.e, true, false)), !arg_0.e, true), func_2(vec2<bool>(true, true), vec3<i32>(-50820i, -25124i, arg_0.c) >> (arg_0.d % vec3<u32>(32u)), arg_0.b.x), _wgslsmith_mod_u32(~(~1657u), ~arg_0.d.x), arg_0);
    var var_1 = var_0.www;
    var var_2 = Struct_2(vec4<i32>(0i, -1i, -47143i, abs(_wgslsmith_sub_i32(1i, arg_0.c))), func_2(select(select(!vec2<bool>(false, var_0.x), select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_0.x), var_1.yx), !var_0.x), select(func_4(var_0.www, Struct_2(vec4<i32>(30046i, -23411i, 2147483647i, 0i), Struct_1(arg_0.a, vec2<f32>(-389f, arg_0.b.x), -55234i, arg_0.d, var_1.x), arg_0), 1u, Struct_1(vec3<u32>(1u, 4294967295u, u_input.b), arg_0.b, arg_0.c, arg_0.d, var_0.x)).yx, func_4(var_0.yzx, Struct_2(vec4<i32>(arg_0.c, -1933i, 6744i, arg_0.c), Struct_1(vec3<u32>(4294967295u, arg_0.d.x, 1u), arg_0.b, arg_0.c, arg_0.a, false), Struct_1(arg_0.a, vec2<f32>(arg_0.b.x, -177f), 0i, arg_0.a, true)), 33013u, Struct_1(arg_0.a, vec2<f32>(2713f, 482f), arg_0.c, vec3<u32>(0u, arg_0.a.x, arg_0.d.x), var_1.x)).zz, !var_0.x), select(var_0.zx, select(var_1.zx, vec2<bool>(false, false), arg_0.e), var_1.yy)), vec3<i32>(arg_0.c, -15587i, reverseBits(i32(-1i) * -4992i)), _wgslsmith_f_op_f32(-arg_0.b.x)).c, Struct_1(_wgslsmith_clamp_vec3_u32(~(~arg_0.d), _wgslsmith_div_vec3_u32(~arg_0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.d.x, arg_0.d.x), vec3<u32>(41711u, 42644u, 30790u))), vec3<u32>(~u_input.a, _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, arg_0.b.x))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(50196i, arg_0.c, arg_0.c) & vec3<i32>(2147483647i, 2147483647i, arg_0.c)), vec3<i32>(arg_0.c, arg_0.c, firstLeadingBit(0i))), arg_0.a, select(true, !(!var_1.x), any(var_0.yzy))));
    let var_3 = ~var_2.a.zw >> (~_wgslsmith_div_vec2_u32(select(arg_0.d.zy, select(vec2<u32>(5634u, 18264u), arg_0.a.xz, true), var_0.x), ~countOneBits(vec2<u32>(u_input.b, 1u))) % vec2<u32>(32u));
    global1 = array<vec3<f32>, 1>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.x, 1222f), vec2<f32>(240f, 201f))))) - var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(3634i, 2147483647i, 38820i)), vec3<i32>(-2147483647i, -862i, -17280i)), select(firstTrailingBit(-345i), 1i, all(vec3<bool>(false, false, false))), ~(-firstTrailingBit(11213i)), -36813i), global0[_wgslsmith_index_u32(1u, 15u)], Struct_1(firstLeadingBit(~(~vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(u_input.b, 15u)]))), _wgslsmith_mod_i32(reverseBits(1i), ~79721i), ~(~min(vec3<u32>(16413u, u_input.a, 14654u), vec3<u32>(u_input.a, 19622u, u_input.b))), true));
    let var_1 = vec4<bool>(!all(vec4<bool>(func_4(vec3<bool>(true, false, false), Struct_2(var_0.a, Struct_1(vec3<u32>(u_input.a, var_0.c.a.x, 1u), var_0.b.b, 0i, var_0.b.a, var_0.b.e), var_0.c), u_input.b, var_0.c).x, true, 739f != var_0.b.b.x, var_0.c.e)), true, func_4(vec3<bool>(true, true, true), func_2(select(vec2<bool>(var_0.b.e, var_0.c.e), select(vec2<bool>(var_0.b.e, var_0.c.e), vec2<bool>(true, true), true), var_0.c.e), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-29983i, var_0.a.x, -30083i), var_0.a.wxx), var_0.c.b.x), var_0.c.d.x & 0u, Struct_1(~(vec3<u32>(var_0.b.a.x, 10592u, var_0.c.a.x) >> (vec3<u32>(var_0.c.d.x, 61674u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(var_0.b.b + _wgslsmith_f_op_vec2_f32(var_0.c.b * var_0.b.b)), reverseBits(func_2(vec2<bool>(var_0.c.e, var_0.b.e), vec3<i32>(var_0.b.c, var_0.b.c, var_0.b.c), var_0.b.b.x).a.x), select(_wgslsmith_mult_vec3_u32(var_0.b.a, var_0.c.a), var_0.c.a, true), all(!vec3<bool>(var_0.c.e, var_0.b.e, true)))).x, true);
    var var_2 = var_0;
    var var_3 = vec4<u32>(16387u, 4294967295u, 23126u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c.a.x, u_input.b, 18850u), _wgslsmith_add_vec3_u32(var_0.b.d, var_2.b.a)));
    let var_4 = ~1u;
    let var_5 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    let var_6 = var_2.a.x;
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(90387u, var_2.b.d.x, var_4, 15377u), vec4<u32>(25843u, 8826u, var_2.c.d.x, 51759u)) | ~vec4<u32>(4294967295u, var_0.c.a.x, 74191u, u_input.b))), _wgslsmith_f_op_f32(round(1752f)), _wgslsmith_f_op_f32(select(-185f, -2117f, var_0.c.e)));
}

