struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<Struct_3, 23>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec4<f32> {
    global0 = array<vec4<i32>, 21>();
    global1 = array<Struct_3, 23>();
    let var_0 = (-10427i | u_input.b.x) | _wgslsmith_mult_i32(-firstLeadingBit(arg_1), u_input.b.x);
    global0 = array<vec4<i32>, 21>();
    var var_1 = Struct_4(_wgslsmith_mod_u32(~(u_input.c << (abs(u_input.a.x) % 32u)), 4294967295u), Struct_3(-2147483647i | var_0, firstLeadingBit(vec2<i32>(arg_1, firstTrailingBit(-36753i))), Struct_1(firstTrailingBit(-u_input.b.zw), vec2<f32>(_wgslsmith_div_f32(1497f, -155f), _wgslsmith_f_op_f32(767f - 943f))), countOneBits(~(u_input.b.zy << (u_input.d % vec2<u32>(32u)))), all(vec2<bool>(false, true))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1111f * var_1.b.c.b.x), var_1.b.c.b.x, 1000f, 983f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.b.x, var_1.b.c.b.x, -345f, var_1.b.c.b.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, -230f, 731f, _wgslsmith_f_op_f32(-1000f * var_1.b.c.b.x)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f - arg_1.x))));
    global1 = array<Struct_3, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_1.ywx + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(select(-1181f, 920f, true))), vec3<f32>(323f, arg_2.c.b.x, _wgslsmith_f_op_f32(abs(-2217f))), true)), arg_1.zzz, arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - arg_2.c.b.x))) + arg_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(false | ((~0u << (u_input.c % 32u)) < ~4294967295u), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.wwz), u_input.b.wyw), _wgslsmith_mult_i32(1i, abs(-13976i)))));
    return Struct_3(~arg_2.b.x, arg_2.b | select(abs(vec2<i32>(1i, -4360i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.b.x, -1i), vec2<i32>(arg_2.a, -12154i), vec2<i32>(u_input.b.x, -74192i)), !arg_0.yy), Struct_1(vec2<i32>(arg_2.b.x, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1468f)), _wgslsmith_f_op_f32(sign(arg_2.c.b.x)))), ~arg_2.b, arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    global1 = array<Struct_3, 23>();
    var var_0 = Struct_1(u_input.b.yy, arg_0.b);
    return Struct_3(~0i, -vec2<i32>(var_0.a.x, ~(-2147483647i >> (u_input.d.x % 32u))), func_2(vec3<bool>(any(vec2<bool>(true, false)), any(!vec4<bool>(arg_2.e, true, true, false)), all(!vec4<bool>(false, arg_2.e, arg_2.e, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2.e, _wgslsmith_add_i32(arg_2.b.x, -1i))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.c.b.x, 143f, -705f) - vec4<f32>(var_0.b.x, arg_0.b.x, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, 439f, -2215f, -1441f))))), arg_2).c, (max(vec2<i32>(arg_0.a.x, u_input.b.x), arg_2.d) & -u_input.b.xx) << (_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(u_input.c, arg_3)) % vec2<u32>(32u)), !any(select(select(vec4<bool>(false, true, arg_2.e, false), vec4<bool>(arg_2.e, false, arg_2.e, false), vec4<bool>(arg_2.e, arg_2.e, arg_2.e, arg_2.e)), vec4<bool>(arg_2.e, arg_2.e, arg_2.e, true), !vec4<bool>(arg_2.e, arg_2.e, true, arg_2.e))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> Struct_4 {
    global1 = array<Struct_3, 23>();
    global0 = array<vec4<i32>, 21>();
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, arg_0.a, _wgslsmith_clamp_u32(u_input.c, 8090u, 6998u))), ~vec3<u32>(~4294967295u, firstLeadingBit(28281u), min(10387u, 26576u))), vec3<u32>(u_input.d.x, firstTrailingBit(arg_0.a) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), ~u_input.d) % 32u), ~u_input.d.x));
    var var_1 = arg_0.b.c.b.x;
    let var_2 = Struct_4(_wgslsmith_dot_vec2_u32(var_0.zz, u_input.d), func_4(Struct_1(-(~vec2<i32>(arg_0.b.a, 1i)), vec2<f32>(-2278f, _wgslsmith_f_op_f32(min(arg_0.b.c.b.x, -635f)))), _wgslsmith_div_f32(-298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c.b.x * 564f))), func_4(Struct_1(_wgslsmith_div_vec2_i32(arg_1.xw, arg_1.wy), _wgslsmith_f_op_vec2_f32(-arg_0.b.c.b)), arg_0.b.c.b.x, Struct_3(_wgslsmith_sub_i32(arg_0.b.c.a.x, arg_0.b.c.a.x), vec2<i32>(37768i, u_input.b.x), func_2(vec3<bool>(false, arg_0.b.e, true), vec4<f32>(arg_0.b.c.b.x, -1000f, 1048f, -837f), Struct_3(arg_0.b.c.a.x, vec2<i32>(u_input.b.x, 1i), arg_0.b.c, vec2<i32>(57788i, 75450i), true)).c, -vec2<i32>(arg_1.x, arg_1.x), true), 1u), 1u));
    return Struct_4(var_0.x | min(_wgslsmith_div_u32(arg_0.a, _wgslsmith_mult_u32(u_input.c, 23901u)), 4294967295u), func_4(Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(13808i, 77553i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-24711i, arg_1.x), vec2<i32>(-17892i, 0i), vec2<i32>(48370i, 6894i))), var_2.b.c.b), arg_0.b.c.b.x, func_2(vec3<bool>(arg_0.b.e, true, any(vec4<bool>(arg_0.b.e, false, var_2.b.e, arg_0.b.e))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false, 2147483647i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.c.b.x, -871f, arg_0.b.c.b.x, 136f)))), arg_0.b), arg_0.a & arg_0.a));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> vec3<u32> {
    let var_0 = ~(~vec3<u32>(arg_1 >> (u_input.d.x % 32u), ~11781u, u_input.c)) | (vec3<u32>(_wgslsmith_mult_u32(arg_2 & arg_1, 4294967295u), ~_wgslsmith_div_u32(26395u, u_input.a.x), arg_2) | (vec3<u32>(_wgslsmith_sub_u32(arg_1, arg_2), _wgslsmith_add_u32(60142u, arg_1), reverseBits(32634u)) ^ select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, arg_1), vec3<u32>(arg_2, 22330u, u_input.d.x)), vec3<u32>(arg_1, 4294967295u, 76190u), vec3<bool>(false, true, false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f));
    let var_2 = func_5(Struct_4(firstLeadingBit(u_input.a.x), func_4(Struct_1(vec2<i32>(47330i, -14059i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 1101f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(774f, arg_0))), func_2(vec3<bool>(true, true, true), vec4<f32>(-336f, arg_0, arg_0, arg_0), global1[_wgslsmith_index_u32(arg_1, 23u)]), 0u)), vec4<i32>(-u_input.b.x, -(~select(u_input.b.x, -69082i, true)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -41535i, -20593i, u_input.b.x), abs(u_input.b)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<i32>(280i, 7103i, u_input.b.x))), _wgslsmith_sub_i32(((i32(-1i) * -2147483647i) ^ (-24158i ^ u_input.b.x)) | _wgslsmith_add_i32(u_input.b.x, 7561i), _wgslsmith_mod_i32(~_wgslsmith_add_i32(-42008i, u_input.b.x), u_input.b.x)));
    var_1 = _wgslsmith_f_op_f32(-func_5(var_2, abs(vec4<i32>(u_input.b.x & -59911i, 1i, 2147483647i | u_input.b.x, -2147483647i)), 22857i).b.c.b.x);
    var var_3 = _wgslsmith_f_op_f32(min(var_2.b.c.b.x, var_2.b.c.b.x));
    return _wgslsmith_sub_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(var_0, vec3<u32>(min(~arg_2, ~var_0.x), 50864u, 1u), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29547u, 2781u, var_0.x), var_0), ~var_0), firstTrailingBit(vec3<u32>(u_input.c, 4294967295u, 43008u)) & vec3<u32>(24301u, var_2.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1478f, -292f, false)) + _wgslsmith_f_op_f32(-980f * -315f))), 38634u, 30254u));
    global0 = array<vec4<i32>, 21>();
    let var_1 = vec2<u32>(~u_input.d.x, 1u);
    global1 = array<Struct_3, 23>();
    let var_2 = u_input.b.x;
    global1 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(4294967295u, ~u_input.a.x, 0u ^ var_0.x, _wgslsmith_sub_u32(var_1.x, 20478u)) >> ((vec4<u32>(var_0.x, 66751u, u_input.a.x, 136758u) ^ ~vec4<u32>(var_0.x, 46836u, 86330u, 64880u)) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, var_1.x, var_1.x, 3239u), ~vec4<u32>(var_0.x, u_input.d.x, u_input.c, var_0.x), countOneBits(vec4<u32>(var_0.x, u_input.a.x, 32341u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_1.x, var_1.x, 110884u), select(vec4<u32>(u_input.c, var_1.x, 1u, 1u), vec4<u32>(68337u, 15956u, var_0.x, var_1.x), vec4<bool>(true, false, true, false)), ~vec4<u32>(4294967295u, var_1.x, 1u, 89050u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(-33253i, 43565i)), _wgslsmith_sub_i32(u_input.b.x, 14252i), 2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xyx, u_input.b.wzy ^ vec3<i32>(u_input.b.x, -36128i, u_input.b.x)), vec3<i32>(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10990i, var_2, 26528i, 1i), vec4<i32>(1i, var_2, u_input.b.x, var_2)), func_4(Struct_1(u_input.b.wy, vec2<f32>(-156f, -749f)), 1474f, global1[_wgslsmith_index_u32(var_1.x, 23u)], var_1.x).c.a.x)), u_input.b.yxz), reverseBits(~var_0.zz));
}

