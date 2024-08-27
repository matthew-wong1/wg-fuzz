struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = select(-u_input.c.x, 0i, all(!vec4<bool>(true, false, true, all(vec3<bool>(true, true, false)))));
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(716f, 1585f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -840f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1338f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, -578f) * vec2<f32>(1000f, -611f)), vec2<f32>(-142f, -208f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1809f)), -774f)));
    let var_1 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(true, true)), true, select(true, true, u_input.b.x < 35862u), !(u_input.a.x > 2147483647i)), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -1085f) <= _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true))), vec4<bool>(!select(false, false, false), (u_input.c.x < 1i) && true, ~u_input.c.x == _wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(1444f - var_0.b.x) < 1000f)), vec4<bool>(true, true, true, true));
    return 4294967295u;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_sub_i32(-19503i, -645i);
    let var_1 = countOneBits(~max(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(15383u, u_input.b.x), u_input.d.ww, vec2<u32>(4294967295u, u_input.e.x)), select(u_input.b.zx, u_input.d.zx, true)), vec2<u32>(func_3(), ~u_input.d.x)));
    let var_2 = -(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x)) ^ u_input.c);
    var var_3 = select(vec2<bool>(true, abs(var_2.x) >= u_input.a.x), vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, false)), true), vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    return 0u;
}

fn func_1() -> Struct_2 {
    global0 = abs(u_input.c.x);
    let var_0 = 6077i;
    let var_1 = -1460f;
    let var_2 = ~u_input.e.x;
    let var_3 = _wgslsmith_mult_u32(min(firstTrailingBit(func_2(_wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, 7761u, u_input.e.x) ^ ~u_input.d, vec4<u32>(~14318u, 4294967295u, firstTrailingBit(var_2), _wgslsmith_div_u32(u_input.e.x, u_input.d.x)))), 28411u);
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_1), -288f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(368f, var_1) - vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-323f, var_1)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(true, false, !(u_input.d.x >= 0u)), !vec3<bool>(arg_1.b.x != arg_1.a.x, all(vec3<bool>(true, true, true)), true), !((-1i <= u_input.c.x) || true)), select(vec3<bool>(true, true, !select(false, false, false)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(false, false, false)), vec3<bool>(u_input.c.x != -2147483647i, u_input.d.x <= u_input.b.x, true), vec3<bool>(true, true, true)), true || (func_3() >= 25384u)), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) && true);
    global0 = 10185i;
    let var_1 = Struct_1(vec3<i32>(~u_input.a.x, 0i, 1i));
    let var_2 = (~63189u ^ ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d.x), vec3<u32>(29374u, 1u, 4294967295u)) & u_input.b.x) & 48221u)) & u_input.b.x;
    global0 = ~(_wgslsmith_div_i32(u_input.a.x | 8074i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -20444i, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a.x, -2147483647i, u_input.a.x))) & -(-48716i << (_wgslsmith_add_u32(var_2, var_2) % 32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(1603f, func_1());
    global0 = i32(-1i) * -(~_wgslsmith_sub_i32(66872i, i32(-1i) * -2147483647i));
    global0 = var_0.a.x << (func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) + _wgslsmith_div_f32(1000f, -442f)) - _wgslsmith_f_op_f32(-1489f + -131f))) % 32u);
    global0 = 24905i;
    var var_1 = all(!vec2<bool>(!select(false, false, true), u_input.b.x <= u_input.e.x));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(879f + -1311f)) - _wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(1000f - -818f)))), func_1());
    let var_3 = func_1();
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1184f), var_3.b.x)) * func_1().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.x)) + -2890f), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(1363f + -957f), _wgslsmith_f_op_f32(f32(-1f) * -523f)))), var_2.a.x, -var_0.a.x);
}

