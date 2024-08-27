struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = i32(-1i) * -32324i;
    let var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(53577u, u_input.a.x) ^ ~u_input.a.zx, u_input.a.zy)), _wgslsmith_dot_vec4_u32(u_input.a, max(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a << (u_input.a % vec4<u32>(32u))) | vec4<u32>(abs(0u), ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 40693u)));
    var var_2 = min(1i, _wgslsmith_clamp_i32(1i, ~(-1i), 8370i));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(153f))))))));
    var var_4 = var_3;
    return min(-(~(-2147483647i)) >> (~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, var_1.x, 7953u), ~var_1.x) % 32u), var_0);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, -2147483647i, 0i, 40407i), vec4<i32>(23765i, -1i, 536i, -20409i), vec4<bool>(false, true, false, true)) << (vec4<u32>(u_input.a.x, ~44869u, 1u, u_input.a.x >> (4294967295u % 32u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(20296i, 0i, 1i, 8617i), vec4<i32>(27330i, 45759i, 1i, 14268i)), vec4<i32>(1i, 1i, 1i, 1i))), func_3(Struct_1(vec4<i32>(-26321i, -1i, -1i, 1i), true)) >= (~select(-1i, 0i, false) | firstTrailingBit(-29927i)));
    let var_1 = reverseBits(~0u);
    var var_2 = Struct_2(~var_0.a.x, ~(~(~(-1i))));
    var_2 = Struct_2(-var_0.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -1i, var_2.b), var_0.a.xxy), firstTrailingBit(2147483647i), 62177i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 26558i, countOneBits(2147483647i)), vec3<i32>(var_0.a.x, var_2.a, -2147483647i))));
    var_2 = Struct_2(-2147483647i, var_0.a.x);
    return Struct_2(var_2.b >> (1u % 32u), -(~var_2.b));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 30325u))), 1u, ~u_input.a.x, 0u ^ u_input.a.x), min(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 10950u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 17680u, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u))), select(19634u, u_input.a.x, arg_3.x) & u_input.a.x, 1u, ~u_input.a.x)));
    let var_1 = func_2(-1489f);
    var_0 = _wgslsmith_dot_vec2_u32(~u_input.a.zy, u_input.a.yx);
    var_0 = 14670u;
    var_0 = ~_wgslsmith_clamp_u32(6344u, _wgslsmith_add_u32(1u, ~39008u), 38551u) | u_input.a.x;
    return ~_wgslsmith_mult_i32(arg_2.b, var_1.b);
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_2(select(0i, -(~22198i), any(vec3<bool>(false, false, true)) & true) << ((5376u ^ abs(reverseBits(arg_0.x))) % 32u), _wgslsmith_sub_i32(min(-reverseBits(18821i), _wgslsmith_mult_i32(~(-1i), _wgslsmith_add_i32(0i, 19556i))), -2147483647i));
    var var_1 = firstTrailingBit(_wgslsmith_clamp_i32(-func_4(var_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, var_0.a, 0i), vec3<i32>(0i, -2147483647i, var_0.b)), func_2(-1000f), vec3<bool>(true, true, false)), var_0.b >> (u_input.a.x % 32u), var_0.a));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-832f, 882f))), 1f))));
    var var_3 = Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.a, -29827i, 41085i, var_0.b), select(vec4<i32>(-1i, 0i, -39782i, var_0.b), vec4<i32>(-68945i, 35239i, -1i, 0i), vec4<bool>(false, false, false, false))) | -(~vec4<i32>(var_0.b, 0i, 1i, var_0.b))), all(vec4<bool>(!all(vec4<bool>(false, true, false, true)), true, true, any(vec3<bool>(true, true, true)))));
    var_3 = Struct_1(var_3.a, any(!(!select(vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b), vec4<bool>(var_3.b, false, false, false), vec4<bool>(var_3.b, true, var_3.b, false)))));
    return 28655u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 6479i, 38823i, 2147483647i), select(select(vec4<i32>(1i, 1i, 1i, 2147483647i), vec4<i32>(7035i, 0i, 0i, 0i), vec4<bool>(true, true, false, true)), -vec4<i32>(2147483647i, 2147483647i, 2147483647i, 76937i), false)), vec4<i32>(~4821i >> (func_1(u_input.a.zy) % 32u), func_4(0i, vec3<i32>(1i, 1i, 0i), Struct_2(1i, -2147483647i), vec3<bool>(true, true, true)) << (u_input.a.x % 32u), 2147483647i, countOneBits(2147483647i << (u_input.a.x % 32u)))));
    var var_1 = countOneBits(1i | var_0.x);
    var var_2 = Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(-56099i, -var_0.x, 1i, var_0.x), _wgslsmith_div_vec4_i32(-var_0, var_0)), false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, -268f, -647f, 331f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1609f, 137f, -515f, -537f) + vec4<f32>(323f, -284f, 528f, -404f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(401f, -1336f, 382f, 2150f), vec4<f32>(-846f, -731f, -1426f, 1599f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1083f, -1000f, 823f, 642f) + vec4<f32>(1040f, -2007f, -111f, 489f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -1212f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1519f)), -477f)), 1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)))));
    var_2 = Struct_1(var_2.a, all(vec2<bool>(any(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b)), 58565u < reverseBits(u_input.a.x))));
    var var_4 = Struct_1(min(vec4<i32>(_wgslsmith_sub_i32(var_0.x, -2147483647i), var_0.x, _wgslsmith_clamp_i32(1i, abs(var_2.a.x), ~(-13447i)), var_0.x), var_0), false);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(min(-4289i, var_0.x) | ~var_0.x, var_4.a.x | (i32(-1i) * -2147483647i)), vec4<i32>(5622i, var_4.a.x, abs(var_2.a.x), var_2.a.x));
}

