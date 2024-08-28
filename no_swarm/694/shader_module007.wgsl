struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    return 1437f;
}

fn func_3() -> f32 {
    var var_0 = reverseBits(-_wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(u_input.b, u_input.b)), u_input.b));
    var_0 = u_input.b;
    var var_1 = Struct_2(_wgslsmith_div_u32(~(~u_input.c), firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 4294967295u), vec3<u32>(u_input.d.x, 0u, u_input.c)))), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, -408f, -1754f)))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, firstLeadingBit(0u), u_input.a, 41637u), vec4<u32>(abs(0u), _wgslsmith_div_u32(1u, 49005u), ~0u, select(u_input.d.x, u_input.c, true))), -1009f), Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) + _wgslsmith_f_op_f32(-701f - _wgslsmith_div_f32(-1000f, 438f)))), !select(vec4<bool>(true, false, all(vec2<bool>(true, false)), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)));
    var var_2 = countOneBits(vec2<u32>(u_input.d.x, 1u));
    var_0 = 1i;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.d)) * 485f), var_1.c.b.x, false));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var_0 = _wgslsmith_f_op_f32(func_1());
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(225f, -896f, any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-877f, -1197f)), false)))));
    return Struct_2(u_input.d.x, Struct_1(2147483647i, vec3<f32>(-911f, _wgslsmith_f_op_f32(min(-253f, _wgslsmith_f_op_f32(1512f * 1863f))), _wgslsmith_f_op_f32(f32(-1f) * -1572f)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(39901u, u_input.d.x, u_input.d.x, 4294967295u)), ~u_input.d) >> (~vec4<u32>(17102u, u_input.a, u_input.d.x, 0u) % vec4<u32>(32u)), 856f), Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(countOneBits(u_input.b), firstLeadingBit(18719i), u_input.b), 0i & _wgslsmith_add_i32(-64096i, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f * -1120f)), _wgslsmith_f_op_f32(func_3()), 546f), vec4<u32>(4294967295u, select(29358u, u_input.a, true), 1u, u_input.c) & u_input.d, 537f), vec4<bool>(u_input.b == -5267i, true, all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), !select(true, true, all(vec4<bool>(false, true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(1619f)), _wgslsmith_div_f32(-265f, -596f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(floor(var_0.x));
    let var_3 = !vec3<bool>(false, false, var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-45754i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -179f), func_2().b.d) * vec4<f32>(-807f, 776f, _wgslsmith_div_f32(var_0.x, var_0.x), -553f))));
}

