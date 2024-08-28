struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 21> = array<f32, 21>(-1288f, 2795f, -2893f, 470f, -1640f, 193f, -682f, -1417f, -1616f, 304f, -561f, -2193f, -343f, 200f, -205f, 1000f, 1000f, -222f, -385f, 558f, 1000f);

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(414f, 1115f, Struct_2(vec4<f32>(-467f, 736f, 1000f, -366f), vec4<i32>(0i, -72174i, 54729i, 1i), 15938u, vec4<bool>(false, true, false, false), vec3<f32>(-1000f, -453f, -507f))), Struct_3(-1040f, 1000f, Struct_2(vec4<f32>(222f, -2071f, -1560f, -1078f), vec4<i32>(2147483647i, -17176i, 0i, -1i), 29043u, vec4<bool>(false, true, true, false), vec3<f32>(-1648f, 2125f, 1500f))), Struct_3(667f, -326f, Struct_2(vec4<f32>(-542f, 858f, 1334f, -525f), vec4<i32>(361i, -2158i, 19629i, -2504i), 2873u, vec4<bool>(true, true, true, true), vec3<f32>(-893f, 1331f, -730f))), Struct_3(1037f, -2526f, Struct_2(vec4<f32>(327f, -524f, -1277f, 1126f), vec4<i32>(i32(-2147483648), -1i, -41824i, 13673i), 56097u, vec4<bool>(false, true, true, true), vec3<f32>(-1167f, 1000f, -1446f))), Struct_3(276f, 734f, Struct_2(vec4<f32>(1393f, -746f, 231f, 1033f), vec4<i32>(-36511i, i32(-2147483648), 47015i, 27179i), 103144u, vec4<bool>(true, true, true, false), vec3<f32>(-482f, 1000f, -126f))), Struct_3(-154f, 1000f, Struct_2(vec4<f32>(1107f, 530f, -449f, -530f), vec4<i32>(-34355i, -1i, -1i, 0i), 0u, vec4<bool>(true, true, false, false), vec3<f32>(1000f, 891f, -504f))));

var<private> global4: array<vec4<bool>, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_0.b.c;
    var var_1 = var_0.a;
    global0 = !global4[_wgslsmith_index_u32(var_0.c, 24u)];
    var var_2 = -(~(-20429i));
    let var_3 = arg_0.b.c.c;
    return true;
}

fn func_3(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 21u)];
    var var_1 = global3[_wgslsmith_index_u32(u_input.b, 6u)];
    let var_2 = var_1.c.a;
    let var_3 = arg_0.x && true;
    let var_4 = global3[_wgslsmith_index_u32(~(~max(u_input.b, select(1u, u_input.b, false))) ^ _wgslsmith_add_u32(select(firstTrailingBit(9176u ^ u_input.b), 0u, !var_1.c.d.x), ~max(_wgslsmith_mult_u32(1u, var_1.c.c), 1u)), 6u)];
    return Struct_4(Struct_1(!(!(!var_4.c.d)), var_1.c.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(max(var_4.b, 455f)))))), u_input.a, vec4<u32>(~var_1.c.c, max(var_1.c.c, var_1.c.c), 73108u, 4294967295u)), global3[_wgslsmith_index_u32((var_4.c.c | ~u_input.b) | ~var_1.c.c, 6u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.c.e.x, -1671f, true)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] + arg_1.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1259f * -1070f)))), 1561f);
    var var_1 = func_3(func_3(!vec3<bool>(arg_1.b.c.a.x > 1731f, arg_2.a.c >= 850f, true)).a.a.xww).b;
    let var_2 = func_3(arg_2.b.c.d.wxy).b.c;
    let var_3 = any(var_1.c.d.wz);
    let var_4 = arg_1;
    return arg_2.a;
}

fn func_1() -> Struct_3 {
    global1 = array<f32, 21>();
    let var_0 = !(!global2.wzx);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(u_input.b, 21u)])));
    var var_2 = -9925i;
    let var_3 = Struct_4(func_4(true, func_3(vec3<bool>(u_input.b < 0u, var_0.x, func_2(Struct_4(Struct_1(global4[_wgslsmith_index_u32(u_input.b, 24u)], u_input.b, 1000f, 1i, vec4<u32>(u_input.b, u_input.b, u_input.b, 42432u)), Struct_3(var_1, var_1, Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(23746u, 21u)], -430f, 1543f), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i), u_input.b, global4[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(-172f, -781f, global1[_wgslsmith_index_u32(u_input.b, 21u)])))), global0.x, var_1, vec4<i32>(-53045i, u_input.a, u_input.a, 0i)))), func_3(func_3(vec3<bool>(global2.x, var_0.x, false)).a.a.xxz)), Struct_3(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 21u)], 1245f, any(!global4[_wgslsmith_index_u32(u_input.b, 24u)]))), global1[_wgslsmith_index_u32(u_input.b, 21u)], func_3(global0.wzz).b.c));
    return func_3(global0.yzx).b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 6>();
    var var_0 = func_1();
    global0 = func_4(var_0.c.d.x, Struct_4(Struct_1(!(!vec4<bool>(var_0.c.d.x, var_0.c.d.x, true, global2.x)), func_4(func_4(global0.x, Struct_4(Struct_1(global4[_wgslsmith_index_u32(u_input.b, 24u)], 41559u, -207f, var_0.c.b.x, vec4<u32>(var_0.c.c, u_input.b, 0u, var_0.c.c)), global3[_wgslsmith_index_u32(u_input.b, 6u)]), Struct_4(Struct_1(global4[_wgslsmith_index_u32(0u, 24u)], 0u, 1000f, -1i, vec4<u32>(11707u, 4294967295u, var_0.c.c, 41936u)), global3[_wgslsmith_index_u32(u_input.b, 6u)])).a.x, Struct_4(Struct_1(vec4<bool>(global0.x, false, true, true), var_0.c.c, global1[_wgslsmith_index_u32(21089u, 21u)], var_0.c.b.x, vec4<u32>(var_0.c.c, 26348u, u_input.b, 7695u)), Struct_3(global1[_wgslsmith_index_u32(var_0.c.c, 21u)], var_0.c.a.x, Struct_2(var_0.c.a, var_0.c.b, u_input.b, vec4<bool>(false, global0.x, global0.x, false), var_0.c.e))), Struct_4(Struct_1(vec4<bool>(var_0.c.d.x, false, true, global0.x), u_input.b, -241f, -42728i, vec4<u32>(var_0.c.c, u_input.b, 1u, var_0.c.c)), global3[_wgslsmith_index_u32(var_0.c.c, 6u)])).e.x, -594f, min(u_input.a, i32(-1i) * -14884i), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.c, 13853u, 2723u, var_0.c.c), ~vec4<u32>(47764u, u_input.b, var_0.c.c, 88u))), func_3(!vec3<bool>(global2.x, true, true)).b), func_3(global0.ywz)).a;
    global0 = func_4(!var_0.c.d.x, Struct_4(func_4(global2.x, Struct_4(Struct_1(vec4<bool>(false, global0.x, global2.x, false), 41945u, global1[_wgslsmith_index_u32(9911u, 21u)], var_0.c.b.x, vec4<u32>(u_input.b, var_0.c.c, 34177u, u_input.b)), global3[_wgslsmith_index_u32(var_0.c.c, 6u)]), Struct_4(Struct_1(vec4<bool>(true, var_0.c.d.x, true, false), var_0.c.c, global1[_wgslsmith_index_u32(4294967295u, 21u)], var_0.c.b.x, vec4<u32>(var_0.c.c, 0u, var_0.c.c, u_input.b)), Struct_3(global1[_wgslsmith_index_u32(u_input.b, 21u)], -678f, Struct_2(var_0.c.a, var_0.c.b, var_0.c.c, vec4<bool>(true, true, true, global2.x), var_0.c.e)))), global3[_wgslsmith_index_u32(var_0.c.c, 6u)]), func_3(!func_4(!var_0.c.d.x, Struct_4(Struct_1(vec4<bool>(global2.x, false, true, var_0.c.d.x), 0u, var_0.c.a.x, var_0.c.b.x, vec4<u32>(u_input.b, 56063u, 1u, var_0.c.c)), Struct_3(-1414f, global1[_wgslsmith_index_u32(u_input.b, 21u)], Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(var_0.c.c, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], -930f, -1216f), vec4<i32>(var_0.c.b.x, u_input.c.x, u_input.c.x, var_0.c.b.x), var_0.c.c, vec4<bool>(var_0.c.d.x, false, true, var_0.c.d.x), var_0.c.a.wwz))), func_3(vec3<bool>(var_0.c.d.x, true, global0.x))).a.yxw)).a;
    global3 = array<Struct_3, 6>();
    let var_1 = func_4(any(func_1().c.d.yzw), func_3(global0.yzz), func_3(!var_0.c.d.xxy)).e.yxw;
    let var_2 = func_4(!all(vec3<bool>(true, all(vec4<bool>(false, global2.x, true, true)), var_0.b >= global1[_wgslsmith_index_u32(5184u, 21u)])), func_3(vec3<bool>(all(func_1().c.d), false, select(global0.x, !global2.x, var_0.c.d.x))), func_3(!vec3<bool>(true, global0.x, !global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.c.b.x), var_1.x, -_wgslsmith_div_vec2_i32(u_input.c, u_input.c), firstTrailingBit(abs(var_0.c.b.xzy)));
}

