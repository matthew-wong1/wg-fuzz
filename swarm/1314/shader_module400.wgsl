struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
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

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, false, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, false, true, false, false);

var<private> global1: bool = true;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -1i);

var<private> global3: Struct_2 = Struct_2(Struct_1(4294967295u, false, 678u, -579f));

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(4294967295u, false, 0u, 1684f)), Struct_2(Struct_1(4294967295u, true, 1u, -1393f)), Struct_2(Struct_1(4294967295u, true, 20155u, 374f)), Struct_2(Struct_1(1u, true, 0u, 1228f)), Struct_2(Struct_1(47784u, false, 1u, -1000f)), Struct_2(Struct_1(22811u, true, 9510u, -288f)), Struct_2(Struct_1(86400u, false, 55385u, -203f)), Struct_2(Struct_1(1u, false, 35332u, -823f)), Struct_2(Struct_1(1u, true, 4294967295u, 1856f)), Struct_2(Struct_1(76192u, true, 6974u, 1887f)), Struct_2(Struct_1(1u, false, 4294967295u, 2022f)), Struct_2(Struct_1(3916u, false, 31346u, 1000f)), Struct_2(Struct_1(88012u, true, 69903u, -1000f)), Struct_2(Struct_1(50395u, false, 1u, -1799f)), Struct_2(Struct_1(1u, true, 7193u, 138f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(4294967295u, false, u_input.e.x << (u_input.e.x % 32u), _wgslsmith_f_op_f32(round(arg_1.x)));
    return global3.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = firstTrailingBit(-u_input.d.ww);
    let var_1 = vec2<f32>(arg_3.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), global2.x > ~(-55775i))));
    var var_2 = Struct_2(func_2(~abs(reverseBits(u_input.e)), vec2<f32>(global3.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))), false, ~(~vec3<u32>(global3.a.a, 1u, 0u))));
    let var_3 = Struct_3(select(vec4<bool>(arg_3.a.b, false, true, false), vec4<bool>(!all(vec4<bool>(var_2.a.b, true, false, arg_1.a.x)), select(select(true, true, false), all(arg_1.a), all(arg_1.a.wyw)), true, !all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], var_2.a.b, false))), any(select(vec3<bool>(true, arg_0.b, var_2.a.b), vec3<bool>(true, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 23u)], global3.a.b, true), arg_1.a.yxy, arg_1.a.yyy)))), arg_1.b, var_2.a.c);
    let var_4 = var_3;
    return !(!(!((var_3.a.x && true) | (var_3.c == 4294967295u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> Struct_3 {
    var var_0 = vec3<bool>(!all(select(select(vec3<bool>(false, true, arg_1.a.b), vec3<bool>(global0[_wgslsmith_index_u32(77543u, 23u)], false, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(arg_1.a.b, false, global0[_wgslsmith_index_u32(1u, 23u)])), vec3<bool>(true, true, true), !vec3<bool>(global3.a.b, arg_1.a.b, global0[_wgslsmith_index_u32(32445u, 23u)]))), arg_1.a.b, select(arg_1.a.b, select(true, true, func_3(arg_1.a, Struct_3(vec4<bool>(arg_1.a.b, global0[_wgslsmith_index_u32(11406u, 23u)], true, true), vec4<f32>(global3.a.d, -2295f, global3.a.d, 127f), arg_3), max(-26847i, u_input.b), Struct_2(global3.a))), true));
    var var_1 = arg_0.x;
    let var_2 = !vec2<bool>(true == var_0.x, true);
    var var_3 = !global0[_wgslsmith_index_u32(58013u, 23u)];
    let var_4 = false;
    return Struct_3(select(select(!vec4<bool>(global3.a.b, true, true, var_4), vec4<bool>(true, global3.a.b, func_2(arg_0, vec2<f32>(695f, global3.a.d), global3.a.b, arg_0).b, false), select(select(vec4<bool>(var_2.x, arg_1.a.b, global3.a.b, global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(false, arg_1.a.b, true, var_0.x), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 23u)], var_0.x, var_4)), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], false, true, var_2.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(59682u, 23u)], true), arg_1.a.b), select(vec4<bool>(true, false, global3.a.b, var_2.x), vec4<bool>(true, false, var_0.x, var_0.x), true))), !(!vec4<bool>(var_4, global0[_wgslsmith_index_u32(arg_3, 23u)], var_2.x, global0[_wgslsmith_index_u32(0u, 23u)])), vec4<bool>(true, any(!vec4<bool>(true, false, global3.a.b, false)), var_2.x, var_4)), vec4<f32>(-1000f, -553f, _wgslsmith_f_op_f32(select(-528f, global3.a.d, var_2.x)), _wgslsmith_f_op_f32(arg_1.a.d - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1326f, global3.a.d) - 2192f))), arg_1.a.c);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.e, reverseBits(u_input.e)) >> ((func_4(u_input.e, Struct_2(global3.a), firstLeadingBit(global2.xzy), 1u).c >> (u_input.e.x % 32u)) % 32u));
    let var_1 = any(vec2<bool>(all(arg_0.a), any(arg_0.a.zyx)));
    return func_4(u_input.e & countOneBits(vec3<u32>(func_4(u_input.e, Struct_2(Struct_1(1u, true, u_input.e.x, arg_2.a.d)), vec3<i32>(u_input.a, u_input.d.x, global2.x), 44170u).c, func_4(vec3<u32>(arg_1, global3.a.c, 1u), Struct_2(global3.a), vec3<i32>(global2.x, global2.x, u_input.c), 0u).c, ~4294967295u)), global4[_wgslsmith_index_u32(~1u, 15u)], global2.wzw, ~(~arg_0.c));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.e.x, ~u_input.e.x), ~(~(~0u)), ~select(countOneBits(global3.a.a), 0u, true)) == u_input.e.x;
    let var_0 = u_input.d;
    let var_1 = false;
    global3 = global4[_wgslsmith_index_u32(u_input.e.x, 15u)];
    let var_2 = func_5(func_4(u_input.e, Struct_2(func_2(vec3<u32>(23886u, 66969u, 21348u), arg_0.zw, true, vec3<u32>(1u, u_input.e.x, u_input.e.x))), _wgslsmith_div_vec3_i32(select(-global2.wyz, -vec3<i32>(var_0.x, u_input.d.x, var_0.x), func_3(global3.a, Struct_3(vec4<bool>(false, false, false, global3.a.b), arg_0, 4294967295u), u_input.d.x, global4[_wgslsmith_index_u32(global3.a.c, 15u)])), _wgslsmith_mod_vec3_i32(-vec3<i32>(global2.x, u_input.a, global2.x), max(vec3<i32>(2147483647i, 6325i, global2.x), vec3<i32>(-14617i, -9249i, u_input.c)))), _wgslsmith_mod_u32(~abs(global3.a.a), ~global3.a.c)), 64397u, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(35991u, 62051u), 15u)]);
    return Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(783f, -1000f, global3.a.d, arg_0.x)) + _wgslsmith_f_op_vec4_f32(exp2(var_2.b))) * vec4<f32>(arg_0.x, -1000f, global3.a.d, -1000f)), var_2.c);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0.b.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -214f);
    let var_1 = ~(~global2.x);
    global0 = array<bool, 23>();
    let var_2 = vec3<f32>(arg_0.b.x, -990f, arg_0.b.x);
    return func_1(_wgslsmith_f_op_vec4_f32(-func_4(firstTrailingBit(vec3<u32>(u_input.e.x, u_input.e.x, arg_0.c) & u_input.e), global4[_wgslsmith_index_u32(4294967295u, 15u)], ~(global2.yxx >> (vec3<u32>(23105u, u_input.e.x, arg_0.c) % vec3<u32>(32u))), 105418u & (u_input.e.x << (4294967295u % 32u))).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, -1033f, -207f, global3.a.d))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(602f, 356f, 1636f, global3.a.d))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(func_4(vec3<u32>(u_input.e.x, 31993u, global3.a.c) & u_input.e, Struct_2(global3.a), abs(vec3<i32>(21132i, -10732i, -34341i)), 0u).b.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2057f, global3.a.d)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1645f, global3.a.d) + vec2<f32>(1897f, 1740f)))), vec2<f32>(global3.a.d, global3.a.d)), all(func_5(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.d, -768f, global3.a.d, global3.a.d))), u_input.e.x, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.c, 1u), 15u)]).a.xz));
    let var_1 = ~u_input.d.x;
    var var_2 = Struct_1(4294967295u, func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, var_0.b.x, -554f, global3.a.d) - vec4<f32>(global3.a.d, var_0.b.x, -1277f, -207f))))).a.x, var_0.c, _wgslsmith_f_op_f32(var_0.b.x + global3.a.d));
    global2 = ~(u_input.d & u_input.d) >> ((_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 64993u, 21360u, var_0.c), vec4<u32>(_wgslsmith_div_u32(46096u, var_2.c), 18829u, var_2.c, ~4294967295u)) << (vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e.x, 4294967295u), u_input.e.x), ~1u, var_0.c) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_2 = func_2(~u_input.e & vec3<u32>(91201u, 32716u, ~(var_2.a << (global3.a.c % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.zy))), !var_0.a.x, vec3<u32>(func_5(func_1(_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_2.d, 1000f, -1280f, var_0.b.x))), 2934u, Struct_2(func_2(u_input.e, var_0.b.xy, global0[_wgslsmith_index_u32(1u, 23u)], vec3<u32>(24374u, global3.a.a, 1u)))).c, ~(0u & (var_0.c | 1u)), ~(~_wgslsmith_mult_u32(var_0.c, u_input.e.x))));
    var var_3 = var_2.d;
    global1 = var_0.a.x;
    let var_4 = vec2<u32>(~var_2.c, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-33859i, 16975i) | _wgslsmith_mod_i32(var_1, -firstLeadingBit(u_input.d.x)));
}

