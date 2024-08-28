struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<bool, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = Struct_2(u_input.c.x, arg_0.b);
    let var_1 = Struct_1(var_0.b.a);
    global0 = array<Struct_2, 2>();
    var var_2 = _wgslsmith_mod_vec4_i32(reverseBits(~vec4<i32>(~(-2147483647i), 28565i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a, arg_0.b.a, u_input.d), vec3<i32>(0i, var_0.b.a, arg_0.b.a)), u_input.b)), vec4<i32>(~select(-1i, -var_0.b.a, false), -31385i, arg_0.b.a, -32544i));
    var var_3 = var_1;
    return true;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_2((1u >> (u_input.a % 32u)) ^ 37889u, Struct_1(select(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(11837i, arg_2.x, u_input.d, 18905i), arg_3), any(!arg_1))));
    global1 = array<bool, 21>();
    var var_1 = Struct_1(2147483647i);
    global1 = array<bool, 21>();
    var var_2 = -198f;
    return ~(arg_2.x ^ (_wgslsmith_add_i32(var_0.b.a, 1i >> (u_input.c.x % 32u)) & var_1.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: f32) -> bool {
    global1 = array<bool, 21>();
    var var_0 = global1[_wgslsmith_index_u32(85885u, 21u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    let var_2 = var_1.b;
    let var_3 = Struct_1(_wgslsmith_add_i32(func_4(_wgslsmith_f_op_f32(-329f + -256f), vec2<bool>(true, func_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_2, var_1.b.a)), -firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, var_2.a)), vec4<i32>(var_2.a >> (u_input.c.x % 32u), ~var_2.a, min(var_1.b.a, 2147483647i), u_input.b)), reverseBits(12416i)));
    return all(select(select(arg_1.xww, vec3<bool>(true, true, true), (var_3.a >= 1i) == false), !(!select(arg_1.ywx, arg_1.xxz, vec3<bool>(arg_0.x, true, false))), !((false | global1[_wgslsmith_index_u32(u_input.a, 21u)]) || true)));
}

fn func_1() -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a, 21u)];
    return !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(false, false)), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(7270u, 21u)], global1[_wgslsmith_index_u32(77173u, 21u)]), select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(231u, 21u)]), vec2<bool>(true, false)), true), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 21u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)])), select(true, func_2(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], false, false), 0u, 1000f), true)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(26557u, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false), false), vec2<bool>(true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 21>();
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(23345u, _wgslsmith_mod_u32(1u, u_input.c.x)) | 0u, 463u);
    var var_1 = select(!vec2<bool>(!(global1[_wgslsmith_index_u32(17304u, 21u)] & global1[_wgslsmith_index_u32(var_0.x, 21u)]), true), !func_1(), false);
    var var_2 = vec2<i32>(u_input.d, -(~(~(~2147483647i))));
    global0 = array<Struct_2, 2>();
    let var_3 = !func_3(Struct_2(~4294967295u, Struct_1(_wgslsmith_add_i32(u_input.b, u_input.b))), ~var_0.x | _wgslsmith_clamp_u32(max(u_input.a, 1u), var_0.x, max(44838u, var_0.x)), i32(-1i) * -1i);
    var var_4 = vec3<bool>(!var_1.x, false, global1[_wgslsmith_index_u32(u_input.a, 21u)]);
    var_1 = select(select(!vec2<bool>(false, var_1.x | true), !vec2<bool>(var_4.x, true), !all(!var_4.zz)), vec2<bool>(!select(false, var_3, var_4.x), !(func_4(-926f, var_4.zy, vec3<i32>(u_input.d, u_input.d, var_2.x), vec4<i32>(u_input.b, var_2.x, -47540i, var_2.x)) == abs(u_input.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1653f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> (~u_input.a % 32u), -1i & ~var_2.x, -72174i, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(var_0.x, 0u)));
}

