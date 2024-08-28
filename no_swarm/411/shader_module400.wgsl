struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true));

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<f32>(284f, -1016f, 102f, 796f)), Struct_3(vec4<f32>(1282f, 909f, 829f, -279f)), Struct_3(vec4<f32>(779f, -534f, 1417f, 618f)), Struct_3(vec4<f32>(-405f, -662f, 1644f, 959f)), Struct_3(vec4<f32>(1260f, -855f, 713f, -595f)), Struct_3(vec4<f32>(-1140f, 1307f, -839f, 1000f)), Struct_3(vec4<f32>(-1575f, 1437f, 1000f, 551f)), Struct_3(vec4<f32>(1000f, -213f, 965f, -553f)), Struct_3(vec4<f32>(1174f, 1980f, -754f, -1005f)), Struct_3(vec4<f32>(638f, -1060f, 405f, -371f)), Struct_3(vec4<f32>(1000f, 255f, 458f, 627f)), Struct_3(vec4<f32>(1375f, -519f, 318f, -1069f)), Struct_3(vec4<f32>(-310f, -561f, 153f, 284f)), Struct_3(vec4<f32>(-1486f, -1000f, 378f, -1007f)), Struct_3(vec4<f32>(-478f, -151f, 1000f, -290f)), Struct_3(vec4<f32>(-1000f, -927f, 872f, -347f)), Struct_3(vec4<f32>(953f, -988f, -507f, 730f)), Struct_3(vec4<f32>(-584f, -791f, 1881f, 474f)), Struct_3(vec4<f32>(-1736f, 1000f, 209f, 651f)), Struct_3(vec4<f32>(580f, -370f, 1698f, -1275f)), Struct_3(vec4<f32>(115f, -810f, 1437f, -234f)), Struct_3(vec4<f32>(432f, -1898f, 1185f, -450f)), Struct_3(vec4<f32>(1597f, 1446f, -2453f, 858f)), Struct_3(vec4<f32>(1100f, -388f, 702f, -2598f)), Struct_3(vec4<f32>(-506f, 1000f, -494f, -501f)), Struct_3(vec4<f32>(-390f, 434f, -1000f, 152f)), Struct_3(vec4<f32>(966f, -1004f, 1011f, 410f)));

var<private> global3: vec3<f32>;

var<private> global4: i32 = -1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(!(!vec2<bool>(true, 1385f > global3.x)), _wgslsmith_f_op_f32(422f * _wgslsmith_f_op_f32(select(global3.x, global3.x, arg_0.x >= _wgslsmith_f_op_f32(trunc(arg_0.x))))), -countOneBits(vec3<i32>(-1i) * -vec3<i32>(91304i, u_input.a.x, u_input.a.x)), firstTrailingBit(4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = global2[_wgslsmith_index_u32(38322u, 27u)];
    var var_2 = _wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(896f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + 2328f), -846f)));
    global1 = array<vec4<bool>, 22>();
    var var_3 = vec3<bool>(true, var_0.a.x, any(select(select(!vec3<bool>(true, true, var_0.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true), true), any(vec3<bool>(false, var_0.a.x, false))), !(!vec3<bool>(var_0.a.x, false, true)), var_0.a.x)));
    return !any(select(select(global1[_wgslsmith_index_u32(~59749u, 22u)], !global1[_wgslsmith_index_u32(var_0.e.x, 22u)], var_0.a.x | var_3.x), select(global1[_wgslsmith_index_u32(~var_0.e.x, 22u)], vec4<bool>(var_0.a.x, var_3.x, true, var_3.x), var_3.x == false), var_3.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(select(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.e.x, 26214u), arg_0.e.yy), vec2<u32>(1u, 0u), arg_0.e.zz ^ vec2<u32>(arg_0.e.x, 1u)), ~arg_0.e.xz << (vec2<u32>(arg_0.e.x, arg_0.e.x) % vec2<u32>(32u))), true), 27u)], !arg_0.a, Struct_2(Struct_1(!select(arg_0.a, vec2<bool>(true, arg_0.a.x), arg_0.a.x), 944f, vec3<i32>(-1i, arg_0.c.x, ~arg_0.c.x), ~_wgslsmith_clamp_u32(arg_0.e.x, 11683u, 3839u), vec3<u32>(4294967295u, 1u, arg_0.d) << (vec3<u32>(arg_0.d, 4294967295u, 5074u) % vec3<u32>(32u))), arg_0.a.x), global0[_wgslsmith_index_u32(17874u, 32u)], select(any(select(select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(true, arg_0.a.x, true)), !vec3<bool>(false, arg_0.a.x, false), any(vec3<bool>(true, arg_0.a.x, false)))), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, arg_0.b, -1000f) * vec3<f32>(global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -614f, 222f) + vec3<f32>(global3.x, arg_0.b, -239f)), vec3<bool>(false, false, arg_0.a.x)))), all(vec4<bool>(true, select(true, false, true), false, true))));
    global1 = array<vec4<bool>, 22>();
    global3 = _wgslsmith_div_vec3_f32(var_0.d.a.xxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b * 1660f))), var_0.c.a.b)));
    global2 = array<Struct_3, 27>();
    global3 = var_0.a.a.xxy;
    return global3.x;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(global3.x + global3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x + arg_0))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(false, true), 779f, vec3<i32>(u_input.b, 7531i, 22180i), 0u, vec3<u32>(1927u, 38495u, 0u)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, global3.x, global3.x, -388f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1049f, global3.x, arg_0, arg_0) + vec4<f32>(997f, -1239f, arg_0, global3.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a.yzx, vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * 2053f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(false, false), arg_0, vec3<i32>(8266i, -2147483647i, u_input.a.x), 40017u, vec3<u32>(1u, 1u, 5073u))))), vec3<bool>(true, any(vec2<bool>(true, true)), !select(true, false, false)))));
    var var_2 = Struct_2(Struct_1(vec2<bool>(true & any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(max(1729f, -695f)) < _wgslsmith_f_op_f32(ceil(-290f))), 2160f, vec3<i32>(48986i, 0i, firstLeadingBit(abs(31426i))), 1u, ~vec3<u32>(1u, 1u, 1u)), any(!vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(34443u, 22u)]))));
    let var_3 = _wgslsmith_clamp_i32(~_wgslsmith_add_i32(var_2.a.c.x, _wgslsmith_dot_vec3_i32(var_2.a.c, ~vec3<i32>(-55813i, var_2.a.c.x, u_input.a.x))), u_input.a.x, abs(-_wgslsmith_mult_i32(~var_2.a.c.x, _wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.a.x))));
    global0 = array<Struct_3, 32>();
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 145759u;
    var var_1 = !((var_0 > ~_wgslsmith_add_u32(58083u, var_0)) & true);
    let var_2 = select(select(!vec2<bool>(all(vec4<bool>(false, false, true, false)), true), !select(func_1(global3.x), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true)), select(false, true, all(func_1(1601f)))), vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -841f, 470f))), true), !any(vec3<bool>(true, true, true)) | true));
    var var_3 = max(abs(vec3<u32>(64337u, var_0, min(var_0, 41300u))), firstTrailingBit(~firstTrailingBit(vec3<u32>(var_0, 0u, var_0)))) >> (countOneBits(abs(max(~vec3<u32>(var_0, 4294967295u, var_0), vec3<u32>(var_0, var_0, var_0) ^ vec3<u32>(var_0, var_0, var_0)))) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-1000f - global3.x)))));
    var var_5 = global2[_wgslsmith_index_u32(41185u, 27u)];
    var var_6 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.a.x, var_4.x, 1570f, -1240f)));
    var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-2228f - _wgslsmith_f_op_f32(-global3.x)), var_6.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(385f * 217f), var_6.x))), _wgslsmith_f_op_vec4_f32(-var_5.a))));
    let var_7 = var_5.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_5.a.zxx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_div_f32(var_4.x, 466f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(true, var_2.x), var_4.x, vec3<i32>(-1i, -2147483647i, u_input.a.x), 17346u, vec3<u32>(var_3.x, 0u, var_0)))), var_4.x), all(!var_2)))), ~(var_3.x << ((countOneBits(var_3.x) ^ var_3.x) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-global3.x)))), firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(51142i, 0i, u_input.a.x, 2147483647i), vec4<i32>(-2147483647i, 20292i, -1i, 1i), vec4<i32>(u_input.a.x, 30439i, u_input.b, -2808i))) ^ firstLeadingBit(~firstLeadingBit(vec4<i32>(-1i, u_input.a.x, u_input.b, -2147483647i))));
}

