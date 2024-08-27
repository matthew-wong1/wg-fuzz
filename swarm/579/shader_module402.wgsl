struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    var var_1 = Struct_1(vec4<bool>(!all(!arg_2.b), all(vec4<bool>(true, all(arg_1.a.xz), true, !arg_1.a.x)), select(arg_1.a.x, true, false), false), arg_1.b, false);
    var_1 = Struct_1(select(select(vec4<bool>(var_1.c, all(arg_1.a.wzw), true, !arg_1.c), select(arg_0, vec4<bool>(var_0.a.x, var_1.b.x, arg_2.b.x, arg_0.x), arg_2.b), !any(vec3<bool>(true, arg_1.a.x, true))), select(select(!var_1.a, vec4<bool>(arg_2.a.x, arg_0.x, true, arg_1.c), !var_0.b), arg_2.a, vec4<bool>(true, true, true, var_0.c)), select(arg_1.b, select(!var_0.b, !arg_2.b, select(var_1.b, var_0.b, vec4<bool>(arg_1.a.x, true, false, arg_2.a.x))), select(select(vec4<bool>(arg_2.a.x, arg_2.c, var_1.b.x, true), vec4<bool>(false, true, false, true), false), select(var_1.a, arg_2.b, var_0.b), false))), var_0.a, all(select(vec4<bool>(false, arg_0.x, all(vec2<bool>(true, var_1.c)), false), vec4<bool>(!arg_2.c, all(arg_2.b.yzx), arg_2.a.x, arg_2.b.x || true), var_1.b)));
    let var_2 = _wgslsmith_mult_i32(0i, -1i);
    var_1 = Struct_1(vec4<bool>(!(var_2 >= _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 149i, -2147483647i, -2147483647i), vec4<i32>(130429i, var_2, var_2, -1i))), any(vec3<bool>(false, u_input.a >= u_input.a, var_1.c & true)), arg_0.x, false), select(!vec4<bool>(any(var_0.b.xzx), true, 1u >= u_input.a, any(var_0.a.zw)), !vec4<bool>(any(var_1.a.xx), any(vec3<bool>(true, true, false)), false, true), vec4<bool>(all(!arg_0.xx), var_0.b.x, true, true)), all(arg_1.b.yz));
    return abs(max(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 97831u, 49932u), vec4<u32>(0u, 21426u, u_input.b, 22402u)), firstTrailingBit(vec4<u32>(0u, 1u, 0u, 52524u)), select(var_0.a, arg_2.b, vec4<bool>(var_1.c, true, arg_2.b.x, false))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.b, 0u), vec4<u32>(31347u, u_input.b, u_input.a, u_input.a)) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 8452u, 20966u)), vec4<u32>(4294967295u, 1u, 54546u, 35051u)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = min(~_wgslsmith_mod_vec4_u32(func_3(vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)), select(vec4<u32>(34010u, u_input.a, 54819u, u_input.b), vec4<u32>(u_input.a, 1u, u_input.b, u_input.a), vec4<bool>(true, true, true, true))), vec4<u32>(~(~u_input.b), u_input.b, ~(43004u ^ u_input.b), _wgslsmith_add_u32(func_3(vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)).x, 118951u)));
    let var_1 = ~(~u_input.b);
    var var_2 = !(!all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))));
    var var_3 = 170f;
    let var_4 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true), vec4<bool>(true, true, false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    return vec4<bool>(!select(select(select(true, var_4.x, var_4.x), var_4.x, true), var_4.x, true), var_4.x, all(!vec3<bool>(true, var_4.x, any(var_4))), any(select(select(var_4.xyz, select(var_4.xyw, vec3<bool>(false, var_4.x, var_4.x), false), select(vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(var_4.x, false, var_4.x))), var_4.wxw, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 37481u), vec3<u32>(var_1, 0u, 4294967295u)) > 14064u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -252f;
    var var_1 = ~(~27215u);
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> bool {
    let var_0 = arg_1;
    global0 = array<vec3<u32>, 10>();
    var var_1 = true;
    var var_2 = arg_1;
    var_2 = func_4(Struct_1(func_2(), func_2(), false), Struct_1(!arg_1.b, vec4<bool>((arg_3 >= 227f) || true, _wgslsmith_f_op_f32(select(-831f, arg_3, true)) < _wgslsmith_f_op_f32(arg_3 * arg_3), !var_0.b.x, true), all(var_2.a.zzx)), _wgslsmith_f_op_f32(-arg_3), var_0);
    return (true & (func_4(Struct_1(vec4<bool>(false, true, true, false), var_0.a, arg_1.c), Struct_1(var_0.b, arg_1.a, true), _wgslsmith_f_op_f32(f32(-1f) * -1912f), func_4(var_0, var_0, 1305f, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, false, var_2.b.x), vec4<bool>(false, var_0.b.x, true, var_0.c), var_0.b.x))).a.x || any(vec2<bool>(true, var_0.a.x)))) || (_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_div_f32(arg_3, arg_3)), -257f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1503f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -279f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 10>();
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(794f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-var_0)))), 1476f)));
    global0 = array<vec3<u32>, 10>();
    var var_2 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), u_input.b == u_input.a)), select(!vec4<bool>(func_1(vec3<i32>(-1i, -1i, 0i), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<i32>(2147483647i, 10509i, -6751i, 9763i), -806f), false, true, false), vec4<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -29600i, 0i, 50193i), vec4<i32>(-9116i, 1i, -36374i, 0i)) != 0i, true, false), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -1078f, firstTrailingBit(_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(54150u, 102022u, u_input.a)), global0[_wgslsmith_index_u32(countOneBits(0u), 10u)], ~global0[_wgslsmith_index_u32(49857u, 10u)] & (vec3<u32>(u_input.b, u_input.a, 4294967295u) >> (vec3<u32>(u_input.b, 1u, 1u) % vec3<u32>(32u))))), firstLeadingBit(96546u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-902f, -437f, -450f, -353f))))));
}

