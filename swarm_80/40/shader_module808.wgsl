struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_0;
    global0 = u_input.b.x;
    var var_1 = arg_0;
    var var_2 = min(vec4<u32>(arg_0.a, var_0.a, abs(15662u >> (var_0.a % 32u)), var_0.a), ~(~(~select(vec4<u32>(var_0.a, 4294967295u, arg_0.a, arg_2.x), vec4<u32>(4294967295u, var_0.a, arg_0.a, var_1.a), false))));
    var_1 = Struct_1(_wgslsmith_div_u32(var_1.a, firstTrailingBit(~1u)));
    return _wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(~var_2.x, 21916u)), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_1.a), var_0.a & 1u) & 0u));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    global0 = i32(-1i) * -1i;
    global0 = arg_1.x;
    global0 = arg_1.x;
    var var_0 = max(vec2<u32>(~1u, ~max(_wgslsmith_sub_u32(7168u, 0u), ~1u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), vec2<u32>(func_3(Struct_1(29202u), 190f, vec3<u32>(21984u, 51037u, 0u)), select(3866u, 1u, false)) & min(~vec2<u32>(1u, 1u), vec2<u32>(23285u, 1u)), vec2<u32>(max(~7476u, 0u), 29132u)));
    let var_1 = var_0.x;
    return _wgslsmith_clamp_u32(22353u << (var_0.x % 32u), 25318u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 17205u, var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u)) ^ ~vec3<u32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_sub_vec3_u32(select(max(vec3<u32>(var_0.x, var_0.x, 76941u), vec3<u32>(var_0.x, 16224u, var_0.x)), abs(vec3<u32>(var_0.x, var_0.x, var_0.x)), select(true, false, true)), vec3<u32>(var_0.x, 45829u, ~47354u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = !(true | (-u_input.b.x <= min(19152i, abs(53902i))));
    var var_1 = _wgslsmith_sub_i32(-u_input.b.x, u_input.b.x);
    var var_2 = u_input.b.x;
    var_2 = 69525i;
    var var_3 = arg_1;
    return !vec2<bool>(true, all(select(!vec4<bool>(var_0, false, false, false), select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, true, var_0, false), var_0), !vec4<bool>(var_0, true, var_0, var_0))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> i32 {
    let var_0 = func_4(select(vec4<u32>(~(~1u), _wgslsmith_div_u32(max(92371u, 28032u), ~0u), ~(~4294967295u), 10037u), vec4<u32>(~firstTrailingBit(4294967295u), ~4294967295u, func_2(~arg_1.x, arg_1 << (vec2<u32>(96091u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<bool>(true, all(select(arg_0, vec2<bool>(arg_0.x, arg_0.x), true)), arg_0.x & arg_0.x, true)), Struct_1(32447u));
    let var_1 = ~min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(4294967295u), max(92206u, 2918u)), ~1u, 1u), max(~8708u, ~0u) >> (1u % 32u));
    return ~(-32671i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(1i, i32(-1i) * -min(func_1(vec2<bool>(true, false), vec2<i32>(u_input.c, u_input.a.x)), u_input.c));
    let var_0 = Struct_1(reverseBits(95725u | _wgslsmith_clamp_u32(28015u, 1u, abs(1u))));
    global0 = abs(_wgslsmith_sub_i32(~firstLeadingBit(2147483647i), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(18919u, 4294967295u), vec2<u32>(var_0.a, 13764u))), select(vec2<u32>(var_0.a, var_0.a) ^ vec2<u32>(var_0.a, 4294967295u), min(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_0.a, var_0.a)), false)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.a, var_0.a)), ~vec2<u32>(var_0.a, 4294967295u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_0.a, 67196u), vec2<u32>(16081u, var_0.a), vec2<bool>(true, true)), reverseBits(vec2<u32>(var_0.a, var_0.a))))), 10149u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(201f, 155f) + _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(f32(-1f) * -1453f), _wgslsmith_f_op_f32(1396f * _wgslsmith_f_op_f32(f32(-1f) * -1111f)));
}

