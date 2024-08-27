struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = Struct_1(!vec4<bool>(any(select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, false, false, false), vec4<bool>(arg_2, arg_2, true, true))), 923f == _wgslsmith_f_op_f32(arg_0.x * arg_0.x), any(!vec2<bool>(arg_2, arg_2)), _wgslsmith_f_op_f32(max(arg_0.x, 359f)) == _wgslsmith_f_op_f32(f32(-1f) * -1375f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -831f, 550f)) - vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), 647f, -1000f))), !(!select(!vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(false, arg_2)))), arg_0.zx, arg_3);
    let var_1 = false;
    var var_2 = arg_2;
    var var_3 = vec2<bool>(true && var_1, all(vec3<bool>(var_1, arg_2, all(select(vec2<bool>(true, true), var_0.a.yx, false)))));
    var_2 = -1750f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)) - -192f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), var_0.b.x) + _wgslsmith_f_op_f32(min(102f, _wgslsmith_f_op_f32(ceil(331f))))));
    return -1222f;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> Struct_3 {
    return Struct_3(Struct_1(vec4<bool>(true, true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<f32>(1000f, arg_0, arg_2.x, arg_0), _wgslsmith_mod_i32(-14681i, u_input.e.x), false, _wgslsmith_mod_i32(arg_3, arg_3))), 776f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), select(vec2<bool>(true, select(true, false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), false), _wgslsmith_f_op_vec2_f32(max(arg_2.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -1298f), vec2<f32>(-1238f, -260f))) * _wgslsmith_f_op_vec2_f32(-arg_2.yz)))), _wgslsmith_dot_vec3_i32(vec3<i32>(12920i, arg_3, arg_3) >> (firstLeadingBit(vec3<u32>(11702u, 1u, 70217u)) % vec3<u32>(32u)), u_input.e.www)), _wgslsmith_sub_vec4_i32(min(u_input.e, vec4<i32>(1i, arg_3, firstLeadingBit(-816i), -16938i & arg_3)), -u_input.e), abs(u_input.e.wzw) | u_input.e.xxw, Struct_1(vec4<bool>(true, select(true, true, all(vec2<bool>(true, false))), _wgslsmith_div_i32(1i, u_input.e.x) < u_input.e.x, true), _wgslsmith_f_op_vec3_f32(abs(arg_2)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<f32>(-1520f, arg_2.x), 38219i), u_input.e.zxy);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = Struct_2(arg_0.d);
    let var_2 = ~(~_wgslsmith_add_vec3_i32(min(vec3<i32>(23186i, arg_1.e.x, 0i), vec3<i32>(-1i, -8118i, 24816i)), func_2(_wgslsmith_f_op_f32(min(-474f, var_1.a.d.x)), func_2(arg_0.a.b.x, 2147483647i, vec3<f32>(155f, var_1.a.d.x, 551f), var_1.a.e).c.x, vec3<f32>(1368f, -2244f, -974f), 21966i).c));
    var var_3 = Struct_4(6346u >= _wgslsmith_sub_u32(~_wgslsmith_sub_u32(6032u, u_input.a), arg_2.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.d.x, -1299f) - _wgslsmith_f_op_f32(-arg_1.d.b.x))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.d.x, 1831f)), arg_0.d.e, var_1.a.b, _wgslsmith_add_i32(min(-2147483647i, -2147483647i), u_input.c)).e.x, _wgslsmith_f_op_vec3_f32(min(var_0.d.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.b.x, -345f, arg_0.a.b.x) - vec3<f32>(arg_0.a.d.x, var_0.d.d.x, var_0.d.b.x))))), var_0.b.x), func_2(_wgslsmith_f_op_f32(step(arg_0.d.b.x, _wgslsmith_f_op_f32(-arg_1.d.d.x))), u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-398f, var_0.a.d.x, var_0.a.b.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d.b.x, -1401f, var_0.a.d.x))))), vec3<f32>(arg_0.d.b.x, var_1.a.b.x, arg_1.d.d.x)), arg_1.e.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d.d.x)) - arg_0.a.b.x), ~var_1.a.e, _wgslsmith_f_op_vec3_f32(-var_0.a.b), 54245i).d);
    var var_4 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, arg_2.x), vec4<u32>(0u, u_input.d.x, 0u, arg_2.x)) << (vec4<u32>(21086u, 5112u, u_input.a, 88997u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(27622u, u_input.b, 43021u, u_input.d.x), vec4<u32>(u_input.d.x, 2421u, 19753u, 0u) << (vec4<u32>(1u, 0u, 14270u, u_input.a) % vec4<u32>(32u)))), select(~vec4<u32>(1u, arg_2.x, 35852u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, arg_2.x, 53311u, u_input.b) & vec4<u32>(arg_2.x, u_input.a, u_input.a, 26685u), firstTrailingBit(vec4<u32>(arg_2.x, 98494u, 1u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(28069u, 0u, 1u, 21395u), vec4<u32>(arg_2.x, arg_2.x, 0u, 10863u))), !(!vec4<bool>(var_3.d.a.x, var_3.d.c.x, var_0.a.c.x, true))) | _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(arg_2.x, arg_2.x, 11582u, 0u)), ~(~vec4<u32>(arg_2.x, arg_2.x, 17204u, 48785u))));
    return var_0.a.b.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_f32(-1465f, 124f), -firstLeadingBit(49006i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -917f, -336f)) - vec3<f32>(-2070f, 303f, -648f)), u_input.e.x), func_2(_wgslsmith_f_op_f32(func_2(-421f, u_input.c, vec3<f32>(225f, 1186f, 417f), u_input.e.x).a.b.x * -822f), u_input.e.x, _wgslsmith_f_op_vec3_f32(select(func_2(-337f, 34201i, vec3<f32>(1939f, -1266f, -123f), 2147483647i).a.b, _wgslsmith_div_vec3_f32(vec3<f32>(-480f, 425f, -1125f), vec3<f32>(-944f, -110f, 284f)), arg_0)), u_input.c), ~(~vec2<u32>(u_input.d.x, u_input.d.x) | select(vec2<u32>(16241u, u_input.b), vec2<u32>(24972u, u_input.a), true)))));
    var var_1 = func_2(var_0, countOneBits(_wgslsmith_mult_i32(u_input.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0))))), 1559f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(var_0, -1000f, var_0, -823f), u_input.e.x, arg_0.x, 56553i))), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_sub_i32(~u_input.e.x, -_wgslsmith_mod_i32(u_input.e.x, 1i))).d.a.zww;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1000f, _wgslsmith_f_op_f32(floor(var_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), -116f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), 248f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, var_0)))))));
    var var_3 = Struct_1(select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, var_1.x), select(vec4<bool>(arg_0.x, var_1.x, var_1.x, false), vec4<bool>(false, arg_0.x, var_1.x, arg_0.x), vec4<bool>(false, true, true, arg_0.x)), !vec4<bool>(false, false, true, var_1.x)), vec4<bool>(!var_1.x, true, arg_0.x, !var_1.x), !func_2(-814f, -37953i, var_2, u_input.e.x).a.a), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_1.x, false, false)), all(vec4<bool>(true, false, false, var_1.x))), vec4<bool>(!var_1.x, abs(u_input.e.x) <= 2147483647i, any(arg_0), var_1.x)), var_2, vec2<bool>(!var_1.x, false), _wgslsmith_f_op_vec2_f32(-var_2.xx), u_input.c);
    return Struct_4(!(!var_1.x), func_2(var_0, ~u_input.e.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(781f, _wgslsmith_f_op_f32(var_2.x * 1181f), var_2.x))), 0i | firstLeadingBit(-u_input.e.x)), func_2(var_0, 1i, func_2(-984f, func_2(482f, 42132i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.b.x, -835f, var_3.b.x))), ~var_3.e).b.x, var_2, var_3.e).d.b, var_3.e), func_2(var_0, max(2147483647i, ~0i), var_2, -(-1i ^ u_input.c)).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(true, false, true & any(vec3<bool>(true, true, true))));
    let var_1 = Struct_2(var_0.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.d.d);
    var_0 = func_1(!vec3<bool>(!(!var_1.a.a.x), var_0.b.a.c.x, !(!var_0.d.c.x)));
    var_0 = Struct_4(true, var_0.c, func_1(!(!(!var_0.d.a.xzz))).b, var_1.a);
    var_0 = func_1(vec3<bool>(!(var_0.b.d.a.x || !var_0.c.a.c.x), var_1.a.c.x == true, var_0.d.c.x));
    var_0 = Struct_4(all(vec2<bool>(true, select(var_0.d.a.x || true, !var_1.a.c.x, u_input.b >= 90922u))), Struct_3(func_2(1f, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.e.zzy, u_input.e.wxw), 1i), var_0.b.d.b, -(var_1.a.e << (0u % 32u))).d, select(vec4<i32>(var_0.c.c.x, 24652i, 2147483647i, var_1.a.e), vec4<i32>(var_0.d.e, u_input.c, 2147483647i, -1i), var_1.a.c.x) >> (min(vec4<u32>(108344u, 57646u, u_input.d.x, u_input.d.x) << (vec4<u32>(708u, 8705u, u_input.d.x, 58355u) % vec4<u32>(32u)), vec4<u32>(u_input.b, 10117u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 2511u, 4294967295u, 37680u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.e.zwz >> ((~vec3<u32>(u_input.d.x, u_input.b, 1u) | vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u)), var_1.a, reverseBits(-abs(var_0.b.b.yyw))), var_0.b, Struct_1(vec4<bool>(false, true, func_1(func_2(600f, var_1.a.e, vec3<f32>(var_1.a.d.x, -1000f, var_0.b.d.d.x), 0i).d.a.ywx).c.d.c.x, false), _wgslsmith_f_op_vec3_f32(-var_0.c.d.b), var_0.b.a.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.b.yy - vec2<f32>(var_0.b.a.d.x, -132f))), vec2<f32>(_wgslsmith_div_f32(var_1.a.d.x, -161f), _wgslsmith_f_op_f32(step(835f, var_1.a.b.x)))), i32(-1i) * -74812i));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~u_input.e.x), _wgslsmith_f_op_vec3_f32(max(var_0.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c.d.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, var_0.d.d.x, -270f) * var_1.a.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.a.b, var_1.a.b))));
}

