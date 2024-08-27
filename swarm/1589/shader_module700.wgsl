struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1405i), Struct_1(1i), Struct_1(-27956i), Struct_1(28687i), Struct_1(-19759i), Struct_1(1i), Struct_1(-51339i), Struct_1(28157i), Struct_1(73992i), Struct_1(i32(-2147483648)));

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(-40246i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(421f)), _wgslsmith_div_f32(-790f, 806f))))))) * _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1172f, _wgslsmith_f_op_f32(min(133f, 1339f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-780f, 899f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -691f))) + _wgslsmith_f_op_f32(func_3(~vec3<u32>(4294967295u, u_input.a.x, 44572u))))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 10u)];
    let var_2 = Struct_1(-2147483647i);
    var var_3 = -(vec4<i32>(_wgslsmith_mult_i32(~var_1.a, -14888i), ~_wgslsmith_mod_i32(-33882i, -1i), 57154i, 0i) | countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, 1i, 0i), -vec4<i32>(-791i, 0i, 66649i, var_1.a), vec4<i32>(-34366i, var_1.a, var_1.a, var_2.a))));
    let var_4 = all(vec3<bool>(true, (u_input.a.x < (0u << (u_input.a.x % 32u))) && all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), 1i <= (i32(-1i) * -var_2.a)));
    return Struct_1(var_3.x);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a);
    var var_1 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.xzw, min(vec3<u32>(~0u, u_input.a.x, ~u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 42899u))), 10u)];
    var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x << (abs(u_input.a.x) % 32u), ~1u), _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a.x, 1681u), 4294967295u), u_input.a.x | (106498u << ((1u >> (u_input.a.x % 32u)) % 32u))), 10u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1044f, _wgslsmith_div_f32(-145f, 189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1082f, -742f)) * -371f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) == -1000f;
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.a.xxw | vec3<u32>(11677u, 4294967295u, ~16128u), firstTrailingBit(abs(~vec3<u32>(4294967295u, 0u, u_input.a.x)) & vec3<u32>(68889u, _wgslsmith_add_u32(375u, 1u), 4294967295u)));
    var var_2 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), false), all(vec2<bool>(false, any(vec3<bool>(true, true, true)))));
    global3 = Struct_1(_wgslsmith_sub_i32(-3623i, -_wgslsmith_dot_vec4_i32(-vec4<i32>(global3.a, -29357i, -28863i, global2.a), vec4<i32>(global3.a, global3.a, global2.a, global2.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-525f, -578f, -738f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(683f, 962f, -1000f), vec3<f32>(-1331f, -230f, 1148f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, 2834f, 1089f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, -115f, 1941f))), !((var_2.x || false) == all(var_2.yz)))));
    global3 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -926f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), 538f)))), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)))))));
    var var_5 = false;
    var var_6 = -firstLeadingBit(-(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.a, global3.a, 31504i, 0i), vec4<i32>(2189i, -1i, global2.a, global3.a)) & -vec4<i32>(-2975i, 40468i, global2.a, global3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a);
}

