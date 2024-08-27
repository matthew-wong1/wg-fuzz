struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), 16106u, vec2<bool>(true, false), -394f);

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: array<u32, 10> = array<u32, 10>(71680u, 3125u, 28454u, 4294967295u, 0u, 1u, 55328u, 59543u, 4294967295u, 4294967295u);

var<private> global4: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = abs(select(max(~vec4<u32>(88287u, 14926u, arg_3.b, 74271u), vec4<u32>(arg_3.b, 4294967295u, 1837u, 26629u)) & firstTrailingBit(min(vec4<u32>(arg_2.b, 37117u, 56333u, 2923u), vec4<u32>(19858u, u_input.c, global1.b, arg_2.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b, 1u, 13906u, 1u), vec4<u32>(0u, 1u, u_input.b, global3[_wgslsmith_index_u32(1u, 10u)])) & vec4<u32>(select(arg_3.b, 19505u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_3.b), vec2<u32>(1u, arg_2.b)), arg_2.b, max(arg_3.b, global1.b)), all(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_3.c.x, false), vec4<bool>(false, arg_3.c.x, arg_3.c.x, true), global4[_wgslsmith_index_u32(45932u, 10u)])) || arg_2.a.x));
    global4 = array<vec4<bool>, 10>();
    let var_1 = -351f;
    var var_2 = -14204i;
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(36071u, 67850u, 1u), 1u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global1.b, 10u)], 4294967295u, 0u), var_0.zww), vec3<u32>(~52087u, _wgslsmith_add_u32(u_input.b, 58499u), arg_3.b)) % 32u), 0u, 0u);
    return _wgslsmith_f_op_f32(sign(var_1));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = 0i;
    var var_1 = var_0;
    global2 = array<vec2<bool>, 4>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f + 1340f))) + global0.xx));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(u_input.a, Struct_1(!global1.a, ~u_input.b, !global1.c, _wgslsmith_f_op_f32(func_3(global0.x, global1.c.x, Struct_1(global1.c, global1.b, vec2<bool>(global1.a.x, global1.a.x), global1.d), Struct_1(global1.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], vec2<bool>(global1.a.x, global1.c.x), global1.d)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2106f, -1000f)), global1.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xw)));
    let var_1 = abs(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(0u, u_input.c, u_input.b) & vec3<u32>(603u, u_input.b, 34080u), _wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7681u, 10u)], 10u)], 20586u, global1.b), vec3<u32>(global3[_wgslsmith_index_u32(1u, 10u)], u_input.b, global3[_wgslsmith_index_u32(global1.b, 10u)])), !vec3<bool>(true, global1.c.x, global1.a.x)), vec3<u32>(_wgslsmith_div_u32(26867u, 13692u), 59343u & global1.b, _wgslsmith_add_u32(min(u_input.b, 4294967295u), abs(u_input.c)))));
    let var_2 = any(global4[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(u_input.b, abs(4294967295u), 47154u)), 10u)]);
    global4 = array<vec4<bool>, 10>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.wy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.d, -1311f))), global0.wz, true)), global0.xy, global1.c))));
    return Struct_1(!global2[_wgslsmith_index_u32(~firstTrailingBit(global3[_wgslsmith_index_u32(var_1, 10u)]), 4u)], u_input.b, select(global2[_wgslsmith_index_u32(33875u, 4u)], select(select(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)] & 1u, 4u)], select(global2[_wgslsmith_index_u32(4294967295u, 4u)], vec2<bool>(false, var_2), vec2<bool>(true, false)), !vec2<bool>(var_2, var_2)), vec2<bool>(false, true), !global1.a.x), any(vec3<bool>(true, !var_2, var_2 | true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(~(-1i), Struct_1(!vec2<bool>(global1.a.x, false), ~16027u, !vec2<bool>(global1.a.x, true), -818f))).x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global0.x, any(vec4<bool>(var_2, global1.a.x, var_2, true)), Struct_1(global2[_wgslsmith_index_u32(43399u, 4u)], global3[_wgslsmith_index_u32(0u, 10u)], vec2<bool>(global1.a.x, var_2), 172f), Struct_1(vec2<bool>(var_2, global1.c.x), 23491u, global1.c, 335f)))))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = abs(~(~(~(~vec3<u32>(4294967295u, var_0.b, 0u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d + -1192f), _wgslsmith_f_op_f32(350f * -2007f), _wgslsmith_f_op_f32(global0.x * 1000f), _wgslsmith_div_f32(global1.d, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global1.d, 139f) - vec4<f32>(var_0.d, -715f, 462f, global0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, global0.x, var_0.d, 1075f))))) - vec4<f32>(var_0.d, global1.d, 276f, 1672f));
    var var_3 = func_2();
    global1 = func_2();
    return !(!func_2().a);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = ~vec2<i32>(firstTrailingBit(reverseBits(1i)), ~(~_wgslsmith_div_i32(-22376i, 1i)));
    var var_1 = -select(_wgslsmith_clamp_vec3_i32(-select(vec3<i32>(1i, u_input.a, -36618i), vec3<i32>(var_0.x, u_input.a, var_0.x), vec3<bool>(false, arg_2, false)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(0i, var_0.x, 2199i)), -vec3<i32>(37631i, u_input.a, u_input.a), abs(vec3<i32>(var_0.x, u_input.a, u_input.a))), -(vec3<i32>(-13084i, var_0.x, u_input.a) & vec3<i32>(var_0.x, -2147483647i, 1i))), -(abs(vec3<i32>(u_input.a, var_0.x, var_0.x)) | -vec3<i32>(u_input.a, var_0.x, var_0.x)), select(vec3<bool>(true && arg_2, true, true), select(!vec3<bool>(false, arg_2, arg_1.x), vec3<bool>(global1.a.x, arg_1.x, arg_1.x), arg_2), true));
    var var_2 = select(!(!vec2<bool>(false, global1.a.x | arg_2)), global2[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)], any(!func_1()));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(u_input.a, func_2())).x, _wgslsmith_div_f32(1957f, _wgslsmith_f_op_vec2_f32(func_4(var_0.x, Struct_1(global2[_wgslsmith_index_u32(10553u, 4u)], global1.b, arg_1, arg_0.x))).x)) + arg_0.x)));
    let var_4 = Struct_1(global2[_wgslsmith_index_u32(global1.b, 4u)], ~global1.b, global2[_wgslsmith_index_u32(countOneBits(~arg_3), 4u)], _wgslsmith_f_op_f32(exp2(var_3)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, global1.d)), select(select(vec2<bool>(select(true, true, global1.a.x), global1.a.x), !vec2<bool>(global1.c.x, true), global2[_wgslsmith_index_u32(0u >> (min(1u, 44026u) % 32u), 4u)]), func_1(), global1.a.x | func_1().x), true, func_2().b);
    var var_1 = Struct_1(vec2<bool>(!any(select(vec3<bool>(true, var_0.c.x, false), vec3<bool>(var_0.c.x, var_0.a.x, var_0.c.x), vec3<bool>(global1.a.x, var_0.a.x, global1.a.x))), any(select(!vec4<bool>(var_0.a.x, global1.a.x, false, var_0.c.x), !global4[_wgslsmith_index_u32(45297u, 10u)], true))), countOneBits(~abs(~global1.b)), global2[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_div_f32(var_0.d, -768f));
    let var_2 = func_1();
    global4 = array<vec4<bool>, 10>();
    var var_3 = vec3<bool>(false, !global1.a.x, false);
    var_0 = Struct_1(!(!var_3.xz), min(~1u, 2955u), func_5(_wgslsmith_f_op_vec2_f32(func_4(~1i, func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-784f, global1.d) + global0.xz), var_1.a, true | var_3.x, 1u))), !vec2<bool>(any(vec3<bool>(global1.a.x, var_3.x, var_3.x)), true), true, 6005u).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d, var_0.d)) - _wgslsmith_f_op_f32(-466f * 1667f)), !all(vec3<bool>(var_1.a.x, global1.c.x, true)), func_2(), Struct_1(global2[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(57400u, 10u)], 1u), 4u)], ~var_0.b, select(var_3.xy, var_2, vec2<bool>(global1.c.x, var_3.x)), _wgslsmith_div_f32(global0.x, 1000f))))));
    let var_4 = func_2();
    var var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), -1360f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1387f, -1415f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(vec2<f32>(var_4.d, 429f), var_2, true, u_input.c).d + 894f)))), vec3<i32>(0i, select(_wgslsmith_mod_i32(~u_input.a, u_input.a), -39535i, true), ~(firstLeadingBit(50270i) << (~4294967295u % 32u))));
}

