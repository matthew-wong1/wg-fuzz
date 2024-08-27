struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: Struct_3;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.d, 1413f) * vec2<f32>(-1308f, global1.c.d)))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, -497f), vec2<f32>(global1.c.d, 450f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a, 1000f))), vec2<f32>(1667f, -1477f), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -281f)), vec2<f32>(-865f, _wgslsmith_f_op_f32(round(global1.c.d)))) * vec2<f32>(108f, global1.b)));
    global1 = Struct_3(520f, global1.c.d, global1.c);
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(699f + 280f), global1.b)));
    var_1 = u_input.d == ~_wgslsmith_div_i32(arg_0.b | u_input.d, u_input.d);
    return select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, !global0.x), !select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), select(!vec4<bool>(false, false, arg_0.c.x, false), vec4<bool>(false, false, true, false), !arg_0.c.x), global0.x), all(select(vec4<bool>(false, arg_0.c.x, arg_0.c.x, !arg_0.c.x), select(!vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x), select(vec4<bool>(false, arg_0.c.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), !vec4<bool>(true, global0.x, arg_0.c.x, false)), select(!vec4<bool>(arg_0.c.x, false, global0.x, false), vec4<bool>(false, true, true, true), vec4<bool>(global0.x, arg_0.c.x, false, false)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    let var_0 = -max(vec3<i32>(~(~19199i), abs(1i), -_wgslsmith_dot_vec2_i32(global1.c.c.yx, global1.c.c.yx)), -vec3<i32>(global1.c.c.x, arg_1.b, u_input.d) << (select(u_input.a.yxw, vec3<u32>(global1.c.a, global1.c.a, 0u) & vec3<u32>(arg_1.a, 4294967295u, 44642u), true) % vec3<u32>(32u)));
    let var_1 = Struct_2(global1.c.a, ~(~1i), select(select(vec3<bool>(global0.x, arg_1.c.x, !global0.x), vec3<bool>(true, true, true), !(!vec3<bool>(arg_1.c.x, false, false))), select(!vec3<bool>(global0.x, false, true), select(!global0.xww, !global0.xwx, !global0.x), false), vec3<bool>(all(func_3(arg_1)), true, true)));
    global0 = select(vec4<bool>(!arg_1.c.x, false, arg_1.c.x, func_3(Struct_2(5167u, ~arg_1.b, select(vec3<bool>(false, true, false), vec3<bool>(var_1.c.x, global0.x, false), arg_1.c))).x), !vec4<bool>(false, var_1.b >= arg_1.b, true, true), true);
    var var_2 = arg_0.zzz;
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) - var_2.x), 372f, global1.c);
    return arg_1.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.b, -349f, -241f) - vec4<f32>(332f, 1198f, -102f, global1.c.b)), Struct_2(33818u, global1.c.c.x, global0.yxz)) & all(vec3<bool>(global0.x, false, true)), global0.x, true & any(global0.zz), false), vec4<bool>(true, global0.x, !(global0.x || false) && false, true), func_3(Struct_2(global1.c.a, u_input.c.x, select(func_3(Struct_2(1625u, -36315i, vec3<bool>(global0.x, false, false))).zww, vec3<bool>(true, global0.x, false), false))).x);
    var var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global1.b) + -1477f) != global1.b), !var_0.x, !(u_input.a.x != abs(_wgslsmith_dot_vec3_u32(vec3<u32>(36064u, u_input.a.x, global1.c.a), u_input.a.xyx))));
    let var_2 = select(!(!vec4<bool>(true, var_0.x, true, func_3(Struct_2(u_input.a.x, u_input.c.x, vec3<bool>(var_1.x, var_0.x, var_1.x))).x)), vec4<bool>(true, false, all(vec3<bool>(global0.x, true, true)) || true, select(global0.x, false | func_2(vec4<f32>(228f, -650f, global1.c.d, global1.b), Struct_2(99401u, -53478i, var_0.wxy)), 10886u < ~global1.c.a)), global0.x);
    var var_3 = Struct_1(max(~min(44328u | global1.c.a, u_input.e.x), u_input.b.x), _wgslsmith_f_op_f32(floor(1278f)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -32291i), u_input.c) & -49954i, u_input.c.x), i32(-1i) * -2147483647i, -1i), _wgslsmith_div_f32(2000f, global1.c.b));
    global1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1406f + global1.c.d) * -768f)), 1167f, func_2(vec4<f32>(_wgslsmith_f_op_f32(global1.b * 1344f), global1.b, _wgslsmith_f_op_f32(abs(var_3.b)), -1000f), Struct_2(1u, _wgslsmith_mult_i32(global1.c.c.x, 42607i), !vec3<bool>(global0.x, var_1.x, global0.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) + _wgslsmith_f_op_f32(f32(-1f) * -1044f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-899f - 1151f), -1531f, true))))), Struct_1(1u, _wgslsmith_f_op_f32(sign(global1.b)), select(firstTrailingBit(vec3<i32>(var_3.c.x, -2147483647i, 1i)), vec3<i32>(0i, global1.c.c.x, ~(-27904i)), var_2.x), global1.c.d));
    return Struct_2(u_input.a.x ^ _wgslsmith_sub_u32(~max(1u, 99084u), abs(1u)), _wgslsmith_mult_i32(~global1.c.c.x | -var_3.c.x, var_3.c.x) << ((4552u >> (var_3.a % 32u)) % 32u), !vec3<bool>(false, !all(var_2.ww), false & func_3(Struct_2(4294967295u, global1.c.c.x, vec3<bool>(global0.x, true, var_0.x))).x));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_5 {
    var var_0 = global0.x;
    global1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.b, global1.c.b, arg_2.c.x)))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(global1.b, global1.c.d)) * global1.c.d))), global1.c);
    var var_1 = vec4<u32>(~(~(~u_input.a.x)), arg_0, global1.c.a, ~abs(1u));
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -989f))), _wgslsmith_f_op_f32(global1.c.b - 1103f), _wgslsmith_f_op_f32(select(271f, _wgslsmith_f_op_f32(-global1.a), !(arg_2.b < arg_2.b)))), global1.c, -585f, true, countOneBits(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(arg_2.b, global1.c.c.x), _wgslsmith_sub_i32(-22252i, -2147483647i))));
    let var_3 = -1713f;
    return Struct_5(_wgslsmith_f_op_vec3_f32(round(var_2.a)), reverseBits(countOneBits(~(~vec3<i32>(1i, 2147483647i, u_input.c.x)))), Struct_1(global1.c.a, -540f, firstLeadingBit(-_wgslsmith_add_vec3_i32(var_2.b.c, var_2.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(313f * 1089f), 367f))));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    var var_0 = func_4(arg_0.c.a, select(func_3(func_1()).zwx, global0.yyx, !vec3<bool>(global0.x, !global0.x, !global0.x)), Struct_2(0u, _wgslsmith_div_i32(arg_0.c.c.x, 10152i), !(!(!vec3<bool>(global0.x, true, global0.x))))).c.c.zx;
    global0 = !(!vec4<bool>(global0.x, arg_0.c.a != ~2443u, any(!vec3<bool>(global0.x, true, global0.x)), !func_3(Struct_2(10286u, -42401i, global0.zyy)).x));
    let var_1 = func_4(~51644u, !select(vec3<bool>(true, global0.x && false, arg_0.c.c.x >= 15368i), select(global0.yxz, global0.yzz, select(global0.xzx, vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, false))), !global0.x && any(vec4<bool>(global0.x, false, global0.x, false))), Struct_2(~arg_0.c.a, ~reverseBits(-2147483647i), !global0.wyy)).c;
    let var_2 = global0.x;
    var_0 = firstLeadingBit(~(-(~abs(global1.c.c.zz))));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1877f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + var_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + arg_0.c.d), Struct_1(4294967295u, -1111f, var_1.c, -1033f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.a >> (global1.c.a % 32u);
    global1 = func_5(func_4(_wgslsmith_mult_u32(u_input.a.x, var_0), vec3<bool>(global0.x, global0.x, global0.x || !global0.x), func_1()));
    let var_1 = !global0.yw;
    global0 = select(vec4<bool>(any(!(!global0.zz)), ~_wgslsmith_clamp_i32(u_input.d, 68997i, u_input.c.x) == _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.c.x, 0i, global1.c.c.x, global1.c.c.x), vec4<i32>(1i, 3202i, global1.c.c.x, u_input.d)), _wgslsmith_mult_i32(u_input.c.x, -5467i)), true, false), select(!select(func_3(Struct_2(38605u, u_input.c.x, global0.yww)), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, global0.x, false, global0.x), false), !vec4<bool>(var_1.x, global0.x, global0.x, global0.x)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -654f) == _wgslsmith_f_op_f32(global1.c.d - global1.c.d), var_1.x, true, true), vec4<bool>(true, _wgslsmith_f_op_f32(sign(-405f)) > _wgslsmith_f_op_f32(round(global1.b)), true, var_1.x)), true);
    let var_2 = Struct_1(~select(~u_input.e.x, reverseBits(u_input.e.x), true) & ~abs(~var_0), 651f, abs(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1151f, _wgslsmith_f_op_f32(min(-2010f, global1.a)), -383f > global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~global1.c.c.xx), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(1i), -countOneBits(-2147483647i), ~(-global1.c.c.x), var_2.c.x), select(vec4<i32>(-4600i, var_2.c.x, 1i, u_input.c.x) >> (firstLeadingBit(vec4<u32>(4294967295u, var_0, var_0, var_0)) % vec4<u32>(32u)), countOneBits(-vec4<i32>(var_2.c.x, -10667i, global1.c.c.x, 0i)), any(vec4<bool>(global0.x, true, false, false)))), ~4294967295u, -1i);
}

