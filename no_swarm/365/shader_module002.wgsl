struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1223f;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(141f, -289f, false, vec2<i32>(-4045i, 1820i), vec4<f32>(-1043f, 586f, 1836f, -221f));

var<private> global3: vec2<i32> = vec2<i32>(-17690i, i32(-2147483648));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = ~(~(~u_input.d));
    global3 = _wgslsmith_add_vec2_i32(min(vec2<i32>((global3.x ^ -1i) & (global1.x >> (4294967295u % 32u)), ~var_0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.d.x, u_input.a), countOneBits(~var_0.xx))), var_0.zy);
    return global2.e.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1047f, global2.e.x))))), 1268f, global2.c, -firstLeadingBit(arg_2.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b)) + arg_2.b), -508f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + global2.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.x + 528f) - global2.b))));
    global3 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-arg_1, ~var_0.d.x)), select(u_input.d.zx, vec2<i32>(-22389i, min(-54003i, global2.d.x) | _wgslsmith_sub_i32(20559i, u_input.d.x)), all(vec4<bool>(false == global2.c, true, global2.c, true))), -global2.d);
    var var_1 = ~(~_wgslsmith_div_u32(~u_input.b, arg_0)) << (~(~min(4294967295u, arg_0) | ~2394u) % 32u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(476f * -1047f), _wgslsmith_f_op_f32(trunc(995f)));
    var_0 = Struct_1(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)))), var_0.c, -arg_2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-2489f + 1510f), _wgslsmith_div_f32(1148f, var_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1655f), var_0.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e)))), global2.e));
    return !(!vec3<bool>(true, !(arg_0 > u_input.b), _wgslsmith_add_i32(global3.x, 38683i) <= global1.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.e.x)) * -365f);
    let var_0 = 138f;
    var var_1 = select(select(!vec3<bool>(false, global2.c, global2.c), vec3<bool>(global3.x == 1i, false, global2.c), !global2.c), vec3<bool>(global2.c, global2.c, false), !global2.c);
    let var_2 = select(!(!vec3<bool>(global2.c, var_1.x, var_1.x)), vec3<bool>(all(vec3<bool>(true, true, true)), !(!var_1.x) & all(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, global2.c), global2.c)), true), func_4(arg_0.x, arg_2.x & 0i, Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-893f + _wgslsmith_f_op_f32(func_3())), global2.c, max(arg_2.zy, vec2<i32>(global3.x, 2239i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global2.e, vec4<f32>(var_0, arg_1.x, arg_1.x, global2.e.x)))))));
    var_1 = var_2;
    return global2.e.ywx;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = -629f;
    global3 = vec2<i32>(-2147483647i, ~11922i);
    global2 = arg_1;
    global0 = _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f * 1155f) - _wgslsmith_f_op_f32(301f * 832f)))));
    var var_1 = global2.e.xzx;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))), _wgslsmith_f_op_f32(-arg_0.x), !(!(!global2.c)) | any(select(!vec2<bool>(global2.c, false), !vec2<bool>(arg_1.c, false), arg_1.c)), global2.d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.e.x, var_1.x, -2264f, -669f), arg_1.e, vec4<bool>(global2.c, true, true, arg_1.c))), _wgslsmith_f_op_vec4_f32(min(global2.e, global2.e)), global2.c)))))));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = global2.e;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.e.x)));
    var var_2 = ~global1.x != _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(19642i, 1i, -2147483647i), vec3<i32>(arg_1, u_input.d.x, -13692i)), u_input.a, max(global1.x | global3.x, 1i), arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, min(2147483647i, -7607i), 2147483647i, firstLeadingBit(0i)), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(global2.d, vec2<i32>(arg_2.d.x, arg_2.d.x)), -24093i, 892i >> (0u % 32u))));
    global3 = min(-(vec2<i32>(-91252i, -2147483647i) | vec2<i32>(global3.x >> (27111u % 32u), global3.x << (0u % 32u))), max(u_input.d.yy, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(arg_2.d), select(vec2<i32>(u_input.c, global2.d.x), arg_0.d, global2.c)), countOneBits(arg_2.d >> (vec2<u32>(4294967295u, 59009u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(41629i, global3.x), arg_2.d.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1565f) + _wgslsmith_f_op_f32(395f - global2.a)))), _wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec3_f32(step(var_0.yyx, vec3<f32>(global2.e.x, var_0.x, global2.e.x))), arg_0, abs(arg_0.d.x)).a), -413f));
    return countOneBits(firstTrailingBit(u_input.e));
}

fn func_1() -> i32 {
    let var_0 = min(19842u, _wgslsmith_dot_vec3_u32(u_input.e, func_6(func_5(_wgslsmith_f_op_vec3_f32(func_2(u_input.e, vec2<f32>(global2.a, -535f), vec3<i32>(2147483647i, -22732i, -1i))), Struct_1(1144f, global2.e.x, false, vec2<i32>(2934i, global1.x), vec4<f32>(global2.b, global2.a, global2.a, 1594f)), _wgslsmith_add_i32(11258i, global2.d.x)), -2147483647i, func_5(global2.e.wzx, func_5(global2.e.zxz, Struct_1(-386f, 1404f, global2.c, global1.xz, vec4<f32>(global2.e.x, global2.b, global2.e.x, global2.e.x)), global2.d.x), 0i))));
    var var_1 = ~global3.x;
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f * global2.b)), -401f, func_5(_wgslsmith_f_op_vec3_f32(ceil(global2.e.xzz)), Struct_1(global2.a, 723f, global2.c, vec2<i32>(-760i, -2147483647i), global2.e), select(global2.d.x, 0i, false)).e.x)), Struct_1(global2.a, global2.a, true, global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1428f, 848f, global2.e.x, global2.e.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1447f, 182f, global2.e.x, -1152f))))))), ~(-53580i));
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1346f, _wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(round(var_2.b))))))), var_2, reverseBits(firstTrailingBit(-10311i)) | global1.x).e.xyw;
    let var_4 = vec4<u32>(abs(~countOneBits(select(20870u, 67009u, false))), ~(func_6(func_5(var_3, var_2, var_2.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 1i, var_2.d.x, -32014i), vec4<i32>(u_input.c, -2147483647i, -12590i, 0i)), Struct_1(-1201f, -1134f, global2.c, vec2<i32>(-22717i, 9118i), vec4<f32>(378f, -951f, 1127f, -1128f))).x << (firstLeadingBit(var_0) % 32u)), 4294967295u, var_0);
    return -28681i;
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 1074f;
    var var_1 = _wgslsmith_div_i32(-u_input.c, ~arg_0);
    global0 = -1627f;
    global3 = vec2<i32>(abs(~firstTrailingBit(func_1())), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-select(u_input.c, -35169i, global2.c), abs(select(global3.x, 45351i, false)), i32(-1i) * -global1.x)));
    let var_2 = select(!select(vec3<bool>(!global2.c, false, !global2.c), vec3<bool>(global2.c, global2.c & arg_1.c, true), all(vec3<bool>(arg_1.c, true, arg_1.c))), vec3<bool>(global1.x >= 2147483647i, func_4(~_wgslsmith_mult_u32(u_input.b, 0u), ~abs(-35558i), Struct_1(1894f, _wgslsmith_f_op_f32(-1260f + 784f), true, _wgslsmith_mult_vec2_i32(arg_1.d, vec2<i32>(26189i, -58685i)), _wgslsmith_f_op_vec4_f32(global2.e - global2.e))).x, !(!global2.c && arg_1.c)), global2.c && !arg_1.c);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) + _wgslsmith_f_op_f32(floor(-786f))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec3_u32(u_input.e, u_input.e), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(646f, -884f), arg_1.e.wy, var_2.x)), global1.xwz)) + arg_1.e.zzz), arg_1, ~21011i).b, arg_1.c, arg_1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(arg_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(183f)), _wgslsmith_f_op_f32(floor(752f)), 2928f, _wgslsmith_f_op_f32(step(global2.b, global2.b)))), vec4<bool>(var_2.x & global2.c, true | !arg_1.c, arg_1.b <= _wgslsmith_f_op_f32(floor(arg_1.e.x)), !func_5(arg_1.e.xzx, Struct_1(global2.b, 1000f, arg_1.c, vec2<i32>(u_input.a, arg_0), arg_1.e), global3.x).c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(), Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + global2.a)), false, vec2<i32>(abs(_wgslsmith_add_i32(-37679i, -22029i)), 10173i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e))));
    var var_1 = var_0;
    global0 = global2.b;
    global1 = vec4<i32>(var_0.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(-2147483647i, -1480i)), func_1()), global3.x, countOneBits(1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.e.x + -678f))), global2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.e.x, -929f), -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)))), func_4(~(u_input.b << (countOneBits(u_input.e.x) % 32u)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(global1.x, global3.x) >> (u_input.e.zx % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -1i), u_input.d.yy), 1i)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(325f)))), -1356f, true, -(vec2<i32>(2147483647i, var_0.d.x) >> (vec2<u32>(u_input.e.x, u_input.e.x) % vec2<u32>(32u))), vec4<f32>(512f, 994f, _wgslsmith_f_op_f32(-var_0.e.x), -658f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2);
    var var_4 = u_input.e.zx;
    var var_5 = 6248i >> (u_input.b % 32u);
    var var_6 = vec2<i32>(_wgslsmith_add_i32(1i, var_0.d.x), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(37471u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, var_1.a, _wgslsmith_f_op_f32(global2.a - 427f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 342f, _wgslsmith_div_f32(-1072f, -827f))))), u_input.e);
}

