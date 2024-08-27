struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -182f))) * _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 295f) - _wgslsmith_div_f32(240f, 431f)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<i32, 3>();
    let var_0 = arg_0;
    let var_1 = ~(~(~29897u)) & (u_input.d ^ ~(~25420u));
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2125f, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.a)))), var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, arg_0.a, -632f, var_0.a))) + vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(ceil(1829f)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 3u)], 1690f, vec4<f32>(-1712f, -1697f, 482f, -985f), 1580f)), var_0.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_0.a, 1592f, 1213f)))), vec4<f32>(289f, -2285f, -1218f, 554f))), _wgslsmith_mod_u32(var_1, ~(~_wgslsmith_div_u32(u_input.d, arg_0.c.x))), vec3<u32>(abs(1u) >> (_wgslsmith_add_u32(u_input.a.x, ~var_1) % 32u), ~abs(~var_1), arg_0.c.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(~var_2.e.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.c.ww, var_2.c.ww)), _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(var_1, 3u)], _wgslsmith_mod_i32(u_input.b, u_input.b)))))) + _wgslsmith_div_f32(-1149f, 1000f));
    return _wgslsmith_add_u32((~(~26978u) & _wgslsmith_dot_vec3_u32(vec3<u32>(50621u, 11788u, var_1), ~arg_0.c.xxz)) & ~arg_0.c.x, _wgslsmith_div_u32(1u, ~10852u));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.e.yy;
    var_0 = abs(~u_input.a);
    global0 = array<i32, 3>();
    var var_1 = ~(-vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 1u), 3u)], _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(55972u, 3u)], global0[_wgslsmith_index_u32(max(arg_3.e.x, 11901u), 3u)]), countOneBits(2147483647i) & u_input.b, _wgslsmith_mod_i32(abs(39487i), -9749i)));
    let var_2 = u_input.d;
    return Struct_1(621f, !select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec2<bool>(true, true)))), vec4<u32>(~u_input.d, ~_wgslsmith_sub_u32(u_input.a.x, var_0.x), ~(~firstLeadingBit(413u)), _wgslsmith_sub_u32(arg_3.d, arg_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(func_1(u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(816f, -397f) * vec2<f32>(1401f, 652f)), 101735i))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1472f * -1000f))));
    var var_1 = func_4(var_0.x, Struct_2(var_0, func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2304f), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec4<u32>(u_input.d, u_input.d, u_input.a.x, 21567u))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1820f, -2570f, -449f, -699f))), 4294967295u, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 5182u, 26532u) << (select(vec3<u32>(0u, u_input.d, u_input.a.x), vec3<u32>(u_input.d, 1u, 0u), true) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.a.x, 9347u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.d, 1u) % vec3<u32>(32u))))), -1497f, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(var_0.x - -567f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1738f, 207f)))), ~select(12141u, 1u & u_input.a.x, 4294967295u == u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1220f, var_0.x)), -373f), 1u, vec3<u32>(~countOneBits(u_input.a.x), 0u, 4294967295u)));
    let var_2 = u_input.c;
    let var_3 = abs(u_input.d | (firstTrailingBit(_wgslsmith_mult_u32(var_1.c.x, 32290u)) | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.x, 0u, u_input.a.x), vec3<u32>(0u, 39428u, var_1.c.x)), ~var_1.c.ywz)));
    var_1 = func_4(_wgslsmith_f_op_f32(var_0.x - 371f), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, var_1.a)), vec2<f32>(-1524f, -1696f), all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))))), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.c.x, 52471u), var_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-971f * var_1.a) * -797f), -200f, 1000f, 415f), func_4(_wgslsmith_f_op_f32(-var_0.x), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -808f) * var_0), _wgslsmith_mult_u32(var_3, u_input.a.x), vec4<f32>(var_1.a, 1693f, var_0.x, -1680f), u_input.a.x, ~var_1.c.xzz), _wgslsmith_f_op_f32(-var_1.a), Struct_2(vec2<f32>(var_1.a, 1318f), 1u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(117f, var_1.a, var_0.x, 330f), vec4<f32>(-939f, var_1.a, 331f, -398f), vec4<bool>(true, true, true, var_1.b.x))), ~u_input.d, var_1.c.xyy)).c.x, _wgslsmith_mult_vec3_u32(var_1.c.yzw, vec3<u32>(~36795u, ~1u, ~u_input.d))), -1000f, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1809f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_u32(95568u, ~34804u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1022f, var_0.x, var_0.x, 179f), vec4<f32>(var_0.x, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.b.x, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, 163f, var_1.a))))), _wgslsmith_add_u32(22667u, 1u >> (u_input.a.x % 32u)), select(var_1.c.zwy, vec3<u32>(20264u, var_1.c.x, var_3), var_1.b.x && false) | abs(vec3<u32>(20606u, 4294967295u, var_3))));
    let var_4 = 79549u >= u_input.d;
    var var_5 = !var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~22506u, vec2<i32>(i32(-1i) * -2147483647i, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 47978u, var_1.c.x), var_1.c.xwx), max(var_3, 1u)), firstTrailingBit(_wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(var_3, 3u)], 35593i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -36492i, u_input.c.x, var_2.x), vec4<i32>(-2147483647i, 2147483647i, var_2.x, var_2.x), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_1.c.x, 3u)], var_2.x, 0i)))));
}

