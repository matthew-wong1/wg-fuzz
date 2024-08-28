struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec2<bool>(true, true), true, 1091f, vec4<f32>(-149f, -2746f, -463f, -1536f), 595f), Struct_4(vec2<bool>(true, true), false, 1122f, vec4<f32>(684f, -955f, -777f, 995f), 647f), Struct_4(vec2<bool>(false, true), true, -1135f, vec4<f32>(-1063f, -1706f, -453f, -226f), -1989f), Struct_4(vec2<bool>(false, false), true, -320f, vec4<f32>(-791f, -355f, -648f, 682f), -534f), Struct_4(vec2<bool>(false, true), false, 790f, vec4<f32>(-532f, 252f, -1707f, 1384f), -178f), Struct_4(vec2<bool>(false, true), true, -1089f, vec4<f32>(-1197f, 173f, -817f, -996f), -843f), Struct_4(vec2<bool>(true, false), true, 1347f, vec4<f32>(-1000f, -698f, 476f, -1044f), 115f), Struct_4(vec2<bool>(false, true), true, 1191f, vec4<f32>(-312f, -999f, 474f, 1000f), -767f), Struct_4(vec2<bool>(true, false), true, 451f, vec4<f32>(2008f, 2315f, 100f, -532f), -600f), Struct_4(vec2<bool>(true, true), true, 652f, vec4<f32>(1343f, 558f, -358f, -340f), -1514f), Struct_4(vec2<bool>(true, false), true, 321f, vec4<f32>(-1720f, 1338f, 839f, 528f), 1000f), Struct_4(vec2<bool>(false, true), true, 2052f, vec4<f32>(426f, 2067f, 271f, -1390f), 655f), Struct_4(vec2<bool>(false, true), true, 1077f, vec4<f32>(-1000f, -833f, -155f, -1057f), -1000f), Struct_4(vec2<bool>(false, false), true, -1371f, vec4<f32>(-410f, -483f, 290f, -235f), 718f), Struct_4(vec2<bool>(false, true), false, -180f, vec4<f32>(209f, -1000f, 1335f, 1099f), 2086f), Struct_4(vec2<bool>(false, true), false, 471f, vec4<f32>(-1100f, 957f, -105f, -243f), -1114f), Struct_4(vec2<bool>(false, false), true, 597f, vec4<f32>(-202f, -934f, 487f, 106f), -1045f), Struct_4(vec2<bool>(true, false), true, 775f, vec4<f32>(1000f, -2438f, -1279f, 1207f), 190f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = u_input.c;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-880f, -1798f, _wgslsmith_f_op_f32(-1199f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -449f)), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1837f, -211f, _wgslsmith_div_f32(783f, -702f)), global0.x))), Struct_2(vec4<u32>(31825u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 31413u), 1u), 52204u, _wgslsmith_sub_u32(firstTrailingBit(17729u), 1u)), ~vec3<i32>(1i, 12913i, ~(-34175i))), Struct_2(select(vec4<u32>(~46070u, ~4294967295u, 97428u, firstTrailingBit(0u)), vec4<u32>(14365u, 64629u, 1u, ~52370u), !select(global0.x, global0.x, global0.x)), -max(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1389f, 866f, -2100f, 1000f), vec4<f32>(1625f, -297f, 383f, 391f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, -1000f, 240f, -262f) - vec4<f32>(-645f, 904f, -140f, 424f)), true)))), Struct_2(~(~(~vec4<u32>(17943u, 59138u, 87618u, 97667u))), abs(abs(-vec3<i32>(31447i, 72768i, var_0.x)))));
    var var_2 = ((_wgslsmith_dot_vec2_u32(var_1.c.a.zz, vec2<u32>(var_1.c.a.x, var_1.e.a.x)) & ~var_1.e.a.x) << ((var_1.b.a.x >> (var_1.c.a.x % 32u)) % 32u)) >> (~var_1.b.a.x % 32u);
    global3 = array<Struct_4, 18>();
    var var_3 = 1i;
    return _wgslsmith_add_u32(var_1.b.a.x, _wgslsmith_mult_u32(min(_wgslsmith_dot_vec4_u32(var_1.c.a, var_1.e.a ^ var_1.b.a), 4294967295u), ~(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 18533u) & (var_1.e.a.x << (var_1.e.a.x % 32u)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    global2 = array<Struct_4, 31>();
    global3 = array<Struct_4, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, select(true, false, false))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_0, arg_2, 578f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -273f, -837f, arg_2), vec4<f32>(-1045f, 832f, 1358f, arg_2))), vec4<f32>(-615f, arg_2, var_0, 360f), !global0.x)))), Struct_2(arg_3.a, u_input.b), arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-138f, arg_2, arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1501f, 458f, 1715f)))))), Struct_2(vec4<u32>(func_3(), arg_0 >> (arg_0 % 32u), _wgslsmith_clamp_u32(28057u, 4294967295u, arg_0), arg_0) >> (arg_3.a % vec4<u32>(32u)), arg_3.b));
    global0 = select(select(select(select(!vec4<bool>(global0.x, true, false, false), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, true, false, true), global0.x), !vec4<bool>(global0.x, false, false, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, false), any(vec2<bool>(global0.x, global0.x))), !(!(!vec4<bool>(global0.x, global0.x, false, global0.x))), !(!vec4<bool>(false, false, false, global0.x))), select(!(!select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, false, false, global0.x), false)), select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), any(!vec4<bool>(true, true, global0.x, true))), ~(u_input.b.x << (37863u % 32u)) > abs(arg_1)), !(!select(!vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, true, false), true), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, false), global0.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, arg_2) * vec2<f32>(var_1.d.a.x, 465f)))))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -max(-_wgslsmith_div_i32(2147483647i, u_input.b.x) >> (arg_0.a.x % 32u), arg_0.b.x);
    let var_1 = !(!(!(!vec4<bool>(global0.x, false, global0.x, global0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(596f, -1007f) + vec2<f32>(612f, 1128f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(2918f, 813f), vec2<f32>(-1986f, 431f)), vec2<f32>(1f, 1f), !global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(arg_0.a.x, -2147483647i, 642f, arg_0)))))));
    global3 = array<Struct_4, 18>();
    global0 = select(!select(vec4<bool>(true, var_2.x == var_2.x, global0.x, true), vec4<bool>(false, !var_1.x, true, global0.x), true), vec4<bool>(true, any(var_1.xz), select(true, all(vec3<bool>(global0.x, var_1.x, false)), false), !select(true, u_input.a.x <= u_input.a.x, true)), true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(456f * var_2.x), -752f, var_2.x, _wgslsmith_f_op_f32(floor(2171f))), vec4<f32>(-1198f, _wgslsmith_f_op_f32(min(-2156f, 553f)), var_2.x, _wgslsmith_div_f32(var_2.x, 491f)), vec4<bool>(true, arg_0.b.x < 2147483647i, true, var_1.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, var_2.x, 1000f, -1586f))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(firstTrailingBit(u_input.b.x), abs(u_input.c.x), abs(u_input.c.x))), select(~(u_input.a.x >> (4294967295u % 32u)), u_input.a.x, any(vec2<bool>(true, true))) | _wgslsmith_add_i32(u_input.c.x, ~0i | (u_input.a.x >> (23890u % 32u))), ~(_wgslsmith_div_i32(-1118i, u_input.c.x) >> (0u % 32u)));
    var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-65069i, ~u_input.b.x), -abs(u_input.c.zw)) << (4294967295u % 32u);
    let var_1 = _wgslsmith_add_u32(~(1u & select(1u, _wgslsmith_mod_u32(1u, 114398u), false)), abs(38668u));
    let var_2 = min(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_1 >> (41251u % 32u), ~var_1, 48653u << (var_1 % 32u), ~5757u)), countOneBits(vec4<u32>(var_1, 51556u, select(var_1, var_1, global0.x), _wgslsmith_add_u32(var_1, 219u)))), ~vec4<u32>(var_1 >> (var_1 % 32u), max(91189u, ~var_1), ~var_1, 79217u));
    global1 = array<vec3<bool>, 10>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, arg_0.a.x, arg_0.a.x, arg_0.a.x) - arg_0.a), _wgslsmith_div_vec4_f32(arg_0.a, arg_0.a)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_4 {
    global1 = array<vec3<bool>, 10>();
    global0 = select(vec4<bool>(select(all(vec3<bool>(global0.x, false, global0.x)), _wgslsmith_f_op_f32(trunc(714f)) <= -2273f, false), true, all(select(select(global0.xw, global0.wy, vec2<bool>(true, true)), global0.xz, vec2<bool>(global0.x, global0.x))), global0.x), select(vec4<bool>(0i < arg_1.b.b.x, global0.x, true, true), vec4<bool>(global0.x, true, !(global0.x | false), max(u_input.a.x, 2147483647i) <= 16852i), vec4<bool>(global0.x, !(true == global0.x), select(arg_1.b.a.x, 4294967295u, true) <= ~5695u, (global0.x & global0.x) && global0.x)), global0.x);
    var var_0 = -arg_1.e.b.x;
    let var_1 = (select(arg_1.c.b.zy >> (vec2<u32>(1u, 49997u) % vec2<u32>(32u)), -u_input.a, any(global0.yw)) | vec2<i32>(firstTrailingBit(~(-2147483647i)), arg_1.c.b.x)) | max(vec2<i32>(0i, arg_1.b.b.x), _wgslsmith_mult_vec2_i32(arg_1.e.b.xz, u_input.a));
    let var_2 = -_wgslsmith_add_vec2_i32(u_input.c.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_1.c.b.x, 34111i), vec4<i32>(67821i, 2147483647i, var_1.x, var_1.x))), ~(var_1 ^ var_1)));
    return Struct_4(global0.xy, false, arg_0.a.x, arg_1.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.d.a.x, 1328f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(true, global0.x, -19012i <= -_wgslsmith_clamp_i32(-53092i, 1i, 1i), false);
    global2 = array<Struct_4, 31>();
    let var_0 = func_5(func_4(func_1(Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 54555u), _wgslsmith_mult_vec3_i32(vec3<i32>(44753i, u_input.c.x, -1i), vec3<i32>(u_input.b.x, 66204i, u_input.b.x))))), Struct_3(func_1(Struct_2(~vec4<u32>(48058u, 1u, 47291u, 13544u), select(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x), u_input.b, vec3<bool>(true, global0.x, global0.x)))), Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(76093u, 1u, 41823u, 1u), vec4<u32>(94202u, 70789u, 6480u, 1u), vec4<u32>(1u, 4294967295u, 11746u, 4294967295u)), select(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)), vec3<i32>(1i, u_input.c.x, u_input.c.x) | u_input.c.xxw, global0.x)), Struct_2(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(8728u, 86093u, 170672u, 52016u), vec4<bool>(true, global0.x, false, true)), (u_input.c.xyx ^ vec3<i32>(2147483647i, u_input.c.x, u_input.a.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(17464u, 82396u, 1021u), vec3<u32>(93762u, 46188u, 1u)) % vec3<u32>(32u))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(828f, -1041f, -563f, 1110f)))), Struct_2(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec3<i32>(-52425i, max(-48160i, 2754i), ~2147483647i))));
    var var_1 = true;
    global3 = array<Struct_4, 18>();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1232f, 393f, -1186f, -1269f)))), Struct_3(Struct_1(var_0.d), Struct_2(vec4<u32>(4294967295u, 61313u, 4294967295u, 45763u), vec3<i32>(u_input.b.x, -16337i, -1i)), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 0u), u_input.b), func_1(Struct_2(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), u_input.c.xyw)), Struct_2(vec4<u32>(0u, 6236u, 1u, 31269u), u_input.c.zzy))).d.wyz * vec3<f32>(var_0.d.x, var_0.e, var_0.e))));
    let var_3 = var_2.xx;
    var_2 = var_0.d.wwz;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(-518f, var_2.x)), var_2.x, _wgslsmith_f_op_vec2_f32(func_2(23745u, 41773i, -234f, Struct_2(vec4<u32>(9820u, 12464u, 0u, 1u), vec3<i32>(u_input.b.x, 1i, -1i)))).x)), func_4(func_1(Struct_2(vec4<u32>(22023u, 57355u, 43716u, 14546u), vec3<i32>(-1i, u_input.c.x, u_input.c.x)))).a), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(select(vec4<u32>(460u, 1u, 23206u, 39531u), vec4<u32>(5258u, 20686u, 0u, 4294967295u), global0.x)), vec4<u32>(~1u, 4745u, _wgslsmith_sub_u32(~0u, ~1u), 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(u_input.c.yyw, vec3<i32>(34410i, 2147483647i, u_input.b.x), false), u_input.c.wyy), -(~u_input.c.x)), -abs(0i)));
}

