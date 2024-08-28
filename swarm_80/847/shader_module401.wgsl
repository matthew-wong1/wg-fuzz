struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    global1 = true;
    global0 = false;
    global0 = any(!vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))));
    var var_1 = true;
    return !(_wgslsmith_f_op_f32(-1365f * 1514f) < _wgslsmith_f_op_f32(-arg_1.b.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = -1653f;
    return Struct_1(u_input.b, arg_0.b, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 33173u | u_input.b, u_input.b), u_input.c)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = any(vec2<bool>(false, true));
    let var_0 = func_3(arg_0, arg_0, func_2(-37099i, Struct_1(_wgslsmith_mult_u32(1u, ~u_input.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-120f, -1462f, 540f)), _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.xz) & _wgslsmith_sub_u32(arg_0.a, arg_0.c))));
    global1 = true;
    global1 = any(vec3<bool>(u_input.a > u_input.a, true, !(_wgslsmith_div_f32(-1833f, arg_0.b.x) <= _wgslsmith_f_op_f32(round(var_0.b.x)))));
    global0 = any(!(!vec4<bool>(true, func_2(1i, Struct_1(45931u, vec3<f32>(arg_0.b.x, arg_0.b.x, -1000f), 23333u)), true, true)));
    return Struct_1(_wgslsmith_add_u32(arg_0.c, _wgslsmith_sub_u32(abs(reverseBits(u_input.b)), reverseBits(0u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, arg_0.b.x, _wgslsmith_f_op_f32(-120f + func_3(Struct_1(35356u, vec3<f32>(arg_0.b.x, 675f, 1234f), var_0.c), Struct_1(u_input.c.x, vec3<f32>(var_0.b.x, -142f, -839f), 50417u), false).b.x)) + _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-var_0.b))), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = !func_2(2147483647i, Struct_1(_wgslsmith_mod_u32(firstLeadingBit(1220u), min(arg_1, 1u)), arg_0.b, _wgslsmith_add_u32(31887u, 1u)));
    let var_0 = 1u;
    let var_1 = arg_0.b.x;
    let var_2 = ~(arg_3 & ~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3, 55059u), arg_2));
    global0 = !(arg_0.b.x > -1462f);
    return func_1(Struct_1(u_input.c.x, arg_0.b, abs(~arg_0.c) | (~arg_1 | arg_1)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    var var_0 = ~u_input.a;
    let var_1 = select(false, true, !(!((u_input.a >= 63991i) != all(vec4<bool>(true, true, false, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1076f, arg_1.b.x, arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -784f, -345f, arg_2.b.x) + vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_1.b.x)), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, false, true, false))))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), func_3(func_1(Struct_1(arg_2.c, arg_1.b, arg_1.a)), Struct_1(42481u, vec3<f32>(arg_2.b.x, -795f, -744f), arg_1.a), any(vec4<bool>(true, true, var_1, var_1))).b.x), _wgslsmith_f_op_f32(-arg_1.b.x), arg_2.b.x, func_4(Struct_1(0u, _wgslsmith_div_vec3_f32(arg_2.b, arg_2.b), arg_3), reverseBits(143920u), arg_2.c, 1u).b.x)));
    var var_3 = func_3(arg_1, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_3, ~14479u, arg_1.a), ~vec3<u32>(arg_3, arg_3, u_input.b)), _wgslsmith_f_op_vec3_f32(arg_2.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_2.b.x, arg_2.b.x)))), 28758u), all(vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), true, false, any(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, var_1, var_1, true), var_1)))));
    var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(462f, func_1(arg_2).b.x, func_3(func_4(Struct_1(65219u, vec3<f32>(arg_2.b.x, var_2.x, arg_2.b.x), 4294967295u), arg_1.a, 1u, ~arg_3), Struct_1(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_1.b.x, -168f)), ~var_3.c), !var_1).b.x, -1254f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_2.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-654f)), 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_3.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec3<bool>(any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))), false, false));
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(u_input.c.x, func_4(func_1(Struct_1(~26288u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, -837f, -478f) * vec3<f32>(873f, 104f, 1000f)), 0u)), 26953u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 49744u), vec3<u32>(u_input.d.x, u_input.b, u_input.c.x)) >> (u_input.d.x % 32u), _wgslsmith_add_u32(u_input.d.x | u_input.b, reverseBits(~u_input.c.x))), func_1(func_1(Struct_1(~66227u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-893f, 1415f, 1761f)), 4294967295u))), ~_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, u_input.b)))));
    let var_1 = Struct_1(~(~_wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(4825u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_5(abs(4294967295u), Struct_1(u_input.d.x, var_0.yzy, u_input.b), Struct_1(4294967295u, var_0.yzw, _wgslsmith_add_u32(56131u, 55633u)), ~u_input.d.x)).xwy), abs(u_input.d.x));
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

