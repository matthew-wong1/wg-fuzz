struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_f_op_f32(max(-286f, 668f)))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)) * var_0));
    global0 = var_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))))))));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(u_input.e, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), ~vec3<i32>(0i, 2147483647i, -39318i))), 2147483647i);
    return any(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false))) && !all(vec3<bool>(all(vec2<bool>(false, false)), u_input.e == u_input.d, false));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_3 {
    global0 = arg_1.x;
    let var_0 = !select(vec3<bool>(any(!vec3<bool>(arg_0.x, true, true)), func_3(), !any(vec2<bool>(true, arg_0.x))), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, true, false)), !(!arg_0.x) || true);
    global0 = 465f;
    let var_1 = ~vec2<i32>(_wgslsmith_sub_i32(-3359i, _wgslsmith_mult_i32(abs(u_input.e), 2147483647i)), 34179i);
    let var_2 = select(var_0, select(!select(select(vec3<bool>(arg_0.x, false, true), var_0, var_0.x), !vec3<bool>(var_0.x, false, arg_0.x), vec3<bool>(true, var_0.x, true)), vec3<bool>(!(0u <= u_input.a.x), all(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, false, true, false))), true), false), true);
    return Struct_3(reverseBits(15017u), select(!vec4<bool>(!var_2.x, func_3(), true, var_2.x), select(vec4<bool>(all(var_2), arg_0.x, true, !arg_0.x), vec4<bool>(false, arg_1.x > arg_1.x, var_0.x, arg_1.x == arg_1.x), !select(vec4<bool>(true, var_0.x, arg_0.x, true), vec4<bool>(var_0.x, var_0.x, var_2.x, var_2.x), vec4<bool>(arg_0.x, false, var_0.x, var_0.x))), all(!(!vec4<bool>(var_2.x, arg_0.x, var_0.x, var_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1739f), vec4<f32>(arg_1.x, arg_1.x, 1967f, -1000f), var_0.x))))), false), vec4<i32>(_wgslsmith_add_i32(~(-1i) << (1u % 32u), -2147483647i), u_input.d, i32(-1i) * -2147483647i, var_1.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a.a.x, -1407f))) + _wgslsmith_f_op_f32(ceil(-156f))), arg_1.a.b)));
    var var_0 = arg_1.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) - -348f));
    var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(-2323f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.a.a.x)));
    return func_2(select(select(vec2<bool>(any(vec4<bool>(var_0.b, false, true, false)), !var_0.b), !vec2<bool>(var_0.b, true), !all(vec2<bool>(false, var_0.b))), select(vec2<bool>(true, !arg_1.a.b), vec2<bool>(!arg_1.a.b, arg_1.a.b & true), true), !select(select(vec2<bool>(true, arg_1.a.b), vec2<bool>(arg_1.a.b, var_0.b), vec2<bool>(arg_1.a.b, arg_1.a.b)), vec2<bool>(var_0.b, var_0.b), !vec2<bool>(true, var_0.b))), _wgslsmith_f_op_vec3_f32(-var_0.a.yzx));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    var var_0 = ~vec3<i32>(-1i & arg_0.d.x, 2147483647i, arg_0.d.x);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mult_i32(28134i, func_1(vec3<u32>(firstTrailingBit(~4294967295u), 23101u, _wgslsmith_add_u32(u_input.a.x, arg_0.a)), arg_1).d.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.b.x)))) * arg_0.c.a.x);
    let var_4 = func_1(vec3<u32>(arg_0.a, ~_wgslsmith_dot_vec2_u32(var_1.c, var_1.c) << (var_1.c.x % 32u), 1u), arg_1);
    return reverseBits(vec3<u32>(1u, ~reverseBits(arg_0.a), arg_0.a) << (vec3<u32>(arg_0.a & ~1u, ~(~var_4.a), abs(firstLeadingBit(0u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = -select(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, u_input.e, u_input.d), firstLeadingBit(vec3<i32>(10069i, u_input.e, u_input.e))), -1i, any(vec4<bool>(false, false, false, true))) < reverseBits(u_input.e);
    var_0 = min(1u, u_input.c);
    var var_2 = Struct_3(_wgslsmith_dot_vec3_u32(func_4(func_1(~vec3<u32>(1u, 1u, u_input.b), Struct_2(Struct_1(vec4<f32>(-1334f, 1000f, 492f, 346f), var_1), vec2<f32>(742f, -375f), u_input.a)), Struct_2(func_1(vec3<u32>(u_input.b, 49815u, 0u), Struct_2(Struct_1(vec4<f32>(374f, 146f, -1152f, -1082f), true), vec2<f32>(-427f, -1266f), vec2<u32>(u_input.c, 41605u))).c, func_2(vec2<bool>(false, var_1), vec3<f32>(317f, 578f, -1126f)).c.a.zx, u_input.a), true), select(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(~4990u, abs(u_input.c), 60105u), !var_1)), !(!(!func_1(vec3<u32>(u_input.c, 23035u, 68666u), Struct_2(Struct_1(vec4<f32>(-245f, -271f, -1000f, -1341f), var_1), vec2<f32>(-1806f, -440f), vec2<u32>(u_input.c, u_input.a.x))).b)), func_1(~abs(~vec3<u32>(u_input.b, u_input.b, u_input.a.x)), Struct_2(func_2(!vec2<bool>(var_1, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, -357f, 898f) + vec3<f32>(-302f, 309f, -1064f))).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, 664f))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(u_input.b, u_input.c)))).c, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -36163i, u_input.e), _wgslsmith_mult_vec4_i32(vec4<i32>(-34402i, u_input.d, -1i, 17852i), vec4<i32>(-25331i, -13333i, 49185i, 0i)))));
    var var_3 = Struct_1(vec4<f32>(var_2.c.a.x, -659f, 424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.a.x)))), !(var_2.b.x || true));
    var var_4 = Struct_3(max(func_2(var_2.b.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1719f, -859f, var_3.a.x))))).a, u_input.b >> (reverseBits(~u_input.c) % 32u)), func_2(!vec2<bool>(!var_2.b.x, true), vec3<f32>(var_2.c.a.x, var_3.a.x, func_2(select(vec2<bool>(true, true), var_2.b.zz, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, var_3.a.x, var_2.c.a.x) * var_2.c.a.xww)).c.a.x)).b, Struct_1(var_2.c.a, func_2(!(!var_2.b.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, -916f, var_2.c.a.x) * vec3<f32>(var_2.c.a.x, 961f, -2489f)))).c.b), _wgslsmith_mod_vec4_i32(vec4<i32>(min(_wgslsmith_mod_i32(var_2.d.x, var_2.d.x), _wgslsmith_add_i32(u_input.d, var_2.d.x)), _wgslsmith_dot_vec3_i32(~var_2.d.wyx, ~vec3<i32>(var_2.d.x, u_input.d, -20846i)), 37494i, abs(-1i)), ~vec4<i32>(i32(-1i) * -1i, ~var_2.d.x, 2670i, ~744i)));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a.yw)), vec3<i32>(-1i, -1i, ~_wgslsmith_dot_vec4_i32(var_4.d, vec4<i32>(1i, var_2.d.x, var_4.d.x, var_2.d.x)) >> (var_2.a % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.e), ~0i, 1i), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1299i, var_4.d.x, u_input.e), vec3<i32>(-59876i, var_4.d.x, var_4.d.x)))) | countOneBits(var_4.d.wzy), select(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_4.a, 4294967295u), u_input.a.x, select(var_4.a, var_4.a, var_4.c.b), 64685u), select(vec4<u32>(10342u, var_2.a, u_input.a.x, 52895u), min(vec4<u32>(var_4.a, u_input.b, u_input.a.x, u_input.a.x), vec4<u32>(1u, var_2.a, var_4.a, 1u)), select(vec4<bool>(var_4.c.b, var_1, false, var_2.c.b), vec4<bool>(var_3.b, var_1, false, var_4.b.x), vec4<bool>(true, false, true, var_2.b.x)))), vec4<u32>(18204u, reverseBits(4294967295u), u_input.c, var_2.a), false), var_4.c.a.zx);
}

