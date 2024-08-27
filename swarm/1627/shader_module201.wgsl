struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    let var_0 = select(false, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), !all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)));
    global0 = reverseBits(~(u_input.b & vec4<u32>(u_input.b.x, 119197u, select(2172u, 43045u, var_0), ~u_input.b.x)));
    global0 = ~firstLeadingBit(~(~(~vec4<u32>(16492u, u_input.b.x, 4294967295u, 10659u))));
    global0 = u_input.b;
    global0 = ~(~min(u_input.b, abs(~vec4<u32>(global0.x, 4294967295u, 4294967295u, u_input.b.x))));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: bool) -> f32 {
    global0 = func_3();
    var var_0 = all(select(select(vec3<bool>(true, arg_3, true), !select(vec3<bool>(true, false, arg_3), vec3<bool>(true, false, false), arg_3), select(!vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(arg_3, arg_3, false), !arg_3)), vec3<bool>(false, arg_3, all(vec2<bool>(false, arg_3))), all(vec2<bool>(true, true)) & true));
    var var_1 = 26238i;
    var_0 = arg_3;
    global0 = vec4<u32>(max(~u_input.b.x, arg_2), _wgslsmith_mult_u32(arg_2, u_input.b.x), min(~26053u, 9421u & global0.x), _wgslsmith_add_u32(~28357u, ~(~global0.x >> (4294967295u % 32u))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), -215f))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1804f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(-(~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), global0.x, true)))));
    let var_1 = 251f;
    let var_2 = 34961u;
    global0 = countOneBits(vec4<u32>(abs(~var_2), 2354u, 0u, ~_wgslsmith_sub_u32(u_input.b.x, abs(1u))));
    var var_3 = ~(-reverseBits(vec4<i32>(-u_input.a.x, u_input.a.x, min(-1i, -2147483647i), select(u_input.a.x, 2147483647i, true))));
    return _wgslsmith_sub_u32(firstTrailingBit(15560u), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.b, countOneBits(u_input.b ^ vec4<u32>(global0.x, 1u, u_input.b.x, u_input.b.x))), u_input.b);
    global0 = ~vec4<u32>(u_input.b.x, firstLeadingBit(~global0.x), min(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 67955u), vec2<u32>(global0.x, 25395u))), _wgslsmith_div_u32(15523u, 40002u)), max(u_input.b.x, ~u_input.b.x));
    global0 = ~vec4<u32>(_wgslsmith_div_u32(global0.x, func_1()) ^ 37835u, (u_input.b.x >> (min(14814u, u_input.b.x) % 32u)) >> (u_input.b.x % 32u), ~(u_input.b.x ^ countOneBits(global0.x)), 1u);
    global0 = ~abs(func_3());
    var var_0 = Struct_1(min(u_input.a, vec3<i32>(max(u_input.a.x, min(u_input.a.x, u_input.a.x)), ~countOneBits(-2147483647i), _wgslsmith_div_i32(-4997i, u_input.a.x ^ 2318i))), vec3<i32>(2147483647i, firstLeadingBit(_wgslsmith_add_i32(~u_input.a.x, -1i)), _wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(abs(0i), _wgslsmith_div_i32(-1i, u_input.a.x), u_input.a.x), -2147483647i)));
    let var_1 = Struct_1(vec3<i32>(var_0.a.x, 9661i, ~(-38324i)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, countOneBits(max(vec2<i32>(u_input.a.x, -1i), u_input.a.xx) | -var_0.b.zz));
}

