struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-485f, -723f, -1817f);

var<private> global1: vec4<f32>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(1243f, 732f, 1000f, 1638f), vec4<f32>(914f, 596f, -1145f, -377f), vec4<f32>(-280f, -1370f, 1403f, -777f), vec4<f32>(140f, -569f, 1176f, 1297f), vec4<f32>(1000f, 197f, 619f, 242f), vec4<f32>(-2737f, -1118f, 776f, -282f), vec4<f32>(-961f, 118f, 348f, 241f), vec4<f32>(-441f, -338f, -338f, -1989f));

var<private> global4: Struct_4 = Struct_4(-12499i, 1013f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(false, arg_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zx), global1.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yz) - global1.wx), 46618u);
    let var_1 = Struct_1(arg_0.b.a, !select(select(select(vec3<bool>(var_0.b.b.x, false, false), var_0.b.b, false), !vec3<bool>(true, arg_0.a, var_0.a), !vec3<bool>(false, arg_0.a, arg_0.b.b.x)), vec3<bool>(!arg_0.a, all(vec3<bool>(false, var_0.b.b.x, true)), var_0.a), var_0.b.b.x));
    var var_2 = vec3<bool>(false, arg_0.b.b.x && true, all(vec4<bool>((global4.a << (u_input.c.x % 32u)) == -2147483647i, ~arg_1 >= ~u_input.c.x, ~u_input.c.x != countOneBits(0u), var_0.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec4<f32>(-690f, 523f, 925f, global4.b)))), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(var_0.e, 8u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(2767f)), global4.b, arg_0.b.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(21031u, 8u)] - global3[_wgslsmith_index_u32(4294967295u, 8u)]), global3[_wgslsmith_index_u32(abs(97339u), 8u)], !vec4<bool>(arg_0.b.b.x, var_2.x, var_1.b.x, true))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -622f), global0.x, -1982f)))));
    var_2 = !(!select(vec3<bool>(true && var_1.b.x, all(arg_0.b.b), arg_0.d.x == -1341f), !select(arg_0.b.b, var_0.b.b, var_0.b.b), any(vec2<bool>(false, true))));
    return select(var_0.b.b, arg_0.b.b, true);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1260f)), func_3(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2048f), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, global1.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.zy - vec2<f32>(global1.x, global1.x)))), _wgslsmith_mod_u32(reverseBits(4325u), abs(4294967295u))), ~1u ^ u_input.d));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~u_input.d, 8u)] + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a - -688f), _wgslsmith_f_op_f32(700f + global1.x), _wgslsmith_f_op_f32(max(1456f, -1972f)), _wgslsmith_div_f32(-1371f, var_0.a))))));
    let var_1 = !(true | any(select(select(var_0.b, var_0.b, var_0.b), var_0.b, all(vec3<bool>(false, var_0.b.x, true)))));
    var var_2 = 31908i;
    global3 = array<vec4<f32>, 8>();
    return ~(_wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global4.a, u_input.b.x, -1790i), vec4<i32>(-2147483647i, u_input.b.x, global4.a, 57254i)), vec4<i32>(u_input.b.x >> (3998u % 32u), ~global4.a, u_input.a ^ u_input.a, firstLeadingBit(35704i))) << (u_input.c % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = arg_2;
    var var_1 = vec4<u32>(u_input.c.x, 744u, ~max(~(~u_input.d), u_input.c.x), 61264u);
    var var_2 = !select(!arg_2 | all(vec2<bool>(var_0, true)), false, arg_2) && true;
    let var_3 = min(1u, select(0u, firstTrailingBit(~4294967295u), any(!vec2<bool>(var_0, arg_2))) << (~((33746u << (var_1.x % 32u)) & 1u) % 32u));
    global2 = max(max(-(~countOneBits(u_input.b.x)), arg_0.x), -u_input.a);
    return _wgslsmith_f_op_f32(step(1000f, 698f));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.xww, _wgslsmith_f_op_vec3_f32(global1.zzy - vec3<f32>(-2683f, -1704f, -693f)))), global1.xzz) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global0.x, -1204f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 260f, arg_1), vec3<f32>(global1.x, global4.b, -661f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -1000f) * vec3<f32>(-1000f, 592f, global4.b)))), all(vec2<bool>(false, false)) & all(vec4<bool>(true, true, true, true)))))));
    global3 = array<vec4<f32>, 8>();
    var var_0 = u_input.c;
    global4 = Struct_4(countOneBits(global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)));
    let var_1 = false;
    return Struct_4(global4.a, _wgslsmith_f_op_f32(sign(arg_2)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_4(i32(-1i) * -63892i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1520f)))));
    global4 = func_5(u_input.d, _wgslsmith_f_op_f32(func_4(func_2(), vec4<u32>(6640u, ~4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.d), firstTrailingBit(u_input.d)) | ((u_input.c >> (u_input.c % vec4<u32>(32u))) | ~u_input.c), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, -870f)), vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, 36799u >> (u_input.d % 32u))), u_input.c.x ^ ~24925u));
    let var_1 = false;
    return Struct_2(false, Struct_1(global0.x, !vec3<bool>(false && arg_0, false, !arg_0)), global0.zy, _wgslsmith_f_op_vec2_f32(abs(global1.yy)), ~reverseBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(global0.x, global4.b, all(vec2<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))))));
    var var_1 = func_1(false);
    var var_2 = Struct_2(!(!(!(false || var_1.b.b.x))), var_1.b, _wgslsmith_f_op_vec2_f32(global1.yw + _wgslsmith_f_op_vec2_f32(max(global1.yx, _wgslsmith_f_op_vec2_f32(trunc(global0.xx))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-501f, _wgslsmith_f_op_f32(func_4(func_2(), firstLeadingBit(u_input.c), true)))), ~(~_wgslsmith_clamp_u32(u_input.d, u_input.d << (u_input.d % 32u), firstTrailingBit(var_1.e))));
    var var_3 = _wgslsmith_mod_vec2_i32(~firstLeadingBit(-u_input.b.yy) | (~vec2<i32>(31101i, -1276i) ^ vec2<i32>(-global4.a, -10351i)), u_input.b.yz);
    var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_1.d.x)), vec3<bool>(any(!vec4<bool>(false, true, var_2.a, var_2.a)), any(select(vec4<bool>(var_2.b.b.x, var_1.b.b.x, true, var_1.b.b.x), vec4<bool>(false, true, var_2.a, true), var_2.b.b.x)), var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global4.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(var_2.b.a, global4.b))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a, global4.b) * vec2<f32>(global1.x, global4.b)) * vec2<f32>(1107f, 121f)) * vec2<f32>(var_1.c.x, global0.x)), vec2<f32>(1262f, global1.x))), 0u);
    var var_4 = _wgslsmith_f_op_f32(max(global4.b, -824f));
    global4 = func_5(89713u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), global1.x, ~_wgslsmith_add_vec2_u32(u_input.c.wz, ~u_input.c.xx >> (u_input.c.wx % vec2<u32>(32u))));
    var var_5 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1472f, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 45397i, 0i, 0i), -vec4<i32>(u_input.a, -2147483647i, 1i, 19929i)), vec4<u32>(~u_input.d, _wgslsmith_div_u32(97966u, u_input.d), firstLeadingBit(u_input.d), 1u), func_1(false).b.b.x)), 138f), global1.xyy));
    var var_6 = firstTrailingBit(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f + var_5.x) - _wgslsmith_f_op_f32(func_4(vec4<i32>(-1i, var_3.x << (4294967295u % 32u), -var_3.x, -global4.a), abs(~vec4<u32>(var_1.e, 9142u, 61284u, 1u)), var_1.a))), _wgslsmith_add_u32(abs(~_wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.zz)), (_wgslsmith_div_u32(1u, var_2.e) ^ abs(var_2.e)) & 96997u), _wgslsmith_f_op_f32(global1.x * global4.b), vec3<u32>(~1u, 61725u, 86899u), -vec3<i32>(countOneBits(1i), var_3.x & (i32(-1i) * -2147483647i), 1i));
}

