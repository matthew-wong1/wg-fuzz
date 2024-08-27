struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = select(u_input.a.x, 11511u, all(vec4<bool>(all(vec4<bool>(false, false, false, arg_2)), arg_2, !any(vec4<bool>(true, true, arg_2, false)), false)));
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), max(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x)) | vec2<u32>(u_input.a.x, 1u)));
    var_0 = select(4294967295u << (u_input.a.x % 32u), firstTrailingBit(24515u), arg_2);
    global0 = array<Struct_1, 24>();
    var var_2 = arg_0;
    return abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-21713i, 22936i, arg_3, -6258i), abs(vec4<i32>(2147483647i, 2147483647i, arg_3, 1i))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-11360i, -2147483647i, 2147483647i, var_2.a.x), vec4<i32>(2147483647i, 0i, -3233i, arg_3), vec4<i32>(arg_3, 11779i, arg_3, var_2.a.x)), vec4<i32>(-16830i, var_2.a.x, 0i, arg_3))), vec4<i32>(-1i, var_2.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, var_2.a.x), arg_0.a.x, -1i), -(arg_0.a.x ^ 43016i))));
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(5995i, ~1i), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(61819i, 10106i), max(37091i, 1i)), ~(~_wgslsmith_add_i32(-1i, 52280i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(184f))) - -296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(f32(-1f) * -1343f)))));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_2 = _wgslsmith_add_i32(-(~(~21345i)), ~46493i);
    return vec3<i32>(var_1.a.x, _wgslsmith_mod_i32(-20615i, -var_1.a.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(func_3(Struct_1(vec3<i32>(var_1.a.x, 3478i, var_1.a.x), var_1.b), vec4<f32>(var_1.b.x, -1284f, var_1.b.x, 1304f), true, var_2) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 5477u), u_input.a.ww) % 32u), var_1.a.x, var_2), 2147483647i));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<u32>) -> bool {
    let var_0 = vec3<i32>(reverseBits(reverseBits(-arg_0)), ~arg_0, _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(arg_0, 2147483647i)))) & func_2();
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_1 = ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(select(arg_3.x, 10031u, false), select(0u, u_input.a.x, arg_1), _wgslsmith_clamp_u32(arg_3.x, arg_3.x, 6530u))), arg_3, ~u_input.a.xyy);
    var var_2 = vec2<u32>(~1u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~var_1.x, ~0u), arg_3.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), any(vec3<bool>(all(vec4<bool>(true, false, true, true)), true, func_1(0i, false, vec3<f32>(263f, -1226f, -1027f), vec3<u32>(1u, u_input.a.x, 45025u)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1068f)))), _wgslsmith_f_op_f32(f32(-1f) * -350f)) - -1519f));
    var var_2 = ~vec4<i32>(~select(30013i, 1i, true), func_3(global0[_wgslsmith_index_u32(select(4294967295u, 38488u, true), 24u)], vec4<f32>(483f, 869f, 115f, 1368f), var_0.x, 2147483647i) ^ ~11393i, 1i, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(-36735i, func_2().x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + -297f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1359f - -648f), _wgslsmith_f_op_f32(f32(-1f) * -559f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1320f)), 1740f)) - _wgslsmith_f_op_f32(f32(-1f) * -580f)))));
    let var_4 = global0[_wgslsmith_index_u32(select(~24166u, ~_wgslsmith_div_u32(~(~u_input.a.x), 0u), select(false, true, !func_1(var_2.x, var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -901f, 558f)), u_input.a.www))), 24u)];
    var var_5 = _wgslsmith_div_i32(var_2.x, 21446i >> (u_input.a.x % 32u));
    let var_6 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1405f, var_6.b.x)) * _wgslsmith_f_op_f32(select(var_4.b.x, var_4.b.x, true))), _wgslsmith_f_op_f32(round(var_4.b.x))))));
    var_0 = select(vec3<bool>(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x, true), vec3<bool>(true, true, !(!var_0.x)), all(vec3<bool>(var_0.x, !var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

