struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u);

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: bool = true;

var<private> global3: i32 = 69916i;

var<private> global4: array<vec3<f32>, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.c;
    let var_1 = ~(~_wgslsmith_div_i32(0i, -(~(-43002i))));
    let var_2 = arg_0;
    var var_3 = !(var_2.d.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-149f, 127f)) + _wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-arg_1.d.x))));
    let var_4 = min(var_2.e, _wgslsmith_mult_u32(~var_2.c.a, var_0.a >> (arg_0.e % 32u)) << (~1u % 32u)) << (1u % 32u);
    return _wgslsmith_div_f32(-1000f, 365f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> bool {
    global3 = -firstTrailingBit(_wgslsmith_div_i32(-14140i, arg_2));
    global3 = -15989i;
    var var_0 = Struct_2(~firstTrailingBit(min(arg_1.x, ~2147483647i)), Struct_1(global0.a ^ 1u), Struct_1(~4294967295u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x * -217f)), _wgslsmith_f_op_f32(func_3(Struct_2(0i, Struct_1(global0.a), Struct_1(1u), vec2<f32>(arg_0.x, arg_0.x), global0.a), Struct_2(arg_2, Struct_1(4294967295u), Struct_1(4294967295u), arg_0.xy, global0.a), Struct_1(1u)))))), 0u);
    global1 = array<vec4<i32>, 4>();
    var var_1 = 1i;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = !(!select(select(!vec4<bool>(true, arg_0.x, arg_0.x, true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, false, true), true), all(arg_0)), vec4<bool>(true, select(arg_0.x, true, arg_0.x), true, arg_0.x | arg_0.x), vec4<bool>(true, false, any(vec2<bool>(true, true)), u_input.a <= u_input.a)));
    var var_1 = Struct_2(~3447i, Struct_1(~_wgslsmith_clamp_u32(4741u, 0u, _wgslsmith_mod_u32(0u, arg_1))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_1, 1u, ~arg_1), arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -818f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1539f, -1140f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-966f, -1424f))), false))))), arg_1);
    let var_2 = firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.e, abs(arg_1), 66581u), 4u)]);
    let var_3 = max(_wgslsmith_sub_u32(9481u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), abs(vec2<u32>(35821u, 45174u))), ~arg_1)), ~reverseBits(1u));
    var var_4 = vec3<bool>(!(false & var_0.x), true && !((arg_1 > 42902u) | all(vec2<bool>(true, var_0.x))), arg_0.x);
    return firstTrailingBit(arg_1);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = abs(vec3<u32>(~1u, ~(~arg_1.x), global0.a)) << (arg_1.xyz % vec3<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(var_0.zx, _wgslsmith_div_vec2_u32(vec2<u32>(global0.a, arg_1.x) & ~vec2<u32>(arg_1.x, 66026u), arg_1.wx)));
    let var_2 = _wgslsmith_dot_vec2_i32(-select(vec2<i32>(1i, u_input.a) | vec2<i32>(0i, u_input.b), select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.a, 35805i), true), vec2<bool>(arg_0.x, false)), vec2<i32>(~39007i, 1i)) >> (_wgslsmith_clamp_u32(countOneBits(85168u), func_4(vec3<bool>(29u >= var_0.x, false, func_2(global4[_wgslsmith_index_u32(arg_1.x, 16u)], vec3<i32>(u_input.a, u_input.b, u_input.b), u_input.b, false)), abs(7195u)), 1u) % 32u);
    let var_3 = !(!vec3<bool>(!arg_0.x, arg_0.x, !(!arg_0.x)));
    let var_4 = Struct_2(-var_2, Struct_1(~(_wgslsmith_dot_vec3_u32(arg_1.yzw, vec3<u32>(15414u, global0.a, 4294967295u)) & global0.a)), Struct_1(~var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(422f, -438f), -583f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1040f, -991f) * vec2<f32>(108f, -1385f))))), 41330u);
    return Struct_2(var_4.a, Struct_1(func_4(select(var_3, var_3, false), firstTrailingBit(4294967295u)) ^ firstLeadingBit(0u)), var_4.c, vec2<f32>(815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.d.x, 917f))) + var_4.d.x)), firstLeadingBit(var_1.a));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), any(vec3<bool>(true, false, false)))));
    global4 = array<vec3<f32>, 16>();
    let var_1 = func_5(func_1(vec2<bool>(_wgslsmith_f_op_f32(floor(413f)) > -1760f, true), ~(~vec4<u32>(global0.a, global0.a, global0.a, global0.a))));
    var_0 = false;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(463f)), -1704f)) * _wgslsmith_f_op_f32(-1382f - -1717f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-240f)))))), 606f, func_1(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true))), true), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(57707u, 0u, 44136u, global0.a), vec4<u32>(global0.a, 0u, global0.a, var_1)), firstTrailingBit(vec4<u32>(51736u, 49414u, global0.a, global0.a)))).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 979f, 281f), _wgslsmith_div_vec4_f32(vec4<f32>(-275f, 578f, 346f, -1016f), vec4<f32>(var_2.x, -395f, var_2.x, -1852f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(vec2<bool>(false, true), vec4<u32>(13528u, global0.a, var_1, 68438u)).d.x, _wgslsmith_f_op_f32(var_2.x - var_2.x), -986f, _wgslsmith_f_op_f32(-var_2.x)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(round(905f)), -1031f))), vec4<u32>(1u, 4294967295u, ~_wgslsmith_sub_u32(global0.a, 1u), 4426u) & vec4<u32>(global0.a, 1u, _wgslsmith_add_u32(53958u, ~60920u), ~(~var_1)), var_2.x);
}

