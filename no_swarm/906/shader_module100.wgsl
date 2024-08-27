struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 11>;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(1046f, -101f), false, vec3<i32>(19739i, i32(-2147483648), -26089i)), Struct_1(vec2<f32>(-1379f, -134f), true, vec3<i32>(2147483647i, -34267i, -76548i)), Struct_1(vec2<f32>(840f, -1366f), true, vec3<i32>(-3675i, i32(-2147483648), 2147483647i)), Struct_1(vec2<f32>(1080f, -2442f), false, vec3<i32>(89681i, 1i, -26114i)), Struct_1(vec2<f32>(2361f, 1000f), false, vec3<i32>(0i, 31057i, 2147483647i)), Struct_1(vec2<f32>(340f, -651f), true, vec3<i32>(i32(-2147483648), 32154i, 54786i)), Struct_1(vec2<f32>(653f, -651f), false, vec3<i32>(-1i, -1i, 1i)), Struct_1(vec2<f32>(-782f, 327f), true, vec3<i32>(-1i, 1i, 56935i)), Struct_1(vec2<f32>(-259f, -476f), true, vec3<i32>(0i, -1i, 6910i)), Struct_1(vec2<f32>(754f, 215f), true, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec2<f32>(-1715f, -265f), true, vec3<i32>(5247i, 59800i, -1i)), Struct_1(vec2<f32>(-1199f, 1317f), false, vec3<i32>(9686i, -51061i, -363i)), Struct_1(vec2<f32>(225f, 422f), false, vec3<i32>(1i, 2147483647i, -13122i)), Struct_1(vec2<f32>(-710f, 2148f), true, vec3<i32>(13310i, -48786i, -48373i)), Struct_1(vec2<f32>(-362f, 1599f), true, vec3<i32>(-1i, i32(-2147483648), 0i)), Struct_1(vec2<f32>(-799f, -365f), true, vec3<i32>(2147483647i, 1567i, 1i)), Struct_1(vec2<f32>(-1443f, 1439f), false, vec3<i32>(1i, 51390i, i32(-2147483648))), Struct_1(vec2<f32>(1330f, -204f), false, vec3<i32>(-34513i, i32(-2147483648), 50715i)), Struct_1(vec2<f32>(-957f, 1877f), true, vec3<i32>(11202i, -1i, 2542i)), Struct_1(vec2<f32>(-1369f, -1255f), false, vec3<i32>(48727i, 6303i, 19816i)), Struct_1(vec2<f32>(2625f, -474f), false, vec3<i32>(-1i, -1i, -1i)), Struct_1(vec2<f32>(-192f, -479f), false, vec3<i32>(-69392i, 27331i, 1i)), Struct_1(vec2<f32>(-1000f, -682f), false, vec3<i32>(-1i, -1i, -1i)), Struct_1(vec2<f32>(-873f, -589f), true, vec3<i32>(1i, 30860i, 0i)), Struct_1(vec2<f32>(1050f, -699f), false, vec3<i32>(-22845i, 0i, 15707i)), Struct_1(vec2<f32>(779f, -618f), false, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(-678f, -1077f), true, vec3<i32>(-1i, 20237i, 1i)), Struct_1(vec2<f32>(1000f, 531f), false, vec3<i32>(2147483647i, 49512i, -1i)), Struct_1(vec2<f32>(391f, 229f), true, vec3<i32>(1i, 42854i, -43709i)), Struct_1(vec2<f32>(222f, 1373f), false, vec3<i32>(i32(-2147483648), -1i, -9421i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> f32 {
    global4 = array<Struct_1, 30>();
    let var_0 = select(!global0.x || any(vec3<bool>(!global0.x, global0.x, select(global0.x, true, false))), all(vec2<bool>(u_input.a.x < 27212u, any(vec3<bool>(false, false, global0.x)))), (1i > _wgslsmith_mod_i32(max(4851i, -3276i), -global1.x)) || any(vec2<bool>(global0.x, global0.x)));
    let var_1 = -23007i;
    global0 = vec4<bool>(any(global0.xyz), all(!(!vec4<bool>(false, false, false, var_0))), true, var_0);
    global0 = vec4<bool>(true, false, true & (!global0.x || any(!global2[_wgslsmith_index_u32(24333u, 11u)])), true);
    return _wgslsmith_f_op_f32(719f * 358f);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global1 = ~u_input.b;
    var var_0 = arg_0;
    let var_1 = global4[_wgslsmith_index_u32(~0u | _wgslsmith_clamp_u32(~12043u, 23285u, u_input.c.x), 30u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - global3.yw), var_1.b, ~vec3<i32>(-(i32(-1i) * -52391i), i32(-1i) * -37301i, var_0.c.x));
    let var_3 = Struct_1(var_0.a, false, vec3<i32>(abs(var_2.c.x), _wgslsmith_div_i32(-14980i, u_input.d), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(global1.x, 1i), u_input.b.x)));
    return !select(!vec4<bool>(global0.x && var_3.b, global0.x, true, any(global0.zy)), vec4<bool>(true, false, true, global0.x), select(vec4<bool>(!arg_0.b, select(true, var_1.b, false), true, any(vec3<bool>(false, var_2.b, global0.x))), !select(vec4<bool>(false, var_2.b, var_3.b, var_0.b), vec4<bool>(false, var_2.b, false, arg_0.b), vec4<bool>(var_3.b, true, false, var_1.b)), !(!vec4<bool>(var_2.b, var_0.b, var_0.b, var_0.b))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_1.a.x, 939f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -798f, -1284f, 1734f))), select(func_3(global4[_wgslsmith_index_u32(u_input.c.x, 30u)], 575u), !vec4<bool>(false, global0.x, true, true), func_3(Struct_1(vec2<f32>(-1000f, arg_0), arg_1.b, vec3<i32>(arg_1.c.x, global1.x, -1i)), 10107u).x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1218f, _wgslsmith_f_op_f32(-706f + -1000f), _wgslsmith_f_op_f32(-global3.x), -1297f)))));
    global4 = array<Struct_1, 30>();
    global1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(u_input.d, -1i)), 2147483647i, -45025i >> (select(4294967295u, u_input.c.x, false) % 32u)), -u_input.b >> (~(~vec4<u32>(5010u, u_input.c.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u))), u_input.b | vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(20362i, 1i), vec2<i32>(0i, global1.x)), u_input.d, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 55475i), vec2<i32>(arg_1.c.x, u_input.d))), 11840i));
    global3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, arg_0, -1579f, -1193f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f + -597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1691f)), -260f, -640f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(trunc(global3.x)), global3.x))));
    let var_0 = max(~global1.yy, min(arg_1.c.zz, global1.wz));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_f_op_f32(-arg_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    let var_1 = Struct_1(global3.yw, 0u >= u_input.a.x, vec3<i32>(u_input.d, u_input.b.x, ~(i32(-1i) * -global1.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x * var_1.a.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(step(global3.x, 210f))), var_1)))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-804f)))))), _wgslsmith_f_op_f32(abs(-823f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f + _wgslsmith_f_op_f32(func_2())));
    let var_4 = var_1.a.x;
    var_3 = 1836f;
    let var_5 = select(vec4<bool>(select(select(true, true && var_1.b, var_1.b), global0.x, !(var_1.b && false)), !(4294967295u <= u_input.a.x), true, true), !(!func_3(global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 30u)], abs(u_input.a.x))), func_3(var_1, u_input.a.x));
    let var_6 = !all(var_5.xxx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zy, ~_wgslsmith_add_i32(~select(global1.x, 10214i, var_5.x), -(~var_1.c.x)));
}

