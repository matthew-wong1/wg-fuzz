struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = select(_wgslsmith_div_vec3_i32(u_input.b, ~(u_input.b | u_input.b)), max(-firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) & vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(-35848i, u_input.b.x), -31276i), u_input.b), vec3<bool>(true, true, true));
    let var_1 = select(select(select(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(_wgslsmith_f_op_f32(floor(-1000f)) > -1222f, true && (u_input.a.x >= u_input.a.x), true && any(vec3<bool>(false, false, true)), !all(vec2<bool>(false, false))), true), (u_input.a.x <= (~u_input.a.x << (abs(u_input.a.x) % 32u))) && (65410u == select(1u, u_input.a.x, all(vec2<bool>(false, true)))));
    let var_2 = _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(1u, min(~u_input.a.x, 1u), firstLeadingBit(u_input.a.x), u_input.a.x)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, ~29782u, u_input.a.x)));
    let var_3 = true;
    var var_4 = vec4<u32>(~8317u, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(37201u, 37567u), reverseBits(vec2<u32>(43905u, u_input.a.x)))), (67419u >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(var_2, var_2)) % 32u)) | u_input.a.x, u_input.a.x);
    return _wgslsmith_mod_vec4_u32(var_2, ~var_2);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_0 != true;
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(16756u, u_input.a.x, u_input.a.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 65501u, arg_2.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 17162u), vec4<u32>(0u, 4294967295u, arg_2.x, arg_2.x)) & ~vec4<u32>(u_input.a.x, u_input.a.x, 109840u, arg_2.x)) | ~vec4<u32>(~u_input.a.x, ~u_input.a.x, countOneBits(0u), 0u));
    var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, arg_2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, 0u, 24539u), vec3<u32>(u_input.a.x, 30730u, 1u))), ~(u_input.a.x ^ 13969u), ~4294967295u | var_2.x, abs(select(1u, 4294967295u, arg_0))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4829u, arg_2.x, 0u, 29404u), vec4<u32>(0u, 4294967295u, 14163u, arg_2.x)), func_3()));
    var_2 = vec4<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~33790u, abs(59786u), _wgslsmith_add_u32(4916u, 0u)) & ~_wgslsmith_add_vec3_u32(var_2.wzw, vec3<u32>(var_2.x, 1u, var_2.x)), vec3<u32>(1u, ~0u, 1u) >> (_wgslsmith_mult_vec3_u32(var_2.zxx, ~var_2.wzw) % vec3<u32>(32u))), 18064u, abs(arg_2.x));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(~arg_0.b), firstTrailingBit(arg_0.b)), u_input.b.x, 17208i) ^ vec3<i32>(~_wgslsmith_sub_i32(arg_0.b, i32(-1i) * -21942i), u_input.b.x, 27848i >> (func_3().x % 32u));
    var_0 = ~u_input.b;
    let var_1 = Struct_1(vec3<f32>(arg_1, 416f, arg_1), -(firstTrailingBit(_wgslsmith_div_i32(-1i, arg_0.b)) ^ (u_input.b.x | -1i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-arg_1)))));
    var_0 = _wgslsmith_div_vec3_i32(max(countOneBits(vec3<i32>(_wgslsmith_mod_i32(var_1.b, var_0.x), var_1.b, 3181i)), u_input.b), -abs(u_input.b));
    return vec2<bool>(all(select(!(!vec4<bool>(false, arg_2.x, true, false)), vec4<bool>(u_input.a.x < u_input.a.x, select(false, arg_2.x, arg_2.x), arg_2.x, false), !select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), arg_2, vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)))), true);
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(230f, _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(f32(-1f) * -732f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 838f, 321f) - vec3<f32>(184f, 1460f, 699f))))), u_input.b.x);
    let var_2 = select(!vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true && any(vec2<bool>(true, false)), true), select(func_4(func_2(false, Struct_1(var_1.a, -58913i), u_input.a), _wgslsmith_div_f32(240f, 688f), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), select(vec2<bool>(true, false), vec2<bool>(true, false), func_4(Struct_1(var_1.a, -12732i), 2278f, vec4<bool>(false, false, true, false))), false)), !func_4(Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_1.a)), countOneBits(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1229f, var_1.a.x)), vec4<bool>(true, true, true, true)));
    return reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_1.b, abs(u_input.b.x >> (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, var_1.b, 0i, 1i), -vec4<i32>(0i, u_input.b.x, 0i, u_input.b.x))), min(vec4<i32>(reverseBits(u_input.b.x), ~0i, _wgslsmith_add_i32(u_input.b.x, 13973i), ~0i), vec4<i32>(firstLeadingBit(-54516i), var_1.b, u_input.b.x, abs(0i)))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = min(38061u, 32991u);
    var var_1 = func_2(true, Struct_1(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - 349f) + _wgslsmith_div_f32(arg_1.x, 880f)), 663f), arg_3), _wgslsmith_mod_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_0)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a), select(vec2<bool>(true, false), vec2<bool>(true, true), false)) | u_input.a, ~vec2<u32>(arg_0, arg_0)));
    let var_2 = !(!vec3<bool>(select(false, false, false) | true, true, true));
    var var_3 = u_input.b.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-872f, -1147f, -633f), vec3<f32>(arg_1.x, arg_1.x, 945f)), var_1.a, vec3<bool>(var_2.x, var_2.x, false))))))), ~(-arg_2.x) ^ u_input.b.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a.x, vec3<f32>(-239f, -203f, _wgslsmith_f_op_f32(trunc(1627f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 9835i) & vec4<i32>(28625i, u_input.b.x, -1i, u_input.b.x), abs(vec4<i32>(u_input.b.x, 6977i, u_input.b.x, u_input.b.x))), ~countOneBits(vec4<i32>(-1i, 1i, u_input.b.x, 34588i))), -select(reverseBits(vec4<i32>(0i, u_input.b.x, 1i, u_input.b.x)), func_1(), vec4<bool>(false, true, false, true))), ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.b.x, -2147483647i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-153i, abs(u_input.b.x)), _wgslsmith_add_i32(u_input.b.x, -50778i)), -2147483647i, 46352i));
}

