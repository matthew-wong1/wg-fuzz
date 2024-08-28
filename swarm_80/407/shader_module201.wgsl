struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1563f, vec4<i32>(2147483647i, 0i, -40448i, -1i)), Struct_1(-1244f, vec4<i32>(1i, 46041i, -1i, 17445i)), Struct_1(1057f, vec4<i32>(53822i, 1i, -1i, i32(-2147483648))), Struct_1(-991f, vec4<i32>(0i, i32(-2147483648), 13311i, -1i)), Struct_1(2135f, vec4<i32>(-24810i, -14205i, -1i, -1i)), Struct_1(708f, vec4<i32>(-47767i, 5234i, -1i, 34472i)), Struct_1(-260f, vec4<i32>(68660i, -1i, -40208i, -1i)), Struct_1(2306f, vec4<i32>(21433i, -31205i, -22822i, -1i)), Struct_1(382f, vec4<i32>(-22833i, -6324i, -34427i, 1i)), Struct_1(267f, vec4<i32>(1i, i32(-2147483648), 1i, 49588i)), Struct_1(-794f, vec4<i32>(2147483647i, 2147483647i, -21740i, 1i)), Struct_1(1992f, vec4<i32>(0i, i32(-2147483648), 0i, -49897i)), Struct_1(-1140f, vec4<i32>(0i, i32(-2147483648), 33724i, 56179i)), Struct_1(363f, vec4<i32>(-1i, -14090i, 10821i, 0i)), Struct_1(-472f, vec4<i32>(-1i, -24849i, 2147483647i, i32(-2147483648))), Struct_1(-1486f, vec4<i32>(29394i, -42377i, -18438i, 14871i)), Struct_1(-682f, vec4<i32>(i32(-2147483648), -40627i, 7211i, 30600i)));

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(325f, vec4<i32>(-21941i, -14236i, -62630i, -33769i)), Struct_1(-957f, vec4<i32>(-13105i, -28488i, -7897i, 1i)), Struct_1(1645f, vec4<i32>(i32(-2147483648), 0i, 8008i, 1i)), Struct_1(-1304f, vec4<i32>(1i, 71236i, 729i, 12554i)), Struct_1(1625f, vec4<i32>(0i, -1i, 33519i, 33114i)), Struct_1(-307f, vec4<i32>(2147483647i, -51898i, -12444i, -33337i)), Struct_1(916f, vec4<i32>(1i, 1i, 0i, 9706i)), Struct_1(1000f, vec4<i32>(5934i, -1i, 9732i, 1i)), Struct_1(-169f, vec4<i32>(-5802i, 0i, 1i, 14196i)), Struct_1(1194f, vec4<i32>(1i, 1i, 1i, -2295i)), Struct_1(1790f, vec4<i32>(i32(-2147483648), 8599i, 1i, i32(-2147483648))), Struct_1(-1585f, vec4<i32>(-1i, -1i, -13500i, 51327i)), Struct_1(-1482f, vec4<i32>(2147483647i, -1i, 1i, 13574i)), Struct_1(-332f, vec4<i32>(2147483647i, 0i, 46272i, 2828i)), Struct_1(-1000f, vec4<i32>(0i, 1i, 52203i, 18141i)), Struct_1(282f, vec4<i32>(35786i, i32(-2147483648), 8578i, i32(-2147483648))));

var<private> global4: u32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = ~(-(i32(-1i) * -u_input.e));
    let var_0 = Struct_4(countOneBits(firstLeadingBit(~vec2<i32>(u_input.c, u_input.e) | vec2<i32>(-2147483647i, u_input.c))), global3[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    global0 = var_0.b.b.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, var_0.b.a, var_0.b.a, var_0.b.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.a, var_0.b.a, -197f, 2342f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 425f, var_0.b.a, var_0.b.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.a, -266f, var_0.b.a) + vec4<f32>(-419f, var_0.b.a, 573f, var_0.b.a))))), Struct_2(0u, Struct_1(549f, var_0.b.b)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2131f, var_0.b.a, -936f, var_0.b.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1908f, 660f, 979f, var_0.b.a) - _wgslsmith_div_vec4_f32(vec4<f32>(-529f, 1185f, var_0.b.a, var_0.b.a), vec4<f32>(var_0.b.a, 425f, -240f, var_0.b.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, -513f, -1000f, var_0.b.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -1629f, 1264f, var_0.b.a) * vec4<f32>(-1997f, var_0.b.a, var_0.b.a, -1000f)), false && all(vec2<bool>(false, false))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))));
    return ~u_input.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i >> (arg_0.a % 32u), 1i, _wgslsmith_div_i32(arg_3.b.b.x, arg_0.b.b.x), arg_1.b.b.x), vec4<i32>(firstLeadingBit(-17507i), arg_0.b.b.x, arg_1.b.b.x, -22211i)), arg_1.b.b, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true)), vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(arg_3.b.b.x, 1i)), max(arg_3.b.b.zx, vec2<i32>(u_input.e, -27455i)))), ~0i, _wgslsmith_add_i32(arg_1.b.b.x, -1i), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.b.x, arg_3.b.b.x, 2147483647i, arg_0.b.b.x), vec4<i32>(arg_0.b.b.x, u_input.e, arg_3.b.b.x, 1i)), abs(_wgslsmith_add_i32(-13592i, arg_0.b.b.x)))));
    var var_1 = select(select(vec4<bool>((u_input.a.x < arg_3.a) && true, true, 767f <= _wgslsmith_f_op_f32(floor(666f)), select(true, true, false)), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, true), select(true, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, ~arg_0.b.b.x < (var_0 & 1i), true)), vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | false, !(!all(vec2<bool>(false, false))), _wgslsmith_dot_vec2_u32(select(u_input.a.wz, vec2<u32>(40662u, arg_0.a), false), select(u_input.b, u_input.a.wx, vec2<bool>(true, false))) <= (select(arg_0.a, 4294967295u, true) & 35857u), false), true);
    global1 = array<Struct_1, 17>();
    global0 = firstTrailingBit(abs(0i));
    var var_2 = arg_2;
    return max(79998u, ~1u);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = abs(min(-1i, u_input.e) & u_input.c);
    global1 = array<Struct_1, 17>();
    let var_1 = Struct_4(vec2<i32>(0i, 22660i), global3[_wgslsmith_index_u32(firstTrailingBit(func_4(Struct_2(reverseBits(arg_2.x), Struct_1(arg_1, vec4<i32>(u_input.e, -2147483647i, -2147483647i, u_input.e))), Struct_2(_wgslsmith_div_u32(0u, u_input.d), Struct_1(arg_1, vec4<i32>(u_input.c, u_input.c, 1i, u_input.e))), arg_3.x, Struct_2(func_3(), Struct_1(arg_3.x, vec4<i32>(u_input.e, u_input.e, -1i, u_input.e))))), 16u)]);
    let var_2 = arg_2.x;
    global2 = false;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(min(arg_1, -987f))))), arg_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_1.d.ywx;
    let var_1 = var_0.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.b.a, _wgslsmith_f_op_f32(-arg_1.a))))), -1169f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), 1845f, u_input.a.zxw, _wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(var_0.x, arg_0.b.a, -243f, 630f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f * -811f)));
    let var_3 = arg_1.c.a;
    var var_4 = arg_1.c;
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, u_input.a) & _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(37743u, ~0u)), _wgslsmith_add_u32(min(func_3(), firstLeadingBit(3191u)), 1u));
    global2 = all(!(!vec3<bool>(true, true, any(vec2<bool>(false, true)))));
    let var_1 = vec4<u32>(43207u | var_0, 4294967295u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(52492u, 1u, u_input.a.x, var_0) | vec4<u32>(u_input.b.x, 59516u, 26904u, arg_3), ~u_input.a) % 32u), 11974u, ~1u | _wgslsmith_mult_u32(u_input.b.x, ~25677u));
    global0 = arg_2.x;
    return global1[_wgslsmith_index_u32(88854u, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_mult_u32(~4294967295u, ~u_input.b.x);
    let var_0 = Struct_4(-vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, 15883i, 0i), vec4<i32>(1i, 1i, 1i, 0i))), ~1i), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-437f, -214f)))))), -1802f, ~select(-vec4<i32>(u_input.c, 0i, u_input.e, u_input.c), ~vec4<i32>(u_input.e, -2147483647i, u_input.c, u_input.c), func_1(Struct_4(vec2<i32>(0i, u_input.e), global3[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_3(731f, vec4<f32>(-557f, 1165f, 479f, 2215f), Struct_2(u_input.d, Struct_1(-547f, vec4<i32>(-31017i, u_input.e, 43261i, u_input.e))), vec4<f32>(-266f, 1000f, 1478f, 536f)), vec4<i32>(u_input.e, u_input.c, u_input.c, -1i))), u_input.a.x));
    var var_1 = global3[_wgslsmith_index_u32(func_3(), 16u)];
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, var_1.a)))), -277f, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.b, max(vec4<i32>(-2443i, var_0.b.b.x, u_input.e, var_0.b.b.x), var_0.b.b) & ~var_1.b), var_0.b.b), 1u);
    global4 = ~(~_wgslsmith_dot_vec3_u32(u_input.a.zxx << ((u_input.a.yzx << (vec3<u32>(u_input.b.x, u_input.d, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(u_input.a.ywx)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-abs(var_1.b.x)) << (~(63982u >> (_wgslsmith_div_u32(25426u, u_input.a.x) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(trunc(var_0.b.a)), func_5(vec2<f32>(334f, var_0.b.a), var_1.a, vec4<i32>(-18859i, var_2.b.x, 22643i, -1i), 1u).a, _wgslsmith_f_op_f32(step(var_2.a, 281f))))), vec3<f32>(1318f, -352f, -685f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.a, 498f))), var_2.a, vec4<i32>(var_0.a.x, var_2.b.x, u_input.e, u_input.c), ~u_input.d).a, _wgslsmith_f_op_f32(var_1.a - 1157f), false)), -146f), vec3<u32>((u_input.a.x >> (17502u % 32u)) & ~(38257u & u_input.d), ~(~func_4(Struct_2(4294967295u, global1[_wgslsmith_index_u32(31373u, 17u)]), Struct_2(u_input.b.x, Struct_1(101f, var_0.b.b)), var_0.b.a, Struct_2(u_input.a.x, global1[_wgslsmith_index_u32(0u, 17u)]))), ~u_input.d));
}

