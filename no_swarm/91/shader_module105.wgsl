struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-971f, -1184f, 503f), vec3<f32>(1612f, -372f, -455f), vec3<f32>(1395f, -1562f, 1000f), vec3<f32>(438f, 334f, -384f), vec3<f32>(961f, 1091f, -628f), vec3<f32>(589f, -583f, -822f));

var<private> global1: bool;

var<private> global2: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x));
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_2, 6u)]);
    var_0 = _wgslsmith_mod_vec2_u32(u_input.a, ~firstLeadingBit(vec2<u32>(~u_input.b.x, ~0u)));
    var var_2 = Struct_3(vec3<i32>(firstLeadingBit(min(~0i, u_input.c)), -u_input.c, i32(-1i) * -1i), Struct_2(Struct_1(vec3<f32>(-803f, -1532f, -806f), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, -1000f, var_1.x) + global0[_wgslsmith_index_u32(1u, 6u)])), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.c)), u_input.c, u_input.c, reverseBits(-9475i)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 6308u), vec3<u32>(1u, 1u, arg_2)) & (vec3<u32>(0u, var_0.x, arg_2) >> (vec3<u32>(var_0.x, var_0.x, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f - arg_0.x)))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, u_input.c, u_input.c, -30929i)), _wgslsmith_div_vec4_i32(vec4<i32>(16926i, u_input.c, 18037i, u_input.c), vec4<i32>(u_input.c, 40222i, u_input.c, 1i) & vec4<i32>(u_input.c, 2147483647i, u_input.c, -1i)))), Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f)), global0[_wgslsmith_index_u32(4294967295u, 6u)], ~(~(~vec4<i32>(-35788i, -11342i, 51372i, u_input.c))), ~select(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, 26562u, u_input.a.x), vec3<bool>(true, false, false)) | firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 73583u, 1u), vec3<u32>(var_0.x, 0u, u_input.b.x)))), -u_input.c);
    return firstLeadingBit(~var_2.b.a.e);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.c), ~vec3<i32>(1i, u_input.c, 12927i)), abs(-vec3<i32>(-12730i, -37472i, -3402i))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, 390f, 378f)), 1000f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1512f), _wgslsmith_f_op_f32(295f * 917f), -469f), vec4<i32>(u_input.c >> (12754u % 32u), -2147483647i, 26570i, 1i), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -445f, -633f)), _wgslsmith_f_op_f32(508f * -156f), _wgslsmith_dot_vec4_u32(vec4<u32>(18014u, 16405u, 101144u, u_input.a.x), vec4<u32>(4294967295u, 1u, 18403u, u_input.b.x)))), -715f, u_input.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(1596f)), _wgslsmith_f_op_f32(1000f * 2185f), _wgslsmith_f_op_f32(ceil(363f))), 1377f, _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) ^ select(u_input.b.x, u_input.a.x, false), 6u)] * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21515u, 51118u), 6u)])), -vec4<i32>(u_input.c, 17552i, u_input.c, u_input.c) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(-14257i, 2147483647i, u_input.c, u_input.c), vec4<i32>(-1i, 1i, u_input.c, 21944i)) << (vec4<u32>(15103u, u_input.a.x, 45770u, u_input.a.x) % vec4<u32>(32u))), abs(firstTrailingBit(vec3<u32>(0u, u_input.b.x, 0u)))), -1i);
    var_0 = Struct_3(vec3<i32>(~select(var_0.d, -2147483647i, true), i32(-1i) * -_wgslsmith_mod_i32(-2147483647i, u_input.c), -(~_wgslsmith_mod_i32(u_input.c, 23538i))), var_0.b, var_0.b.a, 2147483647i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.c.c, _wgslsmith_f_op_vec3_f32(step(var_0.b.a.a, _wgslsmith_f_op_vec3_f32(var_0.b.a.c * vec3<f32>(147f, var_0.c.a.x, var_0.c.b)))), true)), -1405f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, var_0.c.b, var_0.c.c.x) + global0[_wgslsmith_index_u32(0u, 6u)]) + _wgslsmith_f_op_vec3_f32(step(var_0.c.a, var_0.c.a))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.a.x, var_0.c.b, 514f) * global0[_wgslsmith_index_u32(var_0.c.e.x, 6u)])))), var_0.c.d, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 79444u, 7384u) << (var_0.c.e % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b.x, 88360u) << (vec3<u32>(24389u, u_input.b.x, 87004u) % vec3<u32>(32u)), ~var_0.c.e)), 1137f, _wgslsmith_add_i32(-(var_0.b.a.d.x | _wgslsmith_dot_vec4_i32(var_0.c.d, var_0.c.d)), u_input.c));
    global2 = var_0.c.c.x;
    var var_2 = vec3<f32>(-721f, -1283f, var_0.b.b);
    return min(abs(var_0.b.a.e.x), var_0.c.e.x) & (((var_0.c.e.x << (reverseBits(var_0.b.a.e.x) % 32u)) << (var_1.a.e.x % 32u)) >> (_wgslsmith_mod_u32(var_0.b.a.e.x, ~(~4294967295u)) % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 67646u), ~reverseBits(u_input.a.x), 4294967295u, _wgslsmith_mult_u32(u_input.a.x, func_2()));
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(min(-1i, 33425i), -1i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, false)), vec2<i32>(u_input.c, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(2147483647i, u_input.c, -9839i)) ^ -2147483647i) & vec3<i32>(select(u_input.c, -270i, true), 37429i, -select(u_input.c, 2744i, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, -526f, -360f) - global0[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_f32(trunc(-1000f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2593f), _wgslsmith_f_op_f32(min(-1610f, -435f)), _wgslsmith_f_op_f32(abs(-101f))), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), ~firstTrailingBit(vec3<u32>(40047u, 20519u, var_0.x))), _wgslsmith_f_op_f32(abs(1000f)), 3983i), Struct_1(global0[_wgslsmith_index_u32(select(firstTrailingBit(1u), ~reverseBits(u_input.b.x), any(vec3<bool>(true, true, true))), 6u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1540f - -626f))))), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 6u)]), select(~vec4<i32>(33294i, -1i, u_input.c, u_input.c), vec4<i32>(u_input.c, -34986i, 1i, u_input.c), false) & -max(vec4<i32>(0i, 40408i, u_input.c, u_input.c), vec4<i32>(21121i, -23765i, u_input.c, 2147483647i)), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(var_0.xwx, var_0.zzw, var_0.yww))), -2147483647i);
    var var_2 = vec4<f32>(-598f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(533f))), _wgslsmith_f_op_f32(var_1.b.a.b * _wgslsmith_f_op_f32(floor(-403f))))), var_1.b.b, 1f);
    let var_3 = var_1.b;
    let var_4 = Struct_3((var_1.a >> (var_0.wyx % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, var_3.a.e.x)), vec3<u32>(~56025u, ~var_1.b.a.e.x, u_input.b.x)) % vec3<u32>(32u)), var_3, var_3.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, ~abs(-2147483647i)), _wgslsmith_mod_i32(-5438i, max(var_3.c, -2147483647i))));
    return Struct_2(Struct_1(var_2.zwx, _wgslsmith_f_op_f32(f32(-1f) * -1874f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-704f * 1604f), var_2.x, _wgslsmith_f_op_f32(floor(var_4.c.b))))), var_3.a.d, vec3<u32>(14919u, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, -1434f, -564f) * var_3.a.a), 1138f, 4294967295u).x, ~(~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f - 827f) + _wgslsmith_div_f32(var_3.a.a.x, var_4.b.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.b - var_3.b))))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d, -1i, min(-var_1.c.d.x, 2147483647i)), var_3.a.d.zzy));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 885f, -534f))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1323f));
    global0 = array<vec3<f32>, 6>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_1), 1327f)), _wgslsmith_f_op_f32(var_1 * 1315f), var_0.x)), global0[_wgslsmith_index_u32(30182u, 6u)]);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.xy);
    return !(!(!(false == any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(func_4(func_1(), _wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], vec3<f32>(-949f, 714f, 444f)))), any(vec3<bool>(true, false, true)))) == !(false | (select(false, true, true) || true));
    var var_1 = func_1().a;
    let var_2 = func_1().a;
    global0 = array<vec3<f32>, 6>();
    let var_3 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_2.c.x > 707f), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(all(vec2<bool>(false, true)), false, false), true), select(vec3<bool>(true, var_1.d.x <= u_input.c, true), vec3<bool>(true, true, true), true)), false);
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 9064i);
}

