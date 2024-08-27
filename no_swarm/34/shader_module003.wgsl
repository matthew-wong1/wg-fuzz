struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    global1 = !select(!vec4<bool>(global1.x, global1.x, any(vec3<bool>(global1.x, false, global1.x)), true), vec4<bool>(true, false, true, true), vec4<bool>(true, true != (u_input.a >= 0u), false, all(select(vec3<bool>(false, false, global1.x), global1.yzy, true))));
    let var_0 = u_input.a;
    global1 = select(vec4<bool>(global1.x, true, !global1.x, true), vec4<bool>(global1.x, all(select(select(vec4<bool>(global1.x, true, false, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, false, global1.x)), !vec4<bool>(false, global1.x, true, false), global1.x)), any(vec4<bool>(true, true, 9462u < u_input.a, global1.x)), _wgslsmith_add_i32(2147483647i, 2147483647i << (u_input.a % 32u)) >= ~1i), global1.x);
    global0 = all(vec3<bool>(true, false, any(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-668f + 461f))))))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-732f, 959f, global1.x))))));
    return 0i;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> Struct_5 {
    return Struct_5(vec4<i32>(firstTrailingBit(12516i), ~(i32(-1i) * -15055i), 1i, 98930i), -36763i, Struct_2(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_mult_i32(func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(39184i, -2147483647i, 79946i, -1i), vec4<i32>(28743i, 2147483647i, -2147483647i, 11071i)))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2689i, 0i), ~vec2<i32>(32133i, 44294i)), vec2<i32>(i32(-1i) * -2072i, -1i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(217f, arg_0, 2220f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, 1075f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, 994f), vec4<f32>(419f, arg_0, 1223f, -817f)))))), vec4<f32>(-1125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), -780f, arg_0), select(vec4<bool>(!global1.x, !global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, false, true), !(!vec4<bool>(false, global1.x, global1.x, true))))), Struct_3(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(25083i, 0i, 13993i)), max(-1i, -42803i)), global1.wwy, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 74088u, u_input.a, 36529u)) >> (_wgslsmith_sub_u32(arg_2, arg_2) % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -59474i), -vec2<i32>(0i, 24912i)), 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -562f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(-1862f, arg_0)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(336f, arg_0, -447f, arg_0), vec4<f32>(2257f, 906f, arg_0, arg_0))))), Struct_2(_wgslsmith_clamp_i32(-26945i, min(-42318i, -2147483647i), _wgslsmith_add_i32(1i, 7431i)), ~reverseBits(vec2<i32>(-1i, -1i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_5) -> vec4<bool> {
    global1 = select(select(!vec4<bool>(true, global1.x, !global1.x, all(vec4<bool>(arg_2.e.a.b.x, false, false, arg_2.e.a.b.x))), select(select(vec4<bool>(global1.x, arg_2.e.a.b.x, true, true), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, global1.x, arg_2.e.a.b.x, false), false), vec4<bool>(global1.x, arg_2.e.a.b.x, false, false)), !(!vec4<bool>(arg_2.e.a.b.x, true, arg_2.e.a.b.x, arg_2.e.a.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, arg_2.e.a.b.x, arg_2.e.a.b.x, false), false)), vec4<bool>(arg_2.e.a.b.x, arg_2.e.a.b.x, arg_2.e.a.b.x, any(!vec3<bool>(arg_2.e.a.b.x, global1.x, true)))), vec4<bool>(global1.x | !select(false, true, false), !global1.x, arg_2.e.a.b.x, arg_2.e.a.b.x), !(!vec4<bool>(!global1.x, !global1.x, select(global1.x, arg_2.e.a.b.x, false), -2147483647i <= arg_2.b)));
    global2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(49937u, 42601u, 23167u), abs(countOneBits(u_input.a & 4294967295u))) < arg_2.e.a.c;
    var var_0 = Struct_4(arg_2.e.a.b.xx, arg_2.e, -719f);
    var_0 = Struct_4(select(var_0.a, vec2<bool>(!all(arg_2.e.a.b), !global1.x), func_2(_wgslsmith_f_op_f32(func_2(573f, vec2<u32>(105126u, var_0.b.a.c), 50744u).d.x + _wgslsmith_f_op_f32(-arg_2.e.b.x)), arg_1.yx, var_0.b.a.c).e.a.b.xz), var_0.b, _wgslsmith_f_op_f32(trunc(1012f)));
    return select(vec4<bool>(arg_2.e.a.b.x, select(false, any(!vec4<bool>(global1.x, true, true, global1.x)), all(!vec4<bool>(var_0.b.a.b.x, arg_2.e.a.b.x, false, arg_2.e.a.b.x))), var_0.c >= 889f, true), !vec4<bool>(true, true, any(!vec4<bool>(true, false, global1.x, false)), false), !vec4<bool>(any(vec4<bool>(true, var_0.a.x, var_0.a.x, global1.x)), !all(vec3<bool>(true, true, false)), ~0u <= ~u_input.a, global1.x));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -53548i), vec2<i32>(arg_3.b.x, -26905i)), ~arg_3.b), arg_0, ~arg_3.a);
    let var_1 = select(u_input.a, ~(64009u >> (abs(u_input.a >> (0u % 32u)) % 32u)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_2(768f, ~vec2<u32>(var_1, 0u), var_1).d.x, _wgslsmith_f_op_f32(floor(1526f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, -2066f)))))))));
    global0 = true;
    var_0 = reverseBits(~reverseBits(vec3<i32>(_wgslsmith_mod_i32(arg_0, -2258i), _wgslsmith_mod_i32(arg_0, var_0.x), -2147483647i)));
    return min(abs(vec3<i32>(-(arg_3.b.x & -1i), arg_0, 1i)), -abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, var_0.x), vec3<i32>(arg_3.a, var_0.x, 16706i)), vec3<i32>(2147483647i, 51915i, var_0.x))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(495f));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(~(-vec3<i32>(61173i, -2147483647i, 2147483647i))), firstTrailingBit(-vec3<i32>(1i, 1i, 1i))), func_5(-19342i, select(func_4(vec2<f32>(-662f, 404f), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), func_2(-1380f, vec2<u32>(0u, u_input.a), u_input.a)), !(!vec4<bool>(false, global1.x, false, global1.x)), !func_4(vec2<f32>(-1879f, 304f), vec4<u32>(u_input.a, u_input.a, 4294967295u, 21303u), Struct_5(vec4<i32>(2147483647i, 2147483647i, 16593i, 0i), 0i, Struct_2(51396i, vec2<i32>(-1i, 0i)), vec4<f32>(1196f, -1237f, -1796f, 1000f), Struct_3(Struct_1(vec2<i32>(43926i, 2147483647i), global1.zzw, u_input.a, -2147483647i, 0i), vec4<f32>(968f, -880f, -1295f, -1644f), Struct_2(-2147483647i, vec2<i32>(3172i, 24435i))))).x), 1f, Struct_2(~(~0i), ~vec2<i32>(34662i, -10122i) << (firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f * -798f)))), select(vec4<u32>(0u, _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_mult_u32(u_input.a, ~1u), u_input.a), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 66594u, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & ~vec4<u32>(31482u, u_input.a, u_input.a, 8982u)), global1.x), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1315f)), _wgslsmith_div_f32(-1248f, 1f)), abs(min(abs(vec2<u32>(0u, 0u)), ~vec2<u32>(u_input.a, 4294967295u))), 0u)).xwy;
    global2 = !any(var_2);
    var var_3 = func_5(-2147483647i, vec4<bool>(!select(true, false == global1.x, all(vec4<bool>(global1.x, true, false, true))), true, 1i < (reverseBits(-1i) >> (~u_input.a % 32u)), _wgslsmith_f_op_f32(step(1681f, _wgslsmith_f_op_f32(abs(3332f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f + _wgslsmith_div_f32(-106f, -136f))))), func_2(282f, vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u) ^ ~u_input.a, ~30431u), u_input.a).e.c).x;
    return _wgslsmith_f_op_f32(trunc(-236f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global1.x, !(~20597i != -_wgslsmith_clamp_i32(2147483647i, 32789i, -1i)), all(vec3<bool>(!global1.x && true, any(vec3<bool>(global1.x, global1.x, false)), !global1.x)));
    var var_1 = !var_0;
    var var_2 = vec4<f32>(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f + _wgslsmith_div_f32(756f, 427f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f * 1000f))))), 544f);
    var var_3 = -2147483647i;
    global1 = vec4<bool>(select(var_0.x | true, 78304u > _wgslsmith_mult_u32(func_2(629f, vec2<u32>(0u, 35219u), 0u).e.a.c, ~106359u), !var_1.x), false, all(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 883f), var_2.wx, var_0.zz)), vec4<u32>(u_input.a, u_input.a, 0u, 0u), func_2(var_2.x, vec2<u32>(u_input.a, 27649u), 4294967295u))) == !(true || (var_0.x && true)), any(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(!vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, false, false, var_0.x), func_4(var_2.yx, vec4<u32>(55246u, u_input.a, 46687u, u_input.a), Struct_5(vec4<i32>(20827i, 0i, -36794i, 54353i), 0i, Struct_2(1i, vec2<i32>(72870i, -18237i)), vec4<f32>(-611f, 1364f, var_2.x, 1557f), Struct_3(Struct_1(vec2<i32>(-5233i, 41198i), vec3<bool>(var_0.x, var_0.x, global1.x), 52044u, 7084i, -2147483647i), vec4<f32>(-1039f, var_2.x, -1000f, var_2.x), Struct_2(2147483647i, vec2<i32>(44314i, 30449i)))))), true)));
    global2 = var_1.x;
    global2 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec4<i32>(-9250i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2814i, 9912i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -27608i), vec2<i32>(-7128i, -38991i)), vec2<i32>(6132i, -1i))), _wgslsmith_add_i32(~_wgslsmith_mod_i32(-61276i, 46512i), _wgslsmith_mod_i32(~(-1i), 1i)), -66506i), func_3(), vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a) << ((u_input.a >> (u_input.a % 32u)) % 32u)), max(~(~u_input.a), ~1u), func_2(-476f, vec2<u32>(u_input.a, _wgslsmith_sub_u32(52922u, 0u)), _wgslsmith_div_u32(u_input.a, 4294967295u) >> (_wgslsmith_div_u32(5398u, u_input.a) % 32u)).e.a.c, max(~max(u_input.a, 0u), u_input.a)), select(vec3<i32>(-func_3(), _wgslsmith_mod_i32(func_5(-2147483647i, vec4<bool>(false, true, var_1.x, false), var_2.x, Struct_2(-20461i, vec2<i32>(7285i, -46420i))).x, 1i), -(~1i)), vec3<i32>(-1i) * -min(vec3<i32>(-1i, 1i, -1385i), vec3<i32>(-8857i, -39901i, 1i)), var_0.x));
}

