struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true || arg_3.a, 579f);
    let var_1 = arg_3;
    var_0 = arg_3;
    let var_2 = select(_wgslsmith_add_vec3_u32(u_input.a.yxx, vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(55219u, 1u) & u_input.a.x, ~4294967295u)), firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(arg_0, 40495u), ~u_input.a.x, ~26138u)), !(!vec3<bool>(any(vec3<bool>(arg_3.a, false, var_0.a)), arg_3.a, all(vec3<bool>(arg_2.x, true, arg_3.a)))));
    let var_3 = var_1;
    return Struct_1(arg_3.b > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(410f))), _wgslsmith_f_op_f32(-var_0.b)), var_1.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-534f)) - _wgslsmith_f_op_f32(-327f * arg_1)) - 2258f), func_2(_wgslsmith_add_u32(54019u, _wgslsmith_sub_u32(90528u, arg_0.x)), _wgslsmith_f_op_f32(-arg_1), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, 0u >= arg_0.x)), Struct_1(any(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -260f), func_2(80077u, arg_1, vec2<bool>(true, false), Struct_1(true, arg_1)).b, true)))).b);
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = countOneBits(select(vec4<u32>(u_input.a.x, u_input.a.x, 48943u & u_input.a.x, 1u), ~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) << (~u_input.a % vec4<u32>(32u)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 43354u, u_input.a.x)) % vec4<u32>(32u)));
    let var_1 = func_2(9284u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -964f))) * _wgslsmith_f_op_f32(abs(arg_0))), vec2<bool>(func_2(~89451u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) - arg_0), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(all(vec4<bool>(true, false, false, true)), -2350f)).a, true), func_2(~_wgslsmith_dot_vec3_u32(u_input.a.yyx, _wgslsmith_clamp_vec3_u32(u_input.a.yyz, vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 4294967295u, var_0.x))), -164f, vec2<bool>(true, true), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f) + -364f))));
    let var_2 = var_1.a;
    let var_3 = ~(-_wgslsmith_mod_vec2_i32(-reverseBits(vec2<i32>(0i, 23377i)), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-5935i, -116i))));
    let var_4 = vec3<bool>(true, all(vec4<bool>((var_3.x | var_3.x) > var_3.x, (var_3.x ^ var_3.x) <= 24796i, any(select(vec2<bool>(false, false), vec2<bool>(false, false), var_2)), true)), false);
    return all(vec2<bool>(var_4.x, !var_4.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = func_2(4294967295u, arg_1.x, !select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true)), Struct_1(!(!(866f > arg_1.x)), _wgslsmith_f_op_f32(abs(-1340f))));
    let var_1 = 95979u;
    let var_2 = var_0;
    var var_3 = func_2(reverseBits(select(14057u, 47309u >> (~u_input.a.x % 32u), any(!vec3<bool>(var_0.a, false, true)))), arg_1.x, !(!select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), true && var_2.a)), Struct_1(func_4(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(func_3(vec2<u32>(var_1, 19651u), 744f)))), arg_1.x));
    let var_4 = var_0;
    return var_2;
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1078f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1044f * 1804f), _wgslsmith_f_op_f32(arg_0.b - 402f), true))) > arg_0.b, _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)));
    let var_1 = vec4<bool>(any(select(select(!vec4<bool>(var_0.a, arg_0.a, false, false), !vec4<bool>(arg_0.a, true, arg_0.a, false), var_0.a), select(vec4<bool>(var_0.a, false, false, true), !vec4<bool>(true, arg_0.a, var_0.a, arg_0.a), select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(arg_0.a, var_0.a, true, arg_0.a))), vec4<bool>(true, arg_0.a, true, !var_0.a))), (_wgslsmith_f_op_f32(ceil(arg_0.b)) < -962f) || !arg_0.a, func_2(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - arg_0.b), !(!vec2<bool>(arg_0.a, arg_0.a)), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -588f))).a, 0u <= min(u_input.a.x, ~0u));
    var var_2 = u_input.a;
    var var_3 = func_1(abs(_wgslsmith_mod_vec3_i32(-min(vec3<i32>(-17867i, 60211i, 978i), vec3<i32>(-40306i, 0i, 1i)), ~vec3<i32>(-33180i, -46899i, -18290i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -664f), arg_0.b, -201f) + vec3<f32>(_wgslsmith_f_op_f32(max(-349f, var_0.b)), 696f, _wgslsmith_f_op_f32(var_0.b * -1400f)))), abs(~countOneBits(vec4<u32>(1u, var_2.x, var_2.x, var_2.x))), ~0u);
    var_3 = var_0;
    return StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(-24839i, -1i)), (_wgslsmith_dot_vec2_i32(vec2<i32>(-12364i, 1i), vec2<i32>(2147483647i, 7137i)) ^ abs(18947i)) ^ 1i), _wgslsmith_f_op_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1((vec3<i32>(-1i) * -vec3<i32>(0i, 20512i, -52818i)) & -(vec3<i32>(-1i, -2147483647i, -40984i) << (vec3<u32>(89954u, 55110u, u_input.a.x) % vec3<u32>(32u))), vec3<f32>(-190f, 1000f, _wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(max(-774f, -1000f)))), vec4<u32>(~113683u, ~32562u, u_input.a.x, ~1u), 41761u));
}

