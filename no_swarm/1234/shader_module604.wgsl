struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37939u;

var<private> global1: array<u32, 14> = array<u32, 14>(1u, 48377u, 30838u, 48484u, 1u, 7348u, 1u, 1u, 4294967295u, 4294967295u, 1u, 0u, 72499u, 1u);

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.a.yx)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1636f)))))), -(~_wgslsmith_dot_vec2_i32(u_input.e & vec2<i32>(u_input.e.x, 35018i), u_input.e)), select(vec4<bool>(true, true, arg_2, arg_0.a.c.c.a), !vec4<bool>(!arg_3.x, arg_3.x | true, arg_3.x, arg_0.c.x), arg_0.c.x), u_input.c & ~_wgslsmith_div_i32(_wgslsmith_add_i32(0i, arg_0.a.c.c.c), -2147483647i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f + -933f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 629f) * arg_0.a.e))), true)) * arg_0.a.c.e.b.x);
    global0 = u_input.d.x;
    let var_2 = select(vec3<bool>(any(var_0.d) && true, all(var_0.d), !arg_3.x), select(select(arg_0.a.c.c.d.zwx, vec3<bool>(var_0.a, all(vec3<bool>(true, var_0.d.x, true)), false && arg_3.x), vec3<bool>(true, all(arg_0.a.c.c.d), all(vec4<bool>(true, true, arg_3.x, true)))), vec3<bool>(arg_3.x || any(var_0.d), true, arg_0.c.x || arg_0.c.x), abs(u_input.e.x) != ((arg_0.a.c.c.c | arg_0.a.c.c.e) | max(var_0.e, 1i))), !vec3<bool>(arg_0.c.x, select(var_0.a, arg_3.x, true) && all(arg_0.c), true));
    let var_3 = false;
    return select(!vec2<bool>(_wgslsmith_dot_vec3_u32(arg_0.a.c.d, arg_0.a.c.d) < arg_0.a.c.d.x, arg_3.x), select(vec2<bool>(arg_3.x, !arg_3.x), vec2<bool>(true, any(select(var_2, vec3<bool>(true, var_3, true), arg_0.a.c.e.d.x))), !(!vec2<bool>(false, var_3))), select(!vec2<bool>(var_0.a & var_2.x, var_2.x), arg_0.c.zx, !(!select(vec2<bool>(arg_3.x, var_0.d.x), vec2<bool>(var_0.a, false), vec2<bool>(arg_0.a.c.e.d.x, true)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_2;
    let var_1 = vec2<i32>(1i, 13137i);
    var var_2 = 1u;
    global0 = arg_0.a.d;
    let var_3 = _wgslsmith_mod_vec3_i32(~global2[_wgslsmith_index_u32(~1u, 27u)], firstLeadingBit(vec3<i32>(arg_2.e, _wgslsmith_dot_vec2_i32(u_input.b, u_input.e), _wgslsmith_mult_i32(var_0.c, 32378i))));
    return arg_1.x;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = all(!select(!select(arg_2.e.d.wy, vec2<bool>(true, false), arg_0), vec2<bool>(true, true), func_4(Struct_4(Struct_3(vec3<f32>(arg_2.c.b.x, arg_2.e.b.x, 991f), arg_2.c.a, arg_2, 4294967295u, -903f), arg_1, vec3<bool>(true, false, true), arg_2.c.e), func_3(Struct_4(Struct_3(arg_1, true, arg_2, arg_2.a, arg_2.c.b.x), vec3<f32>(-921f, -290f, 1501f), arg_2.e.d.wzy, u_input.e.x), u_input.d.xx, arg_2.c.a, arg_2.e.d.zz), Struct_1(arg_2.e.d.x, arg_1.zy, -23782i, vec4<bool>(arg_2.c.d.x, arg_2.e.a, arg_2.c.d.x, arg_2.c.d.x), arg_2.c.c), arg_2.c.d)));
    let var_1 = Struct_3(arg_1, true, arg_2, 15085u, arg_2.e.b.x);
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(~(~abs(0i)), _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(55302i, _wgslsmith_div_i32(var_1.c.e.e, -30182i)))));
    var var_3 = arg_1.x;
    let var_4 = Struct_2(_wgslsmith_mult_u32(var_1.c.a, ~1u), ~(~75021u), arg_2.c, arg_2.d, Struct_1(!(reverseBits(1u) == min(u_input.d.x, var_1.c.a)), vec2<f32>(-439f, _wgslsmith_f_op_f32(240f * -1713f)), -max(20143i, arg_2.e.c & var_1.c.c.e), !var_1.c.e.d, -(~arg_2.c.c)));
    return -vec2<i32>(_wgslsmith_sub_i32(abs(var_4.c.e), 29372i ^ u_input.c) | -18500i, var_4.e.e);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.d.x, ~global1[_wgslsmith_index_u32(4294967295u, 14u)]);
    var var_1 = vec4<i32>(41457i << (0u % 32u), arg_3, u_input.b.x, 9197i << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.a.c.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 14u)], 14u)], arg_2.a.c.a, u_input.a)), reverseBits(vec4<u32>(15369u, 0u, var_0.x, global1[_wgslsmith_index_u32(arg_2.a.c.d.x, 14u)]))), 1u) % 32u));
    global2 = array<vec3<i32>, 27>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(arg_0)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * _wgslsmith_div_f32(arg_0, -643f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1631f, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1152f)))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_1.x, 26951i)), vec2<i32>(1i, 1i)), var_1.ww, vec2<bool>(!arg_2.a.b, arg_1.x <= arg_0)), func_2(!any(arg_2.c.zx), _wgslsmith_f_op_vec3_f32(-arg_1), arg_2.a.c)), select(arg_2.a.c.e.d, arg_2.a.c.e.d, arg_2.c.x), ~arg_3);
    let var_3 = Struct_2(~firstTrailingBit(87525u), global1[_wgslsmith_index_u32(29694u & countOneBits(~u_input.d.x >> (arg_2.a.c.b % 32u)), 14u)], var_2, u_input.d, var_2);
    return var_2;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global0 = min(0u, 63908u);
    let var_0 = u_input.b & min(u_input.e | firstTrailingBit(abs(vec2<i32>(19410i, -5845i))), ~_wgslsmith_mult_vec2_i32(u_input.b & u_input.e, vec2<i32>(arg_1.c.c, u_input.c)));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.b.x + arg_2.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(721f * arg_2.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e.b.x, -838f) + 634f), -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f))), true, arg_1, arg_0, arg_1.e.b.x);
    global2 = array<vec3<i32>, 27>();
    let var_2 = 1199f;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-522f - 818f))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * _wgslsmith_f_op_f32(max(var_1.e, 736f))))), _wgslsmith_f_op_f32(var_1.c.c.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-535f - 1250f))))), arg_1.c.a, Struct_2(arg_0, _wgslsmith_div_u32(~min(25825u, 4294967295u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(min(1u, global1[_wgslsmith_index_u32(105649u, 14u)]), 14u)], 14u)]), var_1.c.c, arg_1.d, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f - var_1.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.c.b.x, 321f, arg_1.c.b.x))), Struct_4(Struct_3(var_1.a, arg_2.a, Struct_2(arg_0, 1u, Struct_1(var_1.b, vec2<f32>(var_1.a.x, 370f), var_1.c.c.e, arg_1.e.d, -13503i), var_1.c.d, Struct_1(arg_2.a, vec2<f32>(arg_1.e.b.x, 310f), u_input.c, var_1.c.c.d, var_1.c.c.c)), arg_1.d.x, 169f), _wgslsmith_f_op_vec3_f32(-var_1.a), var_1.c.c.d.zyw, 1i), -6885i)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.d.x, var_1.c.d.x, u_input.d.x, arg_0)), min(vec4<u32>(1u, arg_0, 4294967295u, 456u), vec4<u32>(64142u, 4294967295u, global1[_wgslsmith_index_u32(var_1.c.b, 14u)], 1637u))), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(select(827f, 218f, true)))) - -708f));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> i32 {
    global0 = arg_2;
    var var_0 = 0u;
    global0 = firstLeadingBit(func_5(1u, arg_1.a.c, Struct_1(arg_1.b.x > arg_0.b.x, arg_1.b.xy, u_input.b.x << (u_input.a % 32u), !arg_0.d, -25161i)).c.b) << ((_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2, _wgslsmith_clamp_u32(18201u, 118917u, 50806u)), ~22845u) & arg_1.a.c.d.x) % 32u);
    let var_1 = ~70896u;
    var_0 = min(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, 56788u, arg_2, 10787u), reverseBits(reverseBits(vec4<u32>(27296u, arg_2, arg_2, global1[_wgslsmith_index_u32(arg_2, 14u)])))), vec4<u32>(119852u, _wgslsmith_add_u32(var_1, _wgslsmith_clamp_u32(1u, 1u, 4294967295u)), global1[_wgslsmith_index_u32(arg_1.a.d, 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 14u)], var_1)) >> (select(var_1, arg_2, arg_1.a.b) % 32u))), ~abs(40058u) ^ var_1);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 14>();
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(false, true), _wgslsmith_mult_u32(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]) == 38923u), vec2<bool>(true, (u_input.e.x <= u_input.e.x) & true), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true)) | all(vec3<bool>(true, true, true))));
    var var_1 = -func_6(Struct_1(any(vec2<bool>(true, true)), vec2<f32>(1f, 1f), -2147483647i, select(vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), true), vec4<bool>(false, var_0.x, var_0.x, false)), -u_input.b.x), Struct_4(func_5(59103u, Struct_2(global1[_wgslsmith_index_u32(29848u, 14u)], u_input.a, Struct_1(true, vec2<f32>(-505f, -728f), 2147483647i, vec4<bool>(var_0.x, var_0.x, true, false), u_input.c), vec3<u32>(u_input.d.x, u_input.a, 1613u), Struct_1(false, vec2<f32>(1741f, 1097f), u_input.c, vec4<bool>(var_0.x, var_0.x, true, var_0.x), u_input.e.x)), func_1(353f, vec3<f32>(1000f, -1000f, 1060f), Struct_4(Struct_3(vec3<f32>(-812f, -1168f, 424f), false, Struct_2(global1[_wgslsmith_index_u32(11547u, 14u)], 277u, Struct_1(true, vec2<f32>(542f, -178f), u_input.c, vec4<bool>(true, var_0.x, var_0.x, true), -2147483647i), vec3<u32>(u_input.d.x, u_input.a, u_input.a), Struct_1(var_0.x, vec2<f32>(1000f, 120f), 39084i, vec4<bool>(var_0.x, var_0.x, var_0.x, false), -2147483647i)), 0u, 270f), vec3<f32>(-399f, 1804f, -525f), vec3<bool>(var_0.x, var_0.x, true), u_input.c), u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, 727f, 1000f) + vec3<f32>(511f, 937f, 1481f))), select(!vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), firstLeadingBit(u_input.b.x)), 1u);
    let var_2 = func_5(u_input.a, Struct_2(15145u, u_input.a, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, -379f)), vec2<f32>(-1000f, 1662f))), func_5(u_input.a, Struct_2(7196u, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], Struct_1(true, vec2<f32>(2025f, -1000f), 1i, vec4<bool>(false, var_0.x, true, false), u_input.e.x), vec3<u32>(u_input.a, 51189u, u_input.a), Struct_1(true, vec2<f32>(-197f, -140f), u_input.c, vec4<bool>(var_0.x, var_0.x, var_0.x, true), 1i)), Struct_1(false, vec2<f32>(694f, -927f), u_input.e.x, vec4<bool>(true, var_0.x, true, false), -2147483647i)).c.c.e ^ -1i, !(!vec4<bool>(true, var_0.x, false, false)), 15836i), _wgslsmith_mult_vec3_u32((vec3<u32>(u_input.d.x, u_input.a, 0u) | u_input.d) ^ u_input.d, vec3<u32>(~1u, ~1u, ~0u)), Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 1086f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-412f, 227f), vec2<f32>(712f, -1062f), vec2<bool>(true, false)))), u_input.b.x, select(vec4<bool>(false, false, false, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, false), true), 1i)), func_5(~u_input.a, func_5(_wgslsmith_div_u32(u_input.d.x, select(43502u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], false)), func_5(u_input.d.x & 33639u, func_5(0u, Struct_2(44679u, 1u, Struct_1(var_0.x, vec2<f32>(277f, 514f), u_input.e.x, vec4<bool>(var_0.x, true, true, var_0.x), u_input.e.x), vec3<u32>(67636u, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], 19462u), Struct_1(false, vec2<f32>(1122f, -264f), u_input.e.x, vec4<bool>(var_0.x, true, var_0.x, false), u_input.e.x)), Struct_1(var_0.x, vec2<f32>(362f, -723f), 51483i, vec4<bool>(true, true, true, var_0.x), u_input.b.x)).c, func_5(u_input.d.x, Struct_2(1u, 4294967295u, Struct_1(var_0.x, vec2<f32>(-867f, 1280f), 31203i, vec4<bool>(var_0.x, false, var_0.x, false), 1i), u_input.d, Struct_1(var_0.x, vec2<f32>(-886f, 1206f), u_input.c, vec4<bool>(false, var_0.x, true, var_0.x), u_input.e.x)), Struct_1(var_0.x, vec2<f32>(737f, 428f), -33815i, vec4<bool>(true, false, var_0.x, var_0.x), -2147483647i)).c.e).c, Struct_1(func_3(Struct_4(Struct_3(vec3<f32>(1864f, -769f, -1000f), var_0.x, Struct_2(0u, 0u, Struct_1(false, vec2<f32>(-277f, 351f), u_input.b.x, vec4<bool>(var_0.x, true, true, var_0.x), u_input.b.x), vec3<u32>(0u, 16735u, 0u), Struct_1(var_0.x, vec2<f32>(-1327f, -1858f), -79348i, vec4<bool>(var_0.x, var_0.x, true, var_0.x), u_input.b.x)), 4294967295u, 636f), vec3<f32>(216f, -333f, -617f), vec3<bool>(false, var_0.x, var_0.x), -23151i), vec2<u32>(u_input.d.x, u_input.a), var_0.x, vec2<bool>(var_0.x, var_0.x)).x, vec2<f32>(1769f, 2175f), ~(-1i), vec4<bool>(true, var_0.x, var_0.x, false), u_input.c)).c, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1776f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1884f, -1135f, 1203f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, 750f, 315f) + vec3<f32>(-180f, -147f, -198f))), Struct_4(func_5(u_input.a, Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 46521u, Struct_1(var_0.x, vec2<f32>(-1000f, 646f), u_input.b.x, vec4<bool>(false, true, var_0.x, var_0.x), u_input.b.x), vec3<u32>(u_input.d.x, 41865u, 17097u), Struct_1(false, vec2<f32>(-916f, -874f), -1i, vec4<bool>(var_0.x, var_0.x, var_0.x, true), u_input.b.x)), Struct_1(var_0.x, vec2<f32>(-485f, -1000f), -47423i, vec4<bool>(var_0.x, true, false, var_0.x), u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1224f, -1118f, 2831f)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), i32(-1i) * -28242i), ~(~u_input.c))).c.e).c.c;
    let var_3 = select(vec2<bool>(true, !var_2.d.x), var_2.d.zw, var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(~u_input.a), 14u)], 14u)], Struct_2(func_5(25596u, Struct_2(global1[_wgslsmith_index_u32(1u, 14u)], 4294967295u, Struct_1(var_2.a, var_2.b, var_2.e, var_2.d, 41483i), vec3<u32>(19448u, 0u, u_input.d.x), var_2), var_2).d, 27291u, var_2, ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(16514u, 14u)], u_input.a), var_2), Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1479f, var_2.b.x)), _wgslsmith_clamp_i32(var_2.e, -1i, 29156i), var_2.d, 19056i << (u_input.a % 32u))).a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))));
}

