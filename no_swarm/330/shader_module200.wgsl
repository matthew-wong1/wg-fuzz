struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-52534i, vec2<bool>(false, true), 48715u, 806f), Struct_1(1i, vec2<bool>(false, true), 4294967295u, -397f), Struct_1(-1i, vec2<bool>(false, false), 26613u, 194f), Struct_1(1i, vec2<bool>(true, true), 4294967295u, 123f), Struct_1(0i, vec2<bool>(true, true), 6886u, 626f), Struct_1(-1i, vec2<bool>(false, false), 91709u, -106f), Struct_1(0i, vec2<bool>(false, false), 28959u, -1000f), Struct_1(-12846i, vec2<bool>(false, true), 78785u, 1527f), Struct_1(-32841i, vec2<bool>(true, true), 4294967295u, -605f), Struct_1(0i, vec2<bool>(true, true), 22752u, -202f), Struct_1(74086i, vec2<bool>(true, false), 0u, -1000f), Struct_1(-10729i, vec2<bool>(true, true), 1u, -376f), Struct_1(1i, vec2<bool>(true, true), 56758u, 292f), Struct_1(52812i, vec2<bool>(false, true), 43537u, 142f), Struct_1(909i, vec2<bool>(true, false), 172u, -3233f), Struct_1(1i, vec2<bool>(true, true), 0u, 1011f), Struct_1(66115i, vec2<bool>(false, true), 46028u, -380f));

var<private> global1: i32 = 48879i;

var<private> global2: array<Struct_2, 21>;

var<private> global3: Struct_1;

var<private> global4: bool = false;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global4 = false;
    let var_0 = vec2<bool>(global3.b.x, global3.b.x);
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(firstLeadingBit(1131u), 21u)]);
    let var_2 = var_1.a;
    var var_3 = !vec4<bool>((false & var_1.a.c.b.x) | !var_1.a.e.x, var_2.b.b.x, var_1.a.c.b.x, all(!select(vec4<bool>(true, var_0.x, false, var_1.a.c.b.x), var_1.a.e, vec4<bool>(var_2.c.b.x, var_0.x, false, var_0.x))));
    return _wgslsmith_mult_u32(1u, reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, 1u, 36782u), vec3<u32>(global3.c, var_2.b.c, 1u)))) >> (4294967295u % 32u);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d, _wgslsmith_f_op_f32(886f + global3.d), global3.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1674f, global3.d, 1601f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d, -288f, global3.d) + vec3<f32>(680f, global3.d, global3.d))), vec3<bool>(global3.b.x & arg_1.x, any(vec3<bool>(global3.b.x, global3.b.x, arg_1.x)), global3.b.x | true))), Struct_1(-global3.a, global3.b, ~108722u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d + -170f) * _wgslsmith_f_op_f32(-global3.d))), Struct_1(firstTrailingBit(u_input.c.x >> (arg_2 % 32u)), vec2<bool>(all(vec4<bool>(false, true, global3.b.x, global3.b.x)), all(vec3<bool>(arg_1.x, false, true))), arg_2, global3.d), Struct_1(max(arg_0, global3.a) << (func_3() % 32u), select(!global3.b, arg_1, arg_1.x != true), select(~global3.c, ~u_input.b, false), _wgslsmith_f_op_f32(select(468f, -1000f, true))), select(select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(false, arg_1.x, global3.b.x, arg_1.x), arg_1.x), !vec4<bool>(global3.b.x, false, false, global3.b.x), any(vec3<bool>(true, global3.b.x, arg_1.x))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.x, true, false, true), vec4<bool>(global3.b.x, global3.b.x, true, true)), select(vec4<bool>(true, false, arg_1.x, true), vec4<bool>(false, true, arg_1.x, global3.b.x), global3.b.x), !vec4<bool>(arg_1.x, true, arg_1.x, global3.b.x)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.x, global3.b.x), arg_1.x)))));
    var var_1 = vec4<bool>(true, _wgslsmith_mod_i32(abs(u_input.c.x), var_0.a.d.a) >= arg_0, false, all(!(!(!vec2<bool>(global3.b.x, var_0.a.e.x)))));
    var var_2 = var_0.a.c.c;
    let var_3 = arg_2;
    return global2[_wgslsmith_index_u32(global3.c, 21u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> i32 {
    global4 = any(func_2(-4865i, vec2<bool>(true, arg_2.d.b.x), global3.c << (~(~28178u) % 32u)).e);
    let var_0 = _wgslsmith_div_u32(~arg_1.a.b.c << (func_2(reverseBits(arg_0.d.a | 12647i), !vec2<bool>(global3.b.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65725u, arg_0.c.c, 12537u), _wgslsmith_div_vec4_u32(vec4<u32>(global3.c, 45416u, global3.c, 0u), vec4<u32>(35488u, arg_2.c.c, 5731u, 26438u)))).c.c % 32u), ~arg_0.d.c);
    global3 = Struct_1(~abs(arg_0.b.a), arg_2.d.b, arg_1.a.b.c, _wgslsmith_f_op_f32(step(global3.d, 681f)));
    global3 = Struct_1(-1i, func_2(~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c.a, 1i, global3.a, -1i), vec4<i32>(1i, arg_2.b.a, 18513i, 1i) | vec4<i32>(global3.a, arg_0.c.a, global3.a, -1i)), arg_1.a.c.b, 0u).b.b, abs(7980u), -470f);
    let var_1 = arg_0.d;
    return _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_add_vec3_i32(max(firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.c, u_input.c)), select(-vec3<i32>(var_1.a, -35171i, 2147483647i), firstLeadingBit(u_input.c), !vec3<bool>(global3.b.x, arg_1.a.c.b.x, arg_1.a.b.b.x))), abs(u_input.c | u_input.c)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(func_4(func_2(_wgslsmith_mod_i32(-26486i, global3.a), global3.b, _wgslsmith_add_u32(~u_input.b, ~global3.c)), Struct_3(func_2(global3.a << (28994u % 32u), !vec2<bool>(global3.b.x, true), global3.c)), Struct_2(vec3<f32>(-193f, 167f, global3.d), Struct_1(16040i, select(vec2<bool>(arg_0, global3.b.x), global3.b, false), ~0u, global3.d), Struct_1(_wgslsmith_add_i32(u_input.d, 0i), select(global3.b, global3.b, false), func_2(39470i, vec2<bool>(global3.b.x, false), global3.c).b.c, -605f), func_2(u_input.d, select(vec2<bool>(false, global3.b.x), vec2<bool>(arg_0, global3.b.x), vec2<bool>(arg_0, true)), abs(u_input.b)).d, vec4<bool>(2147483647i >= u_input.d, global3.b.x, arg_0, true)), true), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global3.a, 1i, 0i)), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c)) << ((~_wgslsmith_sub_u32(global3.c, 4294967295u) >> (max(u_input.b, u_input.b) % 32u)) % 32u));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, firstLeadingBit(u_input.b) ^ (u_input.b >> (global3.c % 32u))), ~_wgslsmith_mod_u32(reverseBits(global3.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, 21259u, u_input.b, 5306u), vec4<u32>(global3.c, 119385u, u_input.b, u_input.b)))), 1u, ~_wgslsmith_div_u32(0u, 47846u));
    var var_2 = func_2(u_input.d, global3.b, ~u_input.b).d;
    var var_3 = Struct_3(func_2(~(-global3.a), vec2<bool>(global3.b.x, select(all(vec3<bool>(arg_0, true, true)), func_2(u_input.a, vec2<bool>(true, false), var_2.c).d.b.x, any(vec4<bool>(false, global3.b.x, false, true)))), 0u));
    global0 = array<Struct_1, 17>();
    return var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.d)))), 300f)), _wgslsmith_f_op_f32(round(global3.d))));
    global0 = array<Struct_1, 17>();
    var var_1 = Struct_1(100734i, !select(select(global3.b, global3.b, global3.c < 1u), global3.b, select(!global3.b.x, any(vec4<bool>(global3.b.x, global3.b.x, false, global3.b.x)), global3.b.x)), u_input.b, 1364f);
    var_1 = func_1(true);
    var_1 = func_2(func_4(func_2(-2147483647i & _wgslsmith_mod_i32(global3.a, u_input.a), var_1.b, firstTrailingBit(~0u)), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1398f, 1119f, global3.d) * vec3<f32>(734f, var_1.d, global3.d)), func_1(true), global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(12635u, 17u)], vec4<bool>(var_1.b.x, true, global3.b.x, global3.b.x))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.d, -778f, var_1.d))), global0[_wgslsmith_index_u32(1u ^ ~global3.c, 17u)], Struct_1(1i, var_1.b, ~16463u, _wgslsmith_f_op_f32(select(var_0, 1068f, true))), global0[_wgslsmith_index_u32(~1u, 17u)], vec4<bool>(true, any(vec3<bool>(false, false, var_1.b.x)), var_1.b.x, global3.b.x)), true), vec2<bool>(var_1.b.x != (!var_1.b.x || select(global3.b.x, global3.b.x, false)), any(select(vec3<bool>(true, var_1.b.x, true), !vec3<bool>(true, var_1.b.x, global3.b.x), !global3.b.x))), var_1.c).c;
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(884u, u_input.b), 21u)]);
    let var_3 = ~vec2<u32>(firstTrailingBit(u_input.b), 10791u);
    let var_4 = ~var_3.x;
    let var_5 = func_2(-9890i, vec2<bool>(func_2(u_input.c.x, vec2<bool>(!var_2.a.b.b.x, true), ~global3.c).d.b.x, !(-69318i < u_input.d) | ((u_input.c.x <= 27453i) || !var_1.b.x)), firstTrailingBit(0u)).e.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global3.c, ~var_3.x), vec3<f32>(_wgslsmith_f_op_f32(245f + func_2(_wgslsmith_mult_i32(-4593i, global3.a), !vec2<bool>(var_5.x, var_1.b.x), max(4294967295u, var_4)).c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.d.d)))), var_1.d), _wgslsmith_div_vec2_u32(~firstLeadingBit(var_3), firstTrailingBit(var_3)));
}

