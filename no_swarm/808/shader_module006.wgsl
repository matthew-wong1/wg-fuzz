struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_4, 8>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(~select(-u_input.a.x, -26135i, global1.x) <= _wgslsmith_add_i32(-1i, -u_input.a.x), !all(!vec4<bool>(global1.x, true, true, true)) && false);
    let var_1 = vec3<bool>(var_0.x, true, !select(global1.x, !any(vec3<bool>(var_0.x, global1.x, true)), firstTrailingBit(1u) < 9377u));
    var var_2 = var_1;
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1211f, global2.x)), _wgslsmith_f_op_f32(global2.x - global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1146f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(-1318f, -231f)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-115f)), _wgslsmith_f_op_f32(ceil(1730f)))), global1.x));
    var var_3 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(21865u, 54858u, 0u), vec3<u32>(1u, 1u, 30599u)) >> (_wgslsmith_add_u32(max(57686u, 33466u), ~73793u) % 32u)));
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(func_3(), arg_0.yzz, vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -467f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + global2.x))))), arg_2);
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.yx + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.xy), _wgslsmith_f_op_vec2_f32(select(arg_0.xy, vec2<f32>(1713f, var_0.c.x), vec2<bool>(global1.x, global1.x)))))))), arg_0.yw);
    global1 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_1, var_0.a)), !vec2<bool>(var_0.a, global1.x), !vec2<bool>(var_0.a, var_0.a)), vec2<bool>(global1.x == true, -2147483647i < var_0.e), all(vec3<bool>(true, false, false))), vec2<bool>(true, false && !select(false, true, arg_1)), vec2<bool>(any(!vec3<bool>(false, var_0.a, global1.x)), ~(0u << (1u % 32u)) <= (~1u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 74831u), vec2<u32>(4294967295u, 4294967295u)))));
    global1 = vec2<bool>(any(!select(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, global1.x, arg_1), vec3<bool>(arg_1, arg_1, global1.x))) || true, !(!arg_1));
    var var_1 = 1u;
    return Struct_3(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.e, -11058i, -2147483647i, -18167i), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2, u_input.a.x, 23962i, arg_2), ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, arg_2))), select(select(!select(vec4<bool>(global1.x, var_0.a, arg_1, false), vec4<bool>(false, var_0.a, true, global1.x), vec4<bool>(true, global1.x, false, false)), vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, var_0.a, false, global1.x)), select(vec4<bool>(global1.x, any(vec3<bool>(false, true, arg_1)), true, select(global1.x, false, false)), !vec4<bool>(var_0.a, true, true, var_0.a), select(!vec4<bool>(false, var_0.a, false, arg_1), vec4<bool>(false, true, var_0.a, true), vec4<bool>(var_0.a, global1.x, global1.x, true))), !(!(!vec4<bool>(false, false, var_0.a, var_0.a)))), Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.ywx - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(969f, arg_0.x, var_0.d), vec3<f32>(global2.x, global2.x, 299f), true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), 287f, -465f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -176f) + arg_0.x)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(27826i, var_0.e, var_0.e)), -vec3<i32>(1i, 1385i, -10973i)) << (43323u % 32u)), select(~(~(~0u)), _wgslsmith_mod_u32(~(~1u), 1u), all(select(!vec4<bool>(false, true, true, var_0.a), select(vec4<bool>(false, var_0.a, global1.x, true), vec4<bool>(true, global1.x, global1.x, false), true), select(vec4<bool>(false, arg_1, global1.x, var_0.a), vec4<bool>(arg_1, true, var_0.a, false), true)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, var_0.c.x, -642f))))), arg_0.wyx, _wgslsmith_f_op_f32(f32(-1f) * -1454f), min(~1i, ~(~u_input.a.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_2(arg_2.d.a, vec4<i32>(u_input.a.x, -arg_2.c.a, abs(_wgslsmith_add_i32(31064i, -12672i)), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 21286i, 2147483647i, arg_1.e.e), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a, arg_0.x, 40554i, arg_2.d.b.x), arg_2.d.b)))), !(true || func_2(arg_2.b, false, u_input.a.x).b.x) != ((func_2(arg_2.b, arg_2.d.c, 2147483647i).a ^ -29538i) <= arg_1.a), arg_1.c.a);
    var var_1 = arg_2;
    global1 = arg_1.b.zx;
    let var_2 = Struct_2(max(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_1.d.a, firstTrailingBit(arg_2.d.a)), vec2<u32>(arg_2.c.d, var_1.c.d), ~vec2<u32>(var_0.a.x, 4294967295u)), ~var_1.d.a), ((~var_1.d.b & _wgslsmith_sub_vec4_i32(var_0.b, var_0.b)) & ~(-var_1.d.b)) ^ ~var_1.d.b, false, arg_3.x | !arg_3.x);
    global2 = arg_2.b.wy;
    return -1i;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_4(vec2<i32>(u_input.a.x, ~0i), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -249f, global2.x, 294f) - vec4<f32>(global2.x, 1967f, global2.x, global2.x)), vec4<f32>(-885f, global2.x, 107f, global2.x))), true, u_input.a.x), Struct_4(0i, vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1212f, global2.x, global2.x, global2.x))), !global1.x, max(41308i, 53306i)), Struct_2(countOneBits(vec2<u32>(29459u, 13671u)), -vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), global2.x > global2.x, any(vec4<bool>(false, true, global1.x, true)))), !select(func_2(vec4<f32>(global2.x, global2.x, global2.x, 833f), false, 1i).b.xyx, vec3<bool>(true, true, true), u_input.a.x > 2147483647i)), vec4<bool>(true, global1.x, !any(vec2<bool>(false, global1.x)) | func_3(), true), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 316f, global2.x, global2.x) + vec4<f32>(global2.x, -161f, global2.x, -610f)))), all(vec3<bool>(true, global2.x <= 215f, global1.x)), abs(u_input.a.x)).c, 1u, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1143f, global2.x, -626f, 221f), vec4<f32>(1000f, global2.x, 124f, -1093f)))), global1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(51915i, u_input.a.x, u_input.a.x), abs(vec3<i32>(-50462i, u_input.a.x, u_input.a.x)), vec3<i32>(0i, 8685i, 28684i)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, -12511i))).c);
    let var_1 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(4567i << (var_0.d % 32u), ~43169i), -2147483647i), u_input.a.x), vec4<f32>(551f, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(753f, var_0.e.c.x, -1423f, 1462f)), false, -1i).c.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(353f)))))), _wgslsmith_f_op_f32(exp2(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.b.x, -366f, 1455f, 1000f))), !global1.x, var_0.a).c.c.x))), Struct_3(var_0.c.e, select(vec4<bool>(true, !var_0.b.x, true, true), var_0.b, !var_0.e.a), Struct_1(true | global1.x, vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.c.x), _wgslsmith_f_op_f32(var_0.e.b.x + 710f), _wgslsmith_f_op_f32(-global2.x)), var_0.e.b, var_0.c.c.x, _wgslsmith_mult_i32(29345i | u_input.a.x, _wgslsmith_add_i32(var_0.c.e, 18189i))), _wgslsmith_div_u32(60391u, 8881u), var_0.e), Struct_2(vec2<u32>(min(97358u, ~42959u), select(0u, 0u, !var_0.e.a)), firstTrailingBit(-vec4<i32>(0i, u_input.a.x, 0i, var_0.e.e)) & ~(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_0.c.e) | vec4<i32>(1827i, -1i, var_0.a, var_0.e.e)), global1.x, var_0.b.x));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_div_vec4_f32(vec4<f32>(1440f, var_1.c.c.c.x, var_1.c.c.b.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.x, var_1.b.x, -1618f)))), _wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x - -722f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), !(!(!var_0.c.a)), 1i).b;
    var_2 = var_0.b;
    var var_3 = select(~vec3<u32>(85827u, var_0.d, ~(var_0.d >> (var_0.d % 32u))), ~vec3<u32>(~var_1.c.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.d.a.x, 0u, 14614u), vec4<u32>(1u, 4294967295u, 0u, 0u)), var_1.c.d), !((global1.x || (u_input.a.x <= var_1.c.c.e)) & var_0.b.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, -981f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(593f * _wgslsmith_f_op_f32(sign(-595f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_sub_i32(u_input.a.x, -1i), vec4<f32>(-239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1437f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))), -778f, _wgslsmith_div_f32(global2.x, 1f)), Struct_3(u_input.a.x << (1u % 32u), select(select(!vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, true, true, true), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, false, false, false), global1.x)), !vec4<bool>(global1.x, global1.x, true, global1.x), !(!global1.x)), Struct_1(all(!vec4<bool>(global1.x, global1.x, true, global1.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(874f, global2.x, 222f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1289f, global2.x, 158f)))), _wgslsmith_f_op_f32(trunc(global2.x)), -(~u_input.a.x)), 1u, Struct_1(true && any(vec2<bool>(global1.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 394f, global2.x), vec3<f32>(-1655f, -166f, 1558f), global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -312f), global2.x), _wgslsmith_f_op_f32(func_1()), firstLeadingBit(u_input.a.x ^ u_input.a.x))), Struct_2(vec2<u32>(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -383f, -502f, -1000f), vec4<f32>(270f, -137f, global2.x, 1350f)), false, u_input.a.x).d, 0u), -max(abs(vec4<i32>(1i, u_input.a.x, u_input.a.x, -541i)), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -10213i))), true, true));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global0 = array<Struct_4, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(490f);
}

