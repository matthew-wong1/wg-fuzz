struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.b, 1u, !(u_input.b > arg_0.a)), 3413u, ~(~_wgslsmith_mult_u32(arg_0.a, 42547u)), arg_2), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, 37803u, 38641u, arg_0.a)), abs(abs(vec4<u32>(u_input.c, 7355u, u_input.a, 12987u))), select(~vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), ~vec4<u32>(arg_0.a, 16069u, 4294967295u, 0u), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))) | vec4<u32>(arg_0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(5633u, 15620u, 71634u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(52240u, u_input.b, arg_0.a, 3604u), vec4<u32>(arg_0.a, 76667u, arg_0.a, arg_0.a))), firstLeadingBit(reverseBits(81496u)), ~(~52180u)));
    var_0 = u_input.a;
    var var_1 = Struct_1(arg_2);
    var var_2 = ~(~vec2<u32>(~u_input.a, ~1u)) >> (firstTrailingBit(~vec2<u32>(arg_0.a, 78389u) & _wgslsmith_div_vec2_u32(select(vec2<u32>(21271u, arg_0.a), vec2<u32>(46018u, arg_0.a), false), ~vec2<u32>(1u, var_1.a))) % vec2<u32>(32u));
    var_1 = Struct_1(reverseBits(var_1.a) >> (~(~arg_0.a) % 32u));
    return !select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(select(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), !(!any(vec3<bool>(false, true, true)))), true, 0i == ~(_wgslsmith_mult_i32(2147483647i, 0i) << (u_input.b % 32u)), true);
    let var_1 = !(!(!func_3(Struct_1(4294967295u), -11182i, 13040u & u_input.a)));
    let var_2 = Struct_1(4294967295u);
    var var_3 = _wgslsmith_f_op_f32(346f - _wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(-1f)));
    let var_4 = _wgslsmith_dot_vec3_i32(firstTrailingBit(abs(vec3<i32>(26642i, 1i, -1i) >> (vec3<u32>(3013u, 4294967295u, u_input.a) % vec3<u32>(32u))) | vec3<i32>(~(-1i), 26996i, -2147483647i)), (min(~vec3<i32>(-16960i, 3870i, 2264i), abs(vec3<i32>(36995i, -24146i, 57152i))) << (~(vec3<u32>(u_input.c, 8948u, 4294967295u) << (vec3<u32>(u_input.a, var_2.a, var_2.a) % vec3<u32>(32u))) % vec3<u32>(32u))) << (reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_2.a, var_2.a), vec3<u32>(var_2.a, 24729u, 77048u)), 0u >> (u_input.c % 32u), _wgslsmith_mod_u32(u_input.a, var_2.a))) % vec3<u32>(32u)));
    return Struct_1(~1u);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = ~(~u_input.a);
    let var_1 = func_2();
    let var_2 = vec4<bool>(false, _wgslsmith_f_op_f32(ceil(2489f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), false, false);
    var var_3 = var_1;
    var var_4 = Struct_1(~5622u);
    return vec3<bool>(all(!vec4<bool>(func_3(var_1, 2147483647i, var_1.a).x, select(var_2.x, false, var_2.x), true, var_2.x)), select(var_2.x, true, true), var_2.x & var_2.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    return !(arg_0.x != !func_1(1f).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(1000f), reverseBits(i32(-1i) * -2550i), func_2()) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(574f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(887f, -1361f), 1117f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-179f, -490f)))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1752f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-602f, 1493f)) + -449f))), 873f));
    let var_2 = u_input.c;
    let var_3 = func_2();
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, 401f, 1607f, -1000f) + vec4<f32>(357f, -567f, 646f, 1244f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(152f, 2157f, 1115f, 392f)))) + vec4<f32>(-866f, -876f, _wgslsmith_f_op_f32(max(1419f, 157f)), 831f)))), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, var_4.a << (31740u % 32u)), ~var_3.a), min(max(4294967295u, var_3.a) << (1u % 32u), firstLeadingBit(abs(88555u))) & var_3.a, -1000f, ~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_3.a, 40105u, 4294967295u, var_3.a), vec4<u32>(30095u, 1u, 12683u, var_4.a) & vec4<u32>(var_4.a, 10508u, var_4.a, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, var_3.a, var_4.a, u_input.c), ~vec4<u32>(26940u, var_3.a, var_4.a, u_input.a))));
}

