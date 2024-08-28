struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(536f - 2216f), -109f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1507f))))))));
    return 59053i;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_u32(~abs(4294967295u), u_input.a);
    let var_1 = Struct_1(all(vec3<bool>(~arg_3 <= (i32(-1i) * -23471i), true, select(all(vec3<bool>(arg_1, false, true)), true, arg_1 | arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))))));
    var var_2 = any(vec2<bool>(!var_1.a, !var_1.a));
    var_2 = var_1.a;
    var var_3 = vec2<i32>(-1i, _wgslsmith_div_i32(-firstTrailingBit(-5613i), ~(~(-8962i))));
    return _wgslsmith_div_vec3_u32(~(~vec3<u32>(firstTrailingBit(var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 89875u, 4294967295u), vec3<u32>(14769u, u_input.a, 65843u)), u_input.a)), ~vec3<u32>(select(var_0, _wgslsmith_div_u32(16319u, 39957u), true), 4294967295u, 10636u));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = vec4<bool>(false, !all(vec2<bool>(true, true)), false, false);
    var var_1 = ~max(~(~0i), firstTrailingBit(2147483647i));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, countOneBits(arg_0)), ~arg_0, ~arg_0) >> ((vec3<u32>(u_input.b, 0u, u_input.a) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, 226u), vec3<u32>(arg_0, 0u, arg_0)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~min(vec3<u32>(u_input.a, arg_0, 15560u), vec3<u32>(1u, arg_0, 1u)), func_3(_wgslsmith_f_op_f32(-145f - -890f), select(var_0.x, var_0.x, var_0.x), 1831f, min(1i, 0i))), (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 9640u), vec3<u32>(u_input.b, arg_0, u_input.b), vec3<u32>(4294967295u, u_input.a, 1u)) & select(vec3<u32>(1u, arg_0, u_input.b), vec3<u32>(u_input.a, 76199u, u_input.a), var_0.zwz)) << (max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 22859u, 6005u), vec3<u32>(4294967295u, u_input.b, u_input.a)), select(vec3<u32>(u_input.b, u_input.a, arg_0), vec3<u32>(u_input.a, 4294967295u, u_input.b), var_0.yxx)) % vec3<u32>(32u))));
    var_2 = ~func_3(-1917f, var_0.x, 1299f, func_1());
    var_1 = (-23995i << (var_2.x % 32u)) << (arg_0 % 32u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~(~u_input.a), u_input.b);
    var_0 = u_input.b;
    let var_1 = vec3<i32>(-8357i, max(_wgslsmith_clamp_i32(-36285i, -52088i, 0i) ^ _wgslsmith_sub_i32(1i, 0i), _wgslsmith_mult_i32(36927i, -1i)), func_1());
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~(~(vec2<u32>(u_input.b, u_input.a) << (vec2<u32>(4294967295u, 11274u) % vec2<u32>(32u)))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b) >> (vec2<u32>(24868u, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, 0u) >> (vec2<u32>(53465u, 2193u) % vec2<u32>(32u)))), vec2<u32>(~1u, ~(~u_input.a)), select(~select(vec2<u32>(u_input.a, 1u), select(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, u_input.a), false), func_2(19819u)), firstLeadingBit(~firstTrailingBit(vec2<u32>(65188u, u_input.a))), vec2<bool>(true || all(vec2<bool>(true, false)), false)));
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(2483f))))), _wgslsmith_div_f32(3233f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -431f)))), 336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(step(2326f, -645f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + 224f) * -375f))));
}

