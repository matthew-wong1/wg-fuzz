struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> vec4<bool> {
    var var_0 = !select(global0.zxy, select(vec3<bool>(any(vec2<bool>(true, false)), false, true), select(vec3<bool>(true, global0.x, true), vec3<bool>(true, true, true), true), select(global0.zxx, vec3<bool>(global0.x, false, global0.x), global0.zxw)), global0.zxz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1229f)))))))));
    var_1 = 671f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(301f, -1567f, 1435f, -2100f), vec4<f32>(1000f, -117f, 307f, -1338f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1555f, 135f, -437f, -840f)))))), u_input.a.x);
    let var_3 = !(!(!select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, var_0.x, true, true), var_0.x), vec4<bool>(false, var_0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x))));
    return !(!(!select(var_3, select(var_3, var_3, var_3), !var_3)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    global0 = select(func_3(1u, vec2<u32>(u_input.c, ~u_input.c ^ ~60411u), u_input.d), vec4<bool>(false, (_wgslsmith_sub_i32(u_input.d, u_input.b) ^ (2147483647i << (u_input.c % 32u))) > min(-u_input.a.x, u_input.d), false, !(0u >= u_input.c)), any(global0.wzx));
    var var_0 = ~1u;
    global0 = select(select(vec4<bool>(false, global0.x, !any(vec2<bool>(global0.x, global0.x)), any(func_3(u_input.c, vec2<u32>(1u, u_input.c), 717i).xz)), !vec4<bool>(false, true, true || global0.x, true), !(!global0.x) && false), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))) <= _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)), false, true, false), global0.x);
    global0 = !select(!func_3(3519u, vec2<u32>(u_input.c, 17162u) & vec2<u32>(u_input.c, 16097u), -30578i), func_3(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), select(vec2<u32>(u_input.c, 0u), vec2<u32>(0u, 4294967295u), global0.yz)), u_input.a.x), all(func_3(4294967295u, vec2<u32>(u_input.c, 4294967295u), 0i).yyw));
    let var_1 = ~(~(~u_input.c)) <= 68964u;
    return Struct_2(global0.zzy, 22894i, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1811f, _wgslsmith_f_op_f32(186f - -1928f), 632f))), min(6896i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(12378i, -1i, arg_1)) << (_wgslsmith_add_u32(u_input.c, 37324u) % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1251f, arg_0.x, arg_0.x, -733f), vec4<f32>(arg_0.x, -318f, -639f, -1269f))))), firstLeadingBit(u_input.a.x >> (u_input.c % 32u)) ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d, u_input.d), ~15204i)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f - -580f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -515f)))), 2147483647i);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.a | vec3<i32>(8069i, _wgslsmith_div_i32(func_2(vec2<f32>(400f, arg_3.x), 0i).b, 0i), 1i), abs(u_input.a));
    global0 = !(!(!vec4<bool>(6427u > arg_0, false, func_2(vec2<f32>(-1424f, -241f), arg_1.c.b).a.x, global0.x)));
    var_0 = -1i;
    let var_1 = arg_3.x;
    var var_2 = arg_1.c;
    return func_1(vec3<bool>(any(func_2(_wgslsmith_f_op_vec2_f32(round(arg_1.d.a.xy)), 49233i & var_2.b).a.xx), func_1(global0.zyw).a.x, true)).c;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~_wgslsmith_sub_u32(10278u, _wgslsmith_mult_u32(_wgslsmith_add_u32(~4930u, 4294967295u & u_input.c), 62943u));
    global0 = select(vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(508f, 765f)))), 2147483647i).a.x, global0.x, true, true), !func_3(_wgslsmith_add_u32(0u, 32256u), ~(vec2<u32>(4294967295u, var_0) ^ vec2<u32>(u_input.c, 4294967295u)), u_input.b & u_input.a.x), !(!select(!vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, false, false, global0.x)), !vec4<bool>(global0.x, false, global0.x, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, -1011f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) - -164f), 237f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(func_1(global0.www).c.a.x - _wgslsmith_f_op_f32(940f * arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_f_op_f32(round(-1064f)))))), _wgslsmith_div_i32(-2147483647i, u_input.a.x));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 81616u ^ _wgslsmith_mod_u32(4294967295u >> (var_0 % 32u), ~48960u)), abs(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 2340u, u_input.c), vec3<u32>(4294967295u, var_0, u_input.c)), firstLeadingBit(~var_0))));
    global0 = select(!(!vec4<bool>(global0.x, all(vec4<bool>(true, false, global0.x, true)), func_1(global0.ywz).a.x, u_input.a.x >= 10461i)), select(func_3(select(u_input.c, ~u_input.c, global0.x), (vec2<u32>(var_0, var_2) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) ^ countOneBits(vec2<u32>(u_input.c, 23377u)), 2147483647i), vec4<bool>(!(global0.x || global0.x), true, global0.x, func_2(vec2<f32>(-2561f, arg_0.a.x), _wgslsmith_sub_i32(arg_0.b, 1i)).a.x), vec4<bool>(!func_1(vec3<bool>(global0.x, false, global0.x)).a.x, global0.x, true, true)), global0.x);
    return vec4<bool>(global0.x, func_1(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)), arg_0.a.xw), max(~4449i, firstTrailingBit(-23473i))).a).a.x, func_2(arg_0.a.zy, _wgslsmith_dot_vec2_i32(abs(u_input.a.yz) >> (max(vec2<u32>(30322u, 49414u), vec2<u32>(19477u, var_0)) % vec2<u32>(32u)), u_input.a.zy)).a.x, !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(abs(u_input.c), func_1(vec3<bool>(global0.x, true, !global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), func_1(vec3<bool>(false, false, global0.x)).d.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(622f, -114f, -760f, _wgslsmith_f_op_f32(-1548f + -1766f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(594f, 2805f, -1205f, -856f) * vec4<f32>(-1666f, 1095f, 928f, 115f)) * _wgslsmith_div_vec4_f32(vec4<f32>(525f, -1751f, 1004f, -1000f), vec4<f32>(-1776f, 1000f, 1000f, -2269f)))))));
    let var_0 = vec4<u32>(firstLeadingBit(reverseBits(10620u)), ~0u, select(4294967295u, 50434u, global0.x), u_input.c);
    let var_1 = Struct_2(func_5(Struct_1(vec4<f32>(-309f, _wgslsmith_f_op_f32(ceil(-473f)), -1000f, 417f), -25418i)).xxz, u_input.b, func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1329f, -1531f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-664f, 576f), vec2<f32>(726f, -697f)))))), 28310i).d, func_4(4294967295u, func_1(global0.xyw), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1474f - -933f), _wgslsmith_f_op_f32(f32(-1f) * -1038f), func_3(u_input.c, vec2<u32>(u_input.c, 0u), u_input.a.x).x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1380f, 102f, 632f, -284f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 411f, -312f, 862f)), global0.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(928f, -878f, -1095f, 253f), vec4<f32>(-442f, 312f, 1082f, -555f), vec4<bool>(global0.x, false, global0.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1479f, -508f, -402f, 144f)))))));
    let var_2 = firstTrailingBit(-abs(max(vec4<i32>(var_1.d.b, -2147483647i, -1i, 1i), vec4<i32>(-15687i, 1i, 57164i, 1i)) >> (~var_0 % vec4<u32>(32u))));
    var var_3 = func_2(var_1.c.a.zw, -24890i).c;
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(33197i, var_2.x, -2147483647i), u_input.a), vec3<i32>(var_3.b, -1i, u_input.b), global0.yzy)), -var_2.yyw), vec2<i32>(countOneBits(-3050i), func_1(vec3<bool>(true, true, true)).d.b));
}

