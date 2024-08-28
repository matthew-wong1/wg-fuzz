struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    global0 = vec2<u32>(arg_1.a.x, global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(265f, -1745f), vec2<f32>(-2293f, -2780f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(298f, -1301f), vec2<f32>(409f, -694f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1979f, 2379f) + vec2<f32>(-1094f, -339f))))))))));
    let var_1 = reverseBits(~(~vec4<u32>(global0.x, ~global0.x, ~arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17490u, arg_1.a.x, 1u), vec4<u32>(global0.x, 23390u, 23789u, global0.x)))));
    var var_2 = (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.xz, vec2<u32>(4294967295u, global0.x)), vec2<u32>(var_1.x, 0u)), global0.x) ^ ~global0.x) > ~(~var_1.x ^ ~(0u << (var_1.x % 32u)));
    var var_3 = firstLeadingBit(41542u) < global0.x;
    return _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x))))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a.x, _wgslsmith_div_u32(max(firstTrailingBit(47132u), reverseBits(0u)), ~4294967295u)), _wgslsmith_mult_vec2_u32(~(~arg_3.a.yx), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2.a.x), arg_3.a.yz))));
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, global0.x), arg_2.a.zz), abs(arg_2.a.x)), vec4<u32>(_wgslsmith_sub_u32(1u, arg_2.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), arg_3.a), 45938u, arg_2.a.x)), _wgslsmith_mult_u32(arg_3.a.x, 68191u)) & _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(arg_3.a.xy), arg_3.a.zy, firstLeadingBit(vec2<u32>(33713u, arg_2.a.x))), ~arg_3.a.yz), arg_3.a.yz);
    global0 = (firstTrailingBit(arg_3.a.yy) >> (vec2<u32>(arg_2.a.x, abs(~arg_2.a.x)) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_sub_u32(0u, ~global0.x), global0.x);
    let var_0 = select(arg_1.x, any(vec4<bool>(false, arg_1.x && arg_1.x, arg_3.a.x != global0.x, !arg_1.x)) && !(26068i >= _wgslsmith_div_i32(u_input.a, -2147483647i)), all(arg_1));
    let var_1 = select(2147483647i & firstLeadingBit(reverseBits(-u_input.a)), u_input.a & _wgslsmith_mod_i32(u_input.a, -u_input.a), true);
    return func_2(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(-59291i, u_input.a, u_input.a) | vec3<i32>(u_input.a, 2147483647i, 0i), Struct_1(vec3<u32>(global0.x, global0.x, 52570u))))) + -560f), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), !all(vec2<bool>(true, true))), func_2(Struct_1(~reverseBits(vec3<u32>(0u, 4294967295u, global0.x)))), Struct_1(~(vec3<u32>(global0.x, global0.x, global0.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(51u, 27788u, global0.x), vec3<u32>(0u, global0.x, 1u)))));
    var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), var_0.a), 37439u), ~vec3<u32>(74149u, 4294967295u, 2498u), select(select(vec3<u32>(6493u, 4294967295u, 46307u), var_0.a, vec3<bool>(false, false, false)), ~var_0.a, select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), vec3<u32>(~(~7041u), 17934u, ~(~17512u))));
    var var_1 = func_2(Struct_1(var_0.a));
    let var_2 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a << (var_1.a.x % 32u), u_input.a, ~_wgslsmith_div_i32(2290i, u_input.a)) & _wgslsmith_clamp_vec3_i32(min(firstTrailingBit(vec3<i32>(1i, 1i, -2147483647i)), ~vec3<i32>(u_input.a, 6990i, u_input.a)), vec3<i32>(u_input.a, -41347i, u_input.a), -(vec3<i32>(-2147483647i, 1i, u_input.a) >> (vec3<u32>(0u, 4294967295u, var_2.a.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec2_u32(~(~var_0.a.xz), func_3(_wgslsmith_f_op_f32(487f * -737f), vec4<bool>(false, true, true, false), var_2, var_2).a.yz >> (vec2<u32>(1u, 0u << (var_1.a.x % 32u)) % vec2<u32>(32u))), vec4<f32>(715f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(271f))))), 919f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(-261f))))), ~vec3<u32>(select(1u, var_1.a.x, any(vec4<bool>(true, true, false, true))), _wgslsmith_sub_u32(88093u, 18085u), min(~var_1.a.x, var_0.a.x)));
}

