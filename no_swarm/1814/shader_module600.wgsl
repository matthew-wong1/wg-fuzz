struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_1(u_input.b | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 6405i), vec2<i32>(42848i, 1i)), min(-2147483647i, arg_1.a)));
    global0 = any(arg_0.wy);
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a ^ var_0.a, arg_1.a), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_0.a, arg_1.a)), firstLeadingBit(vec2<i32>(u_input.a, 6368i)), vec2<i32>(2147483647i, 0i))), 13171i, _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-25448i, 7284i), vec2<i32>(0i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a, u_input.a), vec2<i32>(-55369i, 23499i))), firstLeadingBit(arg_1.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), 314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(604f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1217f * 745f), _wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(f32(-1f) * -295f)))));
    let var_3 = Struct_1(~45300i);
    return 49539u < u_input.d;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global0 = true;
    global0 = func_3(vec4<bool>(!arg_0.x, all(!(!vec2<bool>(arg_0.x, true))), all(vec4<bool>(true, true, true, true)), (firstLeadingBit(u_input.b) << (abs(4294967295u) % 32u)) <= 1i), Struct_1(1i), !(!select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), true))));
    global0 = true;
    var var_0 = !vec4<bool>(!func_3(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, true, false, arg_0.x), arg_0.x), Struct_1(-2147483647i), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, !arg_0.x, true)), arg_0.x, any(vec4<bool>(true, all(vec3<bool>(arg_0.x, true, arg_0.x)), false, any(vec3<bool>(false, true, false)))));
    global0 = !(!arg_0.x);
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, u_input.b)) >> (0u % 32u)), 1i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = all(vec4<bool>(true, true, true, true));
    global0 = all(vec4<bool>(true, true, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), any(vec3<bool>(true, true, false))));
    let var_0 = min(vec2<u32>(35994u & select(51159u, u_input.c, true), ~_wgslsmith_mod_u32(38945u, 29794u)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, u_input.d), vec2<u32>(4294967295u, u_input.c))), firstTrailingBit(vec2<u32>(7825u, 15303u)), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)), ~(~firstTrailingBit(~vec2<u32>(u_input.c, 29119u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2011f, 298f) + vec2<f32>(-1425f, -585f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, -907f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-430f, -1000f), vec2<f32>(-1000f, 2495f)))), func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), func_2(vec2<bool>(true, true), u_input.d), vec3<bool>(false, false, false))))))));
    let var_2 = 2147483647i;
    return Struct_1(3152i);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = func_4(func_2(vec2<bool>((arg_2 | arg_2) && all(vec4<bool>(arg_0, arg_2, arg_2, arg_0)), false), 10340u));
    var var_1 = _wgslsmith_add_u32(39503u, 4294967295u ^ u_input.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = true;
    global0 = false & (_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b >> (68359u % 32u), -34443i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-33294i, u_input.a, u_input.b, 19954i), vec4<i32>(-29804i, 2147483647i, u_input.a, u_input.a)), u_input.a)) <= ~(-u_input.a));
    let var_0 = vec4<bool>(!func_1(true, 42923i, true, 1u), true, !func_1(true, u_input.a, any(vec4<bool>(true, true, true, true)), 1u), any(vec3<bool>(true, true, true)));
    let var_1 = u_input.b;
    global0 = _wgslsmith_mod_i32(max(_wgslsmith_clamp_i32(u_input.b, var_1, min(var_1, u_input.a)), -2147483647i), -select(firstLeadingBit(-1i), 1i, true)) > -19395i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1060f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 1509f), vec2<f32>(1477f, -292f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, 486f) + vec2<f32>(-118f, -932f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1806f + -1979f), _wgslsmith_f_op_f32(select(1826f, 1095f, true)))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-922f + -209f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2033f), _wgslsmith_f_op_f32(1000f - -377f)), -365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(892f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, 569f, 296f, 272f))))), _wgslsmith_div_vec4_i32(vec4<i32>((var_1 & 1i) >> ((u_input.d & 4294967295u) % 32u), _wgslsmith_clamp_i32(var_1 ^ -2147483647i, ~var_1, firstLeadingBit(u_input.a)), -var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -12747i) << (vec2<u32>(1u, 3688u) % vec2<u32>(32u)), select(vec2<i32>(u_input.a, u_input.b), vec2<i32>(59715i, 7678i), vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(-1i, 5184i, 18224i, 2147483647i)), abs(vec4<i32>(1i, u_input.b, -7550i, var_1)))), -min(2147483647i, _wgslsmith_div_i32(abs(39120i), var_1)));
}

