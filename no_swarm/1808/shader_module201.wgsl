struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1070f, -1428f, -856f), vec3<f32>(-1966f, -459f, -465f), vec3<f32>(-861f, -1594f, -424f), vec3<f32>(-451f, -953f, -281f), vec3<f32>(-1693f, -1000f, -1005f), vec3<f32>(1169f, -508f, -1383f), vec3<f32>(792f, -801f, 410f), vec3<f32>(-189f, -1000f, 1973f), vec3<f32>(1061f, 379f, 1833f), vec3<f32>(145f, 1000f, 1250f), vec3<f32>(453f, 939f, 1000f), vec3<f32>(-696f, 883f, -809f), vec3<f32>(-1460f, -462f, -488f), vec3<f32>(-582f, 1492f, -1000f), vec3<f32>(346f, 984f, -1162f), vec3<f32>(-483f, -1933f, -136f), vec3<f32>(-725f, -1000f, 1227f), vec3<f32>(637f, 455f, 1996f), vec3<f32>(1206f, -1566f, -388f), vec3<f32>(417f, -1335f, -2012f), vec3<f32>(1000f, 1296f, 1000f), vec3<f32>(612f, -722f, 756f), vec3<f32>(1000f, 2242f, -150f), vec3<f32>(-1000f, -1082f, 761f), vec3<f32>(540f, -102f, 1090f), vec3<f32>(-1158f, -1000f, -370f), vec3<f32>(1548f, 1000f, 1012f), vec3<f32>(1964f, -851f, -1305f), vec3<f32>(167f, 1607f, -2643f));

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 3>;

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_4(Struct_3(!global3.a.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, -1000f, 520f, 196f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -975f, 898f))))), Struct_2(select(-1i, global1.a, true), -1000f)), _wgslsmith_f_op_f32(-global3.b.x), Struct_3(vec2<bool>(global3.c == u_input.b.x, true), global3.b, Struct_2(global1.a, -776f)), Struct_2(global3.c, 1013f), ~(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_0, arg_0, 77191u)), _wgslsmith_add_vec3_u32(vec3<u32>(63057u, 53339u, 4294967295u), vec3<u32>(u_input.c.x, u_input.a, 4294967295u)))));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(select(1u, 25483u, true)), ~_wgslsmith_dot_vec2_u32(var_0.e.zx, u_input.c)), abs(var_0.e.x));
    let var_2 = global1.b;
    let var_3 = var_0.c;
    let var_4 = Struct_3(!select(vec2<bool>(any(global3.a), all(global3.a.wz)), !(!global3.a.wz), all(vec4<bool>(false, true, false, var_3.a.x))), var_0.c.b, Struct_2(global3.c, -1561f));
    return _wgslsmith_div_i32(0i, 19895i);
}

fn func_2() -> Struct_2 {
    let var_0 = all(!global2[_wgslsmith_index_u32(0u, 3u)]);
    global2 = array<vec4<bool>, 3>();
    var var_1 = Struct_1(!vec4<bool>(var_0, global3.a.x, -u_input.b.x < -41491i, true), vec4<f32>(-1095f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1102f)), -3425f), reverseBits(2147483647i));
    global0 = array<vec3<f32>, 29>();
    let var_2 = Struct_4(Struct_3(vec2<bool>(select(false, true, false) | false, var_1.a.x), var_1.b, Struct_2(func_3(15391u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(519f, global3.b.x, 1000f, 1602f)))), -559f)), global1.b, Struct_3(vec2<bool>(!any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(global3.b.x - -277f) != _wgslsmith_f_op_f32(round(global3.b.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + global3.b.x), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_f32(step(var_1.b.x, 1236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1377f)), _wgslsmith_f_op_f32(abs(2605f)))), Struct_2(global3.c, _wgslsmith_f_op_f32(min(-1323f, global1.b)))), Struct_2(min(-1i, firstLeadingBit(global3.c)), 126f), ~vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a, 1u)), vec3<u32>(47899u, 7239u, 3061u) | vec3<u32>(u_input.c.x, 48876u, u_input.a)), ~_wgslsmith_add_u32(u_input.a, 0u)));
    return var_2.d;
}

fn func_1() -> Struct_3 {
    return Struct_3(vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(-global3.b), func_2());
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(-508f + -1000f)))) * 1026f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b)) * -221f) * global3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(select(global3.b.x, 1487f, arg_2.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(func_2().b, -772f), -259f));
    var var_1 = ~vec4<u32>(select(1u, 0u, !any(vec4<bool>(false, global3.a.x, false, global3.a.x))), _wgslsmith_sub_u32(arg_1.x, arg_1.x), 17054u, u_input.c.x);
    var var_2 = _wgslsmith_clamp_i32(-54070i, func_2().a, firstLeadingBit(u_input.b.x));
    var var_3 = abs(~(~select(global1.a, arg_2.c.a, global3.a.x) >> (4294967295u % 32u)));
    let var_4 = arg_2.c;
    return select(vec3<bool>(true, false, global3.c < 9171i), global3.a.wyy, true);
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec4<bool> {
    global2 = array<vec4<bool>, 3>();
    global0 = array<vec3<f32>, 29>();
    var var_0 = arg_1.x;
    let var_1 = Struct_1(!(!vec4<bool>(false || global3.a.x, arg_0 || global3.a.x, arg_0, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, global1.b, 1599f, -104f) * _wgslsmith_f_op_vec4_f32(max(global3.b, vec4<f32>(global1.b, global3.b.x, -1491f, -218f)))))), 1i);
    var var_2 = Struct_4(func_1(), var_1.b.x, Struct_3(vec2<bool>(arg_0, var_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 308f, global1.b, global3.b.x) * global3.b)), Struct_2(-_wgslsmith_sub_i32(26358i, var_1.c), -1017f)), Struct_2(select(~u_input.b.x, 0i, true), -477f), vec3<u32>(u_input.a, _wgslsmith_add_u32(arg_2.x, ~arg_2.x), 1u) | vec3<u32>(~(~0u), _wgslsmith_div_u32(u_input.a ^ 24126u, 4294967295u), 29786u));
    return !(!vec4<bool>(-277f >= _wgslsmith_f_op_f32(-323f - global1.b), !any(vec3<bool>(true, true, arg_0)), global3.a.x, global3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 3>();
    global2 = array<vec4<bool>, 3>();
    let var_0 = func_5(!all(func_4(~vec3<u32>(15622u, u_input.c.x, u_input.c.x), u_input.c ^ u_input.c, func_1())), -abs(countOneBits(max(vec3<i32>(0i, 0i, u_input.b.x), vec3<i32>(global1.a, u_input.b.x, 64636i)))), ~u_input.c);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - 1209f)))), global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)))), _wgslsmith_f_op_vec3_f32(global3.b.zzy + _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(~u_input.a, 29u)]))));
    let var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(step(-908f, -729f));
    var var_4 = Struct_4(Struct_3(var_0.zx, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-842f, global3.b.x, global1.b, global1.b) - global3.b), vec4<f32>(1f, _wgslsmith_f_op_f32(select(-899f, var_3, false)), _wgslsmith_f_op_f32(round(-435f)), global3.b.x))), func_2()), global1.b, Struct_3(!func_5(all(var_0.wxx), abs(vec3<i32>(global3.c, global3.c, global3.c)), ~u_input.c).xw, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1938f, -427f, var_0.x)) * -1490f), 1093f, 2496f), func_2()), Struct_2(global3.c, _wgslsmith_f_op_f32(-894f * 1f)), vec3<u32>(12477u, 31110u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2, var_2), vec3<u32>(var_2, 1u, 49443u))) & countOneBits(~vec3<u32>(u_input.c.x, 1u, var_2) << (max(vec3<u32>(7798u, 77387u, 43769u), vec3<u32>(58672u, u_input.a, 1u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_add_u32(var_4.e.x, var_2), max(4294967295u, 102797u), _wgslsmith_mult_u32(var_2, 0u), ~4294967295u) ^ vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, ~6587u), var_4.e.x, ~firstLeadingBit(45898u), var_2), -1624f, ~(~(-reverseBits(vec3<i32>(u_input.b.x, -39019i, u_input.b.x)))), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(func_2().b - -1172f))), _wgslsmith_div_u32(_wgslsmith_sub_u32(39722u, 38956u), ~(~var_4.e.x)));
}

