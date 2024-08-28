struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    return any(!(!vec3<bool>(arg_0.b, all(vec2<bool>(arg_0.a, true)), false)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(func_3(Struct_1(false, true)) != false, false);
    let var_1 = vec4<i32>(1i, -44319i, firstLeadingBit(-28559i), -firstTrailingBit(i32(-1i) * -13326i) ^ -1i);
    let var_2 = !var_0.b;
    var var_3 = _wgslsmith_clamp_i32(-2147483647i, 0i, ~var_1.x);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1106f, -1038f, func_3(Struct_1(false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(876f, 744f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), -468f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, -864f) - vec2<f32>(-1000f, 686f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(782f, -582f)))));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(true, func_2());
    let var_2 = -1i;
    var_1 = Struct_1(func_2(), select(i32(-1i) * -26420i, firstTrailingBit(firstLeadingBit(7078i)), true) == abs(select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, -1i), vec2<i32>(var_2, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -20158i, -1i, 25401i), vec4<i32>(var_2, -2147483647i, 2147483647i, -55254i)), var_1.b)));
    let var_3 = -vec3<i32>(-_wgslsmith_div_i32(-2147483647i, -85633i), _wgslsmith_mod_i32(var_2 & -81884i, abs(var_2)) >> (u_input.b % 32u), -_wgslsmith_mod_i32(-117i | var_2, -var_2));
    return Struct_1(~(_wgslsmith_clamp_i32(var_3.x, var_2, var_3.x) >> (~1u % 32u)) != (i32(-1i) * -var_3.x), true);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = func_1();
    var_0 = Struct_1(all(vec4<bool>(true, select(var_0.a, arg_0.a, true), false, true)), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0.a, arg_0.a), vec4<bool>(false, false, var_0.a, false), true), vec4<bool>(false, false, false, var_0.a))));
    let var_1 = func_1();
    var_0 = var_1;
    var_0 = func_1();
    return abs(~(~firstTrailingBit(vec2<u32>(u_input.b, 1u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(~(~u_input.c), _wgslsmith_sub_u32(firstTrailingBit(u_input.a), ~u_input.b))), func_4(func_1()));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(193f, _wgslsmith_f_op_f32(select(-2519f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(881f)), _wgslsmith_f_op_f32(min(-664f, 924f))), func_2())))));
    let var_3 = -690f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(25009u, u_input.c, 1u), vec3<u32>(29271u, u_input.c, u_input.c), vec3<u32>(u_input.a, 36449u, 0u)), ~vec3<u32>(4294967295u, 4294967295u, var_0.x)), ~vec3<u32>(u_input.b, u_input.b, var_0.x)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(var_0, var_0), abs(4294967295u), var_0.x)), vec3<u32>(_wgslsmith_div_u32(var_0.x, u_input.c) & _wgslsmith_add_u32(var_0.x, countOneBits(25060u)), u_input.b, _wgslsmith_dot_vec2_u32(var_0, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 35878u), var_0))));
}

