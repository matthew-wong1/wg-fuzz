struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, false, false, false, true, true, true, true, true, false, true, true, true, true, false, true, true, false, true, true, true, true, false, true);

var<private> global1: array<bool, 27> = array<bool, 27>(true, false, false, false, true, false, false, false, true, true, true, false, false, true, false, false, true, false, true, true, true, true, true, true, false, false, false);

var<private> global2: vec2<bool>;

var<private> global3: vec3<i32> = vec3<i32>(-24747i, -25729i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global3 = firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, -2147483647i, global3.x), select(_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, arg_1.b, 0i), vec3<i32>(0i, u_input.b.x, -1i), false), reverseBits(u_input.b.xzw)), firstTrailingBit(u_input.b.xxz), !(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.a, false)))));
    global2 = !select(select(vec2<bool>(false, false && global2.x), vec2<bool>(!arg_0, global2.x), false), !select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.e, 27u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false), vec2<bool>(global2.x, global2.x), vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(94835u, 26u)])), true), select(select(select(vec2<bool>(true, global2.x), vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(40936u, 26u)])), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_1.a), true), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(global2.x, global0[_wgslsmith_index_u32(16923u, 26u)]), false), !vec2<bool>(true, arg_0), true), select(!vec2<bool>(arg_0, false), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], global2.x), vec2<bool>(false, true))));
    global3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-30973i >> ((arg_1.c.x ^ 0u) % 32u), arg_1.b), -1i), abs(arg_1.d), -_wgslsmith_sub_i32(global3.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -49731i, -1i, 2147483647i), u_input.b), countOneBits(u_input.b.x), !arg_0)));
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -420f)));
    global1 = array<bool, 27>();
    return !(!(!vec4<bool>(false, true, any(vec2<bool>(arg_0, arg_0)), true)));
}

fn func_2() -> vec4<bool> {
    return !(!(!func_3(all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 26u)])), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 27u)], u_input.b.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 2147483647i, u_input.a))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !func_2();
    return Struct_1(any(!(!(!var_0.yz))), _wgslsmith_div_i32(~select(-1i, arg_0, global2.x), (global3.x ^ -11564i) & (-2147483647i | u_input.b.x)) | _wgslsmith_div_i32(max(arg_0, u_input.b.x & global3.x), -global3.x), ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(19897u, u_input.a, 1u, u_input.a)), -abs(4630i), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 45562u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u))), ~(~vec4<u32>(4294967295u, u_input.a, 0u, u_input.a))), ~countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 26>();
    var var_0 = 37459i & global3.x;
    var var_1 = func_3(func_1(~1i).a, func_1(i32(-1i) * -20751i));
    var var_2 = func_1(global3.x);
    var var_3 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -129f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-912f, 865f)) * _wgslsmith_f_op_f32(min(257f, 227f)))) + _wgslsmith_f_op_f32(trunc(1f)));
    return _wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) + 2130f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    let var_0 = abs(u_input.a);
    let var_1 = Struct_1(true, -1i, ~max(~(vec4<u32>(23026u, var_0, 1u, 4294967295u) ^ vec4<u32>(2586u, 46873u, var_0, var_0)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, var_0, u_input.a, 11974u), firstTrailingBit(vec4<u32>(1u, var_0, 25614u, var_0)))), -2147483647i, u_input.a);
    let var_2 = _wgslsmith_f_op_f32(func_4(var_1, u_input.a, func_1(global3.x)));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_dot_vec3_i32(max(-u_input.b.wxw, ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d, -16994i, var_1.b), vec3<i32>(global3.x, -23385i, -16504i))), reverseBits(u_input.b.zyy) & ~vec3<i32>(19371i, -1i, var_1.d)), ~(~vec4<u32>(var_0, 32806u, u_input.a, u_input.a) ^ ~(~vec4<u32>(u_input.a, var_1.c.x, 7542u, 0u))), -41200i, select(~1u, u_input.a, global0[_wgslsmith_index_u32(~var_0, 26u)] || any(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 27u)], true, global1[_wgslsmith_index_u32(u_input.a, 27u)]))));
    let var_4 = select(~7978u, ~abs(~func_1(-2147483647i).c.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global3.x).b, min(var_1.c, ~var_1.c));
}

