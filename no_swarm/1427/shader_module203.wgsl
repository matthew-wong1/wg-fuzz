struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: vec2<f32> = vec2<f32>(-1000f, -379f);

var<private> global3: Struct_4 = Struct_4(i32(-2147483648), vec4<f32>(1125f, -272f, 202f, 441f));

var<private> global4: Struct_3 = Struct_3(-264f, Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 35500u), false, vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), vec3<u32>(1u, 25855u, 0u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    global3 = Struct_4(u_input.a.x, global3.b);
    var var_0 = ~vec2<u32>(0u, 4294967295u);
    return _wgslsmith_mult_vec4_u32(global4.b.a.a, ~vec4<u32>(arg_1.b.a.a.x, select(19053u, arg_2.c.x << (1u % 32u), any(vec3<bool>(true, false, global4.b.a.b))), arg_2.c.x, select(~global4.b.b.x, _wgslsmith_mult_u32(0u, 1u), global3.a < u_input.a.x)));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = select(select(vec4<bool>(!global1.x, true, global4.b.a.b, false), vec4<bool>(arg_0.a.b, all(vec2<bool>(true, true)), true, !global1.x), select(!(!vec4<bool>(global4.b.a.b, global4.b.a.b, global4.b.a.b, false)), vec4<bool>(true, !global1.x, 1u > global4.b.a.c.x, false), vec4<bool>(all(vec4<bool>(global4.b.a.b, global4.b.a.b, true, true)), global4.b.a.b, true, false))), select(select(select(vec4<bool>(true, arg_0.a.b, global1.x, arg_0.a.b), !vec4<bool>(global1.x, arg_0.a.b, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, arg_0.a.b, true, true), !vec4<bool>(arg_0.a.b, false, true, true)), all(vec4<bool>(true, global1.x, arg_0.a.b, true))), !vec4<bool>(1u > u_input.b.x, all(global1.wzw), true, u_input.b.x <= global4.b.b.x), !select(vec4<bool>(arg_0.a.b, true, global1.x, global1.x), vec4<bool>(false, false, global1.x, global4.b.a.b), vec4<bool>(true, arg_0.a.b, global4.b.a.b, global1.x))), true);
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1994f - global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(834f, global4.a)))), _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.b.x + 635f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(671f)))))));
    global4 = Struct_3(2086f, Struct_2(arg_0.a, ~global4.b.a.a.yww));
    var var_2 = Struct_4(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.x, var_1.x, global3.b.x)))), _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global3.b.x, global3.b.x, global3.b.x), global3.b)))))));
    var_2 = Struct_4(_wgslsmith_add_i32(-86392i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.b))));
    return vec4<bool>(all(vec2<bool>(true, global4.b.a.b)), true, true, select(!(!all(vec4<bool>(arg_0.a.b, global4.b.a.b, false, true))), _wgslsmith_f_op_f32(floor(163f)) != 1f, any(var_0)));
}

fn func_2() -> Struct_1 {
    global1 = !(!(!vec4<bool>(global1.x, global1.x, false, global1.x)));
    global1 = !func_4(Struct_2(Struct_1(u_input.b, !global1.x, func_3(global1.x, Struct_3(463f, Struct_2(global4.b.a, vec3<u32>(1u, 14902u, 98219u))), global4.b.a, -264f)), ~u_input.b.yzz));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(floor(478f)), _wgslsmith_f_op_f32(-global3.b.x));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.b.x))))), global4.b);
    let var_1 = all(vec2<bool>(global1.x, true));
    return var_0.b.a;
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<vec2<i32>, 31>();
    var var_0 = global4.b;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f - _wgslsmith_f_op_f32(-global4.a)))), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 63430u, u_input.b.x), global4.b.a.c), ~vec4<u32>(4294967295u, 1u, 54466u, 0u)), !var_0.a.b, ~(~vec4<u32>(global4.b.b.x, 49007u, 33759u, 25726u))), ~vec3<u32>(39683u, var_0.a.a.x, 37478u << (u_input.b.x % 32u))));
    var var_2 = vec4<bool>(true, true, !func_2().b, true);
    let var_3 = ~0u;
    return var_1.b.a.a;
}

fn func_6(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = u_input.a.x;
    let var_1 = ~((4294967295u & arg_0.a.x) >> (arg_0.a.x % 32u));
    let var_2 = Struct_4(_wgslsmith_mod_i32(-23086i, ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-global3.b));
    var var_3 = global4.b.a;
    var_3 = global4.b.a;
    return u_input.b.wy;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = func_6(Struct_1(select(func_5(func_2()), ~(vec4<u32>(arg_2.a.x, 39649u, u_input.b.x, u_input.b.x) | global4.b.a.a), !(u_input.b.x >= 4294967295u)), !any(!vec4<bool>(arg_2.b, true, global4.b.a.b, true)), abs(u_input.b)));
    global1 = vec4<bool>(any(vec4<bool>(any(select(vec3<bool>(arg_0.x, arg_2.b, arg_0.x), vec3<bool>(true, arg_2.b, global4.b.a.b), true)), global1.x != global4.b.a.b, !arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_2.b)))), !(true | !global1.x), any(global1.xw), arg_2.b & arg_0.x);
    var var_1 = Struct_3(global3.b.x, Struct_2(Struct_1(arg_2.c, true, _wgslsmith_mult_vec4_u32(vec4<u32>(19424u, var_0.x, 60280u, var_0.x), vec4<u32>(6541u, 30327u, var_0.x, arg_2.c.x))), ~vec3<u32>(countOneBits(0u), ~u_input.b.x, ~arg_2.a.x)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-901f, -897f, global2.x, global4.a), global3.b)) * _wgslsmith_f_op_vec4_f32(global3.b + global3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1412f, global4.a, global2.x, var_1.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(935f, -377f, -599f, global3.b.x), global3.b))), _wgslsmith_f_op_vec4_f32(-global3.b), true))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.x - global4.a), -1592f)) - global4.a);
    return Struct_3(388f, global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 94151u;
    var var_1 = _wgslsmith_div_vec4_f32(global3.b, global3.b);
    var var_2 = !global1.zw;
    let var_3 = func_1(vec2<bool>(!all(vec3<bool>(global1.x, true, true)), u_input.b.x == global4.b.a.c.x), u_input.a.x, global4.b.a);
    var_2 = !(!(!select(select(global1.xz, vec2<bool>(true, true), var_2.x), func_4(Struct_2(Struct_1(vec4<u32>(u_input.b.x, 1u, 20146u, 1u), global1.x, vec4<u32>(u_input.b.x, global4.b.a.a.x, u_input.b.x, 1u)), var_3.b.b)).xz, vec2<bool>(true, true))));
    global4 = var_3;
    var_2 = global1.yx;
    var var_4 = func_4(Struct_2(global4.b.a, u_input.b.xxw)).zwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~select(32667u, 1u, false), abs(max(func_3(global1.x, Struct_3(545f, global4.b), global4.b.a, var_1.x).x, 1u))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1000f), vec2<f32>(func_1(select(vec2<bool>(var_2.x, global4.b.a.b), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_sub_i32(global3.a, u_input.a.x), func_1(var_4.yx, -35758i, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, var_3.b.b.x, u_input.b.x), var_4.x, global4.b.a.a)).b.a).a, _wgslsmith_f_op_f32(-func_1(var_4.xz, -66964i, global4.b.a).a))));
}

