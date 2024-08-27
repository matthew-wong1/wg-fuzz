struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(0i, 1i, -17494i), vec3<i32>(-1i, 41937i, -30264i), vec3<i32>(-24050i, -1860i, i32(-2147483648)), vec3<i32>(0i, 19741i, 1i), vec3<i32>(-19451i, i32(-2147483648), -1i));

var<private> global2: vec3<f32>;

var<private> global3: array<bool, 29>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = ~_wgslsmith_div_i32(41991i << (u_input.c % 32u), 47330i >> (u_input.e % 32u)) & (i32(-1i) * -arg_3.a);
    var var_1 = 239f;
    var var_2 = arg_3;
    global1 = array<vec3<i32>, 5>();
    var_2 = arg_2;
    return 4842i;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.x;
    global3 = array<bool, 29>();
    var var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(ceil(global2.x)));
    var var_2 = u_input.b.zy;
    var var_3 = vec4<i32>(var_0, func_3(~0i, Struct_1(var_2.x, global2.x), Struct_1(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_div_f32(var_1.b, global2.x))), Struct_1(2147483647i, var_1.b)), min(~(min(1i, u_input.b.x) | 1i), ~u_input.a), ~(-firstLeadingBit(-2252i)) & ~_wgslsmith_div_i32(~2147483647i, func_3(82915i, Struct_1(var_0, var_1.b), Struct_1(var_2.x, global2.x), Struct_1(u_input.d, var_1.b))));
    return Struct_2(152f, Struct_1(-1i << (u_input.e % 32u), var_1.b), Struct_1(_wgslsmith_sub_i32((i32(-1i) * -15040i) << (_wgslsmith_sub_u32(3262u, u_input.c) % 32u), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1996f * 1000f) - _wgslsmith_div_f32(global2.x, -435f)))), Struct_1(_wgslsmith_sub_i32(var_3.x, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, -415f)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = abs(max(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, var_0.d.a), 1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), var_0.d.a), vec4<i32>(~u_input.b.x, reverseBits(11209i), -910i, u_input.b.x ^ u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e, u_input.e, 32928u), vec4<u32>(u_input.c, 75812u, u_input.e, 1u)), _wgslsmith_mod_u32(1u, u_input.e), _wgslsmith_mod_u32(u_input.c, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 34902u, u_input.c, 1u), vec4<u32>(u_input.e, u_input.c, 14092u, 12089u))) % vec4<u32>(32u)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), func_2().c, var_0.c, Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-var_0.d.b)));
    var var_2 = 1u;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(405f)), func_2().d, var_0.c, Struct_1(_wgslsmith_add_i32(-3019i >> (~u_input.e % 32u), -1i >> (countOneBits(u_input.c) % 32u)), arg_0.x));
    return func_2().d;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = Struct_1(-28161i, -1244f);
    global0 = true;
    let var_2 = -(~abs(arg_1.b.a));
    var var_3 = var_1;
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a, func_3(-2147483647i, var_0, func_1(vec3<f32>(-693f, -224f, -143f)), Struct_1(-2147483647i, -315f))), var_0.a), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().d.b))));
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    global1 = array<vec3<i32>, 5>();
    var var_0 = 1u;
    var_0 = 0u;
    var var_1 = arg_0;
    var var_2 = ~u_input.c;
    return !vec3<bool>(select(global3[_wgslsmith_index_u32(abs(0u | u_input.c), 29u)], true, all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], false, global3[_wgslsmith_index_u32(91286u, 29u)])) | global3[_wgslsmith_index_u32(countOneBits(4294967295u), 29u)]), any(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 29u)])), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global0 = true;
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(abs(max(~25590u, u_input.e)), ~5873u, u_input.c, u_input.c), ~(~(vec4<u32>(u_input.e, u_input.e, 4964u, u_input.e) | vec4<u32>(4294967295u, 13559u, 62151u, 45007u)) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, u_input.c, u_input.e, 0u), vec4<u32>(4294967295u, 38050u, u_input.c, u_input.c), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 29u)], true, true, false)), ~vec4<u32>(u_input.e, 16083u, u_input.c, u_input.e)) % vec4<u32>(32u))));
    global3 = array<bool, 29>();
    global3 = array<bool, 29>();
    var var_2 = !func_5(Struct_2(global2.x, func_4(u_input.b.x, Struct_2(global2.x, Struct_1(u_input.a, -1167f), Struct_1(-2147483647i, global2.x), Struct_1(u_input.a, -1000f)), Struct_1(-2147483647i, -1000f), func_1(vec3<f32>(274f, global2.x, global2.x))), func_4(_wgslsmith_sub_i32(-29158i, -37662i), Struct_2(global2.x, Struct_1(u_input.b.x, global2.x), Struct_1(u_input.b.x, 793f), Struct_1(u_input.a, global2.x)), func_1(vec3<f32>(global2.x, global2.x, global2.x)), func_1(vec3<f32>(global2.x, global2.x, global2.x))), func_4(1i, func_2(), Struct_1(2147483647i, global2.x), func_2().d)));
    var var_3 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(min(-768f, var_3.b)))) + _wgslsmith_f_op_f32(-var_3.b)));
}

