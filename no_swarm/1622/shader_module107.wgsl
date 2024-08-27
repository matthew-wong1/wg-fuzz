struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<i32, 15> = array<i32, 15>(0i, -32794i, -26902i, 0i, -6664i, 2147483647i, 13993i, -49150i, i32(-2147483648), -15572i, -11178i, 38877i, -14401i, -27021i, 2147483647i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(min(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], -2147483647i, -1i, 0i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(40369u, 15u)], 2147483647i, -40708i) >> (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), ~(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i, global1[_wgslsmith_index_u32(4294967295u, 15u)]) ^ vec4<i32>(-15759i, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 1i))), ~(~(-vec4<i32>(-10562i, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(33293u, 15u)]))));
    let var_1 = abs(_wgslsmith_add_vec3_i32(firstLeadingBit(-select(vec3<i32>(var_0.x, var_0.x, -1i), vec3<i32>(var_0.x, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(false, global0.x, true))), var_0.xzx | abs(countOneBits(var_0.yzx))));
    global1 = array<i32, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1537f, 645f, 598f)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f + -1017f)))), 149f, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-797f)), _wgslsmith_f_op_f32(f32(-1f) * -1165f)))), vec3<bool>(global0.x, all(vec3<bool>(!global0.x, any(vec3<bool>(true, false, true)), global0.x)), false)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(-944f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1439f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x))))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(404f, var_2.x))))));
    return vec3<i32>(-var_1.x, countOneBits(15439i), -25245i);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = vec2<f32>(-1333f, arg_1);
    let var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(func_3(), ~vec3<i32>(global1[_wgslsmith_index_u32(12693u, 15u)], -1i, 0i))), -(~(max(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<i32>(1i, -1i, 26541i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 2147483647i, 7431i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(34516u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1233f - 1000f));
    var var_3 = Struct_3(Struct_2(Struct_1(-1752f), var_2), _wgslsmith_mod_u32(abs(44392u), arg_0.x) | ~u_input.a.x, Struct_2(var_2, var_2));
    var var_4 = select(!select(select(vec3<bool>(false, false, arg_2), vec3<bool>(global0.x, arg_2, global0.x), !vec3<bool>(global0.x, false, true)), vec3<bool>(true, arg_2, !arg_2), !vec3<bool>(arg_2, true, global0.x)), select(!select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, true, global0.x), any(vec2<bool>(true, global0.x))), vec3<bool>(!arg_2, !arg_2, global0.x), false), any(vec3<bool>(arg_2, 0i >= _wgslsmith_add_i32(var_1, -2147483647i), true & (-124f >= var_3.a.b.a))));
    return Struct_2(var_3.a.a, var_2);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    let var_0 = vec4<bool>(!global0.x, !any(vec3<bool>(global0.x, global0.x, global0.x && false)), 0u <= (4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), u_input.a >> (u_input.a % vec3<u32>(32u)))), all(vec3<bool>(true, true, true)));
    global1 = array<i32, 15>();
    let var_1 = func_3().x > abs(abs(reverseBits(global1[_wgslsmith_index_u32(17620u, 15u)])));
    global1 = array<i32, 15>();
    var var_2 = select(-(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(0i, 21258i, global1[_wgslsmith_index_u32(6893u, 15u)])), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]) & vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) << ((_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) << (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(max(-vec3<i32>(global1[_wgslsmith_index_u32(23827u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], -2147483647i) << (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), -_wgslsmith_sub_vec3_i32(max(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -2147483647i, global1[_wgslsmith_index_u32(1u, 15u)])), func_3())), ~(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.b, 15u)]) <= _wgslsmith_dot_vec4_i32(vec4<i32>(min(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), i32(-1i) * -2147483647i, -global1[_wgslsmith_index_u32(20886u, 15u)], min(global1[_wgslsmith_index_u32(0u, 15u)], -46252i)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 15u)], -19560i, -62641i ^ global1[_wgslsmith_index_u32(1u, 15u)])));
    return Struct_4(var_2.zy, any(vec2<bool>(all(var_0.xyz), global0.x)), Struct_3(arg_1, ~(~(~44510u)), arg_1));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = true;
    let var_1 = -1i <= arg_0.a.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.c.a.b.a)), arg_0.c.c.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a.a));
    let var_4 = arg_2.a;
    return func_4(_wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-466f, _wgslsmith_f_op_f32(f32(-1f) * -402f))), -213f))), func_2(~(~vec4<u32>(14196u, u_input.a.x, arg_0.c.b, arg_0.c.b)), var_3.a, arg_0.b));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = 52223u;
    global0 = !(!(!vec3<bool>(any(global0.xz), all(vec3<bool>(true, global0.x, global0.x)), true)));
    let var_1 = arg_0.a.x;
    global1 = array<i32, 15>();
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-(firstLeadingBit(arg_0.a.x) & ~(-21244i)), 21768i, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], abs(var_1)), select(-vec4<i32>(global1[_wgslsmith_index_u32(var_0, 15u)], var_1, abs(arg_0.a.x), -arg_0.a.x), vec4<i32>(-938i, global1[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_mult_i32(55343i, var_1), select(_wgslsmith_clamp_i32(var_1, var_1, -477i), func_4(-1000f, arg_0.c.c).a.x, global0.x)), all(vec4<bool>(true, !global0.x, global0.x, true))), _wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 15u)], 2147483647i, var_1, global1[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.a.x, arg_0.a.x, -11527i, 10501i), vec4<i32>(abs(arg_0.a.x), -2147483647i, func_4(arg_0.c.a.a.a, Struct_2(arg_0.c.a.a, Struct_1(arg_2.x))).a.x, min(var_1, var_1)))));
    return select(vec3<bool>(func_4(_wgslsmith_f_op_f32(-arg_2.x), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(26455u, 1u, u_input.a.x, arg_1), vec4<u32>(arg_1, 47013u, 0u, 9382u)), 786f, true)).b, !select(arg_0.b, select(true, true, true), global0.x), arg_0.b), select(!(!select(vec3<bool>(arg_0.b, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, arg_0.b, arg_0.b))), select(vec3<bool>(!global0.x, true, any(vec4<bool>(false, arg_0.b, false, global0.x))), select(vec3<bool>(true, arg_0.b, false), !vec3<bool>(global0.x, arg_0.b, false), global0.x), false), arg_0.c.b == ~var_0), !(!vec3<bool>(global0.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, global0.x, select(_wgslsmith_mult_u32(8577u, u_input.a.x) <= u_input.b, false, !all(vec3<bool>(global0.x, global0.x, global0.x)))), select(!select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, false), true), vec3<bool>(true, global0.x, global0.x)), select(func_5(func_1(Struct_4(vec2<i32>(global1[_wgslsmith_index_u32(37295u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), global0.x, Struct_3(Struct_2(Struct_1(442f), Struct_1(1571f)), u_input.a.x, Struct_2(Struct_1(457f), Struct_1(-415f)))), 244f, Struct_2(Struct_1(-2625f), Struct_1(-618f))), ~4294967295u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-698f, -2125f, 739f, 437f), vec4<f32>(-388f, 401f, -387f, 1632f), global0.x))), vec3<bool>(false | global0.x, global0.x, global1[_wgslsmith_index_u32(1u, 15u)] >= global1[_wgslsmith_index_u32(7491u, 15u)]), func_5(func_4(-545f, Struct_2(Struct_1(2424f), Struct_1(1053f))), u_input.a.x, vec4<f32>(790f, 903f, 1302f, -264f))), vec3<bool>(func_5(Struct_4(vec2<i32>(global1[_wgslsmith_index_u32(55247u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), true, Struct_3(Struct_2(Struct_1(-317f), Struct_1(683f)), u_input.b, Struct_2(Struct_1(1815f), Struct_1(-186f)))), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1408f, 354f, 1000f, 183f) + vec4<f32>(2286f, 541f, -207f, 1095f))).x, !(!global0.x), global0.x)), vec3<bool>(global0.x, func_4(_wgslsmith_f_op_f32(f32(-1f) * -706f), func_2(~vec4<u32>(101853u, u_input.b, 82146u, 19668u), _wgslsmith_f_op_f32(1473f * 1000f), 1u >= u_input.b)).b, !any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)))));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u) ^ vec4<u32>(5976u, u_input.b, u_input.a.x, 0u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 44386u, 1u, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, 63612u, u_input.b) % vec4<u32>(32u))), ~vec4<u32>(u_input.a.x << (u_input.a.x % 32u), 4294967295u, 1989u, u_input.b ^ u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, ~37911u | u_input.b, ~abs(u_input.a.x), min(u_input.a.x, 4294967295u)), vec4<u32>(u_input.a.x, 1u, ~_wgslsmith_mult_u32(u_input.b, 15787u), u_input.a.x), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x, 4294967295u, 39626u) | vec4<u32>(u_input.a.x, min(39005u, u_input.a.x), u_input.b, 76446u)));
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    var var_2 = Struct_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]) | func_3().yx, vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 15u)], 82481i))), -reverseBits(~(-2147483647i))), select(false, func_1(Struct_4(func_1(Struct_4(vec2<i32>(32740i, global1[_wgslsmith_index_u32(u_input.b, 15u)]), var_0.x, Struct_3(Struct_2(Struct_1(570f), Struct_1(-109f)), 11581u, Struct_2(Struct_1(1000f), Struct_1(-659f)))), -947f, Struct_2(Struct_1(-649f), Struct_1(-922f))).a, select(global0.x, false, var_0.x), Struct_3(Struct_2(Struct_1(-2255f), Struct_1(1204f)), u_input.b, Struct_2(Struct_1(829f), Struct_1(-655f)))), func_1(Struct_4(vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), global0.x, Struct_3(Struct_2(Struct_1(379f), Struct_1(1124f)), u_input.a.x, Struct_2(Struct_1(-388f), Struct_1(-625f)))), _wgslsmith_f_op_f32(1436f + 1300f), Struct_2(Struct_1(-531f), Struct_1(1945f))).c.a.b.a, Struct_2(Struct_1(1725f), func_4(701f, Struct_2(Struct_1(978f), Struct_1(-155f))).c.a.b)).b, true), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) + -1131f), Struct_2(Struct_1(_wgslsmith_div_f32(-1014f, -1487f)), func_1(func_4(-156f, Struct_2(Struct_1(-1034f), Struct_1(-557f))), 529f, Struct_2(Struct_1(-1000f), Struct_1(740f))).c.c.b)).c);
    var_2 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(16969i, _wgslsmith_mult_i32(var_2.a.x, global1[_wgslsmith_index_u32(0u, 15u)])), min(_wgslsmith_mult_i32(-6590i, var_2.a.x), -global1[_wgslsmith_index_u32(4294967295u, 15u)])), -(vec2<i32>(-1i) * -var_2.a)), true, Struct_3(var_2.c.c, ~min(_wgslsmith_mod_u32(u_input.a.x, 0u), 1u), var_2.c.c));
    global0 = !select(func_5(func_1(Struct_4(vec2<i32>(global1[_wgslsmith_index_u32(var_2.c.b, 15u)], -2147483647i), var_0.x, Struct_3(var_2.c.c, 3252u, var_2.c.a)), 1684f, Struct_2(var_2.c.c.a, var_2.c.c.b)), ~(~var_2.c.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-772f, -214f, var_2.c.a.b.a, var_2.c.c.b.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-434f, -580f, 907f, var_2.c.c.a.a), vec4<f32>(-685f, -727f, var_2.c.a.a.a, var_2.c.c.a.a)))))), vec3<bool>(global0.x, true && (43101i != global1[_wgslsmith_index_u32(var_2.c.b, 15u)]), true), select(var_0, var_0, select(!vec3<bool>(var_0.x, global0.x, false), !vec3<bool>(false, var_0.x, global0.x), var_0)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2.c.a.b.a, var_3.a) - vec3<f32>(var_3.a, 1086f, -354f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -1167f, var_2.c.a.a.a)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -1790f, 617f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 1343f, 584f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c.a.b.a, -614f, 316f))))))), ~select(vec4<u32>(~u_input.a.x, func_4(var_3.a, var_2.c.a).c.b, u_input.b, 1u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(43061u, 4294967295u, 91017u, var_2.c.b), vec4<u32>(var_2.c.b, 1u, 4294967295u, 1u))), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)), var_2.c.a.b.a) * _wgslsmith_f_op_f32(func_4(1000f, func_4(var_2.c.a.b.a, Struct_2(Struct_1(var_3.a), Struct_1(-423f))).c.c).c.c.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))));
}

