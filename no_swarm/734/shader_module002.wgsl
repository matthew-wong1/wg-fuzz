struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(4294967295u, arg_0));
    let var_1 = _wgslsmith_add_i32(14352i, u_input.a.x);
    var var_2 = -1i;
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(min(vec4<i32>(var_1, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, var_1, 22759i, u_input.a.x)) & -vec4<i32>(var_1, 9817i, u_input.a.x, -43851i), vec4<i32>(var_1, 35204i | u_input.a.x, abs(3989i), -18556i >> (0u % 32u))) & max(vec4<i32>(14667i, -2147483647i, -1i, abs(22069i)), -select(vec4<i32>(21562i, u_input.a.x, var_1, u_input.a.x), vec4<i32>(17923i, -2147483647i, var_1, 2147483647i), vec4<bool>(true, false, false, true))), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(~var_1 >> (1u % 32u), -8857i), -(~var_1) & u_input.a.x));
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, 48930i), var_3.b.zz)), 0i), _wgslsmith_mult_i32(var_3.a.x, 35864i));
    return ~(~(-var_1) & min(1i, -1i));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_i32(u_input.a.x, u_input.a.x);
    let var_2 = Struct_1(vec4<i32>(-(~(~u_input.a.x)), 13835i, _wgslsmith_mod_i32(var_1, -func_3(0u)), u_input.a.x), select(vec3<i32>(u_input.a.x, -_wgslsmith_sub_i32(var_1, var_1), ~reverseBits(u_input.a.x)), vec3<i32>(select(i32(-1i) * -73258i, abs(2147483647i), all(arg_0.zy)), -10156i, -52154i), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, 133f, 1017f, -1644f)))))));
    var var_4 = var_2.b.x;
    return ~6091u;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -507f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -2369f), true != any(vec2<bool>(true, true)), false);
    var_0 = select(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(any(vec4<bool>(false, var_0.x, true, false)), 1000f != _wgslsmith_f_op_f32(-237f - arg_0), true), var_0.x), vec3<bool>(true, !any(var_0.zz) != false, false), 1u <= func_2(select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, true), var_0.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), 123f, _wgslsmith_f_op_f32(897f - -298f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_2, arg_0), vec3<f32>(767f, 1000f, 702f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0, 284f)))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(772f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1482f * -353f)))));
    let var_2 = arg_1;
    let var_3 = max(var_2.a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~vec4<i32>(max(func_3(2778u), -2831i), 7721i, -var_2.a.x, u_input.a.x));
    return Struct_1(~_wgslsmith_div_vec4_i32(var_2.a, vec4<i32>(-4656i, 2147483647i, 4703i, arg_1.a.x) >> (~vec4<u32>(27304u, 60855u, 65262u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(-(-arg_1.a.www >> (~vec3<u32>(38863u, 50689u, 1u) % vec3<u32>(32u))), -abs(var_2.a.wxw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-370f, 618f))) - -600f)), Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2410i, -4161i, u_input.a.x, -19587i), vec4<i32>(u_input.a.x, -15911i, -2147483647i, 35185i)))), -((vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(-2147483647i, 21558i, 0i)) << (reverseBits(vec3<u32>(0u, 24134u, 39568u)) % vec3<u32>(32u)))), 1f);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_0.b.x, u_input.a.x, u_input.a.x, -10947i) & var_0.a, vec4<i32>(11701i, u_input.a.x, 65475i, -1i)), var_0.a), var_0.a), -(vec3<i32>(-1i) * -max(vec3<i32>(u_input.a.x, 1i, -3523i), vec3<i32>(var_0.a.x, 53884i, -1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f)));
    let var_3 = firstTrailingBit(vec3<i32>(-2147483647i, 42961i, -(~(-u_input.a.x))));
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.a.yyy, -(~_wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(-26893i, var_0.b.x, 1i)))), select(abs(var_3), ~var_1.b, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-31222i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, 17035i), vec2<i32>(var_1.a.x, var_0.a.x)) | 2147483647i, ~var_3.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.b.yy, vec2<i32>(7976i, 35089i)), vec2<i32>(u_input.a.x, 0i))), var_2.yx);
}

