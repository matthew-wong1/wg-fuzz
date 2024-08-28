struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(35040i, -3256i, 1i, -13946i));

var<private> global2: vec3<f32> = vec3<f32>(963f, -188f, 160f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    let var_0 = arg_1;
    global0 = arg_2.a;
    let var_1 = _wgslsmith_mult_i32(global0.a.x, var_0.b >> (~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), ~vec3<u32>(4294967295u, 26713u, u_input.c.x)) % 32u));
    var var_2 = -global0.a.yzw;
    let var_3 = Struct_2(abs(_wgslsmith_clamp_vec4_i32(arg_2.a.a, -(vec4<i32>(u_input.d, u_input.b, arg_2.a.a.x, -2147483647i) << (vec4<u32>(1u, 1u, u_input.a, 0u) % vec4<u32>(32u))), global0.a)));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(u_input.a, u_input.c.x, true);
    global0 = Struct_2(vec4<i32>(firstTrailingBit(~arg_2.a.x), ~arg_1.x, reverseBits(arg_3.b), countOneBits(max(global0.a.x, i32(-1i) * -1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -223f, 236f, arg_3.c) * vec4<f32>(681f, arg_3.c, arg_3.c, arg_3.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, global2.x, -805f, global2.x))), vec4<f32>(1f, _wgslsmith_f_op_f32(-global2.x), arg_3.a.x, _wgslsmith_f_op_f32(917f + global2.x)), arg_3.d))) * _wgslsmith_div_vec4_f32(vec4<f32>(-2395f, _wgslsmith_f_op_f32(round(arg_3.a.x)), -734f, arg_3.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, -327f, -269f, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-453f, arg_3.a.x, arg_3.c, 1868f))))))));
    global0 = Struct_2(vec4<i32>(abs(1i), ~(~arg_1.x), arg_1.x, -52701i));
    var var_2 = countOneBits(vec4<i32>(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b, arg_1.x, global0.a.x, arg_1.x) << (vec4<u32>(1u, 71335u, 1u, 0u) % vec4<u32>(32u)), abs(arg_2.a)), ~(-reverseBits(u_input.d)), -2147483647i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1370f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.a.x))), 86645i, _wgslsmith_f_op_f32(-global2.x), !(!any(select(vec2<bool>(false, false), vec2<bool>(true, arg_3.d), vec2<bool>(arg_3.d, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = !(!(!select(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, arg_0.d, arg_0.d), vec3<bool>(false, arg_0.d, false)), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(214f, func_3(vec2<u32>(u_input.a, 4294967295u), vec2<i32>(-2147483647i, 2147483647i), Struct_2(vec4<i32>(arg_0.b, arg_0.b, 1i, 51931i)), arg_0).a.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-438f, 1200f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -1270f) - vec3<f32>(arg_1, arg_1, arg_1)), vec3<f32>(arg_0.a.x, 673f, -1423f)))), false)) - vec3<f32>(-499f, _wgslsmith_f_op_f32(ceil(-1017f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(trunc(1642f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1075f * -527f) * _wgslsmith_f_op_f32(exp2(global2.x)))))));
    var_1 = vec3<f32>(1315f, _wgslsmith_f_op_f32(f32(-1f) * -665f), arg_0.a.x);
    global1 = Struct_2(abs(-global1.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, _wgslsmith_f_op_f32(floor(var_1.x))))), -2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 355f)))), var_0.x);
    return Struct_2(global0.a);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(~arg_2.a.a.x, -9486i);
    let var_1 = func_4(func_3(vec2<u32>(u_input.c.x, arg_0), global1.a.zy, arg_2.a, Struct_1(_wgslsmith_f_op_vec2_f32(-global2.xz), arg_2.a.a.x, _wgslsmith_div_f32(-545f, _wgslsmith_f_op_f32(-global2.x)), !func_2(arg_2.a, Struct_1(vec2<f32>(global2.x, global2.x), 2147483647i, -946f, arg_1), Struct_3(arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1f)) * _wgslsmith_f_op_f32(round(global2.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, global2.x, global2.x) - vec3<f32>(2008f, global2.x, -261f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 302f, global2.x)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, global2.x, -648f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(312f, global2.x, global2.x), vec3<f32>(814f, -228f, global2.x)) + vec3<f32>(2298f, -611f, global2.x)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global2.x, global2.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1322f, -1000f, global2.x)))))));
    let var_2 = global2.yy;
    var var_3 = Struct_3(arg_2.a);
    return func_4(Struct_1(global2.xx, 2147483647i, -142f, func_2(arg_2.a, Struct_1(global2.xz, global1.a.x, var_2.x, u_input.a >= 66961u), arg_2)), _wgslsmith_f_op_f32(1421f - _wgslsmith_div_f32(-1308f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, var_2.x) - _wgslsmith_f_op_f32(global2.x + -1832f)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(max(~min(vec4<u32>(24600u, u_input.a, 51899u, 0u), vec4<u32>(u_input.a, 86491u, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(41800u, u_input.a, 28704u, u_input.c.x), vec4<u32>(0u, u_input.c.x, 11831u, 23543u))), vec4<u32>(17046u, ~(~u_input.c.x), u_input.c.x, 4294967295u ^ (u_input.a << (u_input.a % 32u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1302f) * global2.yy))))))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.x, -712f))))), arg_1);
    let var_2 = global0.a.zy;
    let var_3 = func_3(firstTrailingBit(vec2<u32>(u_input.c.x, firstTrailingBit(46809u) | u_input.a)), vec2<i32>(func_4(Struct_1(var_1.a, var_1.b, var_1.a.x, var_1.d), _wgslsmith_f_op_f32(var_1.c - -454f)).a.x << (13286u % 32u), -7983i), func_1(_wgslsmith_clamp_u32(countOneBits(4294967295u), ~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(64009u, var_0), vec2<u32>(u_input.c.x, 4294967295u)) << (var_0 % 32u)), !any(vec4<bool>(false, false, false, arg_1)) && (var_1.d || !var_1.d), Struct_3(Struct_2(vec4<i32>(1i, 29176i, arg_0.a.a.x, arg_0.a.a.x) >> (vec4<u32>(var_0, var_0, var_0, u_input.a) % vec4<u32>(32u))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, 1000f), vec2<f32>(-323f, -725f))))), u_input.d, _wgslsmith_f_op_f32(217f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 654f))), var_1.d));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_3.a.x, 1092f, _wgslsmith_f_op_f32(-func_3(vec2<u32>(84347u, var_0), _wgslsmith_div_vec2_i32(vec2<i32>(41105i, 29408i), vec2<i32>(-15477i, arg_2.a.x)), func_1(u_input.c.x, true, Struct_3(arg_0.a)), Struct_1(vec2<f32>(global2.x, var_3.a.x), var_2.x, var_3.a.x, false)).a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 795f, var_1.a.x, 1000f) + vec4<f32>(var_3.c, -1000f, -1312f, global2.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_3.c, 245f, 536f)))) + vec4<f32>(_wgslsmith_div_f32(global2.x, var_1.c), _wgslsmith_f_op_f32(global2.x + 515f), _wgslsmith_f_op_f32(652f + global2.x), _wgslsmith_f_op_f32(519f - -167f)))));
    return vec3<u32>(~(~58314u), 50348u, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c, u_input.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, abs(u_input.c.x), 10250u, u_input.a & 59603u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, var_0, 4294967295u, var_0), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 75016u, 95641u), vec4<u32>(var_0, 18327u, 83571u, 0u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(max(func_5(Struct_3(func_1(1044u, true, Struct_3(Struct_2(global0.a)))), func_2(Struct_2(global0.a), Struct_1(global2.xy, -2147483647i, -291f, true), Struct_3(Struct_2(global0.a))), Struct_2(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(global0.a.x, global0.a.x, 1523i, u_input.d)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(4294967295u, u_input.a, _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), ~(~vec3<u32>(u_input.c.x, 4294967295u, 36295u)))), ~(~(~(~vec3<u32>(u_input.a, 48213u, u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-643f)), _wgslsmith_f_op_f32(select(1511f, _wgslsmith_f_op_f32(f32(-1f) * -616f), false))), -606f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global2.x)) - global2.x), global2.x), global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -1064f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, 721f, 1000f, global2.x))))) * vec4<f32>(global2.x, -454f, -1963f, _wgslsmith_f_op_f32(trunc(-1273f))))));
    var var_2 = ~(~firstLeadingBit(var_0.x));
    var var_3 = !select(vec4<bool>(true, select(false, false, false) | true, true || any(vec2<bool>(false, true)), true), !vec4<bool>(any(vec4<bool>(false, false, true, true)), select(false, false, false), true, all(vec4<bool>(false, true, true, true))), !vec4<bool>(true, true, func_3(vec2<u32>(u_input.a, var_0.x), global1.a.yy, Struct_2(global1.a), Struct_1(vec2<f32>(-1168f, global2.x), global1.a.x, var_1.x, true)).d, true));
    global0 = func_1(u_input.a, var_3.x & var_3.x, Struct_3(func_4(Struct_1(vec2<f32>(-2068f, var_1.x), 1i, var_1.x, var_3.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global1.a.x, _wgslsmith_f_op_f32(min(665f, _wgslsmith_f_op_f32(exp2(global2.x)))), 2732u, vec4<i32>(~_wgslsmith_sub_i32(firstTrailingBit(1i), _wgslsmith_add_i32(global0.a.x, global1.a.x)), -max(~2147483647i, ~u_input.d), u_input.b, _wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(global1.a.x)), -3735i)));
}

