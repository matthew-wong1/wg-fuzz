struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(436f, -1000f);

var<private> global2: vec4<i32>;

var<private> global3: vec3<i32>;

var<private> global4: array<bool, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global4 = array<bool, 32>();
    global3 = _wgslsmith_sub_vec3_i32(~(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, 46055i, u_input.c), vec3<i32>(global3.x, 1i, -2147483647i)))), -vec3<i32>(-6313i, (45601i | u_input.b) & ~global2.x, ~global3.x));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(801f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1485f * 1005f))), global1.x))));
    var var_0 = vec2<bool>(global0.b, !all(vec4<bool>(false, true && global4[_wgslsmith_index_u32(10271u, 32u)], true, !global4[_wgslsmith_index_u32(u_input.d, 32u)])));
    global3 = global2.wyz;
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(848f)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -701f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-758f)), _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - global1.x), _wgslsmith_f_op_f32(-arg_3.a.a))))), all(!select(!vec4<bool>(true, arg_1.b, arg_1.b, false), vec4<bool>(true, true, true, true), true)));
    global4 = array<bool, 32>();
    var var_1 = Struct_2(var_0, arg_3.b, global1.x >= 1f);
    var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(-344f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * arg_3.b.x), _wgslsmith_f_op_f32(-var_0.a), u_input.a == u_input.d))))));
    return _wgslsmith_f_op_f32(trunc(var_0.a)) < _wgslsmith_f_op_f32(abs(-1640f));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> f32 {
    global0 = arg_1.a;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), !(_wgslsmith_f_op_f32(global0.a + global1.x) >= -870f)), arg_1.b, func_4(countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(global3.x, -38946i), i32(-1i) * -17952i)), arg_1.a, -1i, Struct_2(Struct_1(arg_1.b.x, !global0.b), _wgslsmith_f_op_vec2_f32(func_3(-1000f)), !(!arg_1.c))));
    var var_1 = var_0.a;
    let var_2 = Struct_1(var_1.a, all(vec2<bool>(!(arg_1.c & false), func_4(1i | arg_0, Struct_1(global0.a, arg_2), global3.x, Struct_2(arg_1.a, arg_1.b, global0.b)))));
    let var_3 = var_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.a)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -1750f), vec2<f32>(global0.a, global1.x), vec2<bool>(false, arg_0.b))))))), all(select(vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 47752u, u_input.d, 21891u), vec4<u32>(u_input.d, u_input.a, 0u, u_input.a)), 32u)], global0.b, true), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.d), 32u)], !global0.b, true), all(select(vec2<bool>(false, arg_0.b), vec2<bool>(true, arg_1), true)))));
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(u_input.b, 14534i, global2.x, 21183i), vec4<i32>(global3.x, global2.x, -30089i, -1i)), vec4<i32>(global3.x, -18767i, min(global2.x, 8784i), -2831i) << (max(vec4<u32>(29320u, u_input.d, 4294967295u, 103032u), vec4<u32>(u_input.a, 67061u, 4294967295u, u_input.d)) % vec4<u32>(32u)));
    let var_2 = vec2<i32>(global2.x, ~(reverseBits(abs(u_input.c)) & u_input.c));
    return var_0.a;
}

fn func_1() -> f32 {
    global4 = array<bool, 32>();
    let var_0 = global3.x;
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1905f * -474f), -1871f, global0.b)), _wgslsmith_f_op_f32(func_2(abs(-1i), Struct_2(Struct_1(global0.a, global4[_wgslsmith_index_u32(u_input.d, 32u)]), vec2<f32>(-556f, -495f), true), true | global4[_wgslsmith_index_u32(271u, 32u)])), global0.b)), false), !(0u <= _wgslsmith_div_u32(u_input.d, u_input.a)), -657f);
    global3 = vec3<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(16271i, -17448i, -6609i, -1i), vec4<i32>(-8389i, -6389i, global3.x, global3.x) ^ vec4<i32>(46511i, u_input.b, -7701i, 2147483647i)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global3.x, global2.x, -1i, u_input.c)), vec4<i32>(global3.x, -1i, 1i, global2.x) ^ vec4<i32>(2147483647i, u_input.c, global3.x, -2147483647i))), 1083i, u_input.c);
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.x, -264f), _wgslsmith_f_op_f32(f32(-1f) * -814f)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global1.x * -712f))))), true);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + var_0.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, var_0.b.x))))), var_0.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1621f * 157f) - -541f) + 869f)), (var_0.c && global0.b) == func_4(countOneBits(u_input.b), var_0.a, -(u_input.c ^ 13961i), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a, global0.a))), false)));
    global0 = var_0.a;
    var var_2 = true;
    var_0 = Struct_2(Struct_1(600f, global0.b | (global2.x == 0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global1.x))), _wgslsmith_f_op_vec2_f32(-var_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(652f, 355f))))))), func_5(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1638f + var_0.a.a))), var_0.a.b), all(select(!vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(global4[_wgslsmith_index_u32(13751u, 32u)], true, global0.b, true), select(vec4<bool>(global0.b, global4[_wgslsmith_index_u32(u_input.d, 32u)], global4[_wgslsmith_index_u32(21158u, 32u)], false), vec4<bool>(global0.b, var_0.c, var_1.b, global0.b), var_0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -1484f)).b);
    global2 = vec4<i32>(firstTrailingBit(-2147483647i), -42390i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(global3.x), global2.x), ~_wgslsmith_mod_i32(global3.x >> (41021u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global2.x), global2.xy))), global3.x);
    var_2 = false | (true & all(vec3<bool>(global0.b, !global4[_wgslsmith_index_u32(42242u, 32u)], global4[_wgslsmith_index_u32(u_input.a, 32u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-var_1.a)));
}

