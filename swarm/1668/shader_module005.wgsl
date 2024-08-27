struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = u_input.a.x;
    global1 = select(select(global0.yz, global0.xz, select(global0.zw, select(!global0.zw, vec2<bool>(false, global1.x), global0.yx), !global0.zw)), select(global0.zw, !(!(!global0.yy)), countOneBits(-46909i) != u_input.a.x), select(!global0.xw, !global0.yy, !select(global0.xy, vec2<bool>(arg_0, false), vec2<bool>(false, global0.x))));
    global1 = vec2<bool>(!arg_0, any(!global0.xw));
    global0 = !vec4<bool>(arg_0, all(!global0.xy), global0.x, true);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, -1125f, -231f, -585f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, -1000f, -1423f, 1044f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, 795f, -144f, 270f)) - _wgslsmith_div_vec4_f32(vec4<f32>(378f, -325f, -721f, -212f), vec4<f32>(-1205f, 430f, 637f, -1425f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, -1674f, -690f, -399f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, -1504f, -182f, -1675f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-112f, 215f, -1935f, 194f), vec4<f32>(1405f, 119f, -710f, -1090f))), vec4<f32>(1000f, -321f, -1079f, -838f)))));
    return u_input.d;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = Struct_4(Struct_3(arg_1.a, select(-1i, select(-1i, u_input.a.x, global1.x) >> (_wgslsmith_dot_vec3_u32(arg_1.a.a.a.yzz, vec3<u32>(arg_1.a.a.a.x, 1u, 1u)) % 32u), !any(vec3<bool>(false, false, false))), arg_1.c), Struct_2(arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.b + arg_0))), _wgslsmith_f_op_f32(arg_0 - -1156f))), arg_1.a.a.a.x);
    global1 = var_0.a.c.d.xy;
    let var_1 = Struct_1(max(max(abs(arg_1.c.a), select(select(vec4<u32>(0u, 1u, u_input.c, var_0.c), var_0.b.a.a, var_0.b.a.c), arg_1.c.a, !arg_1.c.d)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, _wgslsmith_add_u32(4294967295u, 0u), 4294967295u), ~arg_1.c.a)), 0i, !(!(!select(var_0.a.a.a.d, var_0.a.c.c, arg_1.c.e.x))), var_0.a.a.a.d, !select(!select(arg_1.c.c.wz, global0.zw, false), !(!vec2<bool>(global1.x, false)), arg_1.a.a.e.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1602f, _wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_0.a.a.b)), arg_1.c.e.x)));
    var var_3 = Struct_5(Struct_1(var_1.a, 0i, vec4<bool>(true, any(arg_1.a.a.c) || true, !global0.x, global1.x), vec4<bool>(all(select(arg_1.c.d, var_1.c, vec4<bool>(var_1.d.x, true, false, arg_1.c.c.x))), arg_1.a.a.d.x, true, true || all(vec4<bool>(var_1.d.x, false, true, var_0.a.c.e.x))), var_1.e), Struct_2(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.b), var_0.b.b, global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.b) * 1507f))), true, arg_1.a.a.d.yy);
    return 1u;
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = Struct_2(Struct_1(~vec4<u32>(func_3(-1000f, Struct_3(Struct_2(Struct_1(vec4<u32>(1u, u_input.d.x, 22945u, 0u), u_input.a.x, arg_0, arg_0, vec2<bool>(true, false)), 410f), u_input.a.x, Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 54986u, u_input.c), -5650i, vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global1.x, true, false, global1.x), arg_0.ww)), -1i), u_input.d.x, 1u, 6019u), _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a.x, 1i), 55050i), !vec4<bool>(global1.x, arg_0.x, global1.x, true), arg_0, !select(arg_0.xy, global0.xy, all(vec3<bool>(arg_0.x, true, arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-735f - _wgslsmith_f_op_f32(-1199f + _wgslsmith_f_op_f32(round(1009f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-159f, 779f)), -329f)), -492f, all(!arg_0.zzw)))));
    let var_1 = var_0.a;
    var var_2 = ~_wgslsmith_div_vec4_u32(var_0.a.a, vec4<u32>(firstTrailingBit(var_0.a.a.x), var_0.a.a.x, ~(~var_1.a.x), 15321u));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(min(u_input.c, firstTrailingBit(var_1.a.x)), 4294967295u, 1u, ~select(u_input.b, ~var_0.a.a.x, true)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(var_1.a, abs(~var_1.a)), var_0.a.a.x, _wgslsmith_sub_u32(min(~42165u, 7133u << (var_2.x % 32u)), 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a.c.x;
    let var_1 = Struct_3(Struct_2(arg_1.a, arg_1.b), _wgslsmith_add_i32(~_wgslsmith_add_i32(-28885i, _wgslsmith_div_i32(arg_1.a.b, u_input.a.x)), u_input.a.x), Struct_1(arg_1.a.a, -1i, vec4<bool>(select(true, all(arg_1.a.d.zw), true), true, true, global0.x), vec4<bool>(all(vec2<bool>(global1.x, global0.x)), !(global0.x && global0.x), global0.x, firstTrailingBit(arg_1.a.b) >= _wgslsmith_mult_i32(-3628i, 0i)), global0.zy));
    let var_2 = vec2<bool>(any(var_1.a.a.e), select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.b, -14683i) ^ u_input.a.xy, u_input.a.yx) > arg_1.a.b, arg_1.a.d.x, any(vec4<bool>(true, -1528f > var_1.a.b, true, all(var_1.a.a.d.yyy)))));
    var var_3 = _wgslsmith_mult_vec4_i32(abs(abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2562i, u_input.a.x, var_1.a.a.b), vec4<i32>(1i, u_input.a.x, var_1.b, var_1.b)))), ~vec4<i32>(u_input.a.x, -29958i, -8947i, firstLeadingBit(var_1.b)) | (vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(27792i, u_input.a.x)), -1i, -9599i, _wgslsmith_dot_vec2_i32(vec2<i32>(49584i, -13227i), vec2<i32>(u_input.a.x, 0i))) | (vec4<i32>(-2147483647i, var_1.c.b, 0i, 1i) | vec4<i32>(1i, u_input.a.x, arg_1.a.b, var_1.a.a.b))));
    global0 = arg_1.a.c;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(~func_1(true)), Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(2881u, 0u, 4294967295u, u_input.c), func_2(vec4<bool>(true, true, false, global0.x)), firstTrailingBit(vec4<u32>(66180u, u_input.b, 0u, u_input.d.x))), u_input.a.x, select(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(global1.x, true, false, true), vec4<bool>(false, true, global1.x, global0.x)), vec4<bool>(global1.x, false, global1.x, global0.x), true), select(!vec4<bool>(global1.x, false, global0.x, global0.x), select(vec4<bool>(true, global1.x, true, false), vec4<bool>(false, global1.x, global0.x, false), vec4<bool>(global0.x, false, false, false)), vec4<bool>(global0.x, global0.x, true, global0.x)), global0.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-250f, 796f)), -483f)))));
    let var_1 = func_4((_wgslsmith_clamp_vec2_u32(vec2<u32>(21872u, 0u), vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(7626u, 35027u)) & func_4(~var_0.a.yy, Struct_2(Struct_1(vec4<u32>(4294967295u, 34705u, var_0.a.x, u_input.b), var_0.b, var_0.c, var_0.c, vec2<bool>(var_0.c.x, global0.x)), 109f)).a.xy) << (u_input.d % vec2<u32>(32u)), Struct_2(Struct_1(~vec4<u32>(u_input.d.x, 1u, 1u, u_input.c), u_input.a.x, vec4<bool>(!var_0.c.x, var_0.d.x, global0.x, select(var_0.e.x, var_0.d.x, false)), !vec4<bool>(var_0.c.x, false, var_0.e.x, true), !(!vec2<bool>(true, var_0.d.x))), _wgslsmith_f_op_f32(max(-985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)))))).e;
    var var_2 = Struct_5(func_4(vec2<u32>(min(_wgslsmith_div_u32(126758u, var_0.a.x), countOneBits(var_0.a.x)), 1u), Struct_2(func_4(var_0.a.zw, Struct_2(Struct_1(var_0.a, u_input.a.x, var_0.d, var_0.d, global0.yz), 685f)), 313f)), Struct_2(Struct_1(func_2(select(var_0.c, vec4<bool>(false, false, var_0.d.x, var_1.x), true)), abs(u_input.a.x), !(!var_0.d), vec4<bool>(true, false, !global1.x, all(vec3<bool>(true, global0.x, global1.x))), vec2<bool>(var_0.d.x, true)), -1073f), (_wgslsmith_f_op_f32(-2053f + -2550f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1784f, -395f, true)))) & (-42393i == ~_wgslsmith_sub_i32(24613i, var_0.b)), func_4(var_0.a.wz, Struct_2(Struct_1(vec4<u32>(4294967295u, var_0.a.x, 22880u, 0u), _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x)), vec4<bool>(false, var_0.c.x, false, false), var_0.c, select(global0.xz, var_1, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(870f)) * _wgslsmith_f_op_f32(f32(-1f) * -187f)))).c.ww);
    var_0 = var_2.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, var_2.b.b, -905f, -963f) * vec4<f32>(2426f, var_2.b.b, 107f, var_2.b.b)) - vec4<f32>(var_2.b.b, var_2.b.b, var_2.b.b, var_2.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, 1417f, var_2.b.b, var_2.b.b))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(114f, var_2.b.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(837f, var_2.b.b))), -558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b - var_2.b.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(694f, _wgslsmith_f_op_f32(-505f - 814f)))), -155f), var_3.yww, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_3.wwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.wyy))))), var_0.b, _wgslsmith_mod_i32(var_2.a.b, ~var_0.b));
}

