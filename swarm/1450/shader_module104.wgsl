struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_4,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-1000f, 540f), vec4<bool>(true, false, false, true), vec2<bool>(true, true)), Struct_1(vec2<f32>(-233f, 441f), vec4<bool>(false, false, true, false), vec2<bool>(true, false)), Struct_1(vec2<f32>(1000f, -555f), vec4<bool>(false, false, false, false), vec2<bool>(false, false)), Struct_1(vec2<f32>(-271f, -438f), vec4<bool>(true, false, true, true), vec2<bool>(false, false)), Struct_1(vec2<f32>(-619f, -934f), vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_1(vec2<f32>(355f, 766f), vec4<bool>(false, true, false, false), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1388f, -263f), vec4<bool>(false, true, false, false), vec2<bool>(false, false)), Struct_1(vec2<f32>(556f, -822f), vec4<bool>(true, false, false, true), vec2<bool>(false, true)), Struct_1(vec2<f32>(-406f, 1472f), vec4<bool>(true, true, false, true), vec2<bool>(false, true)), Struct_1(vec2<f32>(141f, -730f), vec4<bool>(false, true, true, true), vec2<bool>(false, true)));

var<private> global1: Struct_5;

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(9957i, 72023i, -39080i, 0i), vec4<i32>(-36247i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(-33232i, 5879i, 19558i, -79776i), vec4<i32>(2147483647i, 1i, 0i, 1i), vec4<i32>(1i, 52947i, -3350i, 2147483647i), vec4<i32>(1i, 1i, -56849i, 64771i), vec4<i32>(70280i, 0i, i32(-2147483648), 0i), vec4<i32>(31872i, i32(-2147483648), 8544i, 26227i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)));

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    return global1.e.x;
}

fn func_2() -> Struct_1 {
    global3 = global1.d;
    var var_0 = -select(vec2<i32>(-12815i, ~(global1.a ^ u_input.a)), vec2<i32>(~(~u_input.a), u_input.a), !(!(1000f == global1.c.b.a.x)));
    global2 = array<vec4<i32>, 9>();
    let var_1 = global1.d.a.b.b.x;
    let var_2 = var_0.x;
    return global0[_wgslsmith_index_u32(4294967295u, 10u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    global2 = array<vec4<i32>, 9>();
    var var_0 = arg_3;
    let var_1 = abs(4140u);
    var var_2 = firstTrailingBit(-global1.a);
    global3 = Struct_4(Struct_3(arg_2.a, func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-551f + arg_1.a.x), _wgslsmith_f_op_f32(global1.c.c.a.x - arg_1.a.x))), var_0.b.b, !arg_3.c.c), arg_0.b, ~(_wgslsmith_sub_vec4_u32(global3.d, firstTrailingBit(global1.d.d)) | ~vec4<u32>(global3.d.x, 1u, 0u, global1.d.d.x)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 75911u;
    let var_1 = var_0;
    let var_2 = global1.d.b.b.zy;
    let var_3 = func_3(global1.c, global0[_wgslsmith_index_u32(~func_1(global1.d), 10u)], Struct_3(func_2(), global3.b), global1.c);
    global3 = Struct_4(global3.a, func_3(Struct_2(select(vec3<bool>(var_2.x, false, global3.c.c.x), vec3<bool>(false, global3.b.c.x, global3.a.b.c.x), vec3<bool>(true, var_2.x, true)), func_3(global1.c, global3.c, global1.d.a, Struct_2(var_3.a, global0[_wgslsmith_index_u32(35400u, 10u)], global0[_wgslsmith_index_u32(var_1, 10u)])).c, global0[_wgslsmith_index_u32(0u, 10u)]), global3.c, Struct_3(func_3(func_3(Struct_2(var_3.b.b.wzw, var_3.b, Struct_1(var_3.b.a, vec4<bool>(global1.c.b.c.x, global1.c.a.x, global1.c.b.b.x, false), vec2<bool>(global3.b.c.x, false))), global3.b, global1.d.a, global1.c), func_2(), Struct_3(Struct_1(vec2<f32>(global1.d.b.a.x, 415f), global1.c.b.b, global3.c.b.yz), Struct_1(var_3.c.a, vec4<bool>(var_2.x, true, false, true), vec2<bool>(global3.c.b.x, var_2.x))), var_3).c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.d.x, global1.b), ~vec2<u32>(1u, var_1)), 10u)]), var_3).b, func_3(Struct_2(func_3(Struct_2(vec3<bool>(var_2.x, false, true), Struct_1(vec2<f32>(var_3.b.a.x, -356f), var_3.c.b, global3.a.b.c), Struct_1(global1.d.c.a, global3.c.b, vec2<bool>(true, true))), Struct_1(global1.d.c.a, global3.c.b, var_3.c.c), global3.a, var_3).b.b.yww, func_3(var_3, func_2(), global3.a, global1.c).b, global0[_wgslsmith_index_u32(global3.d.x, 10u)]), global3.b, global1.d.a, Struct_2(func_2().b.xyx, global0[_wgslsmith_index_u32(func_1(Struct_4(global3.a, global0[_wgslsmith_index_u32(1u, 10u)], Struct_1(global1.d.a.b.a, vec4<bool>(var_3.b.c.x, var_2.x, var_2.x, var_2.x), vec2<bool>(var_2.x, global1.c.a.x)), vec4<u32>(1u, global1.d.d.x, var_1, var_0))), 10u)], func_2())).b, global3.d);
    var var_4 = Struct_2(global1.c.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, _wgslsmith_div_f32(326f, global3.c.a.x))), select(var_3.c.b, select(select(vec4<bool>(false, var_2.x, false, true), var_3.b.b, global1.d.a.b.b), select(vec4<bool>(global3.a.a.b.x, false, false, true), global3.c.b, vec4<bool>(false, var_2.x, false, global3.c.c.x)), var_2.x), !func_2().b), func_3(Struct_2(!global1.d.c.b.wyy, func_3(var_3, Struct_1(vec2<f32>(global1.c.b.a.x, -1337f), var_3.b.b, global1.d.c.c), global3.a, global1.c).b, var_3.b), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(474f, var_3.b.a.x) - var_3.c.a), !global1.d.c.b, select(global1.c.b.b.wx, var_3.c.b.wx, var_3.b.b.x)), global3.a, func_3(Struct_2(global3.c.b.zxz, global3.b, Struct_1(vec2<f32>(-158f, 506f), global3.a.b.b, vec2<bool>(var_3.b.c.x, global1.d.a.b.b.x))), func_2(), Struct_3(var_3.b, Struct_1(vec2<f32>(var_3.c.a.x, global1.d.a.b.a.x), vec4<bool>(true, false, global3.b.c.x, global1.c.b.b.x), vec2<bool>(false, var_2.x))), var_3)).c.c), global1.d.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(588f, global1.c.b.a.x, -1000f, -480f) - vec4<f32>(var_3.c.a.x, -2450f, 545f, global3.c.a.x)) - vec4<f32>(var_3.b.a.x, global3.a.a.a.x, 1315f, var_3.b.a.x)), vec4<f32>(1021f, _wgslsmith_div_f32(global1.d.a.b.a.x, 317f), var_3.b.a.x, 940f), -2147483647i >= (global1.a >> (18382u % 32u)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global3.a.b.a.x, global1.d.b.a.x, -188f), vec4<f32>(-823f, -106f, 1364f, global3.b.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1148f, -2225f, -664f, -534f), vec4<f32>(1260f, global3.c.a.x, 356f, -893f))))));
    let var_6 = func_3(Struct_2(func_2().b.xzy, func_2(), global0[_wgslsmith_index_u32(~(~30293u), 10u)]), var_4.c, global1.d.a, func_3(global1.c, func_3(var_3, Struct_1(_wgslsmith_f_op_vec2_f32(global3.a.a.a + global1.c.c.a), select(vec4<bool>(var_4.c.c.x, global3.b.c.x, var_3.a.x, false), vec4<bool>(global1.c.b.b.x, var_2.x, true, false), var_3.b.c.x), !vec2<bool>(false, var_3.a.x)), global1.d.a, var_3).b, global3.a, global1.c));
    let var_7 = _wgslsmith_f_op_f32(select(var_4.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -847f))) + var_6.b.a.x) - -1000f), true & (_wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, u_input.a, global1.a), vec3<i32>(global1.a, -12392i, u_input.a))) != _wgslsmith_add_i32(u_input.a >> (var_1 % 32u), countOneBits(global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(vec4<u32>(var_1, 38613u, var_1, 1u)) & abs(vec4<u32>(6849u, 4294967295u, 44722u, 27876u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)))), var_5);
}

