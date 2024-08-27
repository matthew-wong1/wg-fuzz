struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(57154u, 4294967295u, 1u, 26156u), vec4<u32>(1u, 9825u, 63362u, 1u), vec4<u32>(0u, 30273u, 0u, 14575u), vec4<u32>(1u, 47467u, 0u, 1u), vec4<u32>(6126u, 15355u, 4294967295u, 4294967295u), vec4<u32>(35688u, 4294967295u, 59986u, 40149u), vec4<u32>(4294967295u, 1u, 9216u, 25656u), vec4<u32>(1u, 58961u, 1u, 8564u), vec4<u32>(37245u, 4294967295u, 13846u, 0u), vec4<u32>(1u, 49163u, 0u, 34333u), vec4<u32>(12508u, 36288u, 0u, 1u), vec4<u32>(22826u, 23129u, 18171u, 3590u), vec4<u32>(1u, 13217u, 0u, 9422u), vec4<u32>(10822u, 0u, 15868u, 0u), vec4<u32>(0u, 150588u, 1u, 9417u), vec4<u32>(0u, 54091u, 4294967295u, 41669u), vec4<u32>(4294967295u, 34168u, 50100u, 0u), vec4<u32>(1u, 38114u, 35217u, 27777u), vec4<u32>(29530u, 33209u, 4294967295u, 1u), vec4<u32>(0u, 6776u, 4294967295u, 6129u), vec4<u32>(0u, 0u, 4294967295u, 10912u), vec4<u32>(45621u, 922u, 7641u, 4294967295u), vec4<u32>(0u, 3349u, 0u, 48732u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30273u), vec4<u32>(1u, 1u, 4819u, 16654u), vec4<u32>(22265u, 1u, 4294967295u, 1u), vec4<u32>(1u, 103921u, 48749u, 4294967295u), vec4<u32>(4294967295u, 74792u, 0u, 1u), vec4<u32>(0u, 0u, 0u, 93457u), vec4<u32>(5414u, 4294967295u, 4294967295u, 9753u), vec4<u32>(0u, 0u, 7287u, 25999u), vec4<u32>(1u, 6645u, 25685u, 0u));

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<f32>(-1902f, -321f, -559f), false, -1i), vec2<i32>(6034i, i32(-2147483648)), Struct_2(vec3<f32>(-167f, -2610f, -184f), false, 1i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = ~arg_0.x;
    var_0 = ~18028u;
    var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~4294967295u, 32u)], vec4<u32>(0u, 1u, 0u, 22703u)))), ~_wgslsmith_mult_u32(abs(u_input.a >> (23764u % 32u)), abs(arg_0.x) << (36264u % 32u)));
    let var_1 = global1.c;
    global0 = array<vec4<u32>, 32>();
    return select(vec2<bool>(true, any(!select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, global1.a.b), true))), select(select(vec2<bool>(any(vec3<bool>(false, true, var_1.b)), true), !arg_1, vec2<bool>(true, false)), select(arg_1, select(select(vec2<bool>(arg_2.b, false), vec2<bool>(var_1.b, true), arg_1), arg_1, !arg_1), true || all(vec2<bool>(var_1.b, false))), vec2<bool>(true, any(vec2<bool>(false, arg_1.x)))), vec2<bool>(any(select(!vec3<bool>(arg_1.x, arg_2.b, false), !vec3<bool>(arg_1.x, true, false), !vec3<bool>(arg_1.x, true, true))), any(!select(vec3<bool>(var_1.b, global1.c.b, global1.a.b), vec3<bool>(false, arg_2.b, arg_1.x), var_1.b))));
}

fn func_2() -> Struct_3 {
    var var_0 = func_3(_wgslsmith_div_vec3_u32(countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(38506u, u_input.a, u_input.a), vec3<u32>(14984u, u_input.a, u_input.a))), vec3<u32>(~u_input.a, u_input.a, 22770u)), select(!(!(!vec2<bool>(true, global1.c.b))), vec2<bool>(global1.c.b, true), vec2<bool>(false, !(1507u >= u_input.a))), global1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x * global1.c.a.x)) - global1.c.a.x), global1.c.a.x, _wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2403f - _wgslsmith_f_op_f32(-global1.c.a.x)))));
    let var_1 = ~countOneBits(select(vec2<u32>(abs(33219u), ~u_input.a), vec2<u32>(0u, 1u), select(!vec2<bool>(global1.c.b, global1.c.b), !vec2<bool>(global1.a.b, false), !vec2<bool>(var_0.x, global1.c.b))));
    var var_2 = Struct_3(global1.c, vec2<i32>(global1.b.x, abs(abs(reverseBits(global1.c.c)))), Struct_2(global1.a.a, true, ~0i));
    let var_3 = true;
    let var_4 = select(vec2<bool>(true, true), select(vec2<bool>(var_3 && !var_3, true), func_3(~vec3<u32>(4236u, u_input.a, 46873u), !select(vec2<bool>(true, var_3), vec2<bool>(true, false), false), var_2.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(154f, -298f, global1.a.a.x, global1.a.a.x), vec4<f32>(global1.a.a.x, -1746f, global1.a.a.x, var_2.a.a.x))))), global1.c.b), vec2<bool>(any(!(!vec3<bool>(var_2.c.b, true, var_2.c.b))), true));
    return Struct_3(var_2.a, abs(abs(var_2.b)), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1642f, var_2.c.a.x, 1011f)), var_2.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.a.a, var_2.a.a, false)) - _wgslsmith_f_op_vec3_f32(var_2.a.a * vec3<f32>(791f, var_2.c.a.x, 441f)))), (!var_2.c.b & var_3) & ((-808i | var_2.b.x) == countOneBits(0i)), ~global1.b.x | ~_wgslsmith_mod_i32(var_2.b.x, var_2.c.c)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    var var_0 = 514f;
    var var_1 = func_2();
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-47873i, global1.c.c, var_1.c.c, var_1.b.x), max(firstTrailingBit(reverseBits(~vec4<i32>(37082i, var_1.b.x, global1.a.c, var_1.b.x))), select(abs(-vec4<i32>(2147483647i, -1i, -1i, 29525i)), vec4<i32>(global1.c.c, -2147483647i, _wgslsmith_mod_i32(var_1.a.c, 86422i), global1.c.c), select(select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, global1.c.b, false, arg_0.x)), vec4<bool>(global1.a.b, false, false, var_1.a.b), !vec4<bool>(arg_0.x, var_1.c.b, true, global1.a.b)))));
    var var_3 = Struct_2(global1.c.a, arg_0.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.www, vec3<i32>(2147483647i, -42964i, 13771i)), -2147483647i, _wgslsmith_sub_i32(35192i, var_2.x), _wgslsmith_add_i32(var_2.x, -2147483647i)), reverseBits(-vec4<i32>(var_2.x, var_2.x, global1.c.c, global1.b.x)))));
    var_1 = func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1.a.a), true == (global1.c.b | func_1(!vec3<bool>(global1.a.b, global1.c.b, false), vec2<u32>(u_input.a, u_input.a), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)))), -2147483647i << (min(~(~37448u), _wgslsmith_mult_u32(4294967295u, ~u_input.a)) % 32u));
    let var_1 = ~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(max(u_input.a, ~(~31043u)), 32u)], reverseBits(select(global0[_wgslsmith_index_u32(~u_input.a, 32u)], _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 73449u, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 32u)]), !global1.a.b)));
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, var_0.a.x, 819f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1399f, global1.c.a.x, 1832f) * vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(var_0.b, var_0.b, global1.c.b), vec3<bool>(var_0.b, global1.c.b, global1.a.b), true)))), global1.a.b, global1.b.x), -(~select(-vec2<i32>(global1.c.c, -2147483647i), -vec2<i32>(var_0.c, var_0.c), !vec2<bool>(global1.a.b, false))), Struct_2(vec3<f32>(-1796f, -522f, _wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(ceil(-1000f)))), false, func_2().a.c));
    var var_2 = vec3<u32>(~1035u, _wgslsmith_sub_u32(min(_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.a), u_input.a), ~_wgslsmith_add_u32(1u, ~u_input.a)), u_input.a);
    var var_3 = Struct_3(var_0, countOneBits(firstLeadingBit(vec2<i32>(min(41310i, global1.a.c), ~28104i))), func_2().c);
    global1 = func_2();
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 124f, -474f, var_0.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(103f, -262f, var_0.a.x, 567f))), vec4<bool>(var_4, false, false, var_4)))))));
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), var_5.x))), global1.c.a.zx);
}

