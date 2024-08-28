struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: u32 = 1u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    global1 = ~(~4294967295u);
    let var_0 = ~(vec3<u32>(u_input.d.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 97558u), vec2<u32>(21406u, 4294967295u))), u_input.d.x) | ~reverseBits(vec3<u32>(1u, 1690u, u_input.a)));
    var var_1 = arg_1.x >= _wgslsmith_f_op_f32(round(-1357f));
    var var_2 = -2147483647i;
    global1 = _wgslsmith_mult_u32(u_input.d.x, arg_0) >> (_wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(firstTrailingBit(u_input.d.x) & ~89545u, ~24285u >> ((u_input.a ^ u_input.d.x) % 32u))) % 32u);
    return arg_1.x;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    var var_0 = reverseBits(countOneBits(~(-u_input.c.x) & _wgslsmith_div_i32(u_input.b, u_input.b)));
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0, 1u) | _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d), u_input.d), _wgslsmith_mod_u32(63233u, 54124u)), ~_wgslsmith_sub_u32(abs(1u) | u_input.a, u_input.d.x), _wgslsmith_mult_u32(~(~arg_0), _wgslsmith_mult_u32(35609u, 65382u)) >> (~(~_wgslsmith_sub_u32(4294967295u, 13425u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(37268u), 70932u, 37361u), vec3<u32>(71235u, ~firstTrailingBit(arg_0), firstLeadingBit(arg_0))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1866f) - arg_1.x)), _wgslsmith_add_u32(18546u, u_input.a), 13121i);
    global0 = array<vec3<f32>, 4>();
    var var_3 = true;
    return _wgslsmith_div_f32(1050f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-420f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(413f, -1941f)), all(vec3<bool>(false, true, true)) || true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(1u, vec3<f32>(_wgslsmith_f_op_f32(622f * -352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u, vec2<f32>(692f, 1862f)))), _wgslsmith_f_op_f32(ceil(-235f))))), ~_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 0i);
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = select(!vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true), !(!vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), !func_2(vec4<u32>(u_input.a, u_input.a, 14416u, firstTrailingBit(4294967295u)), false & select(false, false, false)));
    let var_1 = select(vec3<bool>(var_0.x, true && !(u_input.d.x != u_input.d.x), !var_0.x), vec3<bool>(select(true, true, select(!var_0.x, any(var_0), !var_0.x)), true, true), all(var_0.yyw));
    let var_2 = var_1.x | false;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(947f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1203f)), _wgslsmith_f_op_f32(floor(1688f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(211f - _wgslsmith_f_op_f32(step(1567f, -1397f))), _wgslsmith_f_op_f32(floor(-645f)), -1000f)));
    global0 = array<vec3<f32>, 4>();
    return Struct_1(-1094f, ~u_input.d.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = firstTrailingBit(firstTrailingBit(u_input.e));
    var var_2 = vec3<bool>(true, false, true);
    let var_3 = func_1(-35636i);
    let var_4 = (-(vec4<i32>(-1i) * -vec4<i32>(var_1, 0i, -1i, var_1)) & _wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.c), vec4<i32>(-1i) * -vec4<i32>(var_1, u_input.b, -1i, u_input.e))) ^ u_input.c;
    var var_5 = func_1(_wgslsmith_mod_i32((i32(-1i) * -18187i) >> (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i >> (1u % 32u), -16679i, 33788i, var_1), vec4<i32>(var_1 >> (0u % 32u), -2770i, var_3.c, var_3.c))));
    let var_6 = ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), -1i, 1i, _wgslsmith_div_i32(-2147483647i, u_input.c.x)), vec4<i32>(var_4.x ^ var_1, _wgslsmith_sub_i32(-2147483647i, var_3.c), -var_1, _wgslsmith_clamp_i32(17237i, var_3.c, 4218i)), vec4<i32>(~var_1, u_input.b, -2147483647i | u_input.e, 1i)));
    let var_7 = _wgslsmith_f_op_f32(func_4(58748u | _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_5.b, u_input.a), _wgslsmith_dot_vec2_u32(u_input.d.ww & u_input.d.yx, u_input.d.ww)), vec3<f32>(2058f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(926f - -658f))), 243f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-372f + var_3.a), _wgslsmith_f_op_f32(123f - 464f), -825f, _wgslsmith_f_op_f32(var_5.a + var_5.a)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, -1826f, var_5.a)))))));
}

