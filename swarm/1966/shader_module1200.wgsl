struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 14>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<bool> {
    let var_0 = 71208i == ~(_wgslsmith_dot_vec3_i32(reverseBits(u_input.b.xzz), reverseBits(vec3<i32>(6871i, -1i, -1i))) << (~(~u_input.c.x) % 32u));
    let var_1 = ~global0.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(130f))));
    global2 = select(select(vec4<bool>(true, true, true, global0.b), vec4<bool>(false, var_0, true, global0.c), !(_wgslsmith_f_op_f32(-1730f + var_2) < -1270f)), vec4<bool>(var_0, var_0, min(~arg_1, 29572u) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, arg_0), vec3<u32>(arg_0, global0.a.x, global0.a.x)), false), true);
    global1 = array<i32, 14>();
    return select(!select(!vec4<bool>(false, global2.x, false, global0.c), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_0, true, false, global0.c), global0.c), vec4<bool>(true, all(vec3<bool>(false, global2.x, false)), global2.x != true, select(true, global0.c, true))), select(!select(!vec4<bool>(global2.x, global0.b, var_0, false), !vec4<bool>(global0.c, var_0, false, global0.b), -1i <= global1[_wgslsmith_index_u32(1u, 14u)]), !vec4<bool>(global0.b, true, !var_0, true & global2.x), false), vec4<bool>(!all(global2.yxx), global0.c, true, !global2.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(u_input.c.xzx, !global0.b, true, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0, global0.d), 0i), vec3<i32>(countOneBits(-(~50858i)), global1[_wgslsmith_index_u32(~global0.a.x, 14u)], 2147483647i));
    global2 = select(select(func_3(0u, _wgslsmith_mult_u32(var_0.a.x, ~1u)), vec4<bool>(global0.b, true, ~63824u >= u_input.a.x, var_0.c), abs(~arg_0) <= ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 14u)], arg_0)), select(vec4<bool>(true, !any(global2.wyx), (1i << (global0.a.x % 32u)) <= firstTrailingBit(global1[_wgslsmith_index_u32(arg_1, 14u)]), true), select(!(!vec4<bool>(true, false, var_0.b, var_0.b)), select(!vec4<bool>(global2.x, true, global0.c, false), !vec4<bool>(global2.x, true, var_0.c, false), !vec4<bool>(true, global2.x, true, global0.b)), true), !vec4<bool>(global2.x, select(false, false, true), 59u == arg_1, false)), func_3(abs(max(reverseBits(var_0.a.x), max(global0.a.x, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 4294967295u) & ~vec3<u32>(u_input.c.x, global0.a.x, u_input.c.x), vec3<u32>(78683u, 101182u, ~35215u))));
    global1 = array<i32, 14>();
    global0 = var_0;
    var var_1 = vec4<f32>(-1479f, -778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))) + _wgslsmith_f_op_f32(f32(-1f) * -254f)), -1812f);
    return _wgslsmith_f_op_f32(min(-313f, _wgslsmith_f_op_f32(abs(-677f))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> vec3<u32> {
    let var_0 = ~vec3<i32>(-2147483647i, 1i, ~firstTrailingBit(u_input.b.x | 1i));
    let var_1 = global0.c;
    let var_2 = ~0u;
    let var_3 = false;
    var var_4 = Struct_1(~global0.a, var_3, !(!global0.b), abs(64196i), -u_input.b.xwz);
    return ~vec3<u32>(abs(var_4.a.x), ~(~0u), ~reverseBits(~4294967295u));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(global2.x, true, true, select(true, global0.c, global0.c));
    let var_1 = Struct_1(firstLeadingBit(arg_0), !var_0.x == (true & (all(var_0.zzy) & (u_input.b.x < global1[_wgslsmith_index_u32(global0.a.x, 14u)]))), false, u_input.b.x, select(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 24894i), _wgslsmith_add_vec3_i32(vec3<i32>(40779i, global0.d, 0i), vec3<i32>(u_input.b.x, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))), ~global0.e | global0.e), _wgslsmith_mult_vec3_i32(global0.e, vec3<i32>(max(global0.e.x, -1i), global1[_wgslsmith_index_u32(61503u, 14u)], 0i)), !all(global2.xw)));
    var var_2 = any(select(select(global2.xz, var_0.xx, global0.c), vec2<bool>(true, abs(53400u) <= firstLeadingBit(arg_0.x)), vec2<bool>(select(false && var_0.x, var_0.x || false, all(var_0.xxx)), any(vec4<bool>(var_1.c, false, global0.c, true)))));
    var var_3 = var_1.a.xx >> (vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c), 4294967295u) % vec2<u32>(32u));
    var var_4 = var_1;
    return Struct_1(max(func_4(_wgslsmith_f_op_f32(func_2(var_1.e.x ^ global0.e.x, 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -163f, -1189f, -242f) - vec4<f32>(-131f, -1000f, 809f, 442f)))), vec2<bool>(false, var_1.d != u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f - 591f))), ~var_1.a), any(vec4<bool>(var_1.b, true, all(!vec4<bool>(true, true, global2.x, false)), true)), !(((global0.c && false) || var_4.b) && (-1171f == _wgslsmith_f_op_f32(ceil(-934f)))), ~1i, abs(var_1.e ^ vec3<i32>(0i, 7939i, 18038i)) >> (arg_0 % vec3<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(~arg_2.zz, vec2<u32>(arg_2.x | global0.a.x, _wgslsmith_dot_vec2_u32(arg_3.a.yy, ~global0.a.yx)), arg_2.yx);
    let var_1 = vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(~arg_2.x, 14u)] << (50444u % 32u), i32(-1i) * -2147483647i, 1i);
    var var_2 = !select(global2.wy, vec2<bool>(true, !any(global2.yz)), !((arg_2.x >> (var_0.x % 32u)) > ~u_input.a.x));
    let var_3 = func_1(arg_3.a);
    var var_4 = Struct_1(vec3<u32>(~firstTrailingBit(u_input.c.x), ~(~(~global0.a.x)), func_4(arg_1.x, vec2<bool>(false, var_2.x), arg_1.x).x), global2.x, select(func_1(vec3<u32>(_wgslsmith_clamp_u32(28465u, 0u, u_input.a.x), 564u, arg_2.x)).b, var_2.x, any(!(!vec4<bool>(global2.x, var_2.x, false, var_2.x)))), 2147483647i, _wgslsmith_div_vec3_i32(vec3<i32>(~(-32782i), func_1(arg_2 ^ global0.a).e.x, select(_wgslsmith_clamp_i32(arg_3.e.x, 2147483647i, 9654i), -84608i << (arg_2.x % 32u), select(false, true, global2.x))), vec3<i32>(-_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(-37554i, -14137i, var_3.e.x, 15744i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-10863i, global0.e.x, u_input.b.x), global0.e) ^ func_1(vec3<u32>(1u, 45068u, var_0.x)).d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.e.x, -2577i), _wgslsmith_sub_i32(var_1.x, arg_3.d), -2147483647i))));
    return (var_1.x & ~_wgslsmith_mult_i32(var_4.d, global1[_wgslsmith_index_u32(arg_2.x, 14u)] << (global0.a.x % 32u))) <= u_input.b.x;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_1(select(~(vec3<u32>(global0.a.x, arg_1.a.x, 1u) ^ vec3<u32>(global0.a.x, 1u, 9813u)), vec3<u32>(43746u, global0.a.x, arg_1.a.x), any(func_3(112353u, 18658u))) ^ abs(arg_0.a));
    var var_0 = -_wgslsmith_dot_vec2_i32(global0.e.zx, max(~global0.e.yz, u_input.b.zy)) & firstTrailingBit(~arg_0.e.x);
    var_0 = max(arg_0.e.x ^ -2147483647i, global1[_wgslsmith_index_u32(~11695u, 14u)]);
    let var_1 = _wgslsmith_mod_i32(~(-(~(~20663i))), reverseBits(global0.e.x));
    let var_2 = _wgslsmith_mod_i32(arg_1.d, 12219i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(reverseBits(~(u_input.c.xyy << (vec3<u32>(4294967295u, 65192u, u_input.a.x) % vec3<u32>(32u)))), false, func_5(global0.d >> (4294967295u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, 225f, 811f, 839f) * vec4<f32>(-679f, -1856f, 2012f, 729f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(560f, -1278f, 1174f, -530f))), vec3<u32>(u_input.a.x << (u_input.d.x % 32u), min(u_input.d.x, global0.a.x), 18468u), func_1(u_input.c.yzz)), _wgslsmith_dot_vec4_i32(u_input.b ^ abs(vec4<i32>(global1[_wgslsmith_index_u32(global0.a.x, 14u)], -3164i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], -1i)), select(select(u_input.b, u_input.b, vec4<bool>(true, global0.c, true, global0.c)), select(u_input.b, u_input.b, vec4<bool>(global0.c, false, global0.b, true)), true)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.d, global0.e.x, 2147483647i), ~u_input.b.xxy))), func_1(global0.a));
    var var_1 = 1023f;
    var_1 = 713f;
    global1 = array<i32, 14>();
    var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1213f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1264f)))), vec2<bool>(true, 29779i == -var_0.e.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-306f, 2546f))), global0.b, func_3(~(~global0.a.x), global0.a.x).x, _wgslsmith_mod_i32(var_0.e.x, countOneBits(var_0.e.x)), global0.e >> (~(~(vec3<u32>(36352u, 33050u, 28550u) ^ vec3<u32>(u_input.c.x, 4294967295u, var_0.a.x))) % vec3<u32>(32u)));
    global1 = array<i32, 14>();
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(-617f + 319f))))), -828f));
    let x = u_input.a;
    s_output = StorageBuffer(20447u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1363f - 1000f) - _wgslsmith_f_op_f32(816f + -1106f)), _wgslsmith_f_op_f32(func_2(global0.d, _wgslsmith_sub_u32(24686u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, -1022f, 2203f, -136f))))) + 498f));
}

