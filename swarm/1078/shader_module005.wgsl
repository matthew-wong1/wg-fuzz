struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 4822u, 105223u), vec3<u32>(4294967295u, 1u, 14958u), vec3<u32>(23356u, 21892u, 1546u), vec3<u32>(1u, 4294967295u, 30780u), vec3<u32>(1u, 87410u, 45665u), vec3<u32>(79197u, 4294967295u, 0u), vec3<u32>(76709u, 4294967295u, 35340u), vec3<u32>(37929u, 22756u, 59293u), vec3<u32>(1u, 0u, 26275u), vec3<u32>(0u, 0u, 1u), vec3<u32>(89730u, 1u, 4294967295u), vec3<u32>(1u, 25478u, 79489u), vec3<u32>(4294967295u, 58038u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 8706u), vec3<u32>(1u, 8717u, 1u), vec3<u32>(4294967295u, 0u, 40661u), vec3<u32>(42842u, 51006u, 15871u), vec3<u32>(1u, 30665u, 88534u), vec3<u32>(11262u, 87994u, 11512u), vec3<u32>(48837u, 8503u, 1u), vec3<u32>(17459u, 13189u, 14609u), vec3<u32>(1u, 6227u, 0u), vec3<u32>(0u, 78092u, 0u), vec3<u32>(9434u, 4294967295u, 0u), vec3<u32>(876u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 80781u), vec3<u32>(78979u, 0u, 36890u), vec3<u32>(83414u, 42351u, 1u), vec3<u32>(59504u, 56401u, 4294967295u));

var<private> global1: u32;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(23964u, vec3<bool>(true, false, true)), Struct_1(1u, vec3<bool>(true, false, true)), Struct_1(1u, vec3<bool>(true, false, false)), Struct_1(49885u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<bool>(false, true, true)), Struct_1(33588u, vec3<bool>(true, true, true)), Struct_1(842u, vec3<bool>(true, true, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = -2147483647i;
    global1 = 1u;
    let var_1 = 1000f;
    let var_2 = -1393f;
    let var_3 = ~vec4<u32>(31405u, ~(~(~arg_1.a.a)), arg_1.a.a, ~select(abs(0u), _wgslsmith_clamp_u32(arg_1.a.a, u_input.a, arg_1.a.a), true));
    return any(!(!arg_1.a.b.yx));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    let var_0 = ~(firstTrailingBit(vec3<i32>(u_input.b << (1u % 32u), _wgslsmith_mult_i32(u_input.b, u_input.b), min(0i, 1i))) | vec3<i32>(u_input.b, ~abs(u_input.b), 1i));
    let var_1 = vec4<u32>(arg_1, ~((u_input.a ^ 1u) >> (select(0u, arg_2.a.a >> (14273u % 32u), arg_0 >= 207f) % 32u)), arg_1, arg_2.b.a);
    global2 = array<Struct_1, 7>();
    return !select(vec4<bool>(!arg_2.a.b.x, !any(arg_2.b.b.xx), true, _wgslsmith_div_f32(arg_0, arg_0) != _wgslsmith_f_op_f32(min(arg_0, 1204f))), select(vec4<bool>(all(vec2<bool>(true, arg_2.a.b.x)), false, true, true), vec4<bool>(arg_2.b.b.x | true, arg_0 < arg_0, true, arg_2.a.b.x), 1i <= var_0.x), any(!arg_2.b.b.yx));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<vec3<u32>, 29>();
    var var_0 = -(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(13300i, 1i, -2147483647i)), vec3<i32>(_wgslsmith_mod_i32(0i, u_input.b), 27138i, u_input.b), ~(vec3<i32>(1031i, -2147483647i, 0i) >> (vec3<u32>(1u, arg_0.a, arg_0.a) % vec3<u32>(32u)))));
    var_0 = ~(~(~vec3<i32>(var_0.x & -14012i, -8045i, _wgslsmith_add_i32(-8739i, var_0.x))));
    global0 = array<vec3<u32>, 29>();
    let var_1 = all(select(select(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), !vec4<bool>(true, arg_0.b.x, false, true), func_2(u_input.b, Struct_2(global2[_wgslsmith_index_u32(0u, 7u)], arg_0), u_input.b)), !func_3(2921f, 1u, Struct_2(arg_0, global2[_wgslsmith_index_u32(38670u, 7u)])), vec4<bool>(arg_0.b.x, true, !arg_0.b.x, !arg_0.b.x)), !func_3(-1000f, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 17263u), vec3<u32>(u_input.a, 26395u, 27630u)), Struct_2(Struct_1(1792u, arg_0.b), Struct_1(u_input.a, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), arg_0.b.x));
    return ~(~vec4<i32>(~(-17389i), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, -2147483647i), -var_0.x), -2147483647i, 42163i));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(arg_0, 7u)], global2[_wgslsmith_index_u32(~reverseBits(u_input.a | (arg_0 >> (0u % 32u))), 7u)]);
    var var_2 = var_1.a.b.x;
    let var_3 = ~var_1.b.a;
    var_2 = !var_1.a.b.x;
    return vec3<bool>(var_1.a.b.x, true, any(!func_3(-248f, 4294967295u, Struct_2(var_1.a, global2[_wgslsmith_index_u32(4294967295u, 7u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~36959u ^ ~_wgslsmith_add_u32(107623u, u_input.a), func_4(u_input.a | u_input.a, select(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), func_1(global2[_wgslsmith_index_u32(22935u, 7u)]), vec4<bool>(false, false, false, false)))), global2[_wgslsmith_index_u32(0u, 7u)]);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(max(-241f, -978f));
    let var_3 = vec2<u32>(min(4294967295u, ~var_0.a.a), ~u_input.a);
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    global1 = var_3.x;
    var_0 = Struct_2(global2[_wgslsmith_index_u32(~u_input.a ^ (4294967295u & _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.a.a, 29u)] >> (global0[_wgslsmith_index_u32(var_0.b.a, 29u)] % vec3<u32>(32u)), global0[_wgslsmith_index_u32(countOneBits(u_input.a), 29u)])), 7u)], var_0.a);
    let var_4 = (func_3(-1471f, 4294967295u, Struct_2(var_0.a, global2[_wgslsmith_index_u32(abs(var_3.x), 7u)])).x && true) == all(vec3<bool>(!(1897f < var_2), all(func_4(var_0.a.a, vec4<i32>(u_input.b, u_input.b, u_input.b, -55868i)).xz), var_0.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-348f, var_2)), var_2)))));
}

