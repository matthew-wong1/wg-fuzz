struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: vec4<u32> = vec4<u32>(9891u, 47644u, 329u, 14764u);

var<private> global1: Struct_2 = Struct_2(true, Struct_1(vec2<f32>(590f, 412f), 1000f, i32(-2147483648), vec3<i32>(0i, -1i, 35270i)));

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-500f, 1152f, 619f), vec3<f32>(324f, 378f, 135f), vec3<f32>(-216f, -1786f, 2134f), vec3<f32>(-1203f, -1919f, 1396f), vec3<f32>(-672f, 288f, 107f), vec3<f32>(746f, 255f, -231f), vec3<f32>(613f, 974f, 550f), vec3<f32>(547f, 741f, -1422f), vec3<f32>(762f, 1333f, 2609f), vec3<f32>(1167f, -953f, 441f), vec3<f32>(525f, -1156f, 247f), vec3<f32>(-216f, -424f, 1855f), vec3<f32>(-765f, 959f, 1004f), vec3<f32>(-147f, -589f, 372f), vec3<f32>(146f, -300f, -1000f), vec3<f32>(-169f, 722f, 1883f), vec3<f32>(-917f, -728f, 706f), vec3<f32>(1000f, 597f, -1892f), vec3<f32>(786f, -296f, 644f));

var<private> global3: vec2<i32>;

var<private> global4: array<bool, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    global0 = countOneBits(abs(vec4<u32>(u_input.c & _wgslsmith_sub_u32(u_input.c, 1u), _wgslsmith_mod_u32(18671u, min(16934u, 58002u)), u_input.c, u_input.c)));
    global4 = array<bool, 13>();
    var var_0 = u_input.c;
    let var_1 = !vec2<bool>(global1.a || (false && (global3.x > 28951i)), !(!(global1.b.b == 192f)));
    global4 = array<bool, 13>();
    return (-abs(global1.b.d.x) << (_wgslsmith_div_u32(global0.x, ~975u) % 32u)) != global3.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<f32> {
    global4 = array<bool, 13>();
    return vec4<f32>(-142f, 575f, -1182f, global1.b.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec2<f32> {
    global3 = -(~u_input.b);
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, global0.x, global0.x, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 73461u, 108350u, global0.x), vec4<u32>(u_input.c, global0.x, global0.x, global0.x))), vec4<u32>(u_input.c, u_input.c, global0.x, 0u) >> (vec4<u32>(u_input.c, global0.x, u_input.c, global0.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(global0.x, global0.x), _wgslsmith_clamp_u32(4294967295u, u_input.c, global0.x), max(1u, 51986u), firstLeadingBit(u_input.c)), ~select(vec4<u32>(43425u, 38168u, u_input.c, 5934u), vec4<u32>(0u, 0u, u_input.c, 18436u), vec4<bool>(global1.a, global1.a, true, false)), select(vec4<bool>(global1.a, true, global4[_wgslsmith_index_u32(global0.x, 13u)], global1.a), select(vec4<bool>(global1.a, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 13u)], false, global4[_wgslsmith_index_u32(u_input.c, 13u)], false)), !vec4<bool>(global1.a, true, false, global1.a))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(global0.x, global0.x, global0.x, 50742u), vec4<u32>(43029u, global0.x, 50039u, global0.x)) ^ vec4<u32>(u_input.c, 36440u, 1u, 80027u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -293f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.b.a)), global1.b.a))), all(vec3<bool>(all(select(vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 13u)], global1.a, false, global4[_wgslsmith_index_u32(21691u, 13u)]), vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 13u)], true, global1.a, false), vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 13u)], global1.a, false, global1.a))), true, _wgslsmith_f_op_f32(global1.b.b + arg_1.x) >= 1598f))));
    let var_2 = !vec2<bool>(!all(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 13u)], global1.a, global4[_wgslsmith_index_u32(var_0.x, 13u)])), any(vec3<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(var_0.x, 13u)], true, global4[_wgslsmith_index_u32(var_0.x, 13u)])), select(global4[_wgslsmith_index_u32(var_0.x, 13u)], global4[_wgslsmith_index_u32(4294967295u, 13u)], true), global4[_wgslsmith_index_u32(4294967295u, 13u)] == global4[_wgslsmith_index_u32(0u, 13u)])));
    global1 = Struct_2(any(!(!select(var_2, vec2<bool>(var_2.x, false), false))), Struct_1(arg_0.zz, _wgslsmith_f_op_f32(abs(-478f)), -1i, global1.b.d));
    return var_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global1 = Struct_2(false | !(!global4[_wgslsmith_index_u32(global0.x, 13u)]), global1.b);
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b, arg_1.x, 1000f, global1.b.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1161f, arg_1.x, -1000f) - vec4<f32>(767f, 113f, 1000f, global1.b.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.a.x, 1043f, arg_1.x, -750f), vec4<f32>(673f, arg_1.x, -269f, -420f), vec4<bool>(global1.a, arg_0.x, arg_0.x, global4[_wgslsmith_index_u32(1670u, 13u)])))))).x * _wgslsmith_f_op_f32(abs(1223f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2185f), -2101f)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -961f) + _wgslsmith_f_op_f32(abs(487f))), global1.b.a.x, arg_1.x);
    let var_2 = global1.b;
    var var_3 = ~6951u;
    return global1.b;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_5(!vec2<bool>(true, !func_2(global1.a, global3.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, arg_0.b, global1.b.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(false, global1.b), Struct_2(true, arg_0)))))))), global0.wxy);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global1.b.a.x, -1055f), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, 903f, -1502f, arg_0.a.x))), vec4<f32>(-583f, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(-514f + global1.b.a.x), -1863f))).x, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(956f)))), vec4<f32>(-1159f, global1.b.b, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))))), !(!(!vec4<bool>(global1.a, true, true, false)))));
    var var_2 = !select(vec3<bool>(global4[_wgslsmith_index_u32(8141u, 13u)], global1.a, true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(1u, 13u)], global1.a, true)), !vec3<bool>(global1.a, true, false), vec3<bool>(global1.a, global4[_wgslsmith_index_u32(countOneBits(global0.x), 13u)], any(vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 13u)], global4[_wgslsmith_index_u32(global0.x, 13u)], global4[_wgslsmith_index_u32(u_input.c, 13u)], false)))), false | any(vec3<bool>(true, true, true)));
    var var_3 = 7089i;
    var var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return Struct_2(var_2.x | !(!(global0.x <= 39624u)), Struct_1(global1.b.a, _wgslsmith_f_op_f32(abs(var_0.a.x)), 1i, global1.b.d));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    global4 = array<bool, 13>();
    let var_0 = false;
    global0 = vec4<u32>(reverseBits(1042u), _wgslsmith_add_u32(~global0.x, 64001u), ~(~_wgslsmith_mult_u32(43822u, ~u_input.c)), ~(~1u));
    var var_1 = global0.wzw;
    var var_2 = u_input.a >> (~vec4<u32>(4294967295u, ~(~u_input.c), _wgslsmith_add_u32(u_input.c, ~var_1.x), 2541u) % vec4<u32>(32u));
    return func_1(global1.b).b.a.x;
}

fn func_7(arg_0: Struct_1) -> bool {
    let var_0 = ~u_input.a.xz;
    global3 = arg_0.d.yx;
    var var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, -674f))), func_1(Struct_1(global1.b.a, -342f, arg_0.d.x, vec3<i32>(u_input.b.x, -2880i, -2147483647i))).b.b, global1.b.c, -vec3<i32>(global3.x, 657i, 0i) | vec3<i32>(30451i, 48472i, var_0.x))).b).b;
    global3 = vec2<i32>(_wgslsmith_dot_vec2_i32((_wgslsmith_mult_vec2_i32(var_1.d.zy, vec2<i32>(u_input.a.x, arg_0.c)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))) >> (firstTrailingBit(vec2<u32>(19636u, 4294967295u)) % vec2<u32>(32u)), -vec2<i32>(16079i, 5874i)), firstLeadingBit(-1i));
    var_1 = func_5(!vec2<bool>(!func_1(Struct_1(vec2<f32>(global1.b.a.x, var_1.b), 900f, -44848i, vec3<i32>(var_1.c, -1i, -2147483647i))).a, any(!vec4<bool>(global1.a, global4[_wgslsmith_index_u32(global0.x, 13u)], global4[_wgslsmith_index_u32(u_input.c, 13u)], global1.a))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(false, arg_0), func_1(global1.b))).x, _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1883f, arg_0.b))))), ~_wgslsmith_clamp_vec3_u32(global0.xww, max(global0.yxz, vec3<u32>(global0.x, u_input.c, 97820u)) | select(vec3<u32>(5695u, 0u, 0u), vec3<u32>(u_input.c, 1u, 31247u), global1.a), ~vec3<u32>(134143u, global0.x, u_input.c) << (countOneBits(vec3<u32>(u_input.c, 0u, u_input.c)) % vec3<u32>(32u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.b.a, 351f, ~(~global1.b.c), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(global3.x, 6918i, 2147483647i)), u_input.a.ywy) & u_input.a.yxw);
    let var_1 = func_7(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b - 792f) - -234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f * -1729f) * _wgslsmith_f_op_f32(1715f * global1.b.b))), _wgslsmith_f_op_f32(func_6(vec3<f32>(global1.b.b, _wgslsmith_f_op_f32(var_0.b + 1000f), 118f), func_1(Struct_1(vec2<f32>(-1233f, 1000f), var_0.b, 0i, vec3<i32>(17951i, -74991i, 2147483647i))), _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(global1.b.a.x, 1844f, 1000f, var_0.a.x), vec4<f32>(-305f, -1086f, 1788f, 669f))).x)), global1.b.d.x, func_5(select(!vec2<bool>(true, global1.a), !vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 13u)], global1.a), true), _wgslsmith_f_op_vec4_f32(func_3(func_1(Struct_1(vec2<f32>(-772f, -134f), global1.b.a.x, global1.b.d.x, global1.b.d)), Struct_2(true, global1.b))).yw, select(global0.zxx, vec3<u32>(u_input.c, 11299u, 1u), false) & ~global0.xyz).d));
    global4 = array<bool, 13>();
    global0 = ~vec4<u32>(0u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, u_input.c), 14669u)), u_input.c, _wgslsmith_mod_u32(_wgslsmith_div_u32(5769u, firstTrailingBit(u_input.c)), u_input.c));
    let var_2 = var_1;
    let var_3 = vec4<i32>(global1.b.d.x & global1.b.d.x, ~(~global1.b.c), u_input.b.x, ~global1.b.d.x);
    global2 = array<vec3<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

