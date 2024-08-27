struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: u32;

var<private> global3: array<u32, 23> = array<u32, 23>(1u, 1u, 26287u, 4294967295u, 32646u, 1u, 1u, 51454u, 1u, 18326u, 0u, 31039u, 1u, 0u, 1u, 6300u, 49964u, 0u, 58235u, 1u, 1u, 0u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, -576f)), vec2<f32>(1428f, _wgslsmith_f_op_f32(step(936f, -382f))))));
    global0 = array<bool, 15>();
    global1 = u_input.a;
    let var_1 = !global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(10088u, ~global3[_wgslsmith_index_u32(42925u, 23u)]) | _wgslsmith_mod_u32(u_input.d, _wgslsmith_mod_u32(u_input.b, 87568u))), 15u)];
    var var_2 = all(!vec2<bool>(true & global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39840u, 23u)], 15u)]));
    return Struct_1(var_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(!global0[_wgslsmith_index_u32(reverseBits(4309u), 15u)], global0[_wgslsmith_index_u32(abs(10755u), 15u)] | ((96596i >= ~u_input.c.x) & global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.b, 23u)], 15u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -241f)))))));
    global1 = u_input.c.x & 1i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), -1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-915f, var_1.a.x))) * var_1.a.x)), var_1.a.x);
    global0 = array<bool, 15>();
    return func_2();
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 10214i, -30753i), vec4<i32>(u_input.c.x, 1i, 21945i, -2147483647i)), 2147483647i, _wgslsmith_mult_i32(var_1.x, -11611i), arg_1.x << (43663u % 32u)), ~vec4<i32>(0i, 25921i, arg_1.x, var_1.x))), firstLeadingBit(select(max(vec4<i32>(u_input.a, var_1.x, arg_1.x, 3003i), vec4<i32>(var_1.x, -1i, -1i, var_1.x)) | -vec4<i32>(-1i, arg_1.x, 0i, arg_1.x), vec4<i32>(-26419i, _wgslsmith_add_i32(-14513i, u_input.a), reverseBits(u_input.c.x), -var_1.x), !all(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 15u)], global0[_wgslsmith_index_u32(26647u, 15u)])))));
    var var_3 = Struct_1(arg_2.a);
    global0 = array<bool, 15>();
    return vec3<bool>(global0[_wgslsmith_index_u32(~4294967295u, 15u)], global0[_wgslsmith_index_u32(11197u, 15u)], any(vec3<bool>(true, !(579f < var_3.a.x), global0[_wgslsmith_index_u32(u_input.d, 15u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1469f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1647f, 509f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1160f - -645f) + _wgslsmith_f_op_f32(step(148f, -980f)))));
    var var_1 = var_0;
    var_1 = Struct_1(var_0.a);
    var var_2 = func_1();
    let var_3 = select(func_3(-945f, vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), 0i, abs(u_input.a >> (global3[_wgslsmith_index_u32(45360u, 23u)] % 32u))), var_0), vec3<bool>(func_3(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -2023i, 2147483647i), -u_input.c), var_0).x, _wgslsmith_f_op_f32(trunc(var_0.a.x)) > _wgslsmith_f_op_f32(-657f + -311f), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(6303u, global3[_wgslsmith_index_u32(36146u, 23u)]), ~vec2<u32>(u_input.d, 0u)), abs(4294967295u)), 23u)], 15u)]), !(!(false | any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45454u, 23u)], 23u)], 15u)], false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-5013i), -353f, u_input.a, -39359i);
}

