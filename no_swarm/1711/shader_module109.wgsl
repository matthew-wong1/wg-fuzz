struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 1i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1339f, arg_0.d.c)), -726f, arg_0.d.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.d.c)), any(!vec2<bool>(arg_0.d.d.x, true)))))));
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~u_input.c, _wgslsmith_add_vec3_i32(u_input.c, arg_0.d.b.zzx)), vec3<i32>(-_wgslsmith_dot_vec4_i32(arg_0.d.b, firstTrailingBit(vec4<i32>(-25470i, -6853i, -2113i, global0.x))), u_input.a, _wgslsmith_div_i32(1i, reverseBits(global0.x))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~arg_0.d.b.wwz, vec3<i32>(-33083i, u_input.c.x, var_0.x) << (vec3<u32>(arg_0.c, u_input.b.x, arg_1) % vec3<u32>(32u))), abs(arg_0.d.b.wwy >> (arg_0.d.a.c.www % vec3<u32>(32u)))) << (u_input.b % vec3<u32>(32u)));
    var var_2 = Struct_1(44642u, arg_0.d.a.d.x, arg_0.d.a.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(arg_0.d.a.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-126f, arg_0.a.x, 212f), vec3<f32>(arg_0.a.x, arg_0.a.x, -178f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-var_1), -1000f))));
    let var_3 = _wgslsmith_f_op_f32(var_2.b + var_2.d.x);
    return arg_0.d.d;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = Struct_4(arg_0.d.yz, u_input.b.x, 6652u, Struct_2(Struct_1(u_input.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, 1352f), _wgslsmith_f_op_f32(exp2(arg_2))), max(vec4<u32>(u_input.b.x, 5u, 64011u, u_input.b.x), arg_0.c) << (select(vec4<u32>(55931u, 1u, u_input.b.x, u_input.d), arg_0.c, false) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(step(-831f, -1619f)), _wgslsmith_f_op_f32(861f - 276f), _wgslsmith_f_op_f32(-arg_2))), vec4<i32>(~firstTrailingBit(-60703i), u_input.c.x, 2147483647i, reverseBits(2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1080f) - _wgslsmith_f_op_f32(-429f + -415f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2)), 129f)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), !func_3(Struct_4(vec2<f32>(899f, -352f), arg_0.c.x, 397u, Struct_2(Struct_1(108893u, arg_2, arg_0.c, vec3<f32>(arg_0.d.x, 1000f, arg_0.d.x)), vec4<i32>(global0.x, u_input.a, -43416i, global0.x), -1000f, vec3<bool>(false, true, false))), u_input.d), (u_input.a >= global0.x) || false)));
    let var_1 = ~abs(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(40049u, 4294967295u, u_input.d), u_input.b), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(21280u, 655u, 44017u), vec3<u32>(u_input.b.x, var_0.d.a.c.x, 1u)), vec3<u32>(arg_0.a, 30356u, 0u))));
    let var_2 = var_0.d.d.x != var_0.d.d.x;
    let var_3 = any(vec4<bool>(true, !(~var_0.d.a.a == ~var_1), false, !(arg_1 != arg_0.d.x)));
    let var_4 = var_1;
    return ~14386i;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = arg_0.a.d;
    global0 = vec2<i32>(max(2147483647i, -915i), _wgslsmith_mod_i32(func_2(arg_0.a, -461f, var_0.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(24059i, global0.x), arg_0.b.xx), 1i)) << (0u % 32u));
    global0 = select(-(arg_0.b.yw & vec2<i32>(u_input.a, global0.x)) << (vec2<u32>(~u_input.d, 1u) % vec2<u32>(32u)), u_input.c.zx, select(!arg_0.d.yz, func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2044f, var_0.x)), 1u, 1784u, arg_0), _wgslsmith_dot_vec4_u32(arg_0.a.c, ~arg_0.a.c)).yz, arg_0.d.zz));
    var var_1 = arg_0.d.x;
    let var_2 = ~(_wgslsmith_mod_i32(~countOneBits(arg_0.b.x), ~global0.x) << (~(~reverseBits(4294967295u)) % 32u));
    return select(!arg_0.d.zx, !(!arg_0.d.yx), !((_wgslsmith_f_op_f32(var_0.x * var_0.x) < arg_0.c) && arg_0.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    global0 = -u_input.c.yx;
    var var_0 = arg_2;
    global0 = select(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(u_input.a, u_input.c.x)), countOneBits(countOneBits(vec2<i32>(0i, arg_0.x)))) << (vec2<u32>(6119u, ~(~6374u)) % vec2<u32>(32u)), ~(~min(-vec2<i32>(global0.x, 2147483647i), -vec2<i32>(42099i, global0.x))), !var_0.x | true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1067f, _wgslsmith_f_op_f32(-984f + _wgslsmith_f_op_f32(select(-337f, 428f, var_0.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.x), vec2<i32>(27942i, arg_0.x)) != ~(-36784i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f + _wgslsmith_f_op_f32(-272f - -113f)) + _wgslsmith_div_f32(-1303f, _wgslsmith_f_op_f32(f32(-1f) * -449f))), true)));
    var var_2 = u_input.b.x;
    return ~(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.d, 4294967295u) | vec4<u32>(0u, 4444u, u_input.d, 89150u), vec4<u32>(u_input.d, u_input.d, u_input.b.x, u_input.d)), (u_input.d >> (4294967295u % 32u)) ^ 1u) & u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_4(vec2<i32>(-2147483647i, -54000i), abs(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global0.x, global0.x, 53448i), vec4<i32>(-53632i, 0i, -3188i, global0.x)))), select(vec2<bool>(true, true), func_1(Struct_2(Struct_1(u_input.d, -1181f, vec4<u32>(16199u, 0u, 1u, 1u), vec3<f32>(847f, -305f, -293f)), vec4<i32>(global0.x, 0i, 2147483647i, u_input.c.x), 514f, vec3<bool>(true, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)))), 70380u, ~0u, 4294967295u);
    var var_1 = Struct_3(Struct_2(Struct_1(~reverseBits(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -3065f), vec4<u32>(u_input.b.x, ~var_0.x, 29055u, firstLeadingBit(var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(426f - -1267f))), vec4<i32>(23889i, -54852i, _wgslsmith_mod_i32(-u_input.c.x, 47708i), _wgslsmith_mod_i32(-global0.x, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(938f)))), func_3(Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1189f), vec2<f32>(261f, -1066f), true)), _wgslsmith_dot_vec3_u32(vec3<u32>(982u, 0u, 1u), u_input.b), func_4(u_input.c.yx, vec4<i32>(-2147483647i, u_input.a, u_input.c.x, global0.x), vec2<bool>(true, false)), Struct_2(Struct_1(33241u, -453f, vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<f32>(949f, 1000f, 157f)), vec4<i32>(1697i, 9423i, global0.x, global0.x), 537f, vec3<bool>(true, false, false))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), ~vec2<u32>(14051u, 2258u)))), Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.x, var_0.x, 0u), vec4<u32>(u_input.b.x, var_0.x, 4294967295u, 48533u)), ~1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-278f)))), countOneBits(vec4<u32>(var_0.x, var_0.x, u_input.d, 47887u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1254f)), _wgslsmith_f_op_f32(-1168f + 996f))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.c.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d, 9457u, u_input.b.x), vec4<u32>(1u, var_0.x, u_input.d, var_0.x)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.a >> (1u % 32u), 22326i >> (var_0.x % 32u), firstLeadingBit(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1331f))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, global0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 4484i), u_input.c.zx)), select(~u_input.c.zz, u_input.c.zy | vec2<i32>(u_input.a, -2147483647i), vec2<bool>(false, false))), 53313i, ~_wgslsmith_dot_vec3_i32(~u_input.c, ~u_input.c)), Struct_1(reverseBits(u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1797f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1044f, 1471f)))), _wgslsmith_add_vec4_u32(~vec4<u32>(13761u, u_input.b.x, 1u, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(7u, u_input.b.x, var_0.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_0.x))), vec3<f32>(-1038f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) - _wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(505f)) + _wgslsmith_f_op_f32(sign(-542f))))));
    let var_2 = ~(-1i);
    var_0 = max(abs(vec4<u32>(_wgslsmith_mult_u32(1u, var_1.d.a), 87300u, var_0.x, _wgslsmith_mod_u32(u_input.d | 1u, ~var_1.d.a))), vec4<u32>(_wgslsmith_div_u32(abs(3701u), var_1.a.a.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.b.a.c.zy), min(u_input.b.xx, firstLeadingBit(vec2<u32>(71858u, 4294967295u)))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 4294967295u), max(4294967295u, u_input.b.x)), _wgslsmith_dot_vec3_u32(var_0.xww, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.d), u_input.b))));
    let var_3 = !(!var_1.b.d.x);
    var_0 = max(~select(_wgslsmith_mult_vec4_u32(var_1.d.c, select(var_1.a.a.c, var_1.d.c, vec4<bool>(var_1.a.d.x, false, var_1.a.d.x, var_3))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 0u, var_0.x, var_1.d.a)), vec4<u32>(var_1.d.a, var_1.d.c.x, 19020u, 2869u)), true), ~vec4<u32>(var_0.x, u_input.b.x, func_4(abs(vec2<i32>(0i, 1923i)), countOneBits(vec4<i32>(2147483647i, 0i, var_2, global0.x)), vec2<bool>(var_3, false)), 13660u));
    let var_4 = var_1.a.d;
    var_0 = vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, _wgslsmith_mod_u32(1u, var_0.x)), ~(~vec3<u32>(58510u, u_input.b.x, var_0.x))) << (_wgslsmith_clamp_u32(countOneBits(63134u), firstTrailingBit(u_input.b.x), ~_wgslsmith_mult_u32(var_1.b.a.a, u_input.b.x)) % 32u), var_0.x, 1u);
    var_1 = Struct_3(Struct_2(var_1.b.a, var_1.b.b & var_1.b.b, _wgslsmith_f_op_f32(var_1.d.d.x + -140f), vec3<bool>(_wgslsmith_f_op_f32(sign(643f)) != _wgslsmith_f_op_f32(sign(1642f)), !var_3, false)), Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_1.a.a.a), _wgslsmith_mult_u32(63612u, var_1.a.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a.b))), var_1.b.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2454f, var_1.b.c, var_1.a.c))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, 2147483647i, 1i, var_1.c.x), abs(vec4<i32>(22620i, var_2, 12274i, -17936i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-5421i, global0.x, 0i, 1i), var_1.b.b, vec4<i32>(0i, 0i, global0.x, var_2))), vec4<i32>(15286i, -34485i, ~global0.x, _wgslsmith_div_i32(2147483647i, -2147483647i))), _wgslsmith_f_op_f32(min(-1522f, var_1.b.c)), var_1.b.d), select(vec3<i32>(-868i & var_1.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -5949i, 1i), reverseBits(u_input.c)), ~(-var_2)), vec3<i32>(~(~1i), -1i, 2147483647i >> (u_input.b.x % 32u)), !(!(!vec3<bool>(var_1.b.d.x, var_4.x, true)))), Struct_1(var_1.d.a, 954f, ~firstTrailingBit(vec4<u32>(64359u, u_input.b.x, var_1.d.c.x, var_1.a.a.a) ^ var_1.a.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.a.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_1.b.a.c, vec4<u32>(u_input.d, 4294967295u, u_input.b.x, var_0.x) << (vec4<u32>(var_1.b.a.a, var_1.d.c.x, 4294967295u, 26759u) % vec4<u32>(32u))), ~var_1.b.a.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.b.c)))), select(var_1.a.b, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global0.x, var_2, -69418i, var_2)), vec4<i32>(u_input.a, 1i, global0.x, var_1.c.x) >> (vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u)), -vec4<i32>(33670i, var_2, u_input.c.x, 2147483647i)) << (firstLeadingBit(~vec4<u32>(u_input.d, u_input.d, var_0.x, 0u)) % vec4<u32>(32u)), vec4<bool>(!(!var_1.a.d.x), !var_1.b.d.x, false, all(vec4<bool>(var_3, var_3, var_1.a.d.x, var_1.b.d.x)))), ~2766i);
}

