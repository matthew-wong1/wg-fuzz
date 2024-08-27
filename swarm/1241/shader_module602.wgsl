struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<bool, 5>;

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<bool, 6>;

var<private> global3: array<vec2<u32>, 20>;

var<private> global4: f32 = -216f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u << (select(~1u, ~_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), u_input.d), global2[_wgslsmith_index_u32(~0u, 6u)]) % 32u), 5u)];
    global0 = array<bool, 5>();
    let var_1 = u_input.c;
    var var_2 = Struct_2(u_input.b, vec2<bool>(any(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 5u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a >> (u_input.d % 32u), ~u_input.d), 5u)]), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(623i, -3058i) << (vec2<u32>(u_input.a, 65188u) % vec2<u32>(32u)), vec2<i32>(0i, var_1) | vec2<i32>(2147483647i, 26200i)), vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-3717i, var_1), vec2<i32>(var_1, var_1))))), !vec3<bool>(any(global1[_wgslsmith_index_u32(u_input.b >> (u_input.d % 32u), 15u)]), select(global2[_wgslsmith_index_u32(58609u, 6u)], global0[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(0u, 6u)]) || !global2[_wgslsmith_index_u32(1u, 6u)], !global2[_wgslsmith_index_u32(~28787u, 6u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-960f + -109f), -879f, false)));
    var_0 = var_2.b.x | global2[_wgslsmith_index_u32(var_2.a, 6u)];
    return _wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.e, 12407i), 72937i);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1436f * -658f);
    var var_1 = func_3() << (_wgslsmith_mult_u32(~28143u ^ firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 45428u), vec2<u32>(1u, 1u))), max(~_wgslsmith_clamp_u32(u_input.d, u_input.a, 33495u), u_input.a)) % 32u);
    global4 = var_0;
    var var_2 = Struct_1(reverseBits(vec2<i32>(1i, 1i)));
    var var_3 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -390f);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<bool, 5>();
    let var_0 = !global1[_wgslsmith_index_u32(44020u, 15u)];
    var var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = u_input.a | _wgslsmith_add_u32(u_input.d, firstTrailingBit(_wgslsmith_add_u32(~arg_0.a, 0u)));
    global1 = array<vec4<bool>, 15>();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec2<bool>(u_input.a >= _wgslsmith_mult_u32(67896u, u_input.d), false);
    let var_2 = Struct_2(u_input.a, vec2<bool>(u_input.e > -23579i, false), func_1(Struct_2(select(22984u, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 5u)]) | u_input.b, vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 6u)] && var_0), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -22900i), vec2<i32>(39270i, u_input.c))), select(vec3<bool>(true, true, true), vec3<bool>(var_0, global2[_wgslsmith_index_u32(6122u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), all(var_1)), 1302f)), select(vec3<bool>(var_0, true, true), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.e, u_input.c), vec4<i32>(-1i, u_input.e, 2147483647i, u_input.c)) > -15533i, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_0), select(vec3<bool>(!var_1.x, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false, false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 83127u), 5u)]), vec3<bool>(true, true & global0[_wgslsmith_index_u32(3250u, 5u)], all(global1[_wgslsmith_index_u32(6581u, 15u)])), all(vec4<bool>(true, global0[_wgslsmith_index_u32(46247u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], var_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1349f * 1f)))));
    global1 = array<vec4<bool>, 15>();
    var var_3 = var_2;
    global4 = var_3.e;
    global4 = _wgslsmith_f_op_f32(var_2.e * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(258f + -349f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_3.e)))), _wgslsmith_div_f32(713f, _wgslsmith_f_op_f32(abs(var_3.e))))), true)));
    var var_4 = ~vec3<u32>(abs(reverseBits(var_3.a)), var_3.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 924f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, _wgslsmith_f_op_f32(-var_3.e)))));
}

