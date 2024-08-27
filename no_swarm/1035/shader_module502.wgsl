struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true));

var<private> global1: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = u_input.b.x;
    global1 = -_wgslsmith_clamp_i32(arg_0.e, 65688i, ~(-2147483647i));
    global1 = arg_0.b.x;
    var_0 = _wgslsmith_mod_u32(4294967295u, reverseBits(u_input.e));
    var var_1 = u_input.d.x;
    return u_input.d.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), min(abs(-13318i), ~u_input.d.x)), -u_input.d.x, u_input.d.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(385f, -389f) * -1400f) + -1185f))), _wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1824f)) + 616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-627f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-503f, _wgslsmith_f_op_f32(max(-633f, -313f)))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-584f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))), var_1.x, _wgslsmith_f_op_f32(1210f + _wgslsmith_f_op_f32(900f - _wgslsmith_f_op_f32(step(-1233f, 385f)))));
    var var_2 = _wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.e, 41785u, u_input.e), vec3<u32>(u_input.e, 30092u, u_input.e)), select(countOneBits(vec3<u32>(1u, 1u, u_input.e)), _wgslsmith_add_vec3_u32(vec3<u32>(3480u, 1u, u_input.e), vec3<u32>(4294967295u, 57844u, u_input.e)), vec3<bool>(arg_0.x, arg_0.x, false)))), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(4294967295u, 45832u, 53119u), vec3<u32>(0u, u_input.b.x, u_input.a), !vec3<bool>(arg_0.x, false, true)), ~abs(vec3<u32>(56u, u_input.c, 4294967295u))));
    return var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = vec4<f32>(-1589f, _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, true, arg_1.a.x), arg_1.a, vec3<bool>(true, false, true)), arg_1.a.zz)))), _wgslsmith_f_op_f32(-arg_1.c.x));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2, ~(i32(-1i) * -48104i) | ~u_input.d.x, -20663i), countOneBits(vec4<i32>(min(20208i, -2147483647i), _wgslsmith_mult_i32(u_input.d.x, arg_0.a.e), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 13461i, 26331i, -20573i), vec4<i32>(-64037i, 53369i, arg_1.b.x, 2147483647i)), -22754i)) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(7460i, -19865i, arg_0.a.e, 2147483647i), vec4<i32>(arg_2, -1i, arg_0.a.e, 19248i)));
    global0 = array<vec4<bool>, 10>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(395f, var_0.x)))))));
    var_1 = 52i;
    return u_input.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(select(!vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !(!vec3<bool>(false, arg_0.x, arg_0.x))), -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), u_input.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, -199f, -2069f))))), all(vec2<bool>(!arg_0.x, true)), -2147483647i), !(!(-13110i != u_input.d.x)));
    global0 = array<vec4<bool>, 10>();
    let var_1 = var_0;
    global1 = -_wgslsmith_sub_i32(-(~countOneBits(23096i)), select(8987i, u_input.d.x, !any(vec3<bool>(true, var_0.b, true))));
    var var_2 = vec2<bool>(true, all(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2.zww, arg_2.yzz << (arg_2.yzz % vec3<u32>(32u))), 10u)]));
    return Struct_2(Struct_1(vec3<bool>(true, false, true), var_0.a.b, var_1.a.c, !var_0.a.a.x, 21161i), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global0 = array<vec4<bool>, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.c.x, -204f, -418f, arg_0.a.c.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.c.x)), 1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_4(arg_1.b.a.a.xy, vec2<f32>(arg_1.b.a.c.x, -579f), vec4<u32>(0u, u_input.c, u_input.c, u_input.b.x)).a.c.x, -253f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.a.c.x, arg_1.b.a.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_f_op_f32(round(arg_1.b.a.c.x))));
    var var_1 = Struct_2(func_4(!arg_1.c.zx, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.zw))), _wgslsmith_sub_vec4_u32(vec4<u32>(11307u, 0u, u_input.c, 26391u) >> (vec4<u32>(u_input.b.x, u_input.e, 63708u, u_input.a) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 6040u, 6648u, u_input.b.x))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))).a, any(global0[_wgslsmith_index_u32(u_input.a, 10u)]));
    var_1 = func_4(!var_1.a.a.zy, arg_0.a.c.xy, vec4<u32>(~_wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(4294967295u, 0u), var_1.b), ~u_input.b), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.b.x, 4294967295u) | vec2<u32>(u_input.c, u_input.b.x)), 4294967295u >> (_wgslsmith_add_u32(29553u, u_input.e) % 32u)), ~u_input.c));
    var var_2 = true;
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(arg_1.b.a.d, all(arg_2.a), func_1(Struct_1(vec3<bool>(true, arg_2.d, arg_0), u_input.d, vec3<f32>(arg_1.b.a.c.x, -793f, arg_2.c.x), arg_2.a.x, arg_1.b.a.e)) <= (arg_2.b.x << (u_input.a % 32u))), _wgslsmith_clamp_vec2_i32(select(arg_1.b.a.b >> (u_input.b % vec2<u32>(32u)), arg_2.b, all(vec3<bool>(false, false, true))), -_wgslsmith_mult_vec2_i32(vec2<i32>(23875i, u_input.d.x), vec2<i32>(41364i, arg_2.b.x)), arg_2.b), vec3<f32>(_wgslsmith_div_f32(arg_2.c.x, 141f), _wgslsmith_f_op_f32(step(arg_1.b.a.c.x, arg_1.b.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2313f)), true, arg_2.b.x), arg_2.d);
    let var_1 = arg_1;
    var var_2 = vec2<bool>(16352u > u_input.b.x, all(vec3<bool>(!(arg_1.b.a.c.x < arg_2.c.x), true, !all(vec2<bool>(var_1.b.a.d, false)))));
    var var_3 = func_5(var_1.b, arg_1).b.a.c.x;
    var var_4 = arg_1.b;
    return Struct_2(func_5(func_4(func_4(select(var_1.c.zz, vec2<bool>(false, false), var_4.a.a.xy), _wgslsmith_f_op_vec2_f32(round(var_1.b.a.c.xx)), firstTrailingBit(vec4<u32>(50836u, u_input.e, u_input.c, u_input.e))).a.a.zx, _wgslsmith_div_vec2_f32(vec2<f32>(-1124f, var_1.b.a.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a.c.x, arg_2.c.x) + vec2<f32>(var_0.a.c.x, var_0.a.c.x))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 777u, u_input.a), vec4<u32>(3092u, u_input.c, 0u, u_input.e)))), Struct_3(var_1.a, arg_1.b, !select(arg_2.a, arg_1.c, false))).b.a, _wgslsmith_f_op_f32(exp2(arg_1.b.a.c.x)) <= var_1.b.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.d.x <= func_1(Struct_1(vec3<bool>(false, false, true), vec2<i32>(u_input.d.x, -2147483647i) << (vec2<u32>(u_input.b.x, 21683u) % vec2<u32>(32u)), vec3<f32>(488f, -628f, 682f), true, ~0i)), func_5(func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1751f, 179f), vec2<f32>(-2121f, -1657f))), vec4<u32>(72623u, firstLeadingBit(1u), u_input.b.x, func_2(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(u_input.d.x, 0i), vec3<f32>(-417f, 350f, -446f), true, u_input.d.x), false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(u_input.d.x, 14921i), vec3<f32>(-148f, -252f, 777f), true, u_input.d.x), u_input.d.x))), Struct_3(-1i, Struct_2(func_4(vec2<bool>(true, false), vec2<f32>(-1412f, 1597f), vec4<u32>(44080u, 12790u, 4294967295u, 4294967295u)).a, true), func_4(vec2<bool>(false, true), vec2<f32>(-1000f, 269f), ~vec4<u32>(0u, u_input.a, u_input.c, 4294967295u)).a.a)), func_4(func_5(Struct_2(func_4(vec2<bool>(false, false), vec2<f32>(-377f, 481f), vec4<u32>(0u, 4294967295u, 0u, 53296u)).a, all(global0[_wgslsmith_index_u32(u_input.e, 10u)])), func_5(func_5(Struct_2(Struct_1(vec3<bool>(false, false, true), u_input.d, vec3<f32>(951f, -861f, 635f), true, -6027i), false), Struct_3(u_input.d.x, Struct_2(Struct_1(vec3<bool>(true, true, false), u_input.d, vec3<f32>(-341f, -1071f, 404f), true, 2147483647i), false), vec3<bool>(true, true, false))).b, Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, false), u_input.d, vec3<f32>(-1000f, -1000f, 238f), false, 31125i), false), vec3<bool>(true, true, false)))).c.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(694f, 1000f), vec2<f32>(-534f, 259f))) - vec2<f32>(1f, 1f)), vec4<u32>(u_input.c, ~_wgslsmith_mod_u32(1u, 15548u), ~25239u, select(u_input.b.x, ~2218u, true))).a);
    var var_1 = func_5(func_6(true, Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, false, false), u_input.d, var_0.a.c, false, 18591i), false), var_0.a.a), Struct_1(func_4(!var_0.a.a.yz, vec2<f32>(var_0.a.c.x, var_0.a.c.x), vec4<u32>(u_input.c, 12968u, 31673u, u_input.a)).a.a, firstTrailingBit(~vec2<i32>(-2147483647i, -1i)), func_4(vec2<bool>(false, var_0.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -551f)), vec4<u32>(46091u, u_input.a, u_input.c, u_input.b.x)).a.c, 27367u > abs(u_input.a), _wgslsmith_mod_i32(u_input.d.x, 9247i) | _wgslsmith_dot_vec2_i32(var_0.a.b, vec2<i32>(var_0.a.e, u_input.d.x)))), Struct_3(-1i, func_4(!(!var_0.a.a.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c.yy * vec2<f32>(-555f, 353f)) * var_0.a.c.yx), ~vec4<u32>(13297u, u_input.c, u_input.a, 52767u)), var_0.a.a));
    var var_2 = u_input.d;
    var var_3 = !select(!vec3<bool>(var_0.a.d & var_0.b, var_0.b, var_0.a.a.x), !var_0.a.a, false);
    let var_4 = !func_6(~0u <= (_wgslsmith_mult_u32(4294967295u, u_input.e) | ~u_input.b.x), func_5(func_5(func_4(var_1.b.a.a.yy, var_1.b.a.c.xx, vec4<u32>(1u, u_input.c, u_input.e, 11135u)), func_5(Struct_2(var_1.b.a, true), Struct_3(129751i, var_1.b, var_0.a.a))).b, Struct_3(-var_0.a.b.x, var_1.b, func_5(var_1.b, Struct_3(29436i, var_1.b, vec3<bool>(var_1.b.a.a.x, var_0.a.d, var_3.x))).c)), func_6(true, Struct_3(reverseBits(2147483647i), func_4(var_3.zy, vec2<f32>(-144f, var_1.b.a.c.x), vec4<u32>(u_input.b.x, 47915u, u_input.e, u_input.a)), var_0.a.a), var_1.b.a).a).a.a.yz;
    var var_5 = any(vec3<bool>(var_0.a.a.x, var_0.a.a.x, true));
    let var_6 = Struct_2(var_1.b.a, !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(-vec4<i32>(u_input.d.x, var_1.b.a.b.x, -30096i, var_1.a)))), func_4(vec2<bool>(any(global0[_wgslsmith_index_u32(9947u, 10u)]) == true, true), var_1.b.a.c.xz, firstTrailingBit(vec4<u32>(60590u, 6759u, u_input.e << (75426u % 32u), 1u))).a.c.x, 1u, vec2<i32>(1i, u_input.d.x));
}

