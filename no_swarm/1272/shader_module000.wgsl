struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1284f, -1299f, 1000f), -58531i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    global0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(862f, global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x), 74347i);
    var var_0 = global0.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b), true, -2147483647i);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(177f)))), _wgslsmith_f_op_f32(floor(var_0.x))), global0.a.yx);
    let var_3 = Struct_1(vec3<f32>(var_2.x, global0.a.x, _wgslsmith_f_op_f32(abs(-235f))), i32(-1i) * -5320i);
    return false;
}

fn func_3() -> bool {
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_div_f32(-144f, 574f))))) - -274f);
    var var_1 = vec2<bool>(!(!any(vec2<bool>(false, true))), any(vec2<bool>(!select(false, false, true), !any(vec4<bool>(false, false, false, false)))));
    var var_2 = _wgslsmith_div_u32(~1u, 1u);
    var_1 = select(!(!vec2<bool>(all(vec3<bool>(var_1.x, false, var_1.x)), func_2())), vec2<bool>(true, true), any(vec4<bool>(false, !func_3(), func_3(), any(vec3<bool>(false, var_1.x, true)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(var_0 * 349f), _wgslsmith_f_op_f32(floor(var_0))) * vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(-419f))))), _wgslsmith_mod_i32(-1i, u_input.a));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_0)), 611f, var_0), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1().a.x, _wgslsmith_f_op_f32(-global0.a.x), 1930f)), min(-2147483647i, ~1i));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, global0.a.x, 988f), var_0.a, true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, global0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, var_0.a.x)))), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-165f, var_0.a.x, var_0.a.x))), vec3<f32>(var_0.a.x, -482f, -871f))))), 0i);
    var var_1 = Struct_3(Struct_2(-927f, var_0, false, -_wgslsmith_clamp_i32(~1i, ~u_input.a, -59600i)), var_0);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1181f + -1907f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(global0.b), global0.b, -var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b, var_0.b, var_1.b.b) << (vec3<u32>(21416u, 0u, 0u) % vec3<u32>(32u)), reverseBits(vec3<i32>(0i, var_1.a.b.b, -1i)))), -_wgslsmith_mult_i32(1i, firstTrailingBit(-1i))));
    var var_3 = Struct_3(var_1.a, func_1());
    var_3 = Struct_3(var_3.a, Struct_1(var_3.a.b.a, _wgslsmith_mod_i32(0i, firstLeadingBit(-var_3.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4889u, 5569u, 0u, 0u), vec4<u32>(4294967295u, 1u, 0u, 76142u)), countOneBits(0u)), 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(round(var_1.b.a.x)))));
}

