struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(2324f, -678f), vec4<u32>(0u, 62418u, 48558u, 49592u), vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(-43788i, i32(-2147483648), 62093i), Struct_1(false));

var<private> global2: array<u32, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> vec4<bool> {
    global2 = array<u32, 14>();
    let var_0 = global1.d.zy;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(trunc(global1.a.x))))), global1.a)), vec4<u32>(~global2[_wgslsmith_index_u32(~min(68325u, u_input.c.x), 14u)], 4294967295u | ((0u >> (global1.b.x % 32u)) << (~18169u % 32u)), global1.b.x, 12087u), u_input.c, vec3<i32>(-(i32(-1i) * -global1.d.x), global1.d.x, var_0.x), Struct_1(!((global1.e.a | false) | (global1.e.a && global0.a))));
    global0 = Struct_1(true);
    global0 = var_1.e;
    return !vec4<bool>(all(select(vec4<bool>(true, global1.e.a, var_1.e.a, global0.a), !vec4<bool>(var_1.e.a, false, global0.a, global0.a), vec4<bool>(false, var_1.e.a, false, false))), true, true, all(select(select(vec3<bool>(global1.e.a, false, global0.a), vec3<bool>(true, var_1.e.a, true), global1.e.a), select(vec3<bool>(global1.e.a, global0.a, true), vec3<bool>(global1.e.a, global1.e.a, var_1.e.a), vec3<bool>(false, global1.e.a, var_1.e.a)), !vec3<bool>(global0.a, global0.a, true))));
}

fn func_3() -> i32 {
    let var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global1.c.x, 74393u), ~9112u, ~u_input.c.x, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9862u, 14u)], 14u)], 14u)]), global1.b));
    let var_1 = Struct_2(vec2<f32>(global1.a.x, -1000f), min(~global1.b, max(~vec4<u32>(19285u, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(var_0.x, 14u)]), var_0) | (~vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 14u)], 15607u, u_input.c.x, global1.b.x) | vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], 4294967295u, 1u, 4294967295u))), (var_0.zyx << (~(~vec3<u32>(0u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) ^ ~countOneBits(reverseBits(vec3<u32>(var_0.x, 18440u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))), -_wgslsmith_div_vec3_i32(vec3<i32>(-31912i >> (var_0.x % 32u), i32(-1i) * -732i, 1i), global1.d), global1.e);
    var var_2 = ~var_1.b.x;
    return firstTrailingBit(countOneBits(0i));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: i32) -> vec2<u32> {
    var var_0 = abs(0u);
    global1 = Struct_2(vec2<f32>(global1.a.x, global1.a.x), _wgslsmith_mod_vec4_u32(global1.b, _wgslsmith_mult_vec4_u32(abs(global1.b), _wgslsmith_sub_vec4_u32(global1.b, global1.b)) ^ global1.b), u_input.c, global1.d, global1.e);
    let var_1 = select(select(select(vec2<bool>(true, true), func_1().zw, vec2<bool>(true, any(vec2<bool>(global0.a, false)))), vec2<bool>(any(vec2<bool>(global1.e.a, true)), !global1.e.a), global0.a), vec2<bool>(global1.e.a, true), vec2<bool>(_wgslsmith_f_op_f32(select(global1.a.x, -959f, all(vec4<bool>(true, global0.a, global0.a, global0.a)))) != _wgslsmith_f_op_f32(select(279f, _wgslsmith_f_op_f32(-global1.a.x), true)), !any(vec3<bool>(false, false, global1.e.a))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -287f)) * vec2<f32>(673f, global1.a.x))), global1.a, vec2<bool>(func_1().x, any(!vec3<bool>(global1.e.a, global0.a, global0.a))))), ~global1.b, vec3<u32>(~1u ^ global1.c.x, 23888u, firstLeadingBit(3517u)), global1.d | (-min(vec3<i32>(arg_0, -67758i, arg_2), global1.d) << ((reverseBits(u_input.c) | global1.c) % vec3<u32>(32u))), global1.e);
    global0 = var_2.e;
    return vec2<u32>(~global2[_wgslsmith_index_u32(4395u, 14u)], ~_wgslsmith_sub_u32(select(select(5451u, 19379u, true), ~71981u, var_1.x), _wgslsmith_add_u32(global1.c.x, _wgslsmith_mult_u32(3975u, u_input.c.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    global2 = array<u32, 14>();
    var var_1 = global1.b.yx;
    var var_2 = func_4(-1i, countOneBits(51351u), -10910i, firstTrailingBit(func_3()) ^ -1i);
    var_2 = vec2<u32>(global2[_wgslsmith_index_u32(~34422u, 14u)], _wgslsmith_add_u32(~(~1u >> (global1.b.x % 32u)), ~_wgslsmith_add_u32(1u, ~u_input.b.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1550f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0)))))) - vec2<f32>(-1495f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0)))), _wgslsmith_mult_vec4_u32(global1.b, vec4<u32>(~func_4(global1.d.x, global2[_wgslsmith_index_u32(global1.c.x, 14u)], -1i, -1601i).x, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.a, var_1.x, 32005u)), 14u)]), 1u, _wgslsmith_add_u32(92963u, _wgslsmith_add_u32(0u, var_2.x)))), ~vec3<u32>(var_2.x, 30030u, _wgslsmith_div_u32(54083u, global2[_wgslsmith_index_u32(var_1.x, 14u)])), vec3<i32>(-34842i, global1.d.x ^ global1.d.x, global1.d.x & -1i), Struct_1(~global1.d.x >= global1.d.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec4<u32> {
    let var_0 = Struct_1(global0.a);
    global1 = func_2();
    let var_1 = !any(!(!select(vec2<bool>(false, true), vec2<bool>(global0.a, false), true)));
    var var_2 = _wgslsmith_mod_i32(arg_2.d.x, _wgslsmith_add_i32(~(-58603i) << (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-21858i, global1.d.x, arg_2.d.x, -40275i), vec4<i32>(-2147483647i, arg_2.d.x, 0i, 27994i)), ~vec4<i32>(63540i, global1.d.x, global1.d.x, arg_2.d.x)))) | ~(~32417i);
    global1 = arg_2;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.e;
    var var_0 = !func_1();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), -152f) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(333f, global1.a.x))))), firstTrailingBit(~func_5(global1.e, firstLeadingBit(5567u), func_2(), true)), ~(max(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 14u)], global1.b.x), _wgslsmith_mod_vec3_u32(global1.b.yzw, vec3<u32>(global2[_wgslsmith_index_u32(global1.b.x, 14u)], 34578u, 17017u))) | _wgslsmith_mod_vec3_u32(~u_input.c, global1.c)), _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(global1.d.x, -2147483647i, 0i)), global1.d), global1.e);
    let var_2 = Struct_1(global1.e.a);
    let var_3 = global1.d.yx;
    var var_4 = var_1;
    let var_5 = vec2<bool>(true, false);
    global0 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.a.x, global1.a.x, var_4.a.x, 1587f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(612f, global1.a.x, global1.a.x, global1.a.x), vec4<f32>(var_4.a.x, 1215f, global1.a.x, global1.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-592f * -1000f), _wgslsmith_f_op_f32(-951f - var_1.a.x), -1996f, _wgslsmith_f_op_f32(max(281f, 157f))))), -17845i);
}

