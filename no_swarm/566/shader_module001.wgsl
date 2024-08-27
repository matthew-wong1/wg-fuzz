struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, -22780i, 25312i, -7089i, -2089i, -42366i, 0i, -40362i, 1i, 0i, -1i, 44635i, 0i, 21416i, i32(-2147483648), 19873i, 0i, 33397i, 2147483647i, 2147483647i, 46700i);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, vec2<i32>(-4959i, -47526i)), Struct_1(false, vec2<i32>(-1i, 55709i)), Struct_1(true, vec2<i32>(54014i, 1i)), Struct_1(true, vec2<i32>(-11038i, 37992i)), Struct_1(true, vec2<i32>(i32(-2147483648), 1i)), Struct_1(true, vec2<i32>(-22081i, 2147483647i)), Struct_1(false, vec2<i32>(0i, 1i)), Struct_1(true, vec2<i32>(16214i, 16306i)), Struct_1(false, vec2<i32>(-12013i, 1i)), Struct_1(false, vec2<i32>(15570i, -1i)), Struct_1(false, vec2<i32>(0i, 2807i)), Struct_1(false, vec2<i32>(-29182i, -44300i)), Struct_1(true, vec2<i32>(-2874i, 0i)), Struct_1(true, vec2<i32>(-19968i, 2147483647i)), Struct_1(false, vec2<i32>(0i, 47852i)));

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global2 = Struct_1(any(select(vec3<bool>(global2.a && true, true, all(vec2<bool>(global2.a, false))), !select(vec3<bool>(global2.a, arg_0, false), vec3<bool>(arg_0, true, global2.a), vec3<bool>(false, global2.a, true)), select(vec3<bool>(arg_0, true, global2.a), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(global2.a, arg_0, true), global2.a), arg_0))), vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-24647i, 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(23936u, 21u)]), vec4<i32>(global2.b.x, 43927i, 1i, global0[_wgslsmith_index_u32(2660u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(45744u, 21u)], u_input.a.x, 0i, global0[_wgslsmith_index_u32(1u, 21u)])), -abs(vec4<i32>(1i, 21116i, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(82272u, 21u)])))));
    let var_0 = ~vec2<u32>(~firstTrailingBit(1u), 49223u);
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_1 = vec4<i32>(firstTrailingBit(global2.b.x), _wgslsmith_mod_i32(8089i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(21068i, -13662i, global0[_wgslsmith_index_u32(4294967295u, 21u)], global2.b.x), -vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.x, 21u)], -33977i, -2147483647i)))), 1i, _wgslsmith_mod_i32(-2147483647i, ~1i));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f - -1189f) + _wgslsmith_div_f32(2072f, -1463f))), _wgslsmith_f_op_f32(ceil(-506f)), -607f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, -531f, 557f)), vec3<f32>(_wgslsmith_f_op_f32(-1891f + -675f), _wgslsmith_f_op_f32(119f * 578f), _wgslsmith_f_op_f32(f32(-1f) * -1859f)), !arg_0))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(388f, -661f, -503f) - vec3<f32>(1232f, 2553f, 831f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, 441f, 143f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true)) * _wgslsmith_div_vec3_f32(vec3<f32>(-185f, 1000f, 107f), _wgslsmith_div_vec3_f32(vec3<f32>(364f, 1979f, 833f), vec3<f32>(-535f, 109f, 1562f)))))), ~countOneBits(~vec3<u32>(1u, 1u, 1u)), min(-firstLeadingBit(global0[_wgslsmith_index_u32(~15168u, 21u)]), abs(~arg_2.b.x) << (4294967295u % 32u)), arg_2.b, select(any(select(vec3<bool>(arg_2.a, arg_2.a, true), !vec3<bool>(true, false, global2.a), global2.a | global2.a)), global2.a, false));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_1 = var_0.b.x;
    return var_0.a.x;
}

fn func_4(arg_0: vec4<f32>) -> Struct_4 {
    global2 = global1[_wgslsmith_index_u32(max(74925u, ~26089u << (~_wgslsmith_sub_u32(~19952u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14469u, 4294967295u, 5341u), vec4<u32>(4294967295u, 8211u, 77422u, 0u))) % 32u)), 15u)];
    var var_0 = -u_input.b;
    global1 = array<Struct_1, 15>();
    let var_1 = Struct_3(arg_0.wzx, vec3<u32>(reverseBits(68699u), 1u, abs(select(_wgslsmith_mult_u32(4294967295u, 1u), 0u, any(vec3<bool>(global2.a, global2.a, global2.a))))), global2.b.x, u_input.a | _wgslsmith_sub_vec2_i32(-vec2<i32>(global2.b.x, u_input.a.x), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), global0[_wgslsmith_index_u32(select(4294967295u, 144419u, false), 21u)])), global2.a);
    global2 = global1[_wgslsmith_index_u32(~46368u, 15u)];
    return Struct_4(arg_0.x, Struct_1(false | select(all(vec4<bool>(var_1.e, false, false, false)), !global2.a, true), vec2<i32>(_wgslsmith_add_i32(global2.b.x, 1i), u_input.a.x)), var_1);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_2 {
    global0 = array<i32, 21>();
    global2 = arg_1.b;
    global1 = array<Struct_1, 15>();
    global2 = Struct_1(false, ~vec2<i32>(-arg_1.c.c, 0i));
    var var_0 = Struct_1(global2.a, vec2<i32>(max(1i, -global0[_wgslsmith_index_u32(4294967295u, 21u)]), u_input.a.x));
    return Struct_2(abs(vec4<i32>(2784i, abs(1i), _wgslsmith_add_i32(var_0.b.x, 1i), arg_1.c.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + _wgslsmith_f_op_f32(exp2(arg_1.a))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    global1 = array<Struct_1, 15>();
    var var_0 = func_5(reverseBits(~vec4<u32>(abs(arg_2.b.x), ~74513u, 1u, _wgslsmith_dot_vec3_u32(arg_2.b, arg_2.b))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, arg_1.x, _wgslsmith_f_op_f32(step(arg_2.a.x, arg_1.x)), _wgslsmith_f_op_f32(func_2(vec4<i32>(arg_2.c, -36983i, 23493i, arg_2.d.x), vec4<i32>(global0[_wgslsmith_index_u32(arg_2.b.x, 21u)], 2147483647i, -8337i, -11297i), global1[_wgslsmith_index_u32(1917u, 15u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -2243f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_2.a.x, -1000f), vec4<bool>(true, true, true, global2.a)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.x)) + var_0.b), arg_2.a.x)));
    global2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.x, -397f)))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, -342f, var_0.b, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1318f, 1000f, var_1.x), vec4<f32>(-574f, -557f, var_0.b, -355f)), true))).c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-163f, arg_2.a.x) * _wgslsmith_div_f32(arg_1.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_2.e)).x))).b;
    global1 = array<Struct_1, 15>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(vec4<bool>(!global2.a, all(select(vec2<bool>(false, global2.a), vec2<bool>(true, global2.a), vec2<bool>(false, global2.a))), global2.a, global2.a)), global2.a, true, !global2.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, -838f, 453f, 248f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1096f, 858f, 491f, -402f), vec4<f32>(-493f, -277f, -1481f, 543f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), -1161f, _wgslsmith_f_op_f32(floor(313f)), _wgslsmith_div_f32(-1476f, -199f)))))));
    global0 = array<i32, 21>();
    let var_2 = Struct_3(vec3<f32>(348f, -521f, _wgslsmith_f_op_f32(-var_1.x)), vec3<u32>(~1u ^ ~func_1(var_0.x, var_1.yxy, Struct_3(vec3<f32>(var_1.x, var_1.x, 1170f), vec3<u32>(4294967295u, 0u, 17989u), u_input.a.x, u_input.a, global2.a)), firstLeadingBit(~61592u), 55874u), 29568i, global2.b, global2.a);
    var var_3 = select(vec2<u32>(firstLeadingBit(var_2.b.x), ~var_2.b.x | 4294967295u), var_2.b.zx, var_0.yz) | var_2.b.xy;
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1620f + 477f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -369f), func_4(vec4<f32>(-805f, 367f, var_1.x, 425f)).c.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(2430f * _wgslsmith_f_op_f32(func_5(vec4<u32>(4294967295u, 4294967295u, var_3.x, 4294967295u), Struct_4(601f, global1[_wgslsmith_index_u32(var_2.b.x, 15u)], Struct_3(vec3<f32>(var_1.x, var_1.x, -293f), vec3<u32>(var_2.b.x, var_3.x, var_2.b.x), 47187i, vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global2.b.x), false))).b * _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 505f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-140f)))));
}

