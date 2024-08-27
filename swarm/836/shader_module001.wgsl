struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<i32>(2118i, 44299i, 2147483647i, i32(-2147483648)), Struct_2(vec3<f32>(-943f, 449f, -166f), vec4<f32>(436f, -306f, 635f, -562f))), Struct_3(vec4<i32>(10258i, 1i, 12541i, i32(-2147483648)), Struct_2(vec3<f32>(1498f, -120f, -1000f), vec4<f32>(1692f, 1789f, 813f, -258f))), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), -20838i, -7019i), Struct_2(vec3<f32>(-950f, 927f, 2393f), vec4<f32>(1000f, 131f, 377f, 832f))), Struct_3(vec4<i32>(i32(-2147483648), 1i, 1i, -1i), Struct_2(vec3<f32>(446f, -690f, 207f), vec4<f32>(1590f, -1432f, -1699f, 984f))), Struct_3(vec4<i32>(11614i, -11276i, -41607i, 1i), Struct_2(vec3<f32>(1150f, 1147f, -1000f), vec4<f32>(1617f, 492f, -1687f, 1000f))), Struct_3(vec4<i32>(66501i, 33202i, 2147483647i, 14023i), Struct_2(vec3<f32>(974f, 133f, -1000f), vec4<f32>(-415f, 404f, -201f, 1000f))), Struct_3(vec4<i32>(8768i, i32(-2147483648), 15818i, -23876i), Struct_2(vec3<f32>(531f, 2048f, 305f), vec4<f32>(1290f, -167f, -651f, -107f))), Struct_3(vec4<i32>(2147483647i, -1i, -19693i, -16278i), Struct_2(vec3<f32>(-1000f, -300f, 700f), vec4<f32>(-734f, 1580f, 2129f, 1000f))), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -26027i), Struct_2(vec3<f32>(-1185f, -651f, 658f), vec4<f32>(1610f, 1998f, 292f, 1000f))), Struct_3(vec4<i32>(1i, i32(-2147483648), -64124i, 1i), Struct_2(vec3<f32>(1192f, -173f, -181f), vec4<f32>(-900f, -818f, 346f, -1719f))), Struct_3(vec4<i32>(1i, -14116i, 66228i, 1i), Struct_2(vec3<f32>(-225f, -614f, -2014f), vec4<f32>(-1527f, -352f, 1000f, -1133f))), Struct_3(vec4<i32>(0i, -15677i, 2147483647i, -13008i), Struct_2(vec3<f32>(661f, 1109f, -1183f), vec4<f32>(584f, -1000f, -813f, 917f))), Struct_3(vec4<i32>(-1i, 0i, 1i, 2147483647i), Struct_2(vec3<f32>(-2165f, 1518f, 318f), vec4<f32>(473f, -1000f, -734f, -1000f))), Struct_3(vec4<i32>(-1i, 0i, i32(-2147483648), 9858i), Struct_2(vec3<f32>(-123f, -320f, -523f), vec4<f32>(1169f, 1814f, -1369f, -144f))), Struct_3(vec4<i32>(-32264i, -1i, -1i, 0i), Struct_2(vec3<f32>(467f, 440f, 723f), vec4<f32>(1000f, 1272f, -1431f, 1507f))), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -24125i, 1i), Struct_2(vec3<f32>(580f, -926f, 639f), vec4<f32>(1190f, 1000f, -2502f, 595f))), Struct_3(vec4<i32>(-9086i, 52166i, 19088i, -7591i), Struct_2(vec3<f32>(554f, -2109f, 217f), vec4<f32>(-1000f, -571f, 622f, -154f))), Struct_3(vec4<i32>(-16519i, i32(-2147483648), 1246i, 23848i), Struct_2(vec3<f32>(1595f, -287f, 1470f), vec4<f32>(1260f, 1212f, -128f, 600f))), Struct_3(vec4<i32>(-10269i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_2(vec3<f32>(695f, 1000f, -275f), vec4<f32>(-1798f, -950f, -565f, 1143f))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(41150u, 1u, 15161u, firstTrailingBit(~u_input.a)), reverseBits(vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), ~u_input.a, 4294967295u)), vec4<u32>(max(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 1u), ~0u, u_input.a >> (4294967295u % 32u), 61557u)), _wgslsmith_sub_vec4_u32(~(~countOneBits(vec4<u32>(1u, u_input.a, 1u, u_input.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 20727u, u_input.a) ^ ~vec4<u32>(u_input.a, 1u, 22497u, u_input.a), ~max(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 74785u, 362u, u_input.a)), (vec4<u32>(12456u, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(17262u, 4294967295u, 0u, 1u) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(21557u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(12256u, 87034u, u_input.a, u_input.a)) % vec4<u32>(32u)))));
    global0 = array<vec3<bool>, 28>();
    var var_1 = ~_wgslsmith_add_u32(u_input.a, firstTrailingBit(firstLeadingBit(u_input.a))) >> ((select(53499u, u_input.a, (arg_1.b != -2147483647i) & arg_1.d.x) >> (~_wgslsmith_mult_u32(0u, u_input.a) % 32u)) % 32u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1.c - _wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-216f, arg_1.e.x, 399f, arg_1.c.x))))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> bool {
    let var_0 = Struct_3(vec4<i32>(0i, arg_1.a.x, min(reverseBits(_wgslsmith_sub_i32(1i, -1i)), abs(u_input.b)), reverseBits(~arg_1.a.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.b.b.xzw), vec3<f32>(arg_0.x, 446f, arg_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(-890f, -1503f), Struct_4(u_input.b, u_input.b, vec4<f32>(arg_1.b.a.x, -1254f, 812f, arg_1.b.a.x), vec2<bool>(true, false), arg_1.b.a), vec2<i32>(arg_1.a.x, u_input.b))), _wgslsmith_div_vec4_f32(arg_1.b.b, vec4<f32>(398f, 525f, 440f, 1524f)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))))));
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, ~(~1u << (u_input.a % 32u))), 45155u, u_input.a, 17632u);
    global1 = array<Struct_3, 19>();
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(min(var_1.x, var_1.x)), 28u)];
    var var_3 = true;
    return var_2.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_3 {
    global0 = array<vec3<bool>, 28>();
    let var_0 = select(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), select(vec4<bool>(u_input.a > (u_input.a << (u_input.a % 32u)), func_2(vec3<f32>(989f, -1161f, 840f), Struct_3(vec4<i32>(u_input.b, u_input.b, arg_1, u_input.b), Struct_2(vec3<f32>(-139f, -626f, -181f), vec4<f32>(553f, -344f, -1658f, -1228f)))), true, func_2(vec3<f32>(467f, 135f, 1238f), global1[_wgslsmith_index_u32(reverseBits(arg_0), 19u)])), vec4<bool>(!all(vec4<bool>(false, true, false, false)), true, -1503f >= _wgslsmith_f_op_f32(ceil(1126f)), true == all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), true);
    global1 = array<Struct_3, 19>();
    var var_1 = Struct_1(~0u, vec2<u32>(~abs(~1u), _wgslsmith_add_u32(countOneBits(1u), _wgslsmith_clamp_u32(arg_0, u_input.a, 0u) >> (firstLeadingBit(arg_0) % 32u))), !(any(vec4<bool>(var_0.x, false, true, false)) || true), vec4<f32>(1f, 1f, 1f, 1f));
    var_1 = Struct_1(17216u, _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), var_1.b), !select(-633f > var_1.d.x, true, 4294967295u < arg_0) | true, var_1.d);
    return Struct_3(countOneBits(vec4<i32>(u_input.b >> (arg_0 % 32u), max(u_input.b, 0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, arg_1, arg_1), vec4<i32>(arg_1, 1i, 1i, arg_1)), vec4<i32>(arg_1, 1i, -1i, 0i) & vec4<i32>(u_input.b, 0i, -1i, 5524i)), arg_1)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1030f, -362f, var_1.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -2490f, -1111f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, var_1.d.x, var_1.d.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f + var_1.d.x) * _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -416f))), -697f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.x))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = func_1(3998u, arg_2);
    var var_1 = Struct_4(10212i, _wgslsmith_add_i32(~(~1i), -_wgslsmith_div_i32(reverseBits(2147483647i), -u_input.b)), vec4<f32>(556f, _wgslsmith_f_op_f32(abs(-687f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-365f, _wgslsmith_f_op_f32(arg_3.b.b.x * arg_0))), arg_1), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.b.b.yzz + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b.zyy - arg_3.b.a), vec3<f32>(1000f, var_0.b.b.x, arg_0)))));
    global0 = array<vec3<bool>, 28>();
    var var_2 = var_0.b;
    let var_3 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.a, 1u, u_input.a) << (vec4<u32>(1u, 17995u, 14069u, u_input.a) % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 87896u, 18010u), vec4<u32>(4294967295u, u_input.a, 13857u, 1u), vec4<u32>(48455u, u_input.a, 38736u, u_input.a)), firstLeadingBit(vec4<u32>(0u, 4294967295u, u_input.a, 76265u)), vec4<bool>(true, true, true, true))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(39581u, 4294967295u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19760u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(15728u, u_input.a, u_input.a), var_1.d.x)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(4294967295u, u_input.a)), ~(~4294967295u))) % vec4<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(726f, 175f)))) * 1f) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) - _wgslsmith_f_op_f32(f32(-1f) * -414f)), -1873f, -2147483647i, func_1(~u_input.a, _wgslsmith_div_i32(6749i, u_input.b))))), vec4<f32>(_wgslsmith_f_op_f32(157f * -486f), -1061f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(abs(509f))))), -251f), _wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1011f)), -1296f)), -811f)), vec2<u32>(min(70281u, ~1u), u_input.a) | vec2<u32>(select(~64876u, _wgslsmith_mod_u32(22629u, u_input.a), false), u_input.a));
}

