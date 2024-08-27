struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<bool>(true, false, false), vec3<i32>(1i, -1i, -1702i), Struct_3(Struct_1(-1i, false, 4294967295u, -910f, true), -17972i, Struct_2(vec2<u32>(20966u, 51916u), Struct_1(1i, false, 17708u, -395f, false)), 1i, true)), Struct_4(vec3<bool>(false, true, false), vec3<i32>(-30264i, 9543i, -48316i), Struct_3(Struct_1(i32(-2147483648), true, 81814u, -546f, false), -1i, Struct_2(vec2<u32>(0u, 29760u), Struct_1(2147483647i, true, 3748u, 723f, false)), -1i, false)), Struct_4(vec3<bool>(false, true, false), vec3<i32>(-25058i, 28164i, i32(-2147483648)), Struct_3(Struct_1(i32(-2147483648), true, 0u, 1238f, true), 2147483647i, Struct_2(vec2<u32>(18647u, 13988u), Struct_1(-56424i, false, 15844u, 482f, false)), -48091i, false)), Struct_4(vec3<bool>(false, true, false), vec3<i32>(0i, 23635i, 2147483647i), Struct_3(Struct_1(15850i, false, 0u, -270f, false), -3163i, Struct_2(vec2<u32>(1u, 0u), Struct_1(33151i, true, 0u, 1722f, false)), 56840i, false)), Struct_4(vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), 1i, 1i), Struct_3(Struct_1(-1i, true, 8240u, 2505f, true), 2147483647i, Struct_2(vec2<u32>(1u, 827u), Struct_1(36659i, false, 1u, -1097f, false)), -1i, true)), Struct_4(vec3<bool>(false, false, true), vec3<i32>(19449i, 2147483647i, 1i), Struct_3(Struct_1(i32(-2147483648), true, 64397u, 766f, true), 2935i, Struct_2(vec2<u32>(1u, 37315u), Struct_1(i32(-2147483648), false, 0u, -143f, false)), 17125i, true)), Struct_4(vec3<bool>(true, false, false), vec3<i32>(0i, 0i, 1i), Struct_3(Struct_1(2147483647i, true, 1u, -1089f, false), -1i, Struct_2(vec2<u32>(1688u, 1u), Struct_1(-3i, true, 129577u, -376f, false)), -38577i, true)), Struct_4(vec3<bool>(true, true, false), vec3<i32>(-1i, 2147483647i, 2147483647i), Struct_3(Struct_1(4080i, false, 4294967295u, -354f, true), -9677i, Struct_2(vec2<u32>(22864u, 1u), Struct_1(-1i, true, 54367u, 720f, false)), -8347i, true)));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-11366i, true, 90198u, 617f, true), Struct_1(0i, false, 0u, -418f, true), Struct_1(2147483647i, false, 24539u, 1836f, false), Struct_1(-2157i, true, 0u, -426f, true), Struct_1(30288i, true, 13491u, -1590f, false), Struct_1(31899i, true, 1u, 190f, false), Struct_1(1i, false, 0u, -1000f, true), Struct_1(1i, true, 37976u, -914f, true), Struct_1(7205i, false, 0u, 549f, false), Struct_1(30989i, false, 90260u, -557f, true), Struct_1(-52787i, true, 23769u, -2295f, true), Struct_1(-1i, false, 37331u, 539f, true), Struct_1(0i, false, 554u, -208f, true), Struct_1(2147483647i, true, 22588u, -959f, true), Struct_1(15670i, false, 42015u, -536f, false), Struct_1(1i, true, 0u, -1298f, false), Struct_1(-1i, false, 0u, 960f, false), Struct_1(2147483647i, false, 4294967295u, 421f, false), Struct_1(-50990i, false, 2116u, -606f, true), Struct_1(-8249i, true, 82662u, 990f, true), Struct_1(-18136i, false, 4294967295u, -846f, true), Struct_1(-11047i, true, 74147u, -1126f, true), Struct_1(51716i, false, 49677u, 106f, false), Struct_1(38091i, true, 8291u, 813f, false), Struct_1(i32(-2147483648), false, 34968u, -1708f, true), Struct_1(-22785i, true, 4294967295u, 201f, false), Struct_1(-10038i, true, 0u, -383f, true), Struct_1(1i, true, 4294967295u, 746f, false), Struct_1(0i, false, 0u, 559f, true));

var<private> global2: array<Struct_2, 14>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    global2 = array<Struct_2, 14>();
    global2 = array<Struct_2, 14>();
    global1 = array<Struct_1, 29>();
    global2 = array<Struct_2, 14>();
    global0 = array<Struct_4, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(869f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    global1 = array<Struct_1, 29>();
    global0 = array<Struct_4, 8>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.d);
    var var_1 = ~(~reverseBits(~max(vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x), vec3<u32>(21156u, arg_0.a.x, 4294967295u))));
    var var_2 = Struct_2(abs(~(u_input.b >> (min(u_input.b, u_input.b) % vec2<u32>(32u)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b.x, 1u, 4294967295u, var_1.x), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, var_1.x), vec4<bool>(true, arg_0.b.e, arg_0.b.e, arg_0.b.e)), vec4<u32>(var_1.x, 13776u, 18933u, 93701u) ^ (vec4<u32>(15801u, arg_0.a.x, 10363u, arg_0.a.x) << (vec4<u32>(1u, 4294967295u, 23591u, u_input.c.x) % vec4<u32>(32u)))) | ~var_1.x, 29u)]);
    return true;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 29>();
    var var_0 = Struct_4(!select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(global2[_wgslsmith_index_u32(64330u, 14u)], vec4<f32>(1000f, -1142f, 998f, -1000f)), true), select(false, false, false)), _wgslsmith_mult_vec3_i32(u_input.d.yzz, _wgslsmith_add_vec3_i32(abs(u_input.d.yyy), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), vec3<i32>(1i, u_input.d.x, 0i)))), Struct_3(Struct_1(12193i, true, reverseBits(u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(431f, 196f))), u_input.a < -15018i), u_input.a, global2[_wgslsmith_index_u32(~(~0u), 14u)], 4392i, false));
    let var_1 = ~var_0.c.a.a;
    global0 = array<Struct_4, 8>();
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 5385u, u_input.b.x), vec3<u32>(815u, 4294967295u, u_input.b.x)), ~_wgslsmith_mult_u32(u_input.c.x, 4294967295u), max(min(~var_0.c.a.c, _wgslsmith_add_u32(u_input.c.x, var_0.c.c.b.c)), _wgslsmith_sub_u32(~var_0.c.a.c, ~84225u))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, reverseBits(u_input.c.x))), ~(~abs(1u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(20008u, u_input.b.x)), var_0.c.c.b.c), countOneBits(~_wgslsmith_div_u32(1u, 28765u))), select(reverseBits(~(~vec4<u32>(var_0.c.a.c, var_0.c.c.b.c, var_0.c.c.b.c, var_0.c.c.a.x))), vec4<u32>(~_wgslsmith_mult_u32(73664u, 39562u), var_0.c.a.c, ~abs(u_input.b.x), ~var_0.c.a.c), vec4<bool>(!all(vec3<bool>(var_0.c.c.b.b, var_0.a.x, var_0.c.a.e)), var_0.a.x, false & func_3(var_0.c.c, vec4<f32>(var_0.c.a.d, -347f, var_0.c.a.d, -194f)), var_1 > ~6044i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1182f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 14>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 8u)];
    let var_1 = !var_0.a.zz;
    let var_2 = _wgslsmith_f_op_f32(950f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~(~60742u), 8u)], var_0.c, var_0.a, 1u != ~u_input.c.x)))));
    global2 = array<Struct_2, 14>();
    global1 = array<Struct_1, 29>();
    let var_3 = Struct_3(Struct_1(firstTrailingBit(var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.d - 561f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -220f)), _wgslsmith_sub_u32(~(~1u), ~u_input.b.x | 40549u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.a.d - var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), -2539f > _wgslsmith_f_op_f32(func_2())), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, ~_wgslsmith_add_i32(var_0.c.b, u_input.d.x), firstTrailingBit(1i), 1i), select(vec4<i32>(-46449i, var_0.c.a.a, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), ~(-8679i)), abs(firstLeadingBit(vec4<i32>(var_0.b.x, 5740i, var_0.b.x, 12412i))), vec4<bool>(var_1.x, true, !var_1.x, false))), var_0.c.c, 33001i, any(!select(select(var_0.a.xx, var_0.a.xy, var_1.x), select(var_1, vec2<bool>(true, false), vec2<bool>(var_1.x, true)), var_1.x || var_0.a.x)));
    let var_4 = vec4<bool>(true, false, true, !var_0.c.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a | (i32(-1i) * -firstLeadingBit(u_input.d.x)), firstLeadingBit(7569u));
}

