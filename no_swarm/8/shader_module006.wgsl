struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = Struct_1(min(select(vec3<u32>(4294967295u, _wgslsmith_div_u32(22217u, arg_1), u_input.a.x >> (u_input.a.x % 32u)), max(abs(vec3<u32>(u_input.a.x, 9142u, 10728u)), vec3<u32>(4294967295u, arg_1, u_input.a.x)), false), ~(~vec3<u32>(4294967295u, 52739u, 1u))), !vec3<bool>(false, all(vec2<bool>(arg_0.x, true)), any(select(vec3<bool>(arg_0.x, true, arg_0.x), arg_0, arg_0.x))), select(vec2<bool>(true, arg_0.x), !arg_0.yz, false), 1663f, !select(!(!arg_0.x), !arg_0.x, true));
    var var_1 = select(!(!(!var_0.b)), var_0.b, arg_0);
    var_1 = select(vec3<bool>(!var_0.b.x, true, any(!arg_0)), vec3<bool>(false, !var_1.x, var_1.x), true);
    var_1 = var_0.b;
    var_1 = var_0.b;
    return var_0.a.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = arg_2.d;
    var var_2 = arg_3;
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_add_u32(func_3(vec3<bool>(arg_2.c.x, arg_2.b.x, arg_2.c.x), arg_3.a.x) >> (~8751u % 32u), 60653u), 12087u, var_2.a.x), !select(vec3<bool>(all(vec2<bool>(arg_2.b.x, true)), all(vec4<bool>(arg_3.c.x, true, false, arg_3.c.x)), !var_2.b.x), !(!vec3<bool>(true, arg_0.x, var_2.b.x)), !(!var_0.b)), vec2<bool>(false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.d, _wgslsmith_f_op_f32(var_2.d + -516f))) - _wgslsmith_f_op_f32(f32(-1f) * -538f)) + -447f), true);
    var_2 = var_0;
    return ~1u;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(u_input.a.x, ~func_2(arg_1.b, 4514u, arg_1, arg_1), u_input.a.x);
    let var_1 = ~1u;
    let var_2 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-8946i, _wgslsmith_add_i32(1i, select(2147483647i, 0i, false)), max(reverseBits(-27329i), -14632i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), -(~_wgslsmith_add_vec3_i32(vec3<i32>(4386i, -9150i, 13838i), vec3<i32>(0i, 13394i, 41818i))), ~(~vec3<i32>(1i, 1i, 1i))));
    var var_3 = abs(-max(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) | vec4<i32>(45691i, 1i, -1i, var_2.x), vec4<i32>(var_2.x, var_2.x, 2147483647i, 0i) ^ vec4<i32>(var_2.x, var_2.x, var_2.x, -1i))) >> ((vec4<u32>(arg_1.a.x, ~1u, ~0u, ~1u) ^ ~abs(~vec4<u32>(var_1, 19160u, arg_1.a.x, u_input.a.x))) % vec4<u32>(32u));
    let var_4 = !arg_1.b.yy;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~u_input.a.x), u_input.a.x, ~select(func_1(-1249f, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<bool>(false, false, false), vec2<bool>(true, false), 880f, false), u_input.a.x, -1000f), 15589u, true)), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(5672u, 4294967295u, 4294967295u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 31668u, u_input.a.x), vec3<u32>(4294967295u, 3779u, u_input.a.x), reverseBits(vec3<u32>(4294967295u, u_input.a.x, 4294967295u))) % vec3<u32>(32u))));
    let var_1 = ~vec2<u32>(var_0.x, 0u);
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 46673u, select(var_0.x, var_1.x, true)), reverseBits(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 20397u)))), var_0), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(1569f * _wgslsmith_div_f32(-508f, -1000f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(274f, -1126f, true)) - _wgslsmith_f_op_f32(-2035f - -507f))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_f_op_f32(ceil(-573f)), true);
    let var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(~18946u, var_0.x, firstLeadingBit(0u)))), ~select(~(~var_0), _wgslsmith_div_vec3_u32(var_0, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 0u, 1138u), var_0)), var_2.e));
    var var_4 = var_2;
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(-21784i, -16616i), -32943i)));
}

