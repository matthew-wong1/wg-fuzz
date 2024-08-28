struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_clamp_u32(66654u, 4988u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(43510u, 48943u))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(11761u, 43088u)), abs(vec2<u32>(24498u, 16730u)))), vec2<u32>(~(~0u), 4516u)));
    let var_1 = Struct_5(16333i, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true), true)), Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -48067i, u_input.a.x), vec3<i32>(-20769i, u_input.a.x, -81502i)), 2147483647i, -(-35098i & u_input.a.x), 8536i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(28841i, u_input.a.x), _wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.xw), ~vec2<i32>(u_input.a.x, -2147483647i)), u_input.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 137f), vec2<f32>(1154f, 542f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, -712f))), Struct_1(-1301f, vec2<bool>(true, true), firstTrailingBit(u_input.a.zzx), i32(-1i) * -86643i), vec4<u32>(8948u, _wgslsmith_dot_vec3_u32(vec3<u32>(1333u, 4294967295u, var_0), vec3<u32>(var_0, var_0, var_0)), _wgslsmith_clamp_u32(1u, var_0, var_0), ~var_0), ~(~vec2<u32>(var_0, var_0)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.d.b.a);
    return vec4<f32>(_wgslsmith_f_op_f32(1238f + _wgslsmith_f_op_f32(346f * -989f)), var_1.c.d.a.x, var_2, _wgslsmith_f_op_f32(-var_2));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(587f, 1335f, -1625f, -821f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1958f, -355f, -288f, -339f), vec4<f32>(939f, 389f, 1996f, 1252f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1117f, -745f, -148f, 684f), _wgslsmith_f_op_vec4_f32(func_3())))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-593f, 1430f, -116f, -1597f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(923f, 467f, -709f, -1016f)))) + vec4<f32>(1038f, _wgslsmith_div_f32(241f, 172f), _wgslsmith_f_op_f32(392f + -1000f), 519f))));
    let var_1 = 0u;
    global0 = array<Struct_4, 1>();
    let var_2 = var_1;
    let var_3 = ~(max(~firstLeadingBit(vec4<u32>(var_2, var_2, 41879u, var_1)), ~(vec4<u32>(4294967295u, var_2, var_2, 4294967295u) ^ vec4<u32>(4294967295u, 0u, var_1, 4045u))) & ~(abs(vec4<u32>(4294967295u, var_1, var_2, var_1)) >> ((vec4<u32>(var_1, 24195u, 87795u, 3903u) ^ vec4<u32>(var_1, 42155u, 37498u, 70538u)) % vec4<u32>(32u))));
    return ~6701u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = arg_1.b.b;
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    var var_1 = ~_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(arg_1.b.c, vec4<u32>(arg_1.a, 25132u, 49622u, arg_2))), vec4<u32>(_wgslsmith_div_u32(arg_1.a, arg_1.a | 4294967295u), func_2(select(vec3<bool>(true, arg_0.b.x, false), vec3<bool>(false, arg_0.b.x, var_0.b.x), var_0.b.x), _wgslsmith_sub_i32(-35247i, 6371i)), arg_1.a & arg_2, ~arg_1.a & arg_2));
    let var_2 = -8901i;
    return !select(!select(!vec3<bool>(false, arg_0.b.x, true), !vec3<bool>(false, false, arg_1.b.b.b.x), select(vec3<bool>(false, false, false), vec3<bool>(arg_1.b.b.b.x, false, arg_1.b.b.b.x), vec3<bool>(true, true, arg_1.b.b.b.x))), select(vec3<bool>(true, arg_3.x != 1001f, any(var_0.b)), select(!vec3<bool>(false, arg_1.b.b.b.x, arg_0.b.x), !vec3<bool>(arg_0.b.x, var_0.b.x, true), vec3<bool>(false, false, false)), vec3<bool>(var_0.b.x | var_0.b.x, arg_1.b.b.b.x, true)), all(select(select(vec3<bool>(var_0.b.x, false, true), vec3<bool>(true, var_0.b.x, arg_0.b.x), var_0.b.x), !vec3<bool>(var_0.b.x, arg_1.b.b.b.x, true), select(var_0.b.x, true, arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(Struct_1(-421f, vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(1i, 13397i, u_input.a.x)), u_input.a.x), global0[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(61146u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -381f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1761f, 1067f) * vec2<f32>(-162f, 351f)))), vec3<bool>(true, false, true), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -17503i, 21574i), vec3<i32>(-82837i, 0i, u_input.a.x)), u_input.a.yyw) < -(i32(-1i) * -2147483647i));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(199f)), _wgslsmith_f_op_f32(f32(-1f) * -161f)), -1738f)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()).x, vec2<bool>(var_0.x, select(true, true, false)), vec3<i32>(2147483647i, u_input.a.x ^ _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -1i), ~1i), ~(-u_input.a.x)), ~vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(~(~firstLeadingBit(vec2<u32>(0u, 9253u)))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(512f, var_1.b.a))) * -354f), var_0.zz, var_1.b.c, ~_wgslsmith_add_i32(-20121i ^ u_input.a.x, var_1.b.c.x)), _wgslsmith_mod_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, var_1.d.x, var_1.c.x, var_1.c.x), var_1.c)), ~vec4<u32>(~4294967295u, var_1.d.x ^ var_1.d.x, select(6292u, var_1.c.x, true), ~var_1.c.x)), ~firstTrailingBit(vec2<u32>(var_1.d.x, var_1.c.x)) | ~(~min(vec2<u32>(36736u, 1u), vec2<u32>(var_1.d.x, var_1.c.x))));
    global0 = array<Struct_4, 1>();
    var var_2 = _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(select(var_1.b.c.x, var_1.b.d, false), u_input.a.x, 1i)), countOneBits(-vec3<i32>(var_1.b.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.d, 2147483647i, -2895i, u_input.a.x), u_input.a), u_input.a.x << (4294967295u % 32u))));
    let var_3 = var_1.c.yyz & ~_wgslsmith_clamp_vec3_u32(max(_wgslsmith_add_vec3_u32(var_1.c.yzw, var_1.c.yyx), max(vec3<u32>(var_1.d.x, var_1.d.x, var_1.c.x), vec3<u32>(var_1.d.x, var_1.c.x, var_1.d.x))), firstLeadingBit(var_1.c.yzz), min(vec3<u32>(var_1.c.x, var_1.c.x, var_1.d.x), ~vec3<u32>(21293u, 1u, var_1.d.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(sign(var_1.b.a)), vec2<bool>(all(!(!vec3<bool>(true, false, var_1.b.b.x))), true | var_0.x), vec3<i32>(27247i, ~(-firstLeadingBit(var_1.b.c.x)), abs(var_1.b.d) << (_wgslsmith_dot_vec4_u32(~var_1.c, var_1.c >> (var_1.c % vec4<u32>(32u))) % 32u)), ~var_2.x);
    global0 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(29577u, min(var_3.x, var_3.x), any(vec4<bool>(false, var_0.x, var_1.b.b.x, var_1.b.b.x))), 76640u, (-var_2.x <= 1i) & (_wgslsmith_f_op_f32(sign(var_4.a)) != var_4.a)), 35557u, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(u_input.a.x, select(var_4.c.x, -28657i, var_0.x))) >> ((var_1.d.x ^ ~4294967295u) % 32u), var_4.a, vec3<f32>(var_4.a, var_4.a, _wgslsmith_div_f32(-1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.a, var_1.a.x)) * _wgslsmith_div_f32(var_1.a.x, var_4.a)))));
}

