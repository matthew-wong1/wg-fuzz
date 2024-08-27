struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-38288i, i32(-2147483648), 4036i, -30178i);

var<private> global1: Struct_1;

var<private> global2: array<f32, 21> = array<f32, 21>(1912f, 756f, 776f, -910f, 984f, 806f, 484f, 767f, 212f, 424f, -870f, 975f, -820f, 267f, 1066f, -460f, 287f, -1305f, 718f, -661f, 1012f);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(1i, -1i, 13915i, -10519i), 42674u, 17348i));

var<private> global4: array<i32, 28> = array<i32, 28>(45561i, 2147483647i, -5266i, 8542i, -3534i, 22992i, 52787i, 56526i, 7699i, -1i, -1i, -1i, -1i, 0i, -41833i, -12909i, 0i, -21977i, 2147483647i, 27792i, 0i, -26051i, 12801i, 2147483647i, 29235i, 26731i, i32(-2147483648), 19410i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(78492u, 1u)];
    global4 = array<i32, 28>();
    let var_1 = 36187u;
    global4 = array<i32, 28>();
    global4 = array<i32, 28>();
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(func_3(397f, any(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), global3[_wgslsmith_index_u32(1u, 1u)]));
    var var_2 = !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, false, true)));
    var var_3 = !select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, true)), -1i < abs(global1.c));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(1f + global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b, global1.b), 21u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.b, 21u)] * _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)))))));
    return !(!var_3.x);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> StorageBuffer {
    var var_0 = select(vec3<bool>(true, false, false), select(vec3<bool>(all(vec4<bool>(arg_1, false, true, arg_1)), true, all(vec3<bool>(true, arg_1, arg_1))), select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, false)), !vec3<bool>(arg_1, arg_1, true), true), func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(global1.b, 4294967295u, arg_2.x)), 1u)], global2[_wgslsmith_index_u32(0u, 21u)])), arg_1);
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(~0u, u_input.c) >> (~(u_input.b & 1u) % 32u), max(global1.b, ~arg_2.x | ~u_input.b), u_input.b));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(global0.x, global1.c, global0.x), _wgslsmith_sub_i32(~(-27100i), ~(-22504i)), 2147483647i, ~(-2147483647i)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(30006u, 4294967295u), global1.b, ~23148u)), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.yz, vec2<u32>(1u, 1u)), _wgslsmith_div_u32(41964u, 1u), ~1u))), firstTrailingBit(reverseBits(min(u_input.a, _wgslsmith_sub_i32(global0.x, -37685i)))));
    let var_3 = _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(~global1.a & global1.a, _wgslsmith_div_vec4_i32(vec4<i32>(-33218i, var_2.a.x, 0i, -14455i), vec4<i32>(var_2.c, var_2.a.x, 2147483647i, global1.c))), -max(_wgslsmith_sub_i32(-57557i, reverseBits(u_input.a)), -37669i));
    global3 = array<Struct_1, 1>();
    return StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(countOneBits(global0.x), var_2.c, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.c, u_input.a), vec3<i32>(var_2.a.x, u_input.a, global0.x)))), u_input.a, i32(-1i) * -2147483647i), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2, ~arg_2, min(vec3<u32>(u_input.c, arg_2.x, arg_2.x), vec3<u32>(u_input.b, arg_2.x, arg_2.x))), firstLeadingBit(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.b, global1.b, arg_2.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(50031u, 4294967295u, var_1.x), arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1496f * -442f) + 939f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~max(1u, ~u_input.b), u_input.b, global1.b, _wgslsmith_sub_u32(global1.b, abs(global1.b)) | _wgslsmith_mod_u32(~0u, u_input.c & u_input.c));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(abs(u_input.c)), 1u)];
    global3 = array<Struct_1, 1>();
    global1 = global3[_wgslsmith_index_u32(94070u, 1u)];
    var var_2 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, true)));
    var var_3 = global0.zyx;
    let x = u_input.a;
    s_output = func_1(-1000f, (min(~0i, global0.x) >> (~global1.b % 32u)) > -firstTrailingBit(var_3.x), reverseBits(var_0.yzz), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] - 323f), 732f)))));
}

