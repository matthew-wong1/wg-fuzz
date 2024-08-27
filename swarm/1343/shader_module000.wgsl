struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 1>;

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

var<private> global3: vec3<i32> = vec3<i32>(4776i, 0i, -21927i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 100810i, -28111i), _wgslsmith_mult_vec4_i32(~vec4<i32>(34082i, -19210i, arg_0.d, u_input.c), vec4<i32>(23692i, 0i, arg_0.d, -43262i) >> (vec4<u32>(u_input.e, 8653u, 4294967295u, 0u) % vec4<u32>(32u)))), -max(global3.x ^ -2147483647i, global3.x), _wgslsmith_div_i32(~reverseBits(-6628i), arg_0.d), 1i), arg_1.a, arg_0.a, _wgslsmith_f_op_f32(-arg_1.a), arg_1.a);
    let var_1 = vec2<bool>(var_0.c, var_0.a.x >= 2147483647i);
    global0 = true;
    let var_2 = vec3<u32>(u_input.d, 1u, 9034u) << (vec3<u32>(u_input.a.x, abs(~(~u_input.d)), select(68888u, u_input.d, arg_0.b)) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(select(2147483647i ^ global3.x, global3.x, !var_1.x), min(global3.x, ~var_0.a.x), var_0.a.x, ~u_input.c), var_0.a), _wgslsmith_f_op_f32(-arg_1.a), var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a * arg_1.a))), arg_1.a);
    return var_0.a.xwx;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    global3 = _wgslsmith_sub_vec3_i32((func_3(Struct_2(false, false, vec3<i32>(-5876i, 1i, arg_0), -1i), Struct_3(-2144f)) << (~max(vec3<u32>(6506u, arg_1, u_input.b), vec3<u32>(68433u, arg_1, u_input.b)) % vec3<u32>(32u))) & ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -23403i, arg_0), vec3<i32>(global3.x, -24829i, 2147483647i), vec3<i32>(-45804i, arg_0, -2147483647i))), vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(0i, global3.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global3.x), global3.xz)), 35295i, ~(-12610i)));
    var var_0 = vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, u_input.c), 0i) | 2147483647i), global3.x);
    global0 = global1[_wgslsmith_index_u32(~max(~(~(~u_input.e)), u_input.d), 1u)];
    var var_1 = reverseBits(min(select(vec4<i32>(100120i, arg_0, -16307i, u_input.c) & vec4<i32>(arg_0, var_0.x, 0i, 15154i), vec4<i32>(var_0.x, 34677i, var_0.x, 2147483647i) & vec4<i32>(20766i, 0i, 19222i, u_input.c), vec4<bool>(global2[_wgslsmith_index_u32(25262u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(83483u, 1u)], true)), ~(vec4<i32>(-2147483647i, var_0.x, 0i, 15973i) << (u_input.a % vec4<u32>(32u))))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 1u, ~firstTrailingBit(4294967295u), 34085u), ~(~u_input.a)) % vec4<u32>(32u));
    var var_2 = -_wgslsmith_mult_i32(2147483647i, -select(-1i, abs(u_input.c), !global2[_wgslsmith_index_u32(1u, 2u)]));
    return Struct_2(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 19633u, 72427u, arg_1), u_input.a), u_input.a) >= 4294967295u, false, ~var_1.xxw, arg_0);
}

fn func_1() -> bool {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_add_u32(~(~u_input.b >> (~54715u % 32u)), ~(~(~46537u))) != u_input.a.x;
    var var_2 = func_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(-10829i & u_input.c, ~_wgslsmith_mult_i32(0i, 1i)), 1i), u_input.b);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1679f))));
    let var_4 = u_input.d;
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_4 >> (17113u % 32u), var_4), 1u)];
}

fn func_4(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(187f, -200f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f), -741f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1494f + _wgslsmith_f_op_f32(f32(-1f) * -1852f)))), !select(vec4<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 1u)], false, global2[_wgslsmith_index_u32(u_input.b, 2u)])), all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 2u)])), true, false), vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_0)), true, global1[_wgslsmith_index_u32(~u_input.d, 1u)], all(vec3<bool>(global1[_wgslsmith_index_u32(18792u, 1u)], arg_0, arg_0))), !(!arg_0)), Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(59736i, 14660i, 8398i, 23250i), vec4<i32>(global3.x, u_input.c, 0i, u_input.c)) & vec4<i32>(~0i, global3.x >> (u_input.e % 32u), global3.x, -5157i | u_input.c), _wgslsmith_div_f32(1306f, 1176f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f * -902f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1405f) * _wgslsmith_f_op_f32(f32(-1f) * -412f)), 1f)));
    let var_1 = select(var_0.b.yyx, var_0.b.xww, !any(var_0.b.wwy));
    let var_2 = firstTrailingBit(vec4<u32>(u_input.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, 44332u), ~16353u), firstTrailingBit(min(_wgslsmith_clamp_u32(u_input.d, u_input.d, 4294967295u), u_input.e)), 58582u));
    global0 = !any(vec4<bool>(!(!arg_0), select(true, all(var_0.b), global1[_wgslsmith_index_u32(u_input.e, 1u)] || arg_0), _wgslsmith_f_op_f32(-1468f - var_0.c.d) < _wgslsmith_f_op_f32(ceil(425f)), all(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 1u)], true))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) - _wgslsmith_f_op_f32(sign(394f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(337f - -275f) - _wgslsmith_f_op_f32(f32(-1f) * -1227f))) + -1000f));
    return var_0.b;
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<bool, 1>();
    let var_0 = max(-(~global3.x), _wgslsmith_clamp_i32(-2147483647i, global3.x ^ _wgslsmith_clamp_i32(7035i, _wgslsmith_div_i32(-1i, -17660i), 1i), global3.x));
    var var_1 = vec2<bool>(any(arg_0.xw), true);
    global3 = vec3<i32>(-(~(_wgslsmith_mod_i32(var_0, -1i) >> (u_input.a.x % 32u))), select(~_wgslsmith_mod_i32(min(24388i, 2147483647i), func_3(Struct_2(global2[_wgslsmith_index_u32(16436u, 2u)], true, vec3<i32>(0i, u_input.c, global3.x), 1i), Struct_3(411f)).x), var_0, true), func_3(Struct_2(!global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 1u)], true, countOneBits(vec3<i32>(2147483647i, -21026i, -54351i)), 11154i), Struct_3(1f)).x);
    global1 = array<bool, 1>();
    return Struct_1(max(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0, u_input.c, 6516i), vec4<i32>(24780i, var_0, 46343i, u_input.c)), vec4<i32>(global3.x, reverseBits(var_0), ~(-4103i), -1i)) >> (_wgslsmith_clamp_vec4_u32(u_input.a, min(~u_input.a, u_input.a >> (vec4<u32>(20997u, 4294967295u, u_input.e, u_input.a.x) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.e, u_input.b))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1321f, -810f) * _wgslsmith_div_f32(-1854f, 628f)) - _wgslsmith_f_op_f32(select(-1134f, -1412f, select(false, false, global2[_wgslsmith_index_u32(u_input.e, 2u)])))), -242f, true)), all(select(select(arg_0.zw, func_4(global2[_wgslsmith_index_u32(u_input.d, 2u)]).zx, !var_1.x), arg_0.ww, vec2<bool>(any(vec2<bool>(true, arg_0.x)), true))), -526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1710f * -1856f) + 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(438f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = func_5(select(func_4(!func_1()), !(!func_4(global1[_wgslsmith_index_u32(u_input.d, 1u)])), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1406f, var_1.e, 989f, var_1.e) + vec4<f32>(517f, -1099f, var_1.d, var_1.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, var_1.d, var_1.d, var_1.e) * vec4<f32>(var_1.d, var_1.e, 1705f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, 204f, var_1.d, 698f))), true)));
    var var_3 = func_5(select(vec4<bool>(all(vec3<bool>(var_1.c, global1[_wgslsmith_index_u32(u_input.e, 1u)], global1[_wgslsmith_index_u32(58223u, 1u)])), var_1.c, true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(64134u, 1u) ^ ~u_input.b, 1u)]), select(vec4<bool>(false, true, true, var_1.b >= 1232f), func_4(all(vec4<bool>(var_1.c, var_1.c, global2[_wgslsmith_index_u32(26823u, 2u)], true))), vec4<bool>(true, true, true, true)), select(func_4(!global2[_wgslsmith_index_u32(13880u, 2u)]), vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 2u)], var_1.c, global1[_wgslsmith_index_u32(86616u, 1u)], var_1.c)), func_4(global2[_wgslsmith_index_u32(1u, 2u)]).x, true, false), select(func_4(global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), func_4(false), false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.d, var_1.e))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.ww, 1i, func_5(vec4<bool>((global1[_wgslsmith_index_u32(u_input.b, 1u)] & global2[_wgslsmith_index_u32(1u, 2u)]) || true, var_3.c, !var_1.c && all(vec3<bool>(var_1.c, false, false)), func_2(-30038i, 11087u).a | true)).b, var_3.a.x, 23892i);
}

