struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<u32, 10> = array<u32, 10>(1u, 1u, 78206u, 1260u, 47320u, 1u, 36112u, 36766u, 1u, 40388u);

var<private> global3: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    global3 = ~(vec2<u32>(0u, global0.x) >> (abs(firstLeadingBit(global0.wy)) % vec2<u32>(32u)));
    let var_0 = -180f;
    let var_1 = _wgslsmith_f_op_f32(397f + _wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(ceil(-217f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f))));
    var var_2 = arg_2;
    var var_3 = Struct_5(_wgslsmith_dot_vec3_i32(-(~countOneBits(u_input.b.ywz)), ~_wgslsmith_mult_vec3_i32(u_input.b.wyw, arg_1.yzz)), firstLeadingBit(vec2<u32>(~(arg_0.d << (70800u % 32u)), _wgslsmith_sub_u32(u_input.c ^ global2[_wgslsmith_index_u32(1861u, 10u)], global3.x & 7694u))));
    return var_3.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>) -> f32 {
    global3 = _wgslsmith_add_vec2_u32(global0.yw, vec2<u32>(_wgslsmith_clamp_u32(1u, ~firstTrailingBit(4294967295u), max(u_input.c, _wgslsmith_div_u32(64698u, 84795u))), 4294967295u));
    var var_0 = ~vec2<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(33767u, global2[_wgslsmith_index_u32(global0.x, 10u)] ^ global0.x), 10u)], 33790u), 128u);
    var_0 = max(_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(global0.zyy, vec3<u32>(global0.x, u_input.c, global0.x)), 27877u), global0.wx), max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 75364u, u_input.c, 1u), vec4<u32>(0u, global2[_wgslsmith_index_u32(global3.x, 10u)], 4294967295u, 1u)) | 37933u, 31278u), ~vec2<u32>(4294967295u ^ var_0.x, ~38513u)));
    let var_1 = _wgslsmith_f_op_f32(min(arg_1.x, -1758f));
    var var_2 = Struct_5(-(~24600i), global0.yw);
    return _wgslsmith_div_f32(-1153f, 316f);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(arg_1.e.d.x, ~func_3(arg_3, u_input.b, _wgslsmith_f_op_f32(-642f + arg_1.e.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(516f, 1388f, arg_0.x), arg_0.zxx)), -2147483647i, u_input.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(259f, _wgslsmith_div_f32(-1974f, 145f), 1000f)))));
    global3 = global0.wy;
    global1 = array<Struct_2, 18>();
    var var_1 = arg_3;
    var var_2 = select(vec4<bool>(!arg_2, true, false, !(6354u == ~global2[_wgslsmith_index_u32(4294967295u, 10u)])), vec4<bool>(!arg_2, true != !(arg_3.a.b.x | true), !((19908u <= arg_3.d) && true), any(!(!vec2<bool>(arg_2, true)))), arg_1.c);
    return !(true | all(var_1.a.b.zy));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = select(vec2<bool>(true, any(vec4<bool>(false, true, true, func_2(vec4<f32>(484f, arg_0.b, arg_0.b, arg_0.c), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 18u)], Struct_3(vec2<f32>(1013f, 232f), u_input.d, u_input.b.x, vec4<i32>(u_input.b.x, u_input.a, u_input.e, u_input.e)), true, 1u, Struct_3(vec2<f32>(arg_0.b, arg_0.b), -2077i, u_input.d, u_input.b)), false, Struct_4(Struct_2(248f, vec3<bool>(true, false, true)), Struct_3(vec2<f32>(arg_0.b, arg_0.b), u_input.d, -1665i, vec4<i32>(u_input.a, u_input.e, u_input.d, u_input.e)), false, global3.x, Struct_3(vec2<f32>(arg_0.b, arg_0.c), 11611i, u_input.a, u_input.b)))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    var var_1 = ~abs(u_input.d) ^ u_input.e;
    let var_2 = _wgslsmith_f_op_f32(arg_0.c - 1000f);
    let var_3 = vec2<u32>(0u, min(_wgslsmith_div_u32(30494u >> (0u % 32u), ~global3.x) ^ global3.x, ~global2[_wgslsmith_index_u32(global0.x, 10u)]));
    let var_4 = !(!select(vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), arg_0.b > arg_0.c), !(!vec2<bool>(false, var_0.x)), var_0.x));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.b, vec3<f32>(arg_0.b, arg_0.c, -580f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -208f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) * _wgslsmith_f_op_f32(abs(-1578f))), vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(4294967295u, 719f, 2024f, global0.zw)))), firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.e, -34391i), u_input.b)), -u_input.d, select(vec4<i32>(countOneBits(u_input.e), _wgslsmith_dot_vec3_i32(u_input.b.wxy, u_input.b.zzw), 55290i ^ u_input.b.x, u_input.e >> (4294967295u % 32u)), -vec4<i32>(-1i, -1i, u_input.a, u_input.e), true)), any(vec3<bool>(firstLeadingBit(global0.x) > ~global3.x, all(vec4<bool>(true, true, true, true)), true)), 4294967295u, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-698f, 662f)))), u_input.e & max(func_3(Struct_4(Struct_2(-244f, vec3<bool>(true, true, true)), Struct_3(vec2<f32>(144f, -643f), u_input.b.x, -1751i, u_input.b), true, global2[_wgslsmith_index_u32(38168u, 10u)], Struct_3(vec2<f32>(-225f, 243f), -2147483647i, -53600i, u_input.b)), vec4<i32>(-2147483647i, -40474i, -2147483647i, -2147483647i), 3646f, vec3<f32>(-1292f, -871f, 1661f)), u_input.e), i32(-1i) * -1i, _wgslsmith_mult_vec4_i32(u_input.b, max(-vec4<i32>(u_input.b.x, 1i, 2147483647i, -25483i), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.e, -6174i))))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = ~_wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) >> ((vec4<u32>(global3.x, 0u, 103785u, var_0.d) | vec4<u32>(u_input.c, global0.x, 30203u, global3.x)) % vec4<u32>(32u))), min(vec4<u32>(~var_0.d, u_input.c, global3.x, var_0.d), ~firstTrailingBit(vec4<u32>(21616u, 1u, global2[_wgslsmith_index_u32(16045u, 10u)], 0u))));
    var var_3 = -firstLeadingBit(u_input.b.yy);
    var var_4 = ~4294967295u;
    let var_5 = _wgslsmith_clamp_vec3_u32(global0.zxw, ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(var_0.d, 10u)], 4294967295u, global0.x), vec3<u32>(var_2.x, u_input.c, var_0.d), vec3<u32>(global3.x, global0.x, 67548u)), select(vec3<u32>(65811u, var_2.x, 32888u), vec3<u32>(global3.x, u_input.c, global2[_wgslsmith_index_u32(24580u, 10u)]), vec3<bool>(var_1.x, var_1.x, true)), var_0.a.b.x), vec3<u32>(global0.x, 1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 100771u), global3.x))) & _wgslsmith_clamp_vec3_u32(global0.xyy & select(select(vec3<u32>(global3.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], var_0.d), vec3<u32>(4965u, 2705u, 1u), vec3<bool>(true, var_0.a.b.x, true)), global0.wxz, var_1.x), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 0u, var_2.x), var_2.wxy), _wgslsmith_div_vec3_u32(var_2.yyx, global0.xyx), true), var_2.wzx);
    let var_6 = _wgslsmith_mult_vec2_u32(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), ~vec2<u32>(global0.x, 16242u))), var_2.xy);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(reverseBits(var_0.e.d.zwy), -vec3<i32>(1i, var_0.e.b, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x + -723f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1784f);
}

