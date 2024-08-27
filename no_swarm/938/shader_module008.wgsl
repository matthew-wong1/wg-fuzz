struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    global0 = ~35181u;
    let var_0 = Struct_1(select(~62364u, firstLeadingBit(1u), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1631f + -1097f), 1975f)));
    global0 = ~var_0.a;
    let var_1 = Struct_1(select(4294967295u, var_0.a, (var_0.b != var_0.b) || true) >> (((_wgslsmith_div_u32(4294967295u, var_0.a) << (var_0.a % 32u)) << (reverseBits(51428u) % 32u)) % 32u), -557f);
    var var_2 = var_1;
    return vec3<bool>(false, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, true), any(vec4<bool>(false, false, true, false)), select(false, true, true), false), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<bool>) -> bool {
    let var_0 = abs(firstLeadingBit(abs(~(~vec3<u32>(1469u, 4367u, 38984u)))));
    var var_1 = !arg_2.x;
    global0 = _wgslsmith_clamp_u32(90873u, min(reverseBits(var_0.x), min(var_0.x, 1u)), ~var_0.x);
    var var_2 = all(!(!(!(!vec2<bool>(true, arg_2.x)))));
    var_1 = func_3(~u_input.a.x).x;
    return true;
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = 1u;
    var var_0 = vec4<bool>(any(arg_0), arg_0.x, true, true);
    var var_1 = vec2<bool>(var_0.x, func_4(false, firstLeadingBit(u_input.a), !func_3(u_input.a.x)));
    var var_2 = Struct_1(countOneBits(~21353u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return select(select(!select(!var_0.zxy, vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, true)), vec3<bool>((-1i ^ u_input.a.x) != -2147483647i, (false || var_0.x) || var_1.x, false), select(select(func_3(61972i), var_0.xwy, vec3<bool>(arg_0.x, false, var_0.x)), !func_3(u_input.a.x), vec3<bool>(var_1.x, arg_0.x || var_0.x, all(vec2<bool>(var_1.x, arg_0.x))))), func_3(u_input.a.x), var_0.yxw);
}

fn func_1() -> u32 {
    global0 = _wgslsmith_mod_u32(~8887u, abs(11027u));
    let var_0 = any(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), func_2(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, false)))));
    global0 = ~0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1187f), 1f, var_0)));
    global0 = 1u;
    return _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(45505u, 50911u), 49717u), vec3<u32>(~4294967295u, 4294967295u, ~27464u)) & select(0u, 0u, all(vec2<bool>(var_0, false))), (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(31497u, 0u)), ~1u) << (abs(abs(0u)) % 32u)) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    global0 = firstTrailingBit(_wgslsmith_div_u32(~12387u, 33347u));
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(0i, 1i), ~_wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(-3891i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 3843i), vec2<i32>(u_input.a.x, 0i)))));
    global0 = ~12114u;
    var var_1 = Struct_1(~(~4294967295u), -525f);
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b + -1086f));
    let var_2 = vec4<u32>(19323u, 64074u, 41495u, ~func_1());
    global0 = ~8771u ^ ~_wgslsmith_mult_u32(~(~var_1.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a), var_2.xw), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, var_0.x, ~(-42536i)), vec4<i32>(u_input.a.x, 1i, ~var_0.x, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.x), u_input.a.zz) & ~1913i, min(~u_input.a.x, -20982i), -(~var_0.x), u_input.a.x)), ~var_2.x);
}

