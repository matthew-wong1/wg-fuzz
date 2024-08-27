struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = !(global0.x < 48256u);
    var var_2 = arg_0;
    var_2 = var_0;
    let var_3 = Struct_1(-1000f, ~firstTrailingBit(22523u));
    return _wgslsmith_f_op_f32(f32(-1f) * -902f);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec4<u32> {
    var var_0 = arg_0.ww;
    var_0 = vec2<bool>(!arg_0.x, arg_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - -807f), arg_1.a, -206f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, 398f, arg_2, arg_2))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1236f, 567f, arg_2, arg_1.a) - vec4<f32>(-675f, arg_1.a, arg_1.a, arg_2))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, 612f, arg_1.a, 1000f)))))))));
    var_0 = vec2<bool>(min(_wgslsmith_mod_u32(arg_1.b, arg_3) | 1u, select(u_input.e.x, _wgslsmith_mod_u32(u_input.b, arg_3), var_0.x | arg_0.x)) >= ~u_input.e.x, !(var_0.x | arg_0.x));
    var var_2 = _wgslsmith_div_u32(firstLeadingBit(~_wgslsmith_mult_u32(global0.x, abs(global0.x))), arg_1.b);
    return ~abs(vec4<u32>(6408u >> (select(4294967295u, arg_1.b, false) % 32u), _wgslsmith_div_u32(reverseBits(1u), abs(arg_3)), arg_3, countOneBits(~arg_1.b)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(0u, 52322u, _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(5515u, arg_3.b, 1u), countOneBits(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e))), global0.x), func_3(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(129f - arg_0.a), arg_0.a, false)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_3, Struct_1(-342f, 4294967295u), arg_0.a))))), arg_2.b));
    let var_0 = _wgslsmith_div_i32(max(u_input.a, select(i32(-1i) * -1i, u_input.c, true)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -5520i, u_input.c), -vec3<i32>(u_input.c, -57740i, u_input.c)), -(~u_input.c))) << (arg_2.b % 32u);
    var var_1 = ~(-1i ^ _wgslsmith_mod_i32(u_input.a, ~(var_0 >> (12815u % 32u))));
    let var_2 = vec3<u32>(global0.x, ~0u, firstLeadingBit(20425u >> ((_wgslsmith_mult_u32(arg_2.b, global0.x) >> (~global0.x % 32u)) % 32u)));
    let var_3 = arg_1;
    return ~(~(global0.x | u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_add_u32(abs(global0.x), global0.x)));
    global0 = ~vec4<u32>(~func_1(var_1.a, _wgslsmith_f_op_f32(ceil(364f)), var_1.a, var_1.a), 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 16823u, 0u, var_1.a.b) >> (u_input.e % vec4<u32>(32u)), ~u_input.e), u_input.e), reverseBits(firstLeadingBit(0u)));
    var var_2 = Struct_2(Struct_1(var_1.a.a, var_1.a.b));
    let var_3 = Struct_1(1210f, func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.a.a, 1144f)))), var_1.a.b << (min(var_2.a.b, 0u) % 32u)), -164f, Struct_1(1000f, ~func_1(Struct_1(-792f, global0.x), -1665f, var_2.a, Struct_1(1054f, var_2.a.b))), var_1.a));
    var_2 = Struct_2(var_1.a);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-228f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)))), _wgslsmith_mult_u32(38490u, _wgslsmith_mod_u32(global0.x, ~(~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, 2147483647i << (u_input.d % 32u), _wgslsmith_clamp_i32(-39672i, -24242i, u_input.a), u_input.a), -(vec4<i32>(u_input.a, 2869i, u_input.a, u_input.c) << (vec4<u32>(0u, u_input.b, var_2.a.b, var_1.a.b) % vec4<u32>(32u))))));
}

