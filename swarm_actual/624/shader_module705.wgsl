struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(6742u, 34524u, 13240u, 4294967295u), vec4<u32>(78735u, 11039u, 58006u, 0u), vec4<u32>(33713u, 1u, 1u, 3187u), vec4<u32>(14318u, 28789u, 0u, 5430u), vec4<u32>(9673u, 76541u, 1u, 0u), vec4<u32>(64482u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 126617u, 20573u, 0u), vec4<u32>(0u, 18083u, 0u, 1u), vec4<u32>(1u, 20868u, 0u, 1u), vec4<u32>(16387u, 56008u, 4294967295u, 1u), vec4<u32>(39095u, 0u, 4294967295u, 7308u), vec4<u32>(4294967295u, 47978u, 4294967295u, 73450u), vec4<u32>(0u, 1u, 57798u, 1u), vec4<u32>(1u, 1u, 16472u, 6898u), vec4<u32>(1u, 4294967295u, 15839u, 0u), vec4<u32>(4294967295u, 15013u, 1u, 25547u), vec4<u32>(0u, 4294967295u, 40737u, 4294967295u), vec4<u32>(4294967295u, 25055u, 48271u, 2072u), vec4<u32>(23253u, 0u, 4294967295u, 1u), vec4<u32>(46180u, 4294967295u, 9420u, 5456u), vec4<u32>(1u, 29249u, 0u, 0u), vec4<u32>(1u, 4294967295u, 5995u, 0u), vec4<u32>(4294967295u, 1u, 4266u, 40510u), vec4<u32>(1u, 28378u, 33318u, 23601u), vec4<u32>(1u, 57714u, 59099u, 0u), vec4<u32>(0u, 1u, 1u, 57950u), vec4<u32>(21827u, 4294967295u, 15574u, 23079u), vec4<u32>(33336u, 4294967295u, 15997u, 102709u), vec4<u32>(12095u, 37669u, 4627u, 4294967295u), vec4<u32>(334u, 11486u, 4294967295u, 4294967295u));

var<private> global2: array<f32, 1> = array<f32, 1>(-756f);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    global1 = array<vec4<u32>, 32>();
    return firstTrailingBit(4654u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = global3[_wgslsmith_index_u32(~func_1(), 31u)];
    global0 = var_1.a.x;
    var var_2 = arg_2;
    global1 = array<vec4<u32>, 32>();
    return !select(var_1.a, select(select(var_1.a, var_1.a, !var_1.a.x), arg_1.a, !var_1.a), select(select(vec2<bool>(var_1.a.x, arg_1.a.x), var_1.a, true), select(!arg_1.a, !var_1.a, arg_1.a), arg_1.a));
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), vec2<bool>(true, true), vec2<bool>(true, u_input.c.x == 47900u)), vec2<bool>(true, true), !vec2<bool>(u_input.d > u_input.c.x, false)), !vec2<bool>(true, _wgslsmith_mod_i32(u_input.b, u_input.a.x) == _wgslsmith_mult_i32(-1i, u_input.b)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(func_3(u_input.d, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], Struct_1(29474u, 80632u)), vec2<bool>(false, false), true), vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true))), 2147483647i < u_input.a.x), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = Struct_2(vec2<bool>(true, true | var_0.x));
    global3 = array<Struct_2, 31>();
    return Struct_1(u_input.d, 71233u & max(1u & ~u_input.c.x, 37604u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(vec4<bool>(12456u <= (u_input.c.x & 0u), true, _wgslsmith_div_f32(264f, -969f) <= global2[_wgslsmith_index_u32(func_1(), 1u)], u_input.b < 1i));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(~u_input.c.x), 1u)]))));
    var var_1 = -1000f;
    let var_2 = func_2();
    global3 = array<Struct_2, 31>();
    var var_3 = !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, select(true, true, select(false, false, true)), func_3(39273u, Struct_2(vec2<bool>(false, true)), var_2).x && false), !vec4<bool>(any(vec4<bool>(true, true, true, false)), true, u_input.b > -2147483647i, true));
    var_3 = !select(!(!vec4<bool>(false, true, false, var_3.x)), !vec4<bool>(var_3.x, !var_3.x, false, u_input.d <= 27134u), select(!select(vec4<bool>(true, var_3.x, true, false), vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, false, var_3.x)), !(!vec4<bool>(false, var_3.x, false, var_3.x)), !(!vec4<bool>(var_3.x, false, var_3.x, true))));
    var var_4 = !select(select(vec4<bool>(var_3.x, !var_3.x, true, true), !select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(false, false, false, true)), all(vec4<bool>(var_3.x, var_3.x, false, var_3.x))), !select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(false, var_3.x, true, var_3.x), true), !(!select(vec4<bool>(false, false, var_3.x, var_3.x), vec4<bool>(false, var_3.x, var_3.x, true), var_3.x)));
    var_3 = select(vec4<bool>(!(false || var_3.x), var_3.x, (true == var_3.x) | var_3.x, u_input.a.x > u_input.b), !vec4<bool>(true | (var_3.x && var_4.x), func_3(37531u, Struct_2(vec2<bool>(var_4.x, var_4.x)), var_2).x & (false & var_4.x), var_3.x, true), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(var_2.a, 1u)], 229f, -1556f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2739f, 839f, global2[_wgslsmith_index_u32(6088u, 1u)])))))));
}

