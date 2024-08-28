struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(36854u, 4294967295u, 53213u), 35497u, ~4788u) | countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(11855u, 35156u), vec2<u32>(0u, 80891u))), firstLeadingBit(abs(~10263u)), ~min(1u, _wgslsmith_mult_u32(76763u, 1u)), ~(~_wgslsmith_div_u32(4294967295u, 1u)));
    let var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(select(true, true, true), any(vec2<bool>(false, true)), false, true)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, 0i >= u_input.b.x, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), ~var_0.x) > (max(71851u, var_0.x) << (~117078u % 32u))), vec4<bool>(all(vec3<bool>(true, 72771u < var_0.x, true)), any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), _wgslsmith_f_op_f32(round(-1180f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(178f))));
    var var_2 = Struct_1(arg_1.x, select(!select(vec2<bool>(var_1.x, false), select(var_1.zw, var_1.yx, true), !var_1.x), vec2<bool>(true, any(var_1.xwz) && var_1.x), var_1.yz));
    var_2 = Struct_1(_wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.x, 0i), u_input.a)), -2147483647i), vec2<bool>(all(var_1.xy), ~_wgslsmith_sub_u32(var_0.x, var_0.x) != min(62844u, 7478u)));
    var var_3 = arg_0;
    return !(!(!var_1));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = select(vec4<bool>(false, false, arg_2.a, arg_2.a), select(select(select(vec4<bool>(true, false, false, false), func_3(vec2<f32>(arg_1.x, -470f), u_input.b), arg_3.a & true), select(select(vec4<bool>(arg_3.a, true, arg_2.a, false), vec4<bool>(true, false, true, true), arg_0.a), vec4<bool>(false, arg_0.a, false, arg_0.a), false), any(!vec3<bool>(arg_2.a, false, arg_3.a))), func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2084f, 557f))), select(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(-9644i, u_input.b.x, 0i, u_input.a)), select(vec4<bool>(arg_2.a, arg_3.a, true, true), vec4<bool>(arg_0.a, false, arg_0.a, false), false))), vec4<bool>(all(!vec3<bool>(false, false, arg_2.a)), true, all(select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, arg_0.a), false)), true)), !vec4<bool>(all(!vec4<bool>(arg_3.a, true, true, false)), select(true, true, false), arg_2.a || true, select(arg_3.a, true, !arg_3.a)));
    return !select(!var_0.zz, vec2<bool>(true, true), var_0.yw);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec2<u32>(4294967295u, 25502u);
    let var_1 = Struct_1(~firstTrailingBit(u_input.a), !select(func_2(Struct_3(arg_0.a), vec2<f32>(-400f, -595f), Struct_3(false), arg_0), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), true)));
    var var_2 = reverseBits(abs(select(reverseBits(u_input.b.yz), vec2<i32>(0i, 1i), arg_0.a | arg_0.a)) | vec2<i32>(-1i, var_1.a ^ -u_input.a));
    let var_3 = max(~(~abs(4294967295u)), reverseBits(~0u));
    let var_4 = false;
    return Struct_2(~abs(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 39206u), vec3<u32>(231u, 1u, 4678u)), 1u), 1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, 20880u)), firstLeadingBit(~vec3<u32>(76401u, 0u, 13479u))));
    let var_1 = Struct_3(!(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36791u, 123433u, var_0.x), vec4<u32>(19229u, var_0.x, 20146u, var_0.x)), ~vec4<u32>(var_0.x, 33693u, 75028u, var_0.x)) < var_0.x));
    var var_2 = true | ((-317f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(281f)), _wgslsmith_f_op_f32(2117f - 105f))) | all(!vec3<bool>(true, var_1.a, false)));
    let var_3 = func_1(var_1);
    var var_4 = Struct_1(_wgslsmith_sub_i32(min(u_input.a, func_1(Struct_3(false)).a) | -16596i, u_input.a), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), -278f), ~(~vec4<i32>(u_input.b.x, u_input.b.x, var_3.a, var_3.a))).xz);
    var var_5 = -1205f;
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-110f)) * _wgslsmith_f_op_f32(min(2161f, 2310f)))))));
    var_2 = all(select(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, -1000f) + _wgslsmith_div_vec2_f32(vec2<f32>(1576f, 1000f), vec2<f32>(-1939f, 1810f))), vec4<i32>(func_1(var_1).a, u_input.a, abs(0i), 0i)), vec4<bool>(true, true, select(true, 28865u > var_0.x, !var_1.a), var_4.b.x), select(vec4<bool>(false, var_1.a, !var_4.b.x, true), vec4<bool>(!var_1.a, false, all(vec4<bool>(true, var_1.a, var_4.b.x, var_4.b.x)), false), func_3(vec2<f32>(696f, -2083f), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, -1i), u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, 1i);
}

