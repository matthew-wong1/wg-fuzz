struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1277f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = u_input.a.zy;
    global0 = -925f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -481f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(413f)) * 578f))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_f_op_f32(f32(-1f) * -519f))))), -282f));
    return abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(19515u, abs(18873u)), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(12790u, 4294967295u)), ~countOneBits(vec2<u32>(755u, 1u)))));
}

fn func_2() -> u32 {
    return _wgslsmith_sub_u32(0u, ~func_3());
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -210f), _wgslsmith_f_op_f32(min(-149f, 322f)))), -617f))) - -375f);
    let var_0 = (~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1i, -33502i, -4282i)) << (vec4<u32>(1u, min(~8389u, 1u), 1u, ~_wgslsmith_add_u32(23124u, 83013u)) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u) ^ firstLeadingBit(4294967295u), 0u, 0u, ~15716u & func_2()), vec4<u32>(func_3(), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 6255u), _wgslsmith_add_u32(0u, 0u)), abs(min(43070u, 67763u)), func_2())) % vec4<u32>(32u));
    var var_1 = Struct_1(select(vec4<bool>(false, all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), true), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), var_0.x != -2147483647i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(157f, -1287f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(200f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f + 1455f) * -226f))), var_0.x << (4294967295u % 32u));
    global0 = -643f;
    let var_2 = _wgslsmith_clamp_vec4_i32(var_0, vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(var_0, -var_0), firstLeadingBit(var_0));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(!all(vec2<bool>(false, false)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), false), !vec4<bool>(true, false, true, func_1()), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-342f, -314f)) + 562f), -1012f), u_input.a.x ^ _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(-1i, 1i), u_input.b) | vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(reverseBits(-41011i), ~(-1i))));
    global0 = var_0.c.x;
    let var_1 = var_0.c.x;
    let var_2 = vec3<i32>(var_0.d, -_wgslsmith_div_i32(0i, 9882i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~var_0.d), vec2<i32>(~max(0i, u_input.b.x), -1i)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -346f);
    var var_3 = Struct_1(var_0.a, !(!vec4<bool>(var_0.a.x, select(var_0.b.x, true, var_0.a.x), var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1179f, 462f)))))))), var_2.x);
    var_3 = Struct_1(!(!select(select(vec4<bool>(true, false, var_3.b.x, var_3.a.x), var_0.a, true), !var_0.b, select(vec4<bool>(true, false, var_3.a.x, false), var_3.a, true))), vec4<bool>(!var_0.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.x, 0i), _wgslsmith_sub_i32(var_2.x, var_2.x)) >= -1i, func_1(), var_3.a.x), var_3.c, _wgslsmith_div_i32(var_0.d, 13909i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1207f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(854f, 170f) * _wgslsmith_f_op_vec2_f32(ceil(var_3.c))))), var_2.x, -1i);
}

