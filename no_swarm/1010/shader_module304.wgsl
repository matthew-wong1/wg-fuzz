struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<f32>(-1132f, 149f), -57426i), Struct_2(vec2<f32>(850f, 639f), -19577i), Struct_2(vec2<f32>(223f, 1000f), -6409i), Struct_2(vec2<f32>(1641f, 1080f), 45867i), Struct_2(vec2<f32>(1866f, 305f), 3440i), Struct_2(vec2<f32>(930f, 638f), -1i), Struct_2(vec2<f32>(595f, -2193f), -22610i), Struct_2(vec2<f32>(1563f, 1242f), 5353i), Struct_2(vec2<f32>(-1072f, -997f), -40184i), Struct_2(vec2<f32>(189f, 1411f), 1i), Struct_2(vec2<f32>(-671f, 471f), 2147483647i), Struct_2(vec2<f32>(-744f, 1047f), 1i), Struct_2(vec2<f32>(640f, 642f), -28917i), Struct_2(vec2<f32>(-259f, 750f), -1i), Struct_2(vec2<f32>(262f, -860f), 1i), Struct_2(vec2<f32>(-1786f, -625f), 2147483647i), Struct_2(vec2<f32>(-1485f, -1327f), -1342i), Struct_2(vec2<f32>(2314f, 184f), i32(-2147483648)), Struct_2(vec2<f32>(296f, 818f), 2147483647i), Struct_2(vec2<f32>(749f, -1449f), -1079i), Struct_2(vec2<f32>(1085f, 1000f), 2147483647i), Struct_2(vec2<f32>(-1626f, -385f), 1i), Struct_2(vec2<f32>(988f, -1000f), 31281i), Struct_2(vec2<f32>(-1129f, 968f), -8251i), Struct_2(vec2<f32>(-335f, -1547f), -4043i), Struct_2(vec2<f32>(-381f, 137f), 1i), Struct_2(vec2<f32>(1003f, 1000f), i32(-2147483648)));

var<private> global1: Struct_3;

var<private> global2: array<u32, 21> = array<u32, 21>(17943u, 4294967295u, 1u, 35157u, 39127u, 4294967295u, 32647u, 20366u, 5831u, 64154u, 0u, 4294967295u, 33929u, 4294967295u, 43892u, 0u, 0u, 5152u, 1u, 27439u, 21603u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_3(min(global1.a, abs(vec4<u32>(45129u, arg_0, 12088u, global1.a.x))), !global1.b, !(global1.c && true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, 285f, 807f, 155f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, 592f, -726f, -1023f)))))));
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    let var_2 = Struct_1(~select(global2[_wgslsmith_index_u32(global1.a.x, 21u)], 57863u, false) >> (var_0.a.x % 32u), global1.b.x);
    return var_2.b;
}

fn func_2() -> Struct_1 {
    let var_0 = any(select(vec4<bool>(false, any(vec3<bool>(global1.b.x, global1.b.x, global1.c)), func_3(_wgslsmith_mod_u32(4294967295u, 1u)), select(global1.c, false, any(global1.b))), select(!select(vec4<bool>(global1.b.x, global1.c, false, global1.c), vec4<bool>(false, true, false, global1.c), global1.c), !select(vec4<bool>(false, false, true, global1.c), vec4<bool>(global1.c, global1.c, global1.b.x, global1.b.x), global1.c), global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1113f + 280f), -910f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(trunc(-515f))))));
    var var_1 = u_input.b;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(0u, 21u)] >> (global1.a.x % 32u), global1.b.x);
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -1430f))))), abs(2147483647i));
    return Struct_1(~1u, any(!vec3<bool>(true, any(vec4<bool>(var_2.b, true, var_2.b, true)), true)));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 21>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(f32(-1f) * -476f)))))));
    global0 = array<Struct_2, 27>();
    let var_1 = max(u_input.a, ~max(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), global1.a), reverseBits(abs(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u, global2[_wgslsmith_index_u32(global1.a.x, 21u)], 0u)))));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<f32> {
    global1 = Struct_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(global1.a.x, 4294967295u), 0u << (0u % 32u), 28731u, 1u), vec4<u32>(44390u, ~44570u, global1.a.x, ~u_input.a.x | (global1.a.x & 0u))), !select(vec2<bool>(!global1.b.x, all(vec2<bool>(false, arg_0.b))), vec2<bool>(true, select(false, global1.b.x, true)), vec2<bool>(222f != arg_2.a.x, select(global1.b.x, arg_0.b, arg_0.b))), arg_0.b);
    global1 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(func_1().a, ~561u, global1.a.x, arg_0.a), countOneBits(~u_input.a ^ ~u_input.a)), global1.b, true);
    let var_0 = vec2<i32>(u_input.b | -45386i, 14700i);
    let var_1 = Struct_1(reverseBits(arg_0.a), false);
    global2 = array<u32, 21>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.a, _wgslsmith_f_op_vec2_f32(-arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(func_1(), global0[_wgslsmith_index_u32(~25226u, 27u)], global0[_wgslsmith_index_u32(~global1.a.x, 27u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-811f, 1188f))))))))));
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    var var_1 = all(vec2<bool>(global1.c, global1.c));
    global2 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-429f, var_0.x) - _wgslsmith_f_op_f32(exp2(var_0.x))), 587f))));
}

