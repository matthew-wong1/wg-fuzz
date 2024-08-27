struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<u32>(4294967295u, 0u), false), Struct_1(vec2<u32>(1u, 0u), false), Struct_1(vec2<u32>(0u, 1u), true), Struct_1(vec2<u32>(970u, 4294967295u), true), Struct_1(vec2<u32>(4294967295u, 43694u), true), Struct_1(vec2<u32>(47624u, 67532u), false));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: vec4<f32> = vec4<f32>(230f, -2141f, 770f, -1745f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(23934u, ~(~u_input.a) | (u_input.a >> (abs(1u) % 32u))), ~countOneBits(firstLeadingBit(_wgslsmith_mod_u32(139517u, u_input.a)))), 6u)];
    global1 = !vec2<bool>(!(!var_0.b & true), !var_0.b);
    var var_1 = ~((vec3<i32>(-1i) * -vec3<i32>(2147483647i, 0i, -80348i)) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(63765u, u_input.a, var_0.a.x), vec3<u32>(4294967295u, u_input.a, var_0.a.x)) << (vec3<u32>(64724u, 4294967295u, 31924u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ -reverseBits(abs(-vec3<i32>(-2147483647i, 1i, -1i)));
    var_1 = countOneBits(~reverseBits(vec3<i32>(-6059i, i32(-1i) * -1i, var_1.x)));
    var var_2 = vec4<bool>(false, true, global1.x, _wgslsmith_mod_i32(firstLeadingBit(var_1.x | -2147483647i), (var_1.x ^ var_1.x) ^ var_1.x) == -(~var_1.x));
    return false;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32((max(u_input.a, 1u) | firstLeadingBit(reverseBits(0u))) ^ 0u, 6u)];
    var_0 = Struct_1(arg_1.a & vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 55428u, var_0.a.x, 0u), abs(vec4<u32>(21441u, u_input.a, 1u, 50225u))), ~max(var_0.a.x, 26955u)), arg_3.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -716f, global2.x)))), vec4<f32>(-1123f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1448f + global2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(abs(-1733f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, 1000f, 1683f, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-141f, global2.x, global2.x, -659f), vec4<f32>(global2.x, global2.x, 929f, 470f)), select(false, true, var_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 506f)))), vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, global2.x)), 554f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-398f + global2.x))), -1538f))));
    var var_1 = -countOneBits(~(-2147483647i));
    var var_2 = !all(select(select(!vec4<bool>(true, global1.x, false, arg_2), vec4<bool>(false, true, true, false), true), !vec4<bool>(arg_2, arg_3.x, global1.x, false), !select(vec4<bool>(arg_1.b, arg_2, true, var_0.b), vec4<bool>(global1.x, false, false, arg_2), vec4<bool>(arg_2, arg_3.x, false, arg_1.b))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-161f)), _wgslsmith_f_op_f32(-global2.x)))), 1000f);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(-21911i, Struct_1(_wgslsmith_mod_vec2_u32(arg_2.a, vec2<u32>(36340u, u_input.a)) | arg_0.a, func_3()), !global1.x, select(vec3<bool>(arg_1, arg_0.b, any(select(vec4<bool>(true, arg_2.b, arg_2.b, arg_0.b), vec4<bool>(true, global1.x, true, false), vec4<bool>(arg_1, arg_2.b, global1.x, global1.x)))), select(!vec3<bool>(global1.x, true, arg_0.b), select(!vec3<bool>(true, arg_1, false), !vec3<bool>(arg_0.b, false, false), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(true, arg_0.b, arg_1), arg_0.b)), vec3<bool>(arg_0.b, true, false)), true)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_2.a, vec2<u32>(5283u, 1u) & vec2<u32>(4294967295u, arg_2.a.x), min(vec2<u32>(19589u, 54067u), arg_2.a))), vec2<u32>(0u, ~_wgslsmith_sub_u32(arg_0.a.x, 0u))), firstLeadingBit(vec2<u32>(u_input.a, 46098u & u_input.a))), 6u)];
    let var_2 = arg_0;
    let var_3 = var_2;
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, -585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))), 1151f)));
    return ~(select(~vec3<u32>(var_2.a.x, arg_2.a.x, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.a, var_3.a.x), vec3<u32>(1u, 17044u, 1u), !arg_2.b && arg_1) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, _wgslsmith_mod_u32(25748u, arg_2.a.x), ~arg_0.a.x), firstLeadingBit(~vec3<u32>(34940u, 1u, 30742u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 1u)) << (((vec3<u32>(45580u, u_input.a, u_input.a) & vec3<u32>(arg_0.a.x, 11205u, 0u)) & vec3<u32>(19062u, u_input.a, 25681u)) % vec3<u32>(32u)), vec3<u32>(u_input.a ^ 34127u, ~arg_0.a.x, firstTrailingBit(u_input.a)) & abs(func_2(Struct_1(vec2<u32>(u_input.a, 1u), true), global1.x, Struct_1(arg_0.a, false))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1037f, 2570f, 957f, 192f))));
    var var_1 = any(!(!vec2<bool>(!arg_1, true)));
    let var_2 = Struct_1(~countOneBits(var_0.yy), false);
    var_0 = vec3<u32>(arg_0.a.x, u_input.a, var_2.a.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(23406u, 1u, u_input.a) >> (vec3<u32>(u_input.a, 4294967295u, 16024u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(44595u, 16401u, 1u, 5056u)), ~u_input.a, u_input.a)), u_input.a), 6u)], global1.x);
    var var_1 = ~(~_wgslsmith_div_i32(-(~18238i), _wgslsmith_mod_i32(reverseBits(2147483647i), ~(-12258i))));
    let var_2 = vec4<bool>(all(!select(vec4<bool>(var_0.b, false, global1.x, var_0.b), select(vec4<bool>(false, false, false, global1.x), vec4<bool>(true, true, var_0.b, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)), !vec4<bool>(global1.x, true, global1.x, true))), all(select(!(!vec4<bool>(false, var_0.b, true, global1.x)), !vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(global1.x || var_0.b, false, func_1(global0[_wgslsmith_index_u32(var_0.a.x, 6u)], false).b, var_0.b))), false, ~(~1i) > (_wgslsmith_dot_vec4_i32(vec4<i32>(-18301i, 0i, -2147483647i, -4291i), _wgslsmith_mod_vec4_i32(vec4<i32>(-16530i, 19450i, 0i, -21939i), vec4<i32>(11687i, 32945i, 2147483647i, -16159i))) & select(1i, 1i >> (u_input.a % 32u), global1.x && true)));
    var var_3 = global0[_wgslsmith_index_u32(~u_input.a ^ 43234u, 6u)];
    let var_4 = ~(~vec2<i32>(~max(-2147483647i, -1i), -18950i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_4, vec2<i32>(firstLeadingBit(-2147483647i), ~var_4.x)), firstTrailingBit(vec2<i32>(var_4.x, var_4.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1527f, _wgslsmith_f_op_f32(round(global2.x)))), global2.x) + vec2<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1086f)), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(371f * -658f)), _wgslsmith_f_op_vec2_f32(global2.wx * global2.wy)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.x, 10006u, var_0.a.x, var_3.a.x) | firstTrailingBit(vec4<u32>(83802u, 4294967295u, 1880u, var_0.a.x)), vec4<u32>(4294967295u, abs(u_input.a), var_3.a.x, ~40746u)), 566f);
}

