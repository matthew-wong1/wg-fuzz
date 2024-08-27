struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1214f), Struct_1(-574f), Struct_1(-345f), Struct_1(-605f), Struct_1(3410f), Struct_1(-614f), Struct_1(149f), Struct_1(-1536f), Struct_1(-328f), Struct_1(-342f), Struct_1(-908f), Struct_1(1567f), Struct_1(-537f), Struct_1(731f), Struct_1(1464f), Struct_1(1284f), Struct_1(-1038f), Struct_1(-1209f), Struct_1(382f), Struct_1(-145f), Struct_1(779f), Struct_1(475f), Struct_1(-640f), Struct_1(301f), Struct_1(-1320f), Struct_1(356f), Struct_1(1104f), Struct_1(569f), Struct_1(-605f), Struct_1(422f), Struct_1(-1051f), Struct_1(873f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 32u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_0)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(max(arg_0, -748f)), 887f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -2303f, 1000f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1429f, arg_0, -976f), vec3<f32>(1634f, arg_0, -972f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1138f)), -678f, _wgslsmith_f_op_f32(283f * 817f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 594f, 975f)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-221f + _wgslsmith_div_f32(-1063f, 305f)))), 698f)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(479f, -515f, var_1.a) * vec3<f32>(arg_0, var_2.x, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 713f, -481f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-487f, -1592f))) * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -819f)));
    return vec2<u32>(u_input.c.x, 4294967295u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-372f)) + _wgslsmith_f_op_f32(-781f - -2538f))) - 702f));
    let var_1 = u_input.d.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f - -630f) - arg_2.a) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(937f))))) + var_0.a));
    let var_3 = Struct_1(-1409f);
    return vec2<bool>(false == all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false);
}

fn func_2() -> bool {
    var var_0 = select(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, true), select(vec2<bool>(true, select(false, false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), func_4(~u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(6127u, u_input.c.x), 32u)], Struct_1(278f), func_3(2095f, u_input.b)))), vec2<bool>(!all(vec2<bool>(true, true)), true), vec2<bool>(true, any(vec3<bool>(all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, true)), true))));
    var var_1 = -105f;
    var_0 = func_4(abs(50721u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(171f + -1261f))) + _wgslsmith_f_op_f32(f32(-1f) * -191f))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1376f * 1771f), _wgslsmith_div_f32(-1891f, -1000f))), 303f))), u_input.e.zx);
    let var_2 = global0[_wgslsmith_index_u32(~abs(u_input.e.x), 32u)];
    global0 = array<Struct_1, 32>();
    return (-u_input.b.x > -59077i) & true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = func_2();
    global0 = array<Struct_1, 32>();
    let var_1 = select(func_4(_wgslsmith_mult_u32(1u, ~arg_1.x ^ abs(0u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 1u), 32u)], Struct_1(-1668f), vec2<u32>(~(~40902u), abs(arg_1.x))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(_wgslsmith_mult_u32(arg_1.x, 8114u) == arg_1.x, true)), !vec2<bool>(all(func_4(arg_1.x, global0[_wgslsmith_index_u32(1u, 32u)], Struct_1(-503f), arg_1.zz)), true));
    global0 = array<Struct_1, 32>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    return Struct_1(436f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.zy, reverseBits(vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, 3793u), ~select(1u, u_input.e.x, true), u_input.c.x << (u_input.e.x % 32u))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 32u)];
    global0 = array<Struct_1, 32>();
    var_0 = Struct_1(var_1.a);
    let var_2 = reverseBits(~u_input.c.x);
    let var_3 = func_1(~_wgslsmith_div_vec2_i32(~u_input.d.zx ^ vec2<i32>(u_input.b.x, 1i), -(~vec2<i32>(170i, -22025i))), ~firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(49359u, var_2, 36272u))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(var_1.a)));
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(380f)), _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, -1009f) * vec2<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(var_0.a * 995f))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)) & ((-299f > var_4.a) & true))), ~u_input.a);
}

