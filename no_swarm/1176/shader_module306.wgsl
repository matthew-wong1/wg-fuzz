struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(1710f, -360f, 1082f, -1583f);

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(1325f, vec2<i32>(23495i, 27346i), Struct_1(vec4<bool>(true, false, true, true), true, vec2<f32>(369f, -1000f), vec4<i32>(-20766i, 2147483647i, -28942i, 1i)), vec2<u32>(0u, 0u), false), Struct_3(698f, vec2<i32>(-1i, -24548i), Struct_1(vec4<bool>(false, false, false, false), true, vec2<f32>(-494f, -1000f), vec4<i32>(0i, -7390i, 1470i, -32363i)), vec2<u32>(43221u, 0u), false), Struct_3(984f, vec2<i32>(i32(-2147483648), -4558i), Struct_1(vec4<bool>(true, true, true, true), true, vec2<f32>(953f, -152f), vec4<i32>(65685i, 1i, -48718i, 2147483647i)), vec2<u32>(43958u, 6710u), true), Struct_3(-983f, vec2<i32>(-43844i, -1i), Struct_1(vec4<bool>(false, true, false, true), false, vec2<f32>(-143f, 1371f), vec4<i32>(1i, -6140i, 0i, 0i)), vec2<u32>(0u, 18659u), false), Struct_3(179f, vec2<i32>(-5287i, 1i), Struct_1(vec4<bool>(false, false, true, false), false, vec2<f32>(-1642f, 1000f), vec4<i32>(-1i, 6301i, 2147483647i, 2147483647i)), vec2<u32>(52022u, 0u), false), Struct_3(-1053f, vec2<i32>(46707i, 3656i), Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(524f, 443f), vec4<i32>(25458i, i32(-2147483648), -5710i, 1i)), vec2<u32>(53224u, 1u), false), Struct_3(-498f, vec2<i32>(0i, -11968i), Struct_1(vec4<bool>(false, false, false, true), true, vec2<f32>(-1373f, 443f), vec4<i32>(0i, 0i, 2147483647i, 2147483647i)), vec2<u32>(17259u, 1u), false), Struct_3(-521f, vec2<i32>(-64953i, -16406i), Struct_1(vec4<bool>(true, false, true, false), true, vec2<f32>(304f, -2442f), vec4<i32>(2147483647i, 1i, i32(-2147483648), -6433i)), vec2<u32>(41083u, 1u), true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<bool>(false, false);
    var var_1 = arg_2;
    var var_2 = 800f;
    var var_3 = ~arg_0.d;
    let var_4 = Struct_1(select(select(!vec4<bool>(arg_2.a.b, true, true, var_1.a.a.x), vec4<bool>(any(arg_0.c.a.xw), arg_0.c.d.x == -2147483647i, arg_0.c.a.x & true, true), -979f <= _wgslsmith_div_f32(global1.x, -731f)), var_1.a.a, select(!select(global0.a, arg_2.a.a, vec4<bool>(global0.b, arg_3.a.x, false, arg_0.e)), vec4<bool>(true, true, arg_3.a.x & false, arg_2.a.b), !(!var_1.a.a))), select(var_1.a.b, true, select(true, false, !var_1.a.b)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x + arg_1), _wgslsmith_f_op_f32(min(855f, global0.c.x)))), arg_2.a.c), global0.d);
    return _wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-360f, global0.c.x) * global1.x));
}

fn func_2() -> f32 {
    var var_0 = global0.a.yw;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-133f + 257f), _wgslsmith_f_op_f32(global1.x + 830f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-245f)), _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-371f * global1.x), _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), global0.c.x));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(-1236f, global0.d.wx, Struct_1(global0.a, select(global0.a.x, false, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(430f, global1.x) - global0.c), ~global0.d), ~countOneBits(vec2<u32>(u_input.a, u_input.a)), false), 1596f, Struct_2(Struct_1(global0.a, var_0.x, vec2<f32>(-249f, 1297f), global0.d), -400f, ~_wgslsmith_add_i32(global0.d.x, -1i)), Struct_1(global0.a, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, -2019f))), vec4<i32>(_wgslsmith_mod_i32(-1i, global0.d.x), global0.d.x, global0.d.x, -2147483647i)))), _wgslsmith_f_op_f32(abs(-1858f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-895f + global1.x), var_1.x, all(global0.a)))))), -1650f);
    let var_2 = false;
    var var_3 = u_input.a & ~1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1061f + global0.c.x));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = ~1u;
    var var_1 = 583f;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_2()), global1.x, _wgslsmith_f_op_f32(trunc(global1.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1684f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f + var_2.x)))), -578f, global0.c.x));
    var var_4 = vec2<u32>(1u, ~4294967295u);
    return vec4<i32>(global0.d.x, -1i, 0i, ~max(select(_wgslsmith_div_i32(global0.d.x, global0.d.x), ~5746i, arg_0 | global0.a.x), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(global0.a, global0.a, global0.b), select(global0.b, true, all(!(!vec4<bool>(global0.a.x, global0.b, global0.a.x, false)))), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x)), ~func_1(any(!vec3<bool>(global0.b, false, false))));
    let var_0 = u_input.a;
    var var_1 = Struct_3(1f, global0.d.yx, Struct_1(select(global0.a, select(global0.a, !vec4<bool>(global0.a.x, global0.b, true, global0.a.x), !global0.a), any(vec2<bool>(global0.b, global0.b))), all(select(select(vec2<bool>(global0.a.x, global0.b), global0.a.wx, true), select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.a.x, true)), global0.d.x <= 2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, -425f))), vec2<f32>(_wgslsmith_f_op_f32(194f + global0.c.x), -567f)), vec4<i32>(_wgslsmith_dot_vec4_i32(~global0.d, abs(global0.d)), (global0.d.x & 23749i) >> (~1u % 32u), 0i, max(-2147483647i, 1i))), vec2<u32>(~u_input.a, abs(abs(var_0))), false);
    var var_2 = any(select(select(var_1.c.a.wx, vec2<bool>(!global0.b, all(vec4<bool>(false, global0.b, false, global0.a.x))), select(vec2<bool>(var_1.c.b, false), var_1.c.a.yx, !global0.a.zx)), global0.a.zy, select(!(!global0.a.yy), !vec2<bool>(var_1.e, var_1.e), !select(vec2<bool>(true, false), global0.a.zz, var_1.c.b))));
    var var_3 = select(vec3<bool>(all(global0.a.xy), var_1.c.a.x, var_1.c.a.x), !vec3<bool>(var_1.e, all(select(var_1.c.a.wy, global0.a.yz, global0.b)), false), true);
    let var_4 = var_0;
    var var_5 = 2147483647i;
    var var_6 = min(vec4<u32>(10291u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(var_4, 8u)], _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], vec3<u32>(var_1.d.x, var_4, 0u))), u_input.a, 0u) & vec4<u32>(var_4, var_1.d.x, 12399u, var_0), vec4<u32>(1u, countOneBits(4294967295u), _wgslsmith_div_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(6432u, 4294967295u, 6334u), ~vec3<u32>(var_0, u_input.a, u_input.a))), ~max(u_input.a, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-531f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.c.c.x)), _wgslsmith_f_op_f32(exp2(global1.x)))), 4294967295u, var_1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(202f, -1262f, global1.x, -657f))) - vec4<f32>(var_1.c.c.x, -265f, -201f, 838f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, -1299f, global0.c.x, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2148f, 1095f, global1.x, var_1.a) - vec4<f32>(1216f, global0.c.x, -403f, -341f)), global0.a.x)))));
}

