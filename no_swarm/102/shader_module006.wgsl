struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-11665i, 5046i));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(1i, -1i));

var<private> global2: array<f32, 15> = array<f32, 15>(1485f, -856f, 1000f, 1853f, -421f, -851f, -1489f, 944f, 514f, 283f, -1052f, -441f, -1636f, -1000f, -953f);

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(90551u, vec2<bool>(true, true), 1127f, false, Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-12955i, -29757i))), Struct_2(1u, vec2<bool>(false, false), -664f, true, Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(52360i, 1i))), Struct_2(1u, vec2<bool>(false, false), -1362f, false, Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-28875i, -34801i))), Struct_2(13817u, vec2<bool>(false, true), -1124f, true, Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 1i))), Struct_2(1u, vec2<bool>(true, false), 273f, false, Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-1i, -14687i))), Struct_2(25818u, vec2<bool>(true, true), 658f, false, Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(1i, 32636i))), Struct_2(59404u, vec2<bool>(true, true), 1023f, false, Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(56590i, -22372i))), Struct_2(1u, vec2<bool>(true, false), -493f, true, Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(20679u, vec2<bool>(true, true), 182f, false, Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-1i, 12033i))), Struct_2(4294967295u, vec2<bool>(false, true), 475f, true, Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-2816i, 2147483647i))), Struct_2(46180u, vec2<bool>(true, false), 124f, false, Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(7873i, 2147483647i))), Struct_2(47847u, vec2<bool>(false, true), 1665f, true, Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-20930i, 31950i))), Struct_2(0u, vec2<bool>(false, true), 1086f, false, Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(25355i, 3842i))), Struct_2(19345u, vec2<bool>(true, false), 1130f, true, Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(31578i, -1i))), Struct_2(0u, vec2<bool>(true, false), 113f, false, Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(15861i, 0i))), Struct_2(0u, vec2<bool>(false, false), -931f, false, Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(-1i, 24979i))), Struct_2(1u, vec2<bool>(false, false), 435f, false, Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-1i, -51435i))), Struct_2(0u, vec2<bool>(true, false), -935f, true, Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(-27919i, 27607i))), Struct_2(36146u, vec2<bool>(false, true), 979f, false, Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-7931i, 10724i))), Struct_2(96672u, vec2<bool>(false, true), 453f, true, Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(26896i, 0i))), Struct_2(1u, vec2<bool>(false, true), -1000f, true, Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(35790i, 50158i))), Struct_2(26115u, vec2<bool>(true, false), 317f, false, Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(26357i, 3921i))), Struct_2(25351u, vec2<bool>(false, false), 1776f, false, Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(1i, 0i))), Struct_2(9100u, vec2<bool>(false, false), -934f, false, Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-53384i, i32(-2147483648)))), Struct_2(39279u, vec2<bool>(false, false), -1040f, true, Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-1i, i32(-2147483648)))));

var<private> global4: array<bool, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = var_0.a;
    global0 = var_0.e;
    return 1790f;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec4<bool> {
    let var_0 = max(u_input.d, u_input.d) | ~reverseBits(~(~u_input.d));
    let var_1 = global1.b.x;
    global2 = array<f32, 15>();
    let var_2 = ~(-26229i);
    global1 = Struct_1(vec4<bool>(true, all(!global1.a.wx), true, true), max(~global0.b, var_0.ww));
    return !global0.a;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(func_4(global3[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(abs(0u), 15u)])))), ~firstTrailingBit(global0.b));
    let var_0 = true;
    var var_1 = global0.a.xw;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(557f, 133f)), -1442f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(2106f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 15u)], -1098f))))))));
    let var_3 = select(global0.a.xz, select(global1.a.wx, global0.a.xx, !global1.a.yz), global0.a.xx);
    return Struct_1(select(global0.a, vec4<bool>(false, false, !(global0.a.x && var_3.x), any(select(vec2<bool>(var_0, global0.a.x), var_3, global4[_wgslsmith_index_u32(0u, 5u)]))), true), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.x, global0.b.x) & vec2<i32>(u_input.e.x, 2147483647i), -vec2<i32>(183i, u_input.e.x))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = 1i;
    var var_1 = ~(~vec4<u32>(arg_1, 91539u, u_input.b.x, 20067u));
    var var_2 = Struct_2(arg_1, vec2<bool>(select(global1.a.x, !global4[_wgslsmith_index_u32(var_1.x, 5u)] || true, !all(vec3<bool>(global0.a.x, global4[_wgslsmith_index_u32(82799u, 5u)], false))), select(true, u_input.a.x == reverseBits(17430u), true)), 1586f, true, func_2());
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, -804f)) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 48654u, 7566u, var_1.x), ~vec4<u32>(u_input.b.x, var_1.x, 1u, var_2.a)), 15u)])));
    return _wgslsmith_f_op_f32(f32(-1f) * -318f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(global1.a.yz, global1.a.wx, true), !global1.a.ww, vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 5u)], true)), !global1.a.xy, !(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 5u)], true))), !global1.a.wy, vec2<bool>(all(!vec3<bool>(global1.a.x, true, global4[_wgslsmith_index_u32(4294967295u, 5u)])), false));
    var_0 = select(select(select(vec2<bool>(var_0.x && true, false), !select(vec2<bool>(true, var_0.x), global0.a.zy, global4[_wgslsmith_index_u32(0u, 5u)]), !select(global1.a.wz, global1.a.xx, true)), select(global0.a.yx, select(!vec2<bool>(global0.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 5u)]), global0.a.ww, true), !all(vec3<bool>(false, false, false))), global0.a.x), global1.a.wz, vec2<bool>(true, 20403i == global1.b.x));
    global3 = array<Struct_2, 25>();
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.b.xxx, ~(~u_input.a.xww))), 15u)];
    var var_2 = ~vec2<i32>(u_input.e.x, ~46933i) >> (~vec2<u32>(abs(~u_input.b.x), 6378u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.yz, vec2<u32>(104534u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.yx), max(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.b.x))))), -2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(1i, _wgslsmith_add_u32(~71436u, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(68955u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]))))), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~1u, 15u)])), true)));
}

