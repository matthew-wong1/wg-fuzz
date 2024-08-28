struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(arg_0.c.x, _wgslsmith_add_u32(u_input.c, _wgslsmith_clamp_u32(min(u_input.c, global1.c.x) << (arg_2.c.x % 32u), arg_2.c.x, _wgslsmith_dot_vec3_u32(~global1.c, vec3<u32>(56091u, 1u, 4294967295u) << (vec3<u32>(11306u, arg_2.c.x, arg_2.c.x) % vec3<u32>(32u))))), ~((u_input.c >> (arg_0.c.x % 32u)) >> (_wgslsmith_mult_u32(u_input.c & arg_2.c.x, 4294967295u) % 32u)), 24172u);
    let var_1 = arg_2;
    global0 = array<Struct_1, 1>();
    global1 = Struct_1(false, 370f, global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - arg_2.b) + 941f), true)) == 1797f, _wgslsmith_f_op_f32(1222f * _wgslsmith_f_op_f32(-1832f + -1877f)));
    let var_2 = ~17246u;
    return Struct_1(!(!select(true, true, arg_2.a || var_1.d)), arg_0.b, firstLeadingBit(vec3<u32>(firstTrailingBit(global1.c.x), select(arg_2.c.x & var_0.x, arg_2.c.x, true), var_1.c.x << (~var_1.c.x % 32u))), true, -705f);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec4<i32> {
    global0 = array<Struct_1, 1>();
    var var_0 = -(~vec4<i32>(-_wgslsmith_clamp_i32(arg_2.b.x, 3169i, 51547i), 0i, ~u_input.a, 0i));
    var_0 = vec4<i32>(u_input.d, arg_2.b.x, ~_wgslsmith_add_i32(~u_input.a, _wgslsmith_sub_i32(firstTrailingBit(var_0.x), u_input.b.x)), _wgslsmith_mod_i32(arg_2.b.x, -(~var_0.x)));
    global0 = array<Struct_1, 1>();
    var var_1 = !arg_0.d;
    return vec4<i32>(min(1i, arg_2.b.x), -1i, ~(~arg_2.b.x), _wgslsmith_dot_vec3_i32(~u_input.b, select(u_input.b, ~firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, 17018i)), vec3<bool>(!arg_0.d, any(vec3<bool>(global1.d, arg_0.a, arg_2.c.d)), true))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = func_2(Struct_1(u_input.d <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 40243i), -vec4<i32>(0i, u_input.d, u_input.d, u_input.a)), 627f, firstLeadingBit(arg_0.c), false, _wgslsmith_f_op_f32(f32(-1f) * -1654f)), !all(!vec3<bool>(global1.d, arg_0.d, false)), global0[_wgslsmith_index_u32(arg_0.c.x, 1u)]);
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(36591i, u_input.b.x, 0i, u_input.d), func_3(func_2(arg_0, global1.a, global0[_wgslsmith_index_u32(arg_0.c.x, 1u)]), -981f, Struct_2(arg_0, vec2<i32>(u_input.d, u_input.d), global0[_wgslsmith_index_u32(4294967295u, 1u)], true))), countOneBits(u_input.a), u_input.d), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(min(u_input.a, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -1i, u_input.a))), (u_input.b.yx | vec2<i32>(-1i, 9300i)) & vec2<i32>(u_input.d, u_input.d)), u_input.b.xz));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(1u, 1u)], abs(_wgslsmith_sub_vec2_i32(u_input.b.zz, select(u_input.b.xy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<bool>(global1.a, true)))), Struct_1(global1.d, arg_0.b, arg_0.c, true, global1.e), !func_2(Struct_1(true, arg_0.e, ~vec3<u32>(global1.c.x, 101185u, arg_0.c.x), arg_0.d, -884f), select(arg_0.d, global1.d, global1.d) | arg_0.d, Struct_1(func_2(Struct_1(false, -583f, arg_0.c, false, 1082f), global1.a, Struct_1(false, arg_0.e, vec3<u32>(83885u, u_input.c, 19304u), false, 274f)).d, _wgslsmith_f_op_f32(global1.e + arg_0.e), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.x, 1u, u_input.c), vec3<u32>(13995u, arg_0.c.x, global1.c.x)), true, 2339f)).d);
    var var_2 = func_2(var_1.c, all(select(!(!vec2<bool>(true, var_1.d)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), false)), Struct_1(true, -1460f, vec3<u32>(u_input.c, _wgslsmith_mod_u32(arg_0.c.x, select(0u, var_1.a.c.x, var_1.d)), global1.c.x), false, arg_0.b));
    var_0 = -var_1.b.x;
    return Struct_1(arg_0.a, func_2(func_2(func_2(Struct_1(false, 971f, var_2.c, true, 1067f), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.c, var_2.c), 1u)]), !(var_1.a.d & var_2.a), Struct_1(var_1.a.a & var_2.d, var_2.e, vec3<u32>(1u, global1.c.x, u_input.c), global1.b <= arg_0.e, var_1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1691f), _wgslsmith_f_op_f32(step(1000f, -1000f))) >= var_1.a.b, func_2(Struct_1(true, var_1.a.b, vec3<u32>(arg_0.c.x, var_2.c.x, u_input.c) >> (var_1.a.c % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(var_1.a.b * 881f)), !(!arg_0.a), func_2(func_2(Struct_1(arg_0.d, var_2.b, var_1.a.c, true, -336f), false, Struct_1(true, 187f, vec3<u32>(var_1.a.c.x, 4294967295u, var_2.c.x), false, -1110f)), all(vec4<bool>(true, arg_0.d, false, false)), var_1.c))).b, var_2.c, any(select(select(!vec2<bool>(arg_0.d, var_2.d), vec2<bool>(global1.a, arg_0.a), true), !(!vec2<bool>(global1.a, false)), vec2<bool>(true, true))), 1000f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_2(Struct_1(_wgslsmith_clamp_u32(arg_0.c.x, global1.c.x, arg_0.c.x) >= _wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(u_input.c, 71297u, global1.c.x)), -1489f, func_2(arg_1, arg_0.a, func_1(Struct_1(true, global1.b, arg_1.c, true, 2566f))).c, false, _wgslsmith_f_op_f32(sign(-112f))), _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(round(arg_1.b))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_0.e)), func_2(arg_1, arg_1.d, Struct_1(true, _wgslsmith_f_op_f32(arg_1.e * arg_1.e), max(vec3<u32>(25603u, 62306u, 37382u), vec3<u32>(global1.c.x, arg_0.c.x, u_input.c)), true, _wgslsmith_f_op_f32(884f - arg_0.e)))), _wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.d, 1i) | vec2<i32>(-21831i, u_input.b.x)), -abs(vec2<i32>(u_input.d, -2147483647i))), arg_0, arg_1.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.e)) - _wgslsmith_f_op_f32(var_0.c.e + var_0.a.e)), arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, global1.e) + arg_0.e), _wgslsmith_f_op_f32(-1665f - _wgslsmith_f_op_f32(-arg_1.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.e, var_0.c.e, -1678f, global1.b), vec4<f32>(arg_0.e, -2406f, global1.e, arg_0.b))))));
    global1 = func_1(func_2(global0[_wgslsmith_index_u32(arg_1.c.x, 1u)], any(!select(vec3<bool>(true, false, var_0.c.d), vec3<bool>(false, true, global1.a), vec3<bool>(false, false, true))), Struct_1(all(select(vec4<bool>(true, true, arg_1.a, false), vec4<bool>(arg_0.a, true, var_0.d, var_0.a.d), vec4<bool>(false, global1.a, false, arg_0.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e))), vec3<u32>(4294967295u, 15453u >> (arg_1.c.x % 32u), 1u << (global1.c.x % 32u)), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b - arg_1.b)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e, 2030f, arg_1.b, 784f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, -756f, arg_1.e, -2285f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, global1.e, global1.e, arg_0.e) - vec4<f32>(global1.e, var_0.a.e, arg_1.e, -236f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b + var_1.x), _wgslsmith_f_op_f32(arg_0.e * 695f), _wgslsmith_f_op_f32(var_1.x - global1.e), _wgslsmith_f_op_f32(global1.b + -1104f)))))));
    var var_2 = var_0;
    return func_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1219f, 1921f, global1.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b))))));
    var var_1 = func_4(func_1(Struct_1(true, 177f, ~(global1.c | vec3<u32>(global1.c.x, global1.c.x, global1.c.x)), global1.a, global1.e)), Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b, 1341f), _wgslsmith_f_op_f32(-var_0.x))))), vec3<u32>(_wgslsmith_mod_u32(u_input.c << (u_input.c % 32u), u_input.c), _wgslsmith_sub_u32(51537u, global1.c.x), ~4294967295u), func_2(global0[_wgslsmith_index_u32(firstTrailingBit(~62053u), 1u)], false, func_1(Struct_1(false, 1335f, global1.c, true, var_0.x))).d, -1860f));
    global0 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_1.e, -1417f, var_0.x), vec4<f32>(global1.b, var_1.e, -1000f, -1147f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-294f, var_1.b, global1.e, var_1.e), vec4<f32>(var_1.b, var_0.x, 482f, global1.e)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1242f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_1.e, 825f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, var_0.x, var_0.x, -1702f) - vec4<f32>(424f, 1349f, global1.e, var_0.x)))))), vec4<f32>(-594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))) * var_0.x), -1308f, 1019f), func_1(global0[_wgslsmith_index_u32(func_1(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.c.x, u_input.c), 1u)], !global1.a, Struct_1(var_1.a, -608f, var_1.c, var_1.a, var_1.b))).c.x, 1u)]).d));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2))));
    let var_4 = _wgslsmith_add_i32(u_input.d >> (var_1.c.x % 32u), func_3(Struct_1(global1.c.x == u_input.c, global1.e, vec3<u32>(~0u, _wgslsmith_sub_u32(44526u, 1u), _wgslsmith_div_u32(global1.c.x, var_1.c.x)), true, var_0.x), 518f, Struct_2(Struct_1(func_2(Struct_1(var_1.d, -1138f, vec3<u32>(global1.c.x, 21966u, 0u), false, var_1.b), false, Struct_1(true, 2073f, var_1.c, global1.d, global1.b)).a, _wgslsmith_f_op_f32(min(var_3.x, var_3.x)), ~vec3<u32>(u_input.c, global1.c.x, 4294967295u), var_2.x <= -911f, 703f), vec2<i32>(~u_input.d, 2147483647i), global0[_wgslsmith_index_u32(1u, 1u)], false)).x);
    let var_5 = 1474f;
    let var_6 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(18324i, u_input.a));
}

