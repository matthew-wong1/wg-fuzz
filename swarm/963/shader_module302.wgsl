struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1665f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(983f))), 817f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-655f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-734f, 567f)), _wgslsmith_f_op_f32(886f + -618f)), -1221f), vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec4<u32>, 32>();
    var var_1 = (abs(80515u) >> ((~u_input.a ^ 1u) % 32u)) | countOneBits(u_input.d.x);
    let var_2 = any(select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), select(vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), u_input.d.ww)), ~select(u_input.a, 11580u, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.d.x, 4294967295u), select(vec3<u32>(38439u, u_input.a, u_input.c), u_input.d.xxy, vec3<bool>(var_2, false, true))) & _wgslsmith_sub_u32(abs(1u), _wgslsmith_mod_u32(u_input.d.x, u_input.c)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2)) + _wgslsmith_div_f32(1000f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -196f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = -1749f;
    global0 = array<vec4<u32>, 32>();
    let var_1 = vec4<bool>(true, _wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(func_3())) <= var_0, !all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), true);
    var var_2 = false;
    var_2 = true;
    return -508f;
}

fn func_1() -> StorageBuffer {
    let var_0 = ~max(select(u_input.d.zx, ~vec2<u32>(u_input.a, 1u), (u_input.d.x > u_input.a) && true), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 1553u), ~vec2<u32>(u_input.c, 7415u)));
    let var_1 = u_input.d.zxy;
    var var_2 = Struct_2(vec4<f32>(-346f, -1336f, 743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(102f, 558f, 505f, 2091f), Struct_1(4294967295u)), u_input.d.yww)) - 1000f))), Struct_1(u_input.a));
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    return StorageBuffer(countOneBits(_wgslsmith_mult_vec2_u32(~var_0, _wgslsmith_sub_vec2_u32(u_input.d.ww, vec2<u32>(var_2.b.a, 102753u) | var_1.xx))), ~((_wgslsmith_mult_i32(-67529i, u_input.b.x) ^ _wgslsmith_div_i32(-2147483647i, u_input.b.x)) >> (~(~var_1.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    let x = u_input.a;
    s_output = func_1();
}

