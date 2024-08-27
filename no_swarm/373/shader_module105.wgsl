struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec3<bool>(arg_0.a != true, true, true);
    var_0 = select(select(vec3<bool>(true, var_0.x, all(vec3<bool>(true, true, var_0.x))), vec3<bool>(var_0.x, arg_0.a, true), !vec3<bool>(true, true, arg_0.a)), select(!(!vec3<bool>(var_0.x, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, var_0.x, true), vec3<bool>(arg_0.a, var_0.x, var_0.x)), arg_0.a), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, arg_0.a, false), vec3<bool>(var_0.x, false, false), var_0.x), !vec3<bool>(false, var_0.x, false), var_0.x), vec3<bool>(true, false, var_0.x), all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(arg_0.a, true, arg_0.a), true))), !select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, var_0.x, arg_0.a), vec3<bool>(true, false, false), vec3<bool>(arg_0.a, var_0.x, arg_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, false, true), vec3<bool>(var_0.x, false, arg_0.a)))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_dot_vec3_i32(min(reverseBits(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, var_1, 2147483647i), vec3<i32>(u_input.a.x, -63872i, -1i)))), min(-vec3<i32>(var_1, 1i, var_1), min(vec3<i32>(u_input.b, -2147483647i, 20212i), vec3<i32>(0i, 1i, u_input.a.x))) ^ select(vec3<i32>(61714i, var_1, u_input.b), countOneBits(vec3<i32>(-2088i, 1i, 2147483647i)), arg_0.a)), -select(-abs(vec3<i32>(u_input.b, var_1, var_1)), ~(-vec3<i32>(u_input.b, u_input.a.x, u_input.b)), select(vec3<bool>(false, false, true), !vec3<bool>(var_0.x, var_0.x, false), var_1 > u_input.b)));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(~0i, u_input.b), _wgslsmith_div_i32(108376i, -45502i) | -u_input.a.x, 2147483647i), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, var_1, var_1), vec3<i32>(var_1, var_1, 0i) << (vec3<u32>(48778u, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(27957i, 0i, u_input.b))) >> (_wgslsmith_mod_u32(select(~1u, 11113u, true), 58290u) % 32u);
    return var_3 > _wgslsmith_sub_i32(-4829i, ~(~_wgslsmith_div_i32(-40259i, var_3)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = any(!vec4<bool>((-8780i < u_input.a.x) && arg_0.a, arg_0.a, func_3(Struct_1(arg_0.a)), !(arg_0.a && false)));
    var var_1 = arg_0;
    var_0 = all(!vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), false)), (true & var_1.a) && true));
    var_0 = true;
    let var_2 = arg_1;
    return Struct_1(all(select(select(!vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(false, var_1.a, arg_0.a, false), any(vec3<bool>(false, arg_0.a, true))), select(select(vec4<bool>(false, true, false, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, true, arg_0.a)), vec4<bool>(true, var_1.a, arg_0.a, true), vec4<bool>(false, false, true, arg_0.a)), arg_0.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = func_2(arg_1, u_input.a.x, vec2<i32>(~2147483647i, u_input.b | (1i ^ u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(132f)), _wgslsmith_f_op_f32(f32(-1f) * -385f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f * -202f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1489f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2069f, -659f))))));
    let var_1 = Struct_1(!all(arg_0));
    let var_2 = -792f;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-727f * var_2)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(648f, var_2), vec2<f32>(var_2, 678f), arg_0)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, var_2)))))) - vec2<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -200f)));
    var var_4 = !(!select(arg_0, !select(arg_0, vec2<bool>(true, false), arg_1.a), vec2<bool>(!arg_1.a, arg_0.x)));
    return firstTrailingBit(1u);
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)) || true, !any(vec2<bool>(true, true)), (any(vec2<bool>(false, false)) || true) & true, !(all(vec3<bool>(true, false, false)) | true));
    let var_1 = abs(_wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.b), vec3<i32>(-1i, arg_0, u_input.a.x)), -vec3<i32>(arg_0, u_input.a.x, 0i)), vec3<i32>(17972i, ~(~arg_0), -18157i)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-754f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(778f))))))), 349f);
    var var_3 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(5511u, func_4(!var_0.zx, func_2(Struct_1(false), var_1.x, vec2<i32>(arg_0, 43958i), vec2<f32>(859f, -899f))), _wgslsmith_clamp_u32(4294967295u, 29953u, 42008u) & _wgslsmith_mod_u32(0u, 1u), ~1u), vec4<u32>(firstTrailingBit(~1u), 1u, ~1u, 1u) << (firstLeadingBit(select(vec4<u32>(55848u, 2750u, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 64227u), vec4<u32>(35104u, 6077u, 4294967295u, 42842u)), true)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(112151u, 4294967295u, 1u, 21484u)), vec4<u32>(15020u, 1u, 0u, 1u)), vec4<u32>(firstLeadingBit(16388u), ~(0u << (0u % 32u)), 0u, ~1u)));
    var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-var_2.x), !var_0.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(203f - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -919f), var_0.x)), -1672f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1268f), vec2<f32>(var_2.x, 417f), false)) + vec2<f32>(-919f, var_2.x)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))))), var_0.x));
    return min(abs(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, 1u, var_3.x, 4294967295u)) ^ max(vec4<u32>(var_3.x, 41027u, var_3.x, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, 4294967295u)), abs(vec4<u32>(0u, var_3.x, 4294967295u, var_3.x)))), vec4<u32>(~_wgslsmith_add_u32(var_3.x, 1u), ~firstLeadingBit(28970u), 1u, ~4294967295u) & abs(vec4<u32>(63935u, 1u, var_3.x, ~var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstLeadingBit(~(~reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 0u)))));
    var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(31709u, var_0.x, var_0.x, 0u)), abs(vec4<u32>(1u, 0u, 4294967295u, 4294967295u))), ~vec4<u32>(49987u, ~var_0.x, var_0.x, var_0.x)), ~(~abs(vec4<u32>(45071u, var_0.x, var_0.x, var_0.x))) & ~func_1(max(-2147483647i, -1i)), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_0.x, 1u, var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 6377u), vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), ~(~var_0.x)), var_0.x, 1u, var_0.x));
    var var_1 = -select(u_input.a, min(~(-vec2<i32>(22686i, -17463i)), _wgslsmith_sub_vec2_i32(min(u_input.a, u_input.a), ~u_input.a)), select(vec2<bool>(func_3(Struct_1(false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), true));
    var_1 = -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, countOneBits(u_input.a)), min(_wgslsmith_add_vec2_i32(vec2<i32>(-23334i, -2147483647i), vec2<i32>(18252i, u_input.a.x)), vec2<i32>(2147483647i, -1908i)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), reverseBits(u_input.a)));
    var_0 = ~(~vec4<u32>(select(var_0.x, 1u, false), var_0.x, _wgslsmith_sub_u32(var_0.x, 79174u), ~37279u) | abs(vec4<u32>(reverseBits(var_0.x), var_0.x, countOneBits(1u), _wgslsmith_sub_u32(var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.yww, vec3<u32>(firstLeadingBit(4294967295u), var_0.x, _wgslsmith_mod_u32(var_0.x, 28068u))), 1u), vec2<f32>(1745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f - 125f) * -1514f))));
}

