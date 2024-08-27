struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, 1i, i32(-2147483648));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(4294967295u, -14082i, -1i), Struct_2(1u, -1i, -1i), Struct_2(1u, -15946i, -42487i), Struct_2(4294967295u, 2147483647i, 39120i), Struct_2(15279u, 15448i, -16312i), Struct_2(0u, -1i, 1i), Struct_2(4294967295u, -9056i, -50749i), Struct_2(4294967295u, i32(-2147483648), 43815i), Struct_2(4294967295u, 2147483647i, 1i), Struct_2(0u, -47872i, 57011i), Struct_2(4294967295u, 0i, 4751i), Struct_2(0u, 75814i, 1i), Struct_2(39710u, i32(-2147483648), 18064i), Struct_2(79048u, -22313i, -15037i), Struct_2(70688u, -18905i, 0i), Struct_2(30845u, -8511i, 0i), Struct_2(65049u, 2147483647i, 31614i), Struct_2(0u, 0i, 104873i), Struct_2(4294967295u, -47396i, 66940i), Struct_2(4294967295u, -4854i, i32(-2147483648)), Struct_2(4294967295u, i32(-2147483648), -22601i), Struct_2(26129u, 2147483647i, -35737i));

var<private> global2: array<vec4<u32>, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = !(!select(vec3<bool>(all(vec3<bool>(false, false, false)), false, true), vec3<bool>(false, true, true), false));
    let var_1 = select(select(select(var_0, vec3<bool>(any(vec2<bool>(true, false)), true, true), var_0.x), vec3<bool>(false, all(vec4<bool>(var_0.x, false, false, var_0.x)), ~u_input.d.x >= 4356i), vec3<bool>(true, !(var_0.x & true), true)), !var_0, var_0);
    global0 = ~select(-firstLeadingBit(~vec4<i32>(global0.x, u_input.d.x, global0.x, 2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-39282i, 2147483647i, -13312i, global0.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 0i, global0.x, -54046i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(76054i, 1i, global0.x, global0.x), vec4<i32>(-63010i, u_input.d.x, 0i, u_input.d.x), vec4<i32>(-13062i, 43923i, -29666i, global0.x)) & _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global0.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x)), abs(-vec4<i32>(u_input.d.x, global0.x, -1i, 1i))), true);
    global0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(-2147483647i, global0.x), ~1i, -15850i, u_input.d.x), vec4<i32>(_wgslsmith_add_i32(abs(-1i), 1i), -5080i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, 46622i), ~global0.x), -global0.x)) ^ ~((reverseBits(vec4<i32>(global0.x, 20715i, -2147483647i, u_input.d.x)) >> (~u_input.b % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_div_i32(global0.x, -1i), ~(-2147483647i), abs(u_input.d.x), -global0.x));
    let var_2 = !(!select(!var_1, var_1, select(!vec3<bool>(var_0.x, var_0.x, false), select(var_0, vec3<bool>(var_1.x, true, true), var_0), !vec3<bool>(var_0.x, var_0.x, false))));
    return 44911u;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_1(u_input.d.x, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1571f, 514f, -1213f) - vec3<f32>(-1383f, 1095f, -714f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(538f, -1596f, -477f), vec3<f32>(513f, -461f, -908f)))))), reverseBits(global2[_wgslsmith_index_u32(func_3(), 15u)]), global2[_wgslsmith_index_u32(max(func_3(), 9172u), 15u)]);
    let var_1 = Struct_2(22059u, global0.x, -53511i);
    global2 = array<vec4<u32>, 15>();
    var var_2 = _wgslsmith_mult_u32(~select(_wgslsmith_dot_vec2_u32(~vec2<u32>(18619u, 0u), _wgslsmith_mult_vec2_u32(var_0.b.yw, var_0.b.yw)), firstLeadingBit(~u_input.e), true), ~(~1u));
    var_2 = func_3();
    return !(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = !(!vec4<bool>(select(any(vec4<bool>(true, arg_0.x, true, true)), false, false), false, !(!arg_0.x), !arg_0.x && true));
    let var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_2 = false | (!(true & var_0.x) && !all(select(arg_0, arg_0, var_0.wz)));
    let var_3 = arg_1;
    global1 = array<Struct_2, 22>();
    return vec3<u32>(1u, arg_1.a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(5100u, firstLeadingBit(u_input.c)) >> (_wgslsmith_clamp_u32(21898u, ~4294967295u, abs(arg_1.a)) % 32u), ~4294967295u ^ ~arg_1.a));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = vec4<i32>(global0.x, 70361i, ~(-15189i), 1i);
    let var_0 = -101986i;
    var var_1 = 27571u;
    var var_2 = Struct_2(arg_1.x, global0.x, _wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(0i, 0i, u_input.d.x, u_input.d.x)) & reverseBits(vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, global0.x)), ~abs(vec4<i32>(u_input.d.x, 48514i, 20879i, var_0)), vec4<bool>(true, true, true, true)), -max(vec4<i32>(-12157i, var_0, var_0, global0.x), vec4<i32>(-2147483647i, 6708i, var_0, 2147483647i) | vec4<i32>(2147483647i, 16595i, u_input.d.x, -1i))));
    var var_3 = Struct_1(global0.x, min(~select(~global2[_wgslsmith_index_u32(4294967295u, 15u)], select(u_input.b, u_input.b, false), vec4<bool>(true, true, false, true)), max(global2[_wgslsmith_index_u32(~0u, 15u)], abs(vec4<u32>(156u, 114733u, var_2.a, u_input.a))) | ~vec4<u32>(arg_1.x, 1u, arg_1.x, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, -291f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, 1297f))), true)))), vec4<u32>(0u << (abs(var_2.a) % 32u), 4294967295u, u_input.e, u_input.a), vec4<u32>(min(var_2.a, u_input.e) | reverseBits(arg_1.x), ~abs(arg_1.x), (7685u >> (1u % 32u)) << ((arg_1.x << (32790u % 32u)) % 32u), ~func_4(vec2<bool>(false, true), Struct_2(9678u, var_2.b, -54908i), vec2<f32>(416f, 211f)).x) | vec4<u32>(max(arg_1.x, ~4294967295u), 16826u & min(65377u, arg_1.x), u_input.e ^ arg_1.x, arg_1.x));
    return Struct_1(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_div_vec4_u32(~vec4<u32>(~arg_1.x, var_2.a, max(0u, 45502u), var_3.b.x), global2[_wgslsmith_index_u32(0u, 15u)]), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-arg_0), -200f), vec4<u32>(~13659u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~var_3.d.yx, _wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(var_3.d.x, 10433u))), ~(u_input.b.x & 1u)), 42021u, 15549u), u_input.b);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    return arg_1;
}

fn func_1() -> Struct_2 {
    var var_0 = func_6(~(u_input.e ^ u_input.c) > u_input.b.x, func_5(-908f, func_4(select(vec2<bool>(false, true), vec2<bool>(false, true), func_2(Struct_2(1u, global0.x, u_input.d.x), 38785u)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 82616u), u_input.a), 22u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(885f, 589f), vec2<f32>(-1164f, 2767f), vec2<bool>(false, false))), vec2<f32>(766f, 846f))))), _wgslsmith_f_op_f32(f32(-1f) * -545f));
    global2 = array<vec4<u32>, 15>();
    global1 = array<Struct_2, 22>();
    global0 = ((-firstTrailingBit(vec4<i32>(-36048i, 0i, -1i, global0.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 10068u, var_0.d.x, 40118u), ~vec4<u32>(40495u, 28926u, var_0.e.x, var_0.d.x)) % vec4<u32>(32u))) ^ -(~vec4<i32>(0i, 12723i, global0.x, -8219i) << ((vec4<u32>(u_input.c, 29297u, var_0.d.x, var_0.b.x) | vec4<u32>(1u, u_input.b.x, 78692u, 36961u)) % vec4<u32>(32u)))) | vec4<i32>(0i, -34376i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -54292i), ~vec3<i32>(var_0.a, -22970i, 33898i)), _wgslsmith_div_i32(-1i, -var_0.a), 1i), _wgslsmith_div_i32(4051i, global0.x));
    global0 = vec4<i32>(u_input.d.x, -4560i ^ (_wgslsmith_mult_i32(global0.x, func_6(false, Struct_1(var_0.a, vec4<u32>(24408u, u_input.c, u_input.a, var_0.e.x), vec3<f32>(198f, var_0.c.x, var_0.c.x), vec4<u32>(47705u, 0u, var_0.e.x, 0u), vec4<u32>(var_0.e.x, u_input.b.x, u_input.a, 113220u)), var_0.c.x).a) >> (62111u % 32u)), (global0.x >> (~u_input.c % 32u)) >> (4294967295u % 32u), 1i);
    return Struct_2(61059u, var_0.a, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global1[_wgslsmith_index_u32(0u, 22u)];
    let var_2 = vec2<i32>(global0.x, _wgslsmith_sub_i32(0i, ~((u_input.d.x << (var_0.a % 32u)) ^ _wgslsmith_dot_vec3_i32(global0.zyy, vec3<i32>(var_0.c, var_0.c, -2147483647i)))));
    let var_3 = Struct_2(~firstLeadingBit(var_0.a ^ ~u_input.e), func_6((u_input.d.x >> (~0u % 32u)) > _wgslsmith_mod_i32(-u_input.d.x, -17059i), Struct_1(global0.x, vec4<u32>(var_1.a, 4294967295u, 2361u, 4294967295u) | u_input.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1252f, 902f, -794f), vec3<f32>(1126f, 417f, -622f))), func_6(true, Struct_1(0i, vec4<u32>(var_0.a, 61159u, 74376u, 1u), vec3<f32>(-1359f, -110f, 2105f), vec4<u32>(var_0.a, 0u, var_0.a, 4294967295u), vec4<u32>(4294967295u, var_1.a, 0u, var_1.a)), -1343f).c)), u_input.b, ~(global2[_wgslsmith_index_u32(var_1.a, 15u)] ^ global2[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1212f, -1571f))))).a, -1i);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -225f), func_5(-643f, u_input.b.yyx).c.x, true)) * -207f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(global0.x >> (var_3.a % 32u), -2147483647i, 0i) ^ (~vec3<i32>(-2147483647i, global0.x, 1i) ^ (global0.zxy << (vec3<u32>(u_input.e, 24524u, 6479u) % vec3<u32>(32u))))), ~var_0.a, countOneBits(_wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(vec4<i32>(0i, 2147483647i, -36960i, 2147483647i))), -(vec4<i32>(u_input.d.x, var_0.c, u_input.d.x, 3859i) << (global2[_wgslsmith_index_u32(var_0.a, 15u)] % vec4<u32>(32u))), ~vec4<i32>(global0.x, var_0.b, var_3.b, -1i) >> (global2[_wgslsmith_index_u32(var_1.a, 15u)] % vec4<u32>(32u)))));
}

