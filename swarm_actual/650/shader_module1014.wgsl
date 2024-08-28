struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(-36668i, abs(~select(vec4<i32>(-35965i, 1i, -1i, 2561i), vec4<i32>(-10367i, -28435i, 0i, 24447i), vec4<bool>(false, false, false, false)) & vec4<i32>(-2147483647i, 1i, -37764i, -2147483647i)));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(3547i, 46172i & (var_0.b.x ^ abs(var_0.a)), var_0.a), var_0.b.wzz);
    let var_2 = 10169u ^ u_input.b;
    let var_3 = ~(max(vec3<i32>(var_1.x, var_0.b.x, min(6997i, 35650i)), -var_1) & var_1);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-564f + 201f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1234f - -1081f))))));
    return ~var_0.b;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = ~(~_wgslsmith_clamp_u32(~63094u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 88201u), 4294967295u), u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-859f)), 1f, _wgslsmith_div_f32(-397f, 611f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-465f, -1579f, -173f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(237f, 545f, -847f) + vec3<f32>(-1584f, 1123f, 163f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-456f, _wgslsmith_f_op_f32(min(-934f, 226f)), _wgslsmith_f_op_f32(593f - -179f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1044f, -1661f, 1000f)))))));
    let var_2 = arg_0;
    let var_3 = -32270i;
    let var_4 = true;
    return any(select(select(vec4<bool>(any(vec3<bool>(var_4, var_4, var_4)), var_4, var_4, true), !select(vec4<bool>(var_4, var_4, false, true), vec4<bool>(true, false, var_4, true), var_4), false), !(!vec4<bool>(var_4, var_4, var_4, true)), select(vec4<bool>(all(vec3<bool>(var_4, true, true)), all(vec2<bool>(false, true)), any(vec3<bool>(var_4, var_4, true)), var_4), select(!vec4<bool>(var_4, false, var_4, var_4), select(vec4<bool>(true, false, var_4, var_4), vec4<bool>(true, var_4, true, var_4), vec4<bool>(false, var_4, var_4, var_4)), select(vec4<bool>(var_4, true, var_4, true), vec4<bool>(true, var_4, false, true), vec4<bool>(var_4, var_4, var_4, var_4))), !select(vec4<bool>(true, false, false, var_4), vec4<bool>(var_4, true, var_4, false), vec4<bool>(var_4, true, false, var_4)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = Struct_1(arg_0.a, func_2() ^ _wgslsmith_add_vec4_i32(-arg_0.b, ~vec4<i32>(-18129i, arg_0.a, arg_0.b.x, 0i)));
    let var_1 = Struct_1(-2147483647i, arg_0.b);
    var var_2 = firstTrailingBit(22859u);
    var var_3 = false;
    var_3 = any(select(vec4<bool>((u_input.b < 22636u) & arg_1, true, all(!vec2<bool>(false, arg_1)), true), select(vec4<bool>(true, 30157i > var_1.a, false, func_3(var_0)), select(!vec4<bool>(true, arg_1, false, arg_1), !vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, true, false, arg_1)), !(!vec4<bool>(false, arg_1, arg_1, true))), all(select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), true))));
    return _wgslsmith_mult_i32(arg_0.a, var_1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(arg_0.b.x, 41184i), arg_0.b);
    var var_1 = Struct_1(-var_0.b.x, var_0.b);
    return Struct_1(arg_0.a, _wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, -1i, -1i, arg_1.x)), vec4<i32>(-_wgslsmith_mod_i32(59362i, arg_0.a), 1i, -(-2147483647i << (u_input.a % 32u)), 34965i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_4(Struct_1(~1i, countOneBits(-vec4<i32>(-25191i, -16071i, 2147483647i, 2147483647i))), firstTrailingBit(vec3<i32>(10620i, func_1(Struct_1(-36004i, vec4<i32>(-2147483647i, -39402i, 2147483647i, 25502i)), var_0 == var_0), min(-44009i, -41671i))), var_0);
    var_1 = Struct_1(-var_1.a, var_1.b);
    var var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.b), u_input.a), u_input.a, u_input.a, ~1u), vec4<u32>(~firstTrailingBit(4294967295u), _wgslsmith_sub_u32(countOneBits(1u), u_input.b), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 76673u, 19920u), vec3<u32>(42574u, 30672u, u_input.a) | vec3<u32>(1u, u_input.b, u_input.b))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(ceil(1951f)), _wgslsmith_div_f32(901f, -487f), 233f))), vec4<f32>(980f, _wgslsmith_f_op_f32(f32(-1f) * -1204f), 1290f, 110f)));
    var var_4 = !(!all(!vec4<bool>(false, var_0, false, var_0)));
    var_2 = ~abs(abs(vec4<u32>(abs(u_input.a), 27289u, 4294967295u, _wgslsmith_div_u32(var_2.x, u_input.a))));
    let var_5 = Struct_1(_wgslsmith_sub_i32(min(~59339i, var_1.a), var_1.a), var_1.b);
    var_1 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(9906u, _wgslsmith_mult_u32(countOneBits(4294967295u), ~u_input.a), abs(15246u))), vec2<i32>(i32(-1i) * -var_1.b.x, abs(abs(var_1.a))));
}

