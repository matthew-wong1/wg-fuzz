struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: f32;

var<private> global2: vec2<u32>;

var<private> global3: u32 = 4294967295u;

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.c.wz;
    let var_1 = vec2<u32>(~(~abs(global2.x)) >> (global2.x % 32u), ~1u);
    global3 = firstLeadingBit(select(~var_1.x, global2.x, true));
    var var_2 = vec2<bool>(false, global4.x);
    let var_3 = var_1;
    return select(!select(vec2<bool>(all(vec3<bool>(global4.x, false, true)), var_2.x), global4.yy, !global4.x), vec2<bool>(any(select(vec4<bool>(true, true, var_2.x, var_2.x), select(vec4<bool>(true, true, false, true), vec4<bool>(var_2.x, false, global4.x, global4.x), global4.x), false)), global4.x || true), !global4.zz);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global4 = select(arg_1, select(arg_1, vec3<bool>(arg_0.x, any(vec2<bool>(false, false)), !arg_1.x), func_3().x), all(!select(vec4<bool>(arg_1.x, true, false, arg_0.x), select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_0.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), arg_1.x)));
    return u_input.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> vec4<bool> {
    global4 = !(!select(vec3<bool>(true, global4.x != false, global4.x | global4.x), select(select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, false, true)), select(vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, global4.x, global4.x)), true), any(select(vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(true, global4.x, true, global4.x)))));
    let var_0 = func_4(func_3(), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), arg_0.x <= -716f))), _wgslsmith_f_op_vec2_f32(sign(arg_0.zy))), arg_0.x);
    var var_1 = !vec4<bool>(true, false, !(false && any(vec2<bool>(false, false))), global4.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.ww + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 764f) * arg_0.zz), _wgslsmith_f_op_vec2_f32(arg_0.zz + vec2<f32>(876f, -3616f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.zy, arg_0.yx)) * _wgslsmith_f_op_vec2_f32(-arg_0.yy)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2273f, arg_0.x), vec2<f32>(-1933f, arg_0.x), true)))));
    var var_3 = Struct_1(var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(800f))), 1278f)));
    return vec4<bool>(true, !(global4.x | var_1.x), global4.x && global4.x, firstLeadingBit(-(~var_0)) > -arg_1.x);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(198f - 1040f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x * arg_3.a.x) - _wgslsmith_f_op_f32(ceil(-1014f))), 1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(arg_3.b.x * arg_3.b.x), _wgslsmith_f_op_f32(max(arg_3.a.x, -211f)), _wgslsmith_f_op_f32(max(-403f, 1441f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(599f * 1105f), arg_3.b.x), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a.x, 1694f, arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.x, 445f) - _wgslsmith_f_op_f32(floor(arg_3.b.x))))), arg_1 | false));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(min(1i, countOneBits(-27750i)), _wgslsmith_mod_i32(u_input.c.x, i32(-1i) * -u_input.a.x), -2147483647i), firstLeadingBit(u_input.c.x));
    global0 = array<vec3<u32>, 24>();
    let var_2 = !(!arg_2);
    var_1 = u_input.a.x;
    return Struct_2(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(global2.x, 4294967295u, u_input.e, 239u) >> (vec4<u32>(29571u, arg_0, 1u, global2.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, 1u, 0u, 49109u) & vec4<u32>(47966u, global2.x, 1u, 0u), !var_2), firstTrailingBit(~firstLeadingBit(vec4<u32>(global2.x, u_input.e, u_input.e, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * -364f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) - _wgslsmith_f_op_f32(arg_3.a.x - arg_3.b.x))), 1f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-162f)) * _wgslsmith_div_f32(1005f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(var_0.xz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.xy, var_0.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global4 = !select(vec3<bool>(false, true, false), vec3<bool>(true, false, all(vec4<bool>(global4.x, true, true, false))), func_2(vec4<f32>(func_5(u_input.e, global4.x, vec4<bool>(true, global4.x, global4.x, false), Struct_1(arg_0.b.zz, vec2<f32>(-338f, -185f))).b.x, -1164f, _wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -12763i, -1i), vec3<i32>(u_input.a.x, u_input.c.x, u_input.d)), ~abs(0u), ~vec4<u32>(28829u, u_input.b, arg_0.a.x, 94589u)).zzx);
    var var_0 = !global4.x;
    let var_1 = func_5(global2.x, (firstLeadingBit(arg_0.a.x) < _wgslsmith_sub_u32(~global2.x, 1u)) && select(any(!vec3<bool>(false, global4.x, global4.x)), global4.x, false), !vec4<bool>(!(-1000f <= arg_0.c.b.x), global4.x, !global4.x == global4.x, !select(false, true, global4.x)), Struct_1(vec2<f32>(883f, _wgslsmith_f_op_f32(-arg_0.b.x)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_f_op_f32(1158f - 687f))), 1096f)));
    var_0 = func_3().x;
    let var_2 = global4.x;
    return var_1.c;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = func_6(func_5(arg_0, global4.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1850f, -225f, arg_2.b.x, arg_1)), vec3<i32>(u_input.c.x, u_input.a.x, select(u_input.d, u_input.a.x, global4.x)), ~global2.x, vec4<u32>(global2.x << (4294967295u % 32u), reverseBits(0u), 23231u, 43118u ^ global2.x)), Struct_1(arg_2.a, arg_2.b)));
    var var_1 = func_5(7811u, !arg_3, !select(select(select(vec4<bool>(global4.x, false, true, true), vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(arg_3, true, false, global4.x)), select(vec4<bool>(false, global4.x, false, true), vec4<bool>(true, global4.x, false, global4.x), true), global4.x), vec4<bool>(arg_3, true, true, select(global4.x, true, global4.x)), _wgslsmith_f_op_f32(round(arg_1)) >= arg_1), func_6(Struct_2(~vec4<u32>(u_input.b, u_input.b, 0u, global2.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), -389f, _wgslsmith_f_op_f32(round(1741f))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1506f, -1118f) * vec2<f32>(arg_1, arg_1)), var_0.a))));
    global1 = 769f;
    let var_2 = -34005i;
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.b))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1377f, _wgslsmith_f_op_f32(925f + -1255f), _wgslsmith_f_op_f32(f32(-1f) * -395f))))));
    var var_1 = vec4<bool>(global4.x, -(~(~u_input.c.x)) != -u_input.a.x, false, !all(select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(true, global4.x, false, true), true)) && !(func_1(1u, var_0.x, Struct_1(var_0.zx, vec2<f32>(658f, var_0.x)), global4.x) && all(global4.xy)));
    let var_2 = ~(-1600i);
    let var_3 = Struct_1(vec2<f32>(146f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - func_6(Struct_2(vec4<u32>(41188u, u_input.e, u_input.e, 4294967295u), vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_1(var_0.yy, var_0.xy))).b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 284f)))), _wgslsmith_f_op_vec2_f32(round(func_5(global2.x, true, func_2(vec4<f32>(723f, -1393f, -578f, -709f), vec3<i32>(0i, u_input.d, -1i), global2.x, vec4<u32>(global2.x, 1u, u_input.e, global2.x)), Struct_1(vec2<f32>(var_0.x, 757f), var_0.yy)).c.b))));
    let var_4 = true;
    let var_5 = func_5(u_input.b, true, !vec4<bool>(false, true | !var_1.x, true & var_4, true), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~min(u_input.a.x, var_2), 0i), 0i, _wgslsmith_f_op_f32(f32(-1f) * -220f), vec2<i32>(var_2, _wgslsmith_sub_i32(var_2, _wgslsmith_sub_i32(-12314i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(1u, func_2(vec4<f32>(1975f, var_5.b.x, var_5.b.x, var_5.c.b.x), vec3<i32>(2147483647i, u_input.d, var_2), global2.x, vec4<u32>(4294967295u, 27168u, 40591u, 4294967295u)).x, func_2(vec4<f32>(-1000f, var_0.x, var_5.c.b.x, -1000f), vec3<i32>(var_2, 0i, u_input.a.x), u_input.b, vec4<u32>(9819u, u_input.e, global2.x, 0u)), func_5(4294967295u, var_4, vec4<bool>(true, false, var_4, false), Struct_1(vec2<f32>(var_3.b.x, var_3.a.x), var_3.b)).c).c.b.x) * 146f));
}

