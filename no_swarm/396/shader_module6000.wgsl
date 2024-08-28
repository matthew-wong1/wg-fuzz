struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, -340f)) * _wgslsmith_f_op_f32(floor(arg_1.a)))))), -1i);
    var var_1 = var_0;
    return _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, arg_1.b, -2147483647i), vec3<i32>(arg_1.b, -1i, 41229i))), ~max(~arg_1.b, 2147483647i), -40896i), firstLeadingBit(vec4<i32>(var_0.b, _wgslsmith_sub_i32(var_0.b, -arg_1.b), _wgslsmith_clamp_i32(select(5077i, 1i, false), arg_1.b, 2147483647i), 1i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<i32>(select(-2147483647i, ~(~u_input.a), -766f > _wgslsmith_f_op_f32(arg_1.a - arg_1.a)), -1i, countOneBits(-(~13564i)), 1i);
    var_0 = reverseBits(~_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 46734i), vec4<i32>(-2147483647i, -32680i, -1i, var_0.x))) ^ -(countOneBits(vec4<i32>(9250i, u_input.a, var_0.x, arg_1.b) << (vec4<u32>(6885u, 0u, 60281u, 0u) % vec4<u32>(32u))) | -abs(vec4<i32>(u_input.a, arg_1.b, arg_1.b, -2147483647i)));
    var_0 = func_3(arg_0, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-367f, -673f)))), 1i));
    var_0 = vec4<i32>(-(~(~abs(arg_1.b))), firstTrailingBit(max(_wgslsmith_sub_i32(6581i, 13243i) ^ arg_1.b, arg_1.b)), -2147483647i, arg_1.b);
    var_0 = vec4<i32>(firstLeadingBit(reverseBits(-1i)), -18699i, _wgslsmith_mult_i32(~(-var_0.x) ^ select(-40691i, abs(var_0.x), true && arg_0), func_3(false, arg_1).x), ~u_input.a);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> vec4<i32> {
    let var_0 = func_2(all(!vec2<bool>(any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(max(arg_1.x, arg_2))), 1401f)), -30587i));
    let var_1 = abs(arg_0);
    let var_2 = false;
    var var_3 = ~(-vec4<i32>(u_input.a, min(~1i, func_2(false, Struct_1(-1000f, u_input.a)).b), _wgslsmith_add_i32(func_2(var_2, var_0).b, -25807i), abs(max(var_0.b, -1i))));
    var var_4 = _wgslsmith_mod_vec4_u32(~(~(~(vec4<u32>(var_1, 2718u, var_1, 0u) & vec4<u32>(1u, var_1, 4294967295u, arg_0)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(10305u, 3463u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1, var_1, arg_0), vec3<u32>(arg_0, 57230u, arg_0))), ~_wgslsmith_add_vec3_u32(vec3<u32>(9236u, 17912u, 11205u), vec3<u32>(arg_0, arg_0, 4294967295u))), ~arg_0 ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(14849u, var_1)), _wgslsmith_mult_u32(arg_0, var_1), arg_0));
    return abs(~vec4<i32>(0i, var_3.x, _wgslsmith_sub_i32(var_0.b, var_0.b), 62823i) ^ select(-(vec4<i32>(var_3.x, var_3.x, 36904i, 0i) & vec4<i32>(1i, 8572i, var_3.x, var_0.b)), vec4<i32>(i32(-1i) * -17165i, _wgslsmith_mod_i32(2147483647i, -2147483647i), i32(-1i) * -5439i, _wgslsmith_mod_i32(-4831i, var_0.b)), true || (arg_0 <= 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -6044i);
    let var_1 = func_1(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32250u, 0u), abs(vec3<u32>(86494u, 1u, 10029u))), 27461u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1438f, -896f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1000f, var_0.a) - vec3<f32>(-591f, var_0.a, var_0.a)), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2286f, -840f, 490f))))), _wgslsmith_div_f32(var_0.a, var_0.a));
    var var_2 = false | (!all(vec4<bool>(false, true, false, false)) || false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(184f, 1590f)), -894f, select(true, false, false))) + _wgslsmith_f_op_f32(min(-790f, _wgslsmith_f_op_f32(min(277f, var_0.a))))), -1000f)), var_0.b);
    var_3 = var_0;
    var_3 = func_2(true, func_2(true, func_2(true, func_2(true, Struct_1(var_0.a, var_3.b)))));
    var var_4 = ~_wgslsmith_add_vec3_i32(-vec3<i32>(12133i, 2147483647i, _wgslsmith_mult_i32(var_0.b, 56108i)), vec3<i32>(_wgslsmith_div_i32(var_3.b, -u_input.a), -1i, 2147483647i));
    let var_5 = all(!select(vec2<bool>(false, any(vec4<bool>(false, true, false, false))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(true, true)));
    var_2 = (!var_5 | !all(vec3<bool>(var_5, var_5, var_5))) || all(!select(vec3<bool>(var_5, true, var_5), vec3<bool>(var_5, var_5, false), !var_5));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -vec2<i32>(30406i, var_0.b ^ -1i), 1000f, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, 1u), _wgslsmith_clamp_u32(0u, 3597u, 1u), ~36095u), vec3<u32>(1u, _wgslsmith_div_u32(46851u, 74255u), ~1u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), var_4.x, _wgslsmith_f_op_f32(floor(-433f)));
}

