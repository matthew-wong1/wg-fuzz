struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<bool>(false, false, true, true), -35216i, vec2<f32>(424f, -161f), vec2<u32>(50005u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(global0.a, select(global0.b, vec4<bool>(global0.a, !global0.b.x | true, true, global0.a || global0.a), (_wgslsmith_clamp_i32(-7848i, arg_0, -84696i) > ~arg_0) & any(select(global0.b.yyy, global0.b.zwx, vec3<bool>(false, false, true)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(global0.c, -2147483647i), arg_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x)))) * global0.d), firstLeadingBit(vec2<u32>(4294967295u, 3969u)));
    let var_1 = Struct_1(var_0.a, select(select(select(!vec4<bool>(global0.b.x, false, false, true), var_0.b, false), vec4<bool>(!var_0.a, true, true, true), global0.b), global0.b, vec4<bool>(false, global0.a, global0.b.x, all(select(vec3<bool>(var_0.a, global0.b.x, false), vec3<bool>(global0.a, var_0.b.x, false), vec3<bool>(false, true, global0.b.x))))), u_input.b.x, arg_1, var_0.e);
    let var_2 = _wgslsmith_add_i32(1033i, ~_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(arg_2.x, var_1.c, -2147483647i)), arg_2.x));
    var var_3 = var_1;
    var var_4 = all(select(global0.b, var_3.b, _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(trunc(-356f))) > _wgslsmith_f_op_f32(-var_3.d.x)));
    return all(vec4<bool>(any(select(global0.b, !var_0.b, true || var_0.b.x)), !(reverseBits(2147483647i) != u_input.b.x), true, false));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(!(!func_3(_wgslsmith_clamp_i32(-2147483647i, arg_1.c, u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, -579f)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, arg_2.c, 1i), u_input.b))), arg_2.b, reverseBits(~(~arg_1.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.d), vec2<f32>(global0.d.x, 1420f), arg_2.b.wz))), vec2<f32>(650f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), vec2<u32>(~_wgslsmith_div_u32(u_input.a, arg_1.e.x), ~arg_0.x) >> (global0.e % vec2<u32>(32u)));
    global0 = arg_2;
    global0 = arg_1;
    var var_0 = vec4<f32>(arg_1.d.x, arg_1.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.d.x), -438f, true)), arg_1.d.x);
    var var_1 = any(arg_1.b.zyz);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = ~arg_0.e;
    let var_1 = arg_0.d.x;
    var var_2 = vec3<bool>(any(arg_2.zy), any(!func_2(vec2<u32>(93557u, arg_0.e.x), Struct_1(true, vec4<bool>(false, arg_2.x, true, global0.b.x), 1i, vec2<f32>(global0.d.x, var_1), u_input.d.xw), Struct_1(false, arg_0.b, 0i, arg_0.d, vec2<u32>(53242u, 1u)), ~arg_0.e.x).b), arg_1);
    return func_2(arg_0.e | u_input.d.zx, Struct_1(func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.yy, arg_0.e), func_2(vec2<u32>(4294967295u, var_0.x), arg_0, arg_0, arg_0.e.x).e), arg_0, func_2(vec2<u32>(25349u, 0u), func_2(global0.e, arg_0, arg_0, 35624u), Struct_1(false, vec4<bool>(arg_0.b.x, true, arg_0.a, arg_2.x), -8301i, global0.d, u_input.d.zx), u_input.d.x), ~countOneBits(global0.e.x)).a, global0.b, -u_input.e, _wgslsmith_f_op_vec2_f32(ceil(arg_0.d)), vec2<u32>(44213u, ~abs(0u))), Struct_1(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, var_2.x))), vec4<bool>(true, arg_0.e.x > func_2(vec2<u32>(1u, 0u), arg_0, Struct_1(var_2.x, global0.b, arg_0.c, global0.d, arg_0.e), 54023u).e.x, true, func_3(abs(-2147483647i), vec2<f32>(-1205f, arg_0.d.x), u_input.b)), ~_wgslsmith_sub_i32(reverseBits(-2147483647i), arg_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -939f)) * global0.d), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.e.x, arg_0.e.x) >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)), func_2(vec2<u32>(u_input.d.x, 4819u), func_2(vec2<u32>(global0.e.x, global0.e.x), Struct_1(arg_0.a, arg_0.b, arg_0.c, vec2<f32>(var_1, global0.d.x), u_input.d.yz), Struct_1(false, global0.b, u_input.e, arg_0.d, global0.e), arg_0.e.x), arg_0, arg_0.e.x).e)), ~(~_wgslsmith_dot_vec3_u32(~u_input.d.xyz, u_input.d.yww ^ u_input.d.yyz)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = func_4(func_2(vec2<u32>(~48075u, 4294967295u), arg_3, Struct_1(arg_3.b.x, global0.b, _wgslsmith_add_i32(reverseBits(12932i), _wgslsmith_mult_i32(global0.c, arg_3.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-523f, global0.d.x)))), vec2<u32>(~arg_2.x, abs(u_input.c))), 0u), true, !(!vec3<bool>(any(vec3<bool>(false, false, true)), arg_3.b.x, arg_3.b.x && true)));
    var var_1 = vec3<bool>(func_3(var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 752f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 828f) * func_4(arg_3, var_0.b.x, var_0.b.zxw).d)), -_wgslsmith_div_vec3_i32(reverseBits(u_input.b), select(vec3<i32>(global0.c, 19287i, 17504i), u_input.b, vec3<bool>(arg_0.x, arg_3.b.x, arg_3.b.x)))), all(vec2<bool>(any(func_2(vec2<u32>(u_input.d.x, arg_3.e.x), Struct_1(true, arg_3.b, global0.c, var_0.d, arg_2.wz), Struct_1(arg_0.x, global0.b, 2147483647i, arg_3.d, vec2<u32>(global0.e.x, 0u)), 10393u).b.wx), 0i < -global0.c)), arg_3.a);
    var var_2 = func_2(~vec2<u32>(~_wgslsmith_mod_u32(arg_2.x, arg_3.e.x), ~_wgslsmith_mod_u32(10384u, 4294967295u)), func_4(Struct_1(all(vec3<bool>(false, arg_0.x, true)), vec4<bool>(true, global0.e.x == 4294967295u, !arg_0.x, true), _wgslsmith_clamp_i32(i32(-1i) * -60691i, arg_3.c, var_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(429f, -411f) + vec2<f32>(arg_3.d.x, 1108f)), var_0.e), false, global0.b.wxy), Struct_1(true, arg_3.b, u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-170f, 1563f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1772f, var_0.d.x) - vec2<f32>(-343f, 729f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, 109f)))), _wgslsmith_sub_vec2_u32(~global0.e, ~u_input.d.yy)), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.x, 4294967295u, 23385u, global0.e.x), max(vec4<u32>(u_input.a, 0u, global0.e.x, var_0.e.x), arg_2))), vec4<u32>(abs(func_2(global0.e, arg_3, Struct_1(false, vec4<bool>(false, arg_0.x, true, var_1.x), -2147483647i, var_0.d, var_0.e), 4294967295u).e.x), max(1u, _wgslsmith_add_u32(75764u, 0u)), _wgslsmith_clamp_u32(1u, arg_3.e.x, 16924u) ^ arg_3.e.x, ~max(65017u, 1u))));
    let var_3 = !(!any(global0.b.zw)) != true;
    var_2 = func_4(arg_3, var_0.b.x, !vec3<bool>(var_0.a, !var_2.a, var_3));
    return vec3<f32>(arg_1, arg_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(695f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false & !any(vec4<bool>(global0.a, false, global0.b.x, true)), true, true, all(!global0.b.zxx));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(all(var_0.xzx), all(!vec2<bool>(global0.a, var_0.x)), any(var_0.xz)), _wgslsmith_f_op_f32(ceil(global0.d.x)), u_input.d, Struct_1(false, select(vec4<bool>(var_0.x, global0.b.x, true, global0.a), vec4<bool>(global0.b.x, true, global0.a, false), select(var_0.x, var_0.x, true)), firstTrailingBit(u_input.e), vec2<f32>(_wgslsmith_f_op_f32(round(global0.d.x)), 403f), abs(vec2<u32>(6977u, u_input.d.x) << (global0.e % vec2<u32>(32u)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d.x, _wgslsmith_div_f32(395f, global0.d.x)))), global0.d.x, -101f));
    var var_2 = all(global0.b);
    let var_3 = _wgslsmith_mult_u32(u_input.c, ~_wgslsmith_sub_u32(2329u, global0.e.x));
    let var_4 = global0.d;
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x)))), _wgslsmith_f_op_f32(1000f + -733f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(346f - -254f)))));
    let var_6 = func_4(func_2(vec2<u32>(~1u, ~(~5244u)), Struct_1(global0.a, select(vec4<bool>(true, global0.a, true, global0.a), select(vec4<bool>(true, false, var_0.x, false), var_0, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true), global0.a)), 2147483647i, vec2<f32>(522f, 1487f), global0.e), func_2((u_input.d.ww << (u_input.d.yy % vec2<u32>(32u))) >> (select(vec2<u32>(4294967295u, 1u), vec2<u32>(18381u, var_3), global0.b.x) % vec2<u32>(32u)), Struct_1(u_input.e <= u_input.e, select(var_0, vec4<bool>(true, global0.a, global0.b.x, global0.b.x), true), i32(-1i) * -1i, vec2<f32>(1000f, -180f), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3, global0.e.x), u_input.d.xy)), func_4(func_2(global0.e, Struct_1(global0.a, var_0, global0.c, vec2<f32>(global0.d.x, 933f), vec2<u32>(0u, global0.e.x)), Struct_1(global0.a, var_0, u_input.e, var_5.zy, vec2<u32>(u_input.d.x, u_input.a)), 0u), global0.a, var_0.www), countOneBits(_wgslsmith_mult_u32(var_3, 1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.d, vec4<u32>(35693u, 295u, global0.e.x, global0.e.x)), ~u_input.d << (abs(vec4<u32>(var_3, 0u, 46331u, 1u)) % vec4<u32>(32u)))), var_0.x, global0.b.xxw);
    let var_7 = func_2(global0.e, Struct_1((-537f <= _wgslsmith_f_op_f32(-var_6.d.x)) && var_6.b.x, func_2(vec2<u32>(_wgslsmith_sub_u32(var_6.e.x, u_input.d.x), ~var_3), Struct_1(func_3(global0.c, vec2<f32>(var_1.x, global0.d.x), u_input.b), !global0.b, -15929i, vec2<f32>(1281f, var_4.x), var_6.e ^ vec2<u32>(u_input.d.x, var_6.e.x)), Struct_1(true, func_2(var_6.e, var_6, var_6, var_3).b, 1i, global0.d, global0.e), _wgslsmith_sub_u32(4294967295u, var_3)).b, global0.c, vec2<f32>(func_2(global0.e, var_6, func_4(Struct_1(true, vec4<bool>(true, global0.a, global0.b.x, global0.b.x), var_6.c, var_1.xy, var_6.e), true, var_0.zyy), ~4294967295u).d.x, _wgslsmith_f_op_f32(max(-478f, _wgslsmith_f_op_f32(trunc(var_1.x))))), min(global0.e, u_input.d.wy)), var_6, firstLeadingBit(~(~35315u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_3, 1u) ^ u_input.d.x, _wgslsmith_f_op_f32(var_1.x + -387f));
}

